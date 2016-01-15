# Creates the grahampengelly user
class users::grahampengelly {
  govuk::user { 'grahampengelly':
    fullname => 'Graham Pengelly',
    email    => 'graham.pengelly@digital.cabinet-office.gov.uk',
    ssh_key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4fJ8aHegLLbnwfN4UQxKjlvOfND3k3ADKJJLK62YqA+2bVMdf2j4rDiXUNemaSS2WYD0srIQ8UpIaHmDRfKXNO38GtHHexoIAaxG0IaFrKka5zvj4kdeSTAmjbBe+J+DfjrQ1VJSU3v6QB80MRfS+4vHLtAQKoaokK+7sW9Gah+Xn2S+rSre0l81/tikwx3j9lz6sW22D6Cj0hDLB+oJ0X78/oMbqxs6gVCNLestBgAafAVv4+VIE++8iVv3ivRWrP2pR8RWM+3Zfm6XOBNJj4sn0qlttG1DeE/pc7fN4cFehQ5rwDibQow7eulKucIoS9E1L7QZrZnFL0AoymS6t graham.pengelly@digital.cabinet-office.gov.uk',
  }
}
