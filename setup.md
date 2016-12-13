## Setting up prometheus and grafana
Configmap was changed to dns names
Added ingress 

apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: prometheus
spec:
  rules:
  - host: prometheus.local
    http:
      paths:
      - path: /
        backend:
          serviceName: prometheus
          servicePort: 9090
  - host: grafana.local
    http:
      paths:
      - path: /
        backend:
          serviceName: grafana
          servicePort: 3000


Fixed hosts file to allow connecting through træfik
Setup prometheus/grafana
