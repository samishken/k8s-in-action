
# Kustomize for Kubernetes Platform
```
Kustomize is a tool for customizing Kubernetes YAML configurations, allowing you to manage different environments (dev, staging, prod) without duplicating manifest files.
```
## Directory Structure

```
k8s/
  base/
    deployment.yaml
    service.yaml
    kustomization.yaml
  overlays/
    dev/
      kustomization.yaml
      patch.yaml
    prod/
      kustomization.yaml
      patch.yaml
```

- **base/**: Contains common Kubernetes manifests.
- **overlays/**: Contains environment-specific customizations (dev, prod, staging). 
- Contains `kustomization.yml` file used to manupilate resources in different environments.

## How It Works

- The `base` directory holds the standard manifests.
- Each overlay references the base and applies patches or environment-specific changes.

## Example Usage

**Build and apply the dev overlay:**
```sh
kubectl apply -k k8s/overlays/dev
```

**Build and apply the prod overlay:**
```sh
kubectl apply -k k8s/overlays/prod
```

Or, to preview the final YAML:
```sh
kustomize build k8s/overlays/dev
```

## References

- [Kustomize Documentation](https://kubectl.docs.kubernetes.io/pages/app_customization/introduction.html)
- [Kubernetes Official Docs: Kustomize](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/)

---
Kustomize helps you keep your Kubernetes manifests DRY and environment-aware!
```