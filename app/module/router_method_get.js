const { render } = require("ejs");
const knex = require('../config/db');
const db = require('./controler');
const nodemailer = require('nodemailer');
const dateFormat = require('dateformat');
const upload = require('./upload_file');
const crypto = require('./crypto');

//method get

exports.login = async(req, res) => {
    res.render('user/login');
}

exports.register = async(req, res) => {
    res.render('user/register');
}

exports.forgetpass = async(req, res) => {
    res.render('user/forgetpass');
}

exports.home = async(req, res) => {
    if (!req.session.username || req.session.ID == 3) {
        res.redirect('/');
    } else {
        let rows = await db.query_count('listpost', { privacy: 0 });
        let numRows = rows[0].count;
        let numPerPage = 4;
        var numPages = parseInt(Math.ceil(numRows / numPerPage));
        let list_10_new_post = await db.query_select_limit('user', 'listpost', 'user.ID', 'listpost.ID_user', { 'listpost.privacy': 0 }, 10, 0, 'listpost.date_post', 'DESC');
        let list_all_post = await db.query_select_limit('user', 'listpost', 'user.ID', 'listpost.ID_user', { 'listpost.privacy': 0 }, numPerPage, 0, 'listpost.date_post', 'DESC');
        res.render('user/home', {
            username: req.session.username,
            data: list_all_post,
            data_10_post: list_10_new_post,
            numPages: numPages
        });
    }
}

exports.pagination_page = async(req, res) => {
    if (!req.session.username || req.session.ID == 3) {
        res.redirect('/');
    } else {
        let page = parseInt(req.params.id);
        let numPerPage = 4;
        let skip = (page - 1) * numPerPage;
        let limit = numPerPage;
        let rows = await db.query_count('listpost', { privacy: 0 });
        let numRows = rows[0].count;
        var numPages = parseInt(Math.ceil(numRows / numPerPage));
        let list_10_new_post = await db.query_select_limit('user', 'listpost', 'user.ID', 'listpost.ID_user', { 'listpost.privacy': 0 }, 10, 0, 'listpost.date_post', 'DESC');
        let list_all_post = await db.query_select_limit('user', 'listpost', 'user.ID', 'listpost.ID_user', { 'listpost.privacy': 0 }, limit, skip, 'listpost.date_post', 'DESC');
        res.render('user/home', {
            username: req.session.username,
            data: list_all_post,
            data_10_post: list_10_new_post,
            numPages: numPages
        });
    }
}

exports.personel_page = async(req, res) => {
    if (!req.session.username || req.session.ID == 3) {
        res.redirect('/');
    } else {
        let data = await db.join_2_table('listpost', 'user', 'listpost.ID_user', 'user.ID', { 'user.ID': req.session.ID });
        res.render('user/personel_page', {
            data: data
        });
    }
}

exports.new_post = async(req, res) => {
    if (!req.session.username || req.session.ID == 3) {
        res.redirect('/');
    } else {
        let user_info = await db.query_select('user', { ID: req.session.ID });
        res.render('user/new_post', {
            data: user_info
        });
    }
}

exports.logout = async(req, res) => {
    req.session.destroy();
    res.redirect('/');
}

exports.info_personel1 = async(req, res) => {
    if (!req.session.username || req.session.ID == 3) {
        res.redirect('/');
    } else {
        let all_post = await db.query_select('listpost', { privacy: 0, ID_user: req.params.id });
        let user_info = await db.query_select('user', { ID: req.params.id });
        res.render('user/info_personel', {
            data: user_info,
            data_post: all_post
        });
    }
}