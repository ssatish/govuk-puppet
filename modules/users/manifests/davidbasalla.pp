# Creates the davidbasalla user
class users::davidbasalla {
  govuk::user { 'davidbasalla':
    fullname => 'David Basalla',
    email    => 'david.basalla@digital.cabinet-office.gov.uk',
    ssh_key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCy6pTUVjVj15Zm8NW8Dkhdf4EJS/c4ys3podB4O77uuaezx2P1qVqufmjDWBtWwzKlwJIjgNPe431isnJ5Hw4rvx1PpQ7wKYwmcLnCeYIVY9d3QmyE68pKauvjhcmdhxJ1MCqFecMmx+8KRcwC23L/RxfZO2m5lSHmwm5COT+uJgtoaeEsU8vC3lYBxZDDohllSBz26uEDoUMT1FNmtKWWdorzDzaN1hwSFe3uPF7f0A3LJQEpYxt0kkKJxTWhjYVJ2wrx0Dzipi+rZirAlBI+gybvozzvl/AwTiRzAage9JvDysjj0Hw9/GEKxs+BflWwy06EANPkklWJUsEUU6LIzVAhfFJxkPu8YVE0qAt1UHs4A4YayUslPB4e7rjI+0xmJSeA2UJnbPFkJGho1IkLKDmzARRVlWVXDYjZFOwBqgR6Vp7UagQDeFubvHdvW5zD1oRsbd0UkvzByQoHrhqUU4fQAmPYv2YGtVEvegZ1pjXbMQrucBcjhedXbUCPXD9MGktUQPwOVlgrIRxT3PHaYA9ajU865GoKlsMQfWIdm+kxUbhH7xeXlDRqwSjHUVy/hXUUUUd51lffmTZATeCDBLB0f0XffNWap2IC1U1E3xIX4Ybw3koC1elhoRdY+PvzYARSFvp29mGBTO00UnzT1O+jbhs7/BPJiERt9EUxfw== davidbasalla@gmail.com',
  }
}
