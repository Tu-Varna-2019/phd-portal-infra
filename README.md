# 🎓 Designing and implementing a Doctoral Admission and Training System 🎓

[![License](https://img.shields.io/github/license/Tu-Varna-2019/phd-portal-infra)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Dependabot Updates](https://github.com/Tu-Varna-2019/phd-portal-infra/actions/workflows/dependabot/dependabot-updates/badge.svg)](https://github.com/Tu-Varna-2019/phd-portal-server/actions/workflows/dependabot/dependabot-updates)
[![Security scanning](https://github.com/Tu-Varna-2019/phd-portal-infra/actions/workflows/security-scan.yaml/badge.svg)](https://github.com/Tu-Varna-2019/phd-portal-server/actions/workflows/security-scan.yaml)
[![GitHub release](https://img.shields.io/github/v/release/Tu-Varna-2019/phd-portal-infra)](#)
[![GitHub release date](https://img.shields.io/github/release-date/Tu-Varna-2019/phd-portal-infra)](#)
[![itHub last commit](https://img.shields.io/github/last-commit/Tu-Varna-2019/phd-portal-infra)](#)

## 🚀 About

The project should develop an engineering solution for digitizing an information system for doctoral students and candidates in order to be used by higher education institutions, which would integrate into the systematic process for the management and management of the so -called "digital university".

## 🎉 Getting started

### ✅ Prerequisites

In order to containerize the apps, make sure you have installed the following dependencies

| Program |                     URL                     |
| :------ | :-----------------------------------------: |
| Kind  | [Kind](https://kind.sigs.k8s.io/) |
| Kubectl  | [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/) |
| Sops  | [Sops](https://github.com/getsops/sops) |

> If you are using Nix or NixOS you can install them in flake.nix via _devenv_

### 🌱 Setup

1. Define the secrets from the server and app and apply it as secrets

```sh
kubectl apply -f infra/.secrets.yaml

```

### ⚓ Run the cluster

```sh
	kubectl apply -f infra/.secrets.yaml
	kubectl apply -f infra/config-map.yaml
	kubectl apply -f infra/config-map.yaml
	kubectl apply -f infra/namespace.yaml
	kubectl apply -f infra/namespace.yaml
	kubectl apply -f infra/service.yaml
	kubectl apply -f infra/postgre/volume_claim.yaml
	kubectl apply -f infra/postgre/deployment.yaml
	kubectl apply -f infra/client/deployment.yaml
	kubectl apply -f infra/server/deployment.yaml
# Or
make run
```

## 🧑‍💻 Commands

| Command             | Description                                    |
| :------------------ | :--------------------------------------------- |
| make help           | Show available commands with their description |
| make run            | Run the containers with their configs                       |
| make port-fwd-client            | port forward to a pod on the client app                                    |
| make port-fwd-server            | port forward to a pod on the server app                                    |
| make exec-pod            | Enter a pod env
| make clear-pod            | Clear docker images to force the pod to pull images aagin

#### 📚 Docs

- [ Javascript ](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
- [ ReactJS ](https://react.dev/)
- [ NextJS ](https://nextjs.org/docs)
- [ Docker ](https://docs.docker.com/)
- [ Nix ](https://nix.dev/manual/nix/2.18/)
- [ MaterialUI ](https://mui.com/)

### 📃 License

This product is licensed under [GNU General Public License](https://www.gnu.org/licenses/gpl-3.0.en.html)

