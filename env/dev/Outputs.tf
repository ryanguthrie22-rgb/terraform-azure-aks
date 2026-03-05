output "demo_namespace" {
  value = kubernetes_namespace.demo.metadata[0].name
}

output "demo_service_external_ip" {
  value = try(kubernetes_service.demo_nginx_lb.status[0].load_balancer[0].ingress[0].ip, null)
}