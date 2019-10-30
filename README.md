# k8s-dwd-skinnywms-demo
A demo application using data from DWD's open data file server https://opendata.dwd.de and ECMWF's skinnywms WMS server.

## Run a simple demo
Assuming you have a Kubernetes cluster running and kubectl is running on you machine, run:
```bash
make simple-demo
```
This will configure a deployment for skinnywms with some data from https://opendata.dwd.de.
