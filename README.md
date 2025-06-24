# Introduction

## Port forward client
```bash
kubectl port-forward pod/  -n tuvarna 3000:3000
```

## Port forward server
```bash
kubectl port-forward pod/...  -n tuvarna 8080:8080
```

## Delete cached image from pod

```bash
docker exec -it kind-control-plane crictl rmi ghcr.io/tu-varna-2019/phd-portal-server:release-1.0.0
```

## Enter container

```bash
kubectl -n tuvarna exec -it tuvarna-client-5c9c9478b7-q52vr -- /bin/sh
```
