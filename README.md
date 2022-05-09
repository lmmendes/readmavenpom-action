# pomxml-action

This action provides the following functionality for GitHub Actions users:

- Extract the `version`, `groupId` and `artifactId` from the pom.xml file

# Usage

```yaml
on:
  push:
    branches:
      - master

name: Test reading pom.xml version, groupId and artifactId

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2


      # The version, groupId and artifactId are stored as outputs of the step.
      # They are accessible via  steps.< step id >.outputs.< attribute name >
      - name: Run readmavenpom-action to retrive pom.xml info
        uses: lmmendes/readmavenpom-action@v1
        id: pomxml
      
      # Print put the "version" from the pom.xml
      # read from steps.pomxml.outputs.version
      - name: "Print pom.xml: version"
        run: echo "The pom.xml version is ${{ steps.pomxml.outputs.version }}"
      
      # Print put the "groupId" from the pom.xml
      # read from steps.pomxml.outputs.groupId
      - name: "Print pom.xml: groupId"
        run: echo "The pom.xml groupId is ${{ steps.pomxml.outputs.groupId }}"
      
      # Print put the "artifactId" from the pom.xml
      # read from steps.pomxml.outputs.artifactId
      - name: "Print pom.xml: artifactId"
        run: echo "The pom.xml artifactId is ${{ steps.pomxml.outputs.artifactId }}" 
```

# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lmmendes/readmavenpom-action. 

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

