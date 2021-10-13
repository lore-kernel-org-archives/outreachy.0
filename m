X-GM-THRID: 7018482002461458432
Date: Wed, 13 Oct 2021 02:34:42 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <d89839a7-c1c6-4768-9f5c-c9001b1239a2n@googlegroups.com>
Subject: =?UTF-8?Q?Can=E2=80=99t_install_kernel_when_CON?=
 =?UTF-8?Q?FIG=5FSYSTEM=5FTRUSTED=5FKEYS_is_set?=
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_786_337547345.1634117682219"

------=_Part_786_337547345.1634117682219
Content-Type: multipart/alternative; 
	boundary="----=_Part_787_183908034.1634117682219"

------=_Part_787_183908034.1634117682219
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I tried to compile a kernel using my system config file (Debian 11,=20
5.10.0-9-amd64). Unfortunately, when I run `sudo make modules_install=20
install`, I got this:

```
At main.c:160:
- SSL error:02001002:system library:fopen:No such file or directory:=20
../crypto/bio/bss_file.c:69
- SSL error:2006D080:BIO routines:BIO_new_file:no such file:=20
../crypto/bio/bss_file.c:76
sign-file: : No such file or directory
```

After a bit of a research, I found out that the solution is to comment out=
=20
the `CONFIG_SYSTEM_TRUSTED_KEYS` flag. Mine was set to=20
"debian/certs/debian-uefi-certs.pem", a file that=E2=80=99s clearly absent =
from the=20
kernel tree.=20

I=E2=80=99m not quite sure if this is the right way of going about it. Is i=
t fine=20
to leave this one out when I'm working on a kernel or not?

Bonus question: What happens if TRUSTED_KEYS is commented out? Will the=20
*.pem file be generated automatically or does it turn the module signing=20
off?


Many thanks,
Karolina
------=_Part_787_183908034.1634117682219
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br><br>I tried to compile a kernel using my system config file=
 (Debian 11, 5.10.0-9-amd64). Unfortunately, when I run `sudo make modules_=
install install`, I got this:<br><br>```<br>At main.c:160:<br>- SSL error:0=
2001002:system library:fopen:No such file or directory: ../crypto/bio/bss_f=
ile.c:69<br>- SSL error:2006D080:BIO routines:BIO_new_file:no such file: ..=
/crypto/bio/bss_file.c:76<br>sign-file: : No such file or directory<br>```<=
br><br><div>After a bit of a research, I found out that the solution is to =
comment out the `CONFIG_SYSTEM_TRUSTED_KEYS` flag. Mine was set to "debian/=
certs/debian-uefi-certs.pem", a file that=E2=80=99s clearly absent from the=
 kernel tree. <br></div><div><br></div><div>I=E2=80=99m not quite sure if t=
his is the right way of going about it. Is it fine to leave this one out wh=
en I'm working on a kernel or not?<br></div><div><br></div><div>Bonus quest=
ion: What happens if TRUSTED_KEYS is commented out? Will the *.pem file be =
generated automatically or does it turn the module signing off?</div><div><=
br></div><div><br></div>Many thanks,<br>Karolina
------=_Part_787_183908034.1634117682219--

------=_Part_786_337547345.1634117682219--

