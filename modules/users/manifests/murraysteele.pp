# Creates the murraysteele user
class users::murraysteele {
  govuk::user { 'murraysteele':
    fullname => 'Murray Steele',
    email    => 'murray.steele@digital.cabinet-office.gov.uk',
    ssh_key  => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC1tKcWb3kcYxyYz1szrOqVDJJnqDRmVwdW7a3CbCAi4ouq1TslE13gC7fHiQbBSBYGCWAmVMldwEl3HiIxAijoiaPKJBuevb4gwijaxHwyf1b41jACCQ45FoelYu+uKvFJmM6VmJ4jR4qIL0D6iiwC/cLrRb4vfAuJ2lx9kE8pxTUMJ4pCGkeMFeBB9uEs6YzWJ3rJbmhgqdTl4CTSh2pNYpEzrSkfh/K7Y1Lze8H/aItDTls5+GIlXOAR4Dp7ux1eVtLrh4nY9zeJ+AmZb84RHnw1sDoG/Yy79risJe+5OEtdUZtLHq8ihPzQWEcwxEnh9ZVPl7p7yhY2rnu2mJnXbW4xMmDGU+pD9Mgcab2t6c8wt0G6DPc8QFnLZCsVNOWrxuQshGCy23BuBfu14zVTQD6/8OdQZDQFW4Kq7Pwaz4Qhgw1RQm2xKAbVCCM/A/W+CJJApX2fxq3//Sb7Gn4kxnyLw9p+l9hjrrpf+6FRUtLXnDY9xQL4Y5xaU6mHLJGP+jxPUXEluvE6DNUvnc38Nqt8DTzXjcgz+KQDrae7U6SVI5Lb0QXF+6RIcqMUnyUuJKcWFkI4WgPZr+YtlVHWcqxPFLprJ1UvYNs89LmGAga15CX+lONHPW0HCD3o+D8pKXXPpVL+9YdQ5+NTyZw+yRiipGTOE0IrtCRuk5uhLQ== murray.steele@digital.cabinet-office.gov.uk',
  }
}
