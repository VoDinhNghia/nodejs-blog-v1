exports.cors = {
    origin: "*"
};

exports.environment = "local"; //local, product

exports.port = process.env.PORT || 8888;

exports.configDB = {
    mysql: {
        client: 'mysql',
        connection: {
            host: this.environment === 'local' ? '127.0.0.1' : "192.168.1.99",
            user: this.environment === 'local' ? 'root' : "usernghia",
            password: this.environment === 'local' ? '' : "nghiapass",
            database: this.environment === 'local' ? 'blog_nodejs' : "blog_nodejs",
            charset: 'utf8mb4',
            port: this.environment === 'local' ? 3306 : 3306,
            options: {
                cryptoCredentialsDetails: {
                    minVersion: 'TLSv1'
                },
                "enableArithAbort": true
            }
        },
        migrations: {
            directory: './migrations',
            tableName: 'migrations',
        },
        seeds: {
            directory: './seeds',
        },
    },
};

exports.config_mail = {
    mail: 'sciencepost95@gmail.com',
    pass: '********'
}