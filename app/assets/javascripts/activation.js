$(function() {
  var challenge = $('#challenge');
  var generate = $('#generate');
  var license = $('#license');

  generate.click(function(){
    generateLicense();
  })


  function generateLicense(){
    var PRIVATE_PASSPHRASE = "Private password";

    var Private_RSA_Key = cryptico.generateRSAKey(PRIVATE_PASSPHRASE, 1024);

    var challengeCode = challenge.val();

    var SPD_PublicKeyString = "h6jnACp3lyxlXYulnkURxujPOG0ULC+5fKO+ESxJAa9mBm4fdmwlCh1O/78zzxfu6CdEiDt56qTdkiAMvT43ANYQMy7s5OHqiOQsCleSdDr+RTWFDNEOa7jg8+CtK+sxIP3cp7+4st42lSvfATT4TDeUvJIKvfXVtk6bO5HC+O0=";

    var Encrypted_LicenseKey = cryptico.encrypt(challengeCode, SPD_PublicKeyString, Private_RSA_Key);

    license.val(Encrypted_LicenseKey.cipher);
  }
});
