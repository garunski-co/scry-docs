# Running

## Installing

To install the helm chart

```
helm upgrade -i --set localDirectory="$(echo $PWD)" --set ingress.host="diagrams.local.scryapp.website" --repo https://garunski-co.github.io/scry-helm-charts/ structurizr structurizr-local
```

## Access

Access the site on [Docs](http://diagrams.local.scryapp.website)

# Helpful Links

Structurizr example: https://github.com/structurizr/examples/tree/main/dsl/financial-risk-system


