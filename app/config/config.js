exports.cors = {
    origin: "*"
};

exports.environment = "local"; //local, product

exports.port = process.env.PORT || 8888;

exports.configDB = {
    mysql: {
        client: 'mysql',
        connection: {
            host: this.environment === 'local' ? '127.0.0.1' : process.env.MYSQL_HOST,
            user: this.environment === 'local' ? 'root' : process.env.MYSQL_USER,
            password: this.environment === 'local' ? '' : process.env.MYSQL_PASS,
            database: this.environment === 'local' ? 'blog_nodejs' : process.env.MYSQL_DB,
            charset: 'utf8mb4',
            port: this.environment === 'local' ? 3306 : process.env.MYSQL_PORT,
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