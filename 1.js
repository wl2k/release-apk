require('fs').writeFileSync(
  '${{ runner.temp }}/.jks',
  '${{ inputs.keystore }}',
  'base64'
);
