# Infrastructure instructions


<!-- ## Vault Helm installation 

Install the Vault Helm chart before applying this configuration.

Add the Hashicorp Helm repository.

```
$ helm repo add hashicorp https://helm.releases.hashicorp.com
```

Verify you have access to the Vault chart.

```
$ helm search repo hashicorp/vault
```

Vault is running in `dev` mode. In a production setup, you should [initialize and unseal Vault](https://www.vaultproject.io/docs/platform/k8s/helm/run#initialize-and-unseal-vault) now. -->

## Waypoint Manual installation

Configure `kubectl` to your EKS cluster.

```
$ aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
```

Install Waypoint to your cluster.

```
$ waypoint install --platform=kubernetes -accept-tos
✓ Creating Kubernetes resources...
✓ Kubernetes StatefulSet reporting ready
✓ Waiting for Kubernetes service to become ready..
✓ Configuring server...
Waypoint server successfully installed and configured!

The CLI has been configured to connect to the server automatically. This
connection information is saved in the CLI context named "install-1612236573".
Use the "waypoint context" CLI to manage CLI contexts.

The server has been configured to advertise the following address for
entrypoint communications. This must be a reachable address for all your
deployments. If this is incorrect, manually set it using the CLI command
"waypoint server config-set".

Advertise Address: af644234fab3e4875a6d34fdc3d6ccd2-288379606.us-east-2.elb.amazonaws.com:9701
Web UI Address: https://af644234fab3e4875a6d34fdc3d6ccd2-288379606.us-east-2.elb.amazonaws.com:9702
```
