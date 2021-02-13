const { table } = require('../config/db');
const knex = require('../config/db');

exports.query_select = async(table, json_where) => {
    if (json_where != '') {
        let arr_value = await knex(table).select().where(json_where);
        return arr_value
    } else {
        let arr_value = await knex(table).select();
        return arr_value
    }
}

exports.query_insert = async(table, json_insert) => {
    let arr_value = await knex(table).insert(json_insert);
}

exports.query_update = async(table, json_where, json_update) => {
    let arr_value = await knex(table).where(json_where).update(json_update)
}

exports.query_select_limit = async(table1, table2, id1, id2, json_where, limit, start, column, type) => {
    if (json_where == '') {
        let query = await knex.from(table1).innerJoin(table2, id1, id2).limit(limit).offset(start).orderBy(column, type);
        return query
    } else {
        let query = await knex.from(table1).innerJoin(table2, id1, id2).where(json_where).limit(limit).offset(start).orderBy(column, type);
        return query
    }
}

exports.query_count = async(table, json_where) => {
    let count = await knex(table).count({ count: '*' }).where(json_where);
    return count
}

exports.join_2_table = async(table1, table2, id_table1, id_table2, json_where) => {
    let join_table = await knex.from(table1).innerJoin(table2, id_table1, id_table2).where(json_where);
    return join_table
}

exports.query_select_andWhere = async(table, json_where, column, value) => {
    if (json_where != '') {
        let arr_value = await knex(table).select().where(json_where).andWhere(column, 'LIKE', value + '%')
        return arr_value
    } else {
        let arr_value = await knex(table).select().where(column, 'LIKE', value + '%')
        return arr_value
    }
}