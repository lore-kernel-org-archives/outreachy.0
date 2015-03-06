X-GM-THRID: 6845034921984
X-Received: by 10.152.6.41 with SMTP id x9mr2131857lax.10.1425633169020;
        Fri, 06 Mar 2015 01:12:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.98.233 with SMTP id el9ls58147wib.8.gmail; Fri, 06 Mar
 2015 01:12:48 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr2145774wjc.3.1425633168107;
        Fri, 06 Mar 2015 01:12:48 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id by11si69319wib.1.2015.03.06.01.12.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 01:12:48 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from oxbaltgw05.schlund.de ([172.19.246.11]) by
 mrelayeu.kundenserver.de (mreue004) with ESMTPSA (Nemesis) id
 0M5Kwt-1XXrIu2F2t-00zT0E; Fri, 06 Mar 2015 10:12:47 +0100
Date: Fri, 6 Mar 2015 10:12:47 +0100 (CET)
From: arnd@arndb.de
Reply-To: arnd@arndb.de
To: Somya Anand <somyaanand214@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-ID: <899581237.61503.1425633167521.JavaMail.open-xchange@oxbaltgw05.schlund.de>
In-Reply-To: <1425630960-7142-1-git-send-email-somyaanand214@gmail.com>
References: <1425630960-7142-1-git-send-email-somyaanand214@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: Change data type in
 adis16220_read_16bit to u16
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.6.0-Rev38
X-Originating-Client: open-xchange-appsuite
X-Provags-ID:  V03:K0:5hpaEfSCt+5TnGSSJMLPb0DHdswahljS5Uz8alRasN88i9zu6af
 QMC1QTrrNpM9uODqwD8+iiihk1oCTiSCUhTYXDvJ4eU7dDCFUqKcMkVRahtc2RK9wu+kJvY
 hZcdMuKMWV7zHyh0GOIie5f+5jqnlOE/+MTfdO93Un/wRukk396J2YTd456htavEai9/pVh
 bZjqLTTfgQEYhMTPPzzug==
X-UI-Out-Filterresults: notjunk:1;

> Somya Anand <somyaanand214@gmail.com> hat am 6. M=C3=A4rz 2015 um 09:36
> geschrieben:

> diff --git a/drivers/staging/iio/accel/adis16220_core.c
> b/drivers/staging/iio/accel/adis16220_core.c
> index d478f51..7a4a0fd 100644
> --- a/drivers/staging/iio/accel/adis16220_core.c
> +++ b/drivers/staging/iio/accel/adis16220_core.c
> @@ -28,16 +28,15 @@ static ssize_t adis16220_read_16bit(struct device *de=
v,
>  struct iio_dev *indio_dev =3D dev_to_iio_dev(dev);
>  struct adis16220_state *st =3D iio_priv(indio_dev);
>  ssize_t ret;
> - s16 val =3D 0;
> + u16 val =3D 0;
> =20
>  /* Take the iio_dev status lock */
>  mutex_lock(&indio_dev->mlock);

In a patch like this, it would be best to also drop the initialization to z=
ero,
which is
not used here. Not initializing it helps the compiler provide useful warnin=
gs if
the code gets changed to return an otherwise uninitialized result.

> - ret =3D adis_read_reg_16(&st->adis, this_attr->address,
> - (u16 *)&val);
> + ret =3D adis_read_reg_16(&st->adis, this_attr->address, &val);
>  mutex_unlock(&indio_dev->mlock);
>  if (ret)
>  return ret;
> - return sprintf(buf, "%d\n", val);
> + return sprintf(buf, "%u\n", val);
>  }
> =20

This looks wrong: Unless you know better, you should assume that the sprint=
f
format
string is correct and that the value is indeed signed for the purpose of th=
is
file.

The reason why adis_read_reg_16() takes a u16 argument instead of s16 is th=
at it
accesses a register that doesn't have a concept of signedness. I would just
leave
the code as it is, alternatively you could have two variables and explicitl=
y
cast from
u16 to s16 with a comment.

     Arnd

