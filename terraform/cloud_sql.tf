resource "google_sql_database_instance" "ms_sql_instance" {
  name             = "ms-sql-instance"
  database_version = "MYSQL_8_0"
  region           = "europe-west1"
  #tier             = "db-f1-micro"

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "ms_database" {
  name     = "ms-database"
  instance = google_sql_database_instance.ms_sql_instance.name
}
