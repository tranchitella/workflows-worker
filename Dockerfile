FROM  mendersoftware/workflows:master

COPY ./workflows/decommission_device.json /etc/workflows/definitions/decommission_device.json
COPY ./workflows/provision_device.json /etc/workflows/definitions/provision_device.json

COPY ./config.yaml /etc/workflows
ENTRYPOINT ["/usr/bin/workflows", "--config", "/etc/workflows/config.yaml", "worker"]
