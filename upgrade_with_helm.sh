#!/bin/bash

# Upgrade microservices using Helm charts
helm upgrade auth-service-release auth_service_chart
helm upgrade public-api-release public_api_chart
helm upgrade private-api-release private_api_chart
