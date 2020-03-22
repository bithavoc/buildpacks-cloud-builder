# buildpacks-cloud-builder

A builder for [Cloud Build](https://cloud.google.com/cloud-build) featuring Docker + [Cloud-Native Buildpacks.io](https://buildpacks.io).

## Example

Example usage modified from [the docs](https://cloud.google.com/cloud-build/docs/quickstart-build):

```yaml
steps:
- name: 'bithavoc/buildpacks-cloud-builder'
  args: [ 'pack', 'gcr.io/$PROJECT_ID/quickstart-image' ]
images:
- 'gcr.io/$PROJECT_ID/quickstart-image'
```

Submit:

```sh
  gcloud builds submit --config cloudbuild.yaml
```

## License

MIT
