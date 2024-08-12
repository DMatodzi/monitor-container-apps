from passlib.apache import HtpasswdFile

ht = HtpasswdFile('auth/htpasswd', new=True)
ht.set_password('group3mca', 'FTED-group3p$wd!')
ht.save()
