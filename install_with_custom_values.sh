#!/bin/bash

# Install microservices using Helm with custom values
helm install auth-service-release auth_service_chart --set image.repository=your_registry/auth_service,image.tag=latest
helm install public-api-release public_api_chart --set image.repository=your_registry/public_api,image.tag=latest
helm install private-api-release private_api_chart --set image.repository=your_registry/private_api,image.tag=latest
