
### Introduction
Sample project to demo how to use git hooks script to generate configure for diferrence environmetn
### Usage
```shell
git clone https://github.com/ngtrieuvi92/git-post-checkout-update-configure.git
cd git-post-checkout-update-configure
make bootstrap
make dev-up

```

**To check config for dev**
```
git checkout -b dev
make dev-up
```