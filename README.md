# aws-iprange
A project to get AWS IP ranges for whitelist in firewall.


# Build
```
docker pull ubuntu:21.10
docker image build -t scib-cross-services/aws-iprange:1.0.0 .
```

# Run
```

docker container run --rm -it --env REGION=eu-west-1 --env SERVICE=AMAZON scib-cross-services/aws-iprange:1.0.0

```

# References
https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html