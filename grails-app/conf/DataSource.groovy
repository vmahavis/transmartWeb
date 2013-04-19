
dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
   // username = "postgres"
   // password = "transmart"
    username = "biomart_user"
    password = "biomart_user"
}

hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='org.hibernate.cache.EhCacheProvider'
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/transmart"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"

        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/transmart"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"

        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/transmart"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"

        }
    }
}
