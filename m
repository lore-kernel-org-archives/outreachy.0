X-GM-THRID: 6200282727557627904
X-Received: by 10.112.12.132 with SMTP id y4mr1197100lbb.0.1443688250499;
        Thu, 01 Oct 2015 01:30:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.68 with SMTP id n4ls87855wik.4.canary; Thu, 01 Oct 2015
 01:30:50 -0700 (PDT)
X-Received: by 10.180.12.170 with SMTP id z10mr265281wib.1.1443688250092;
        Thu, 01 Oct 2015 01:30:50 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id q6si44852wif.2.2015.10.01.01.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 01:30:50 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue104) with ESMTPSA (Nemesis) id 0MWjbX-1aAtRC1PTP-00Xwku; Thu, 01 Oct
 2015 10:30:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: octeon: Use preferred kernel type
Date: Thu, 01 Oct 2015 10:30:48 +0200
Message-ID: <2926267.4Ab7JeGZa2@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443686741-3437-1-git-send-email-aybuke.147@gmail.com>
References: <1443686741-3437-1-git-send-email-aybuke.147@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID: V03:K0:pxdkXK/EcXTYlU+4ak/FDHTFPVLBuo62UbRbnTFbE09WPMFmPy8
 jh9NQhuK45r6xIS7frNc5/tWTL29kjZWXRawYLU++RHXXwRCoD5aFxU2A/IHPEDUsGRkuhP
 5RkNNW+vx3I1HUN7XCKqzIoKPXHUlHBQb+2cFHCNDAM0UdipOK3MdM7wZERT/9I7Qd56/ZG
 NpF6G417DvlU1o6D13pAQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:wFus3vEzVj4=:kSvDDpUUWZA1OxBJdGDMbl
 +/vn9cptL104HYsKe0UMu2/CFuEg2au0slX8CmaqvxTqK148gzf+O5T3VEFdsVy+xj7NKueH8
 Oxtz56vuqV+PUFa6m4AANyoib2rLU9MImUwn0u7iTrejZ6Tvclx+O19QSl1X7o13DL92pDZ5F
 BNJv69eQJiW/BPBPVBaX+F8d0KC2JjZ9qsC+5lHN4JtjPLDvr7eUhC39TQHd4BClngtIIgVzs
 sQsHcnC0PsiKhmHZqewxPXV1dx2Fi3Tr915aVQ/3Thwx3Q+svtYMU0kyo714OAQjSZmNhu8+p
 1JXYrLn7+X1XpBaDEYUlqgRXWim8mwOwrv1rmv8oOhikzPzTsW8aijLioFLBiECMyG8+QNTRJ
 7YjS0omHicVckxEE+mv7p11TnemJmnlBeBIVg9vwcOWdPLYR6JKipmnrxgYB5/jLP8TZRTm0c
 pML5u4omMrsI83OpTbBYK3SmBeMVuucmeh+Ugsx8T6uXTIMdKZ+ft6EoVVyf569NIG2gtcGFk
 l9dhKqFN38K+fG0XhH4v0pj2KNtftJbnw9sOsrRbJ4kFI5Zbaf/Fpp2OirHKIf/E66FVsi4zs
 LOL1gC+GMIu5X8B8ZugzPPOw+dgfu1RGzqhA/boFDA0ZPDLcsg9Wp3F6kp3c343Gc16ohCTL1
 UM8rVcE8fd9epo5BGIo+Rn3HVWsZu1tV55Vq9E7BEdRwgbRz4IRO8nUE04zz21eyHAtH9+/5Q
 MVI13CjSJv9vyAjC

On Thursday 01 October 2015 11:05:41 aybuke ozdemir wrote:
> This patch "uint*_t" type instead of "u*" type was used.
> checkpatch.pl issue in ethernet.c file.
>=20
> Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>

Each point is a bit better this time, but can be improved further:

> Changes since v1:
> * change commit explain message.

For the best changelog messages, start out by stating what the driver
does before your patch, and why that is wrong. This is the most importa=
nt
part to justify why the patch should be included. Only in the last
sentence of the patch, describe what you did instead, which can normall=
y
be really brief.

[In more complex cases than this when there are multiple ways to addres=
s
the problem, it can make sense to also list alternative approaches and
why you picked one over the others.]

> * all uint*_t type changed in one commit.

This is basically ok, but I'd go further here and do the same thing for=
 the
other three files using those types in the same directory. As a good ru=
le,
when you fix one problem, look around similar places (same file, same d=
irectory,
same subsystem) for how common the problem is first, and then decide on=

how far you want to go. Finding the right balance takes a bit of experi=
ence,
as you don't want the patches to become too complex or too simple.

The command

git grep -w 'u\?int[0-9]*_t' drivers/staging/octeon/

lists 5 files and 19 instances in this driver, which is large enough th=
at
you could do it as a series of five patches, but still small enough to
do it as a single patch because the replacement is very obvious.

If you decide to do only one file initially, you can mention in the cha=
ngelog
(below the --- line) that you intend to address the problem in the othe=
r
four files after this has been accepted. That avoids the obvious questi=
on
why you didn't do them all at once.

> * add my surname in user name part.

The spelling of your name still seems wrong, I would expect that you us=
e the
same capitalization as most other people and write it as "Aybuke Ozdemi=
r"
or "Ayb=FCke =D6zdemir" rather than "aybuke ozdemir", whichever you wan=
t people
to use when they write about you.

> ---
>  drivers/staging/octeon/ethernet.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octe=
on/ethernet.c
> index 7274fda..c9183e0 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -382,11 +382,11 @@ static int cvm_oct_set_mac_filter(struct net_de=
vice *dev)
>  =09    && (cvmx_helper_interface_get_mode(interface) !=3D
>  =09=09CVMX_HELPER_INTERFACE_MODE_SPI)) {
>  =09=09int i;
> -=09=09uint8_t *ptr =3D dev->dev_addr;
> -=09=09uint64_t mac =3D 0;
> +=09=09u8 *ptr =3D dev->dev_addr;
> +=09=09u64 mac =3D 0;
> =20
>  =09=09for (i =3D 0; i < 6; i++)
> -=09=09=09mac =3D (mac << 8) | (uint64_t)ptr[i];
> +=09=09=09mac =3D (mac << 8) | (u64)ptr[i];
> =20
>  =09=09gmx_cfg.u64 =3D
>  =09=09    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
> @@ -835,7 +835,7 @@ static int cvm_oct_probe(struct platform_device *=
pdev)
>  =09=09=09=09cvm_oct_device[priv->port] =3D dev;
>  =09=09=09=09fau -=3D
>  =09=09=09=09    cvmx_pko_get_num_queues(priv->port) *
> -=09=09=09=09    sizeof(uint32_t);
> +=09=09=09=09    sizeof(u32);
>  =09=09=09=09queue_delayed_work(cvm_oct_poll_queue,
>  =09=09=09=09=09=09&priv->port_periodic_work, HZ);
>  =09=09=09}

The changes look completely fine.

=09Arnd

