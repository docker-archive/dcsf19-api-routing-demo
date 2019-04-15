## Requirements

* test service for Kubernetes
* test service for Swarm

### Docker Specific
* haproxy configuration to route to the `dcsf19-api-routing-demo` service
* Route53 entry that points dcsf19-api-routing-test.aws.dckr.io to your ELBDefault in whatever environment will be used for the demo


## Steps

* describe that we have an environment setup for routing and show the Dockerfile
* show that there are no healthy backends in HAProxy stats page
* show that the endpoint fails to load: dcsf19-api-routing-test.aws.dckr.io
* deploy the swarm service
* show that it is deployed via `docker service ls`
* show that after reloading several times it only shows the Swarm containers
* deploy the kubernetes service
* show that it is deployed via `kubectl get all | grep dcsf19-api-routing-demo`
* show that after reloading several times it shows the service in each orchestrator is actually serving the requests
