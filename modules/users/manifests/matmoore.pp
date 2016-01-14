# Creates the matmoore user
class users::matmoore {
  govuk::user { 'matmoore':
    fullname => 'Mat Moore',
    email    => 'mat.moore@digital.cabinet-office.gov.uk',
    ssh_key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Jt5DBeCT4nIVFqKEJ7ene79aScq6RwRuFIclR1Oqb1w5FSIYcctAgv6SZolMA3YeJpoBBFx6hcTsuQEGNdX8ddAqEUqwnEHA7Pwo8chqrccyYIeex50H5Lx0IvQjNWJEjlZeo/g8Z24sYlN3zV+FlKTmpGhDeac2gwOBluothQYsFI/ejIGny5iAqnb5V6H7JPMOgG3ZnzCUPAt72YNjJ08xTu/jp1OBxn++35zrL5VBKUFdJPkWwkAOXDX2JvFX2oQMaLqlr/uRUmTil8yUmL0hxp0gLl0P0VHhgTV3U2I+gMBKyGxGOB/pLJ84vsvNyaCcoLa4zfDW+IrvRHICyjAQjnze1IyZZWkRIfpDrkMc+4FnwMMZ7vLOY+4/6fOuT27YxYLsAVdPd+KE8ydntbpCTaIzDNx9F+otu8XDyG197WgXMF4RVaTiqt3oPRpIdFmihhPQTliMsinWg4rfx2i6j8G2nr1UL2F/OWl1S3JX4edwt+v2VWWFirDBZ1vVKhHcBD9LSaAFhBg6BMoKQb6MkR2+jYSdF9+NXI5A1LLz5QRqsg3z1Jg2XFJwxSaV7lWX1xXBEJcSWGH697+Z6ET7VOqaSNjAul/1DeeSD9qBmC8VKgqApnti43c4CnAZzVEu7+g84NyniGHtwzTfG1yfrPgY0zaiaWVIzBlE7Q== mat.moore@digital.cabinet-office.gov.uk',
  }
}
