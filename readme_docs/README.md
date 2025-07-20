
# Azure AIOps Hands-On Project

This project demonstrates an end-to-end Azure AIOps implementation using:

- Azure Monitor, Log Analytics, Application Insights
- Terraform and Bicep for infrastructure as code
- Logic Apps + Azure Functions for auto-remediation
- FinOps best practices for cost optimization

## Features

- Anomaly detection on CPU usage
- Automated VM restart via Logic App + Function
- Cost alerts and budget enforcement
- Dashboards with KQL and Workbooks

## Getting Started

1. Deploy infra using `terraform/main.tf` or `bicep/main.bicep`
2. Setup monitoring via Log Analytics and Alerts
3. Use KQL queries to create workbooks
4. Configure Logic App and Azure Function
5. Setup budget alerts using `cost_alert_rule.json`

## Author

Built by Gopal Meena – Azure DevOps | SRE | FinOps | AIOps
