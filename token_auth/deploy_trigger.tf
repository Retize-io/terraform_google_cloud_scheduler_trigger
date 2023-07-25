resource "google_cloud_scheduler_job" "job" {
  name             = var.scheduler_name
  description      = "Run ${var.scheduler_name}"
  schedule         = var.schedule
  time_zone        = "America/Sao_Paulo"
  attempt_deadline = "60s"

  retry_config {
    retry_count = 1
  }

  http_target {
    http_method = "GET"
    uri         = var.uri
    # oidc_token {
    #   service_account_email = var.service_account_email
    # }   
    headers = {
      "Authorization" : "Bearer ${var.token}"
    }
  }
}
