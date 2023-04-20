#!/bin/bash

# Create Helm charts
helm create auth_service_chart
helm create public_api_chart
helm create private_api_chart

# Copy Kubernetes configuration files into the respective chart directories
cp auth_service/deployment.yaml auth_service_chart/templates/
cp auth_service/service.yaml auth_service_chart/templates/
cp auth_service/configmap.yaml auth_service_chart/templates/

cp public_api/deployment.yaml public_api_chart/templates/
cp public_api/service.yaml public_api_chart/templates/
cp public_api/configmap.yaml public_api_chart/templates/

cp private_api/deployment.yaml private_api_chart/templates/
cp private_api/service.yaml private_api_chart/templates/
cp private_api/configmap.yaml private_api_chart/templates/

# Update values.yaml in each chart directory with image repository and tag information
sed -i 's|repository: .*|repository: your_registry/auth_service|' auth_service_chart/values.yaml
sed -i 's|repository: .*|repository: your_registry/public_api|' public_api_chart/values.yaml
sed -i 's|repository: .*|repository: your_registry/private_api|' private_api_chart/values.yaml

sed -i 's|tag: .*|tag: latest|' auth_service_chart/values.yaml
sed -i 's|tag: .*|tag: latest|' public_api_chart/values.yaml
sed -i 's|tag: .*|tag: latest|' private_api_chart/values
