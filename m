X-GM-THRID: 6199959961900941312
X-Received: by 10.152.3.131 with SMTP id c3mr4407092lac.4.1443541636214;
        Tue, 29 Sep 2015 08:47:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.1.195 with SMTP id 3ls378795lao.0.gmail; Tue, 29 Sep 2015
 08:47:15 -0700 (PDT)
X-Received: by 10.112.149.39 with SMTP id tx7mr4483515lbb.11.1443541635630;
        Tue, 29 Sep 2015 08:47:15 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id ch7si691697wib.2.2015.09.29.08.47.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:47:15 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0MJCME-1ZeD290h5e-002lKU; Tue, 29 Sep
 2015 17:47:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [RFC] x86: include: asm: Fix build warning
Date: Tue, 29 Sep 2015 17:47:14 +0200
Message-ID: <65619350.xPqzLkLPqM@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443540659-6900-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1443540659-6900-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Provags-ID: V03:K0:nETklsF1S52sPE6ci9smemMN+fIN9vOdYDRW3MzHke+0A62VRk2
 +BtV4vWEEgEjSqJEoBRnrg9ciP7nrVREYe8DDixHy9fza9nn8iswVeTLFvBerPH7yOqC5HJ
 O1PZ+MQw5HhvNuDsPNMLfFz1IjphozUGwbGWaXBmuYIDy3Db88lto0G7g0wiXtJ4h3PklBx
 U5h1eVph6hZb2ehu+CUqA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:VjwgmFKPlB8=:RbOy7gnTJVouqu44RqxXK4
 6+Nn2XGqs9j0h8XQB8MFCcgXGEWVfMX2EWYzu74S02dAzAgNSNqjhQS2DS6745xzDcKGRSPwT
 9G4y5dcAxe7XwwGKbzG7jguXhdF9Fvrxl/5eBOQc5ZWrlon/D8uarFTJ79ng9Jf76OmXF9rGL
 fQ52yQsR7dWtsm2Ob7kNsm5Nklyzoxj9TSc7M3GJA27kGLGPwSj6l/oTinoBoJQatvWEfiiMC
 V0mwXawBZXk4lY3UzeJVsJJNp/osjh668h1iYbt7C9vdO9PZ57d69/0L1BGsVKkswvzWzOSZn
 3htWuwNwlWRQ75EqEk0HHbe6cdqxi2uezpAnpGiX7XdNsvT3aG7wMFAoqqQOpKMKntodvVcGM
 uUK3Ia3lnfg6mT43n/4UjaPS18V6ucrWFiobgQP0gQ82chNlX9eZ8JKFC9ciw85CMXSN7MJMi
 Hk5Uil1YMJNP7WLmCyOhSKKito1OJNd9nkazvnVxUMTOfeaboCnte7vkgkSsjAtKNhZldgeP6
 3lUXLeilD2Uia/Gn9ylKRyucIjgC52UobbQQBKONA6f1w96GCvfhoohekr/W5/sQmL14lTv1A
 yJmJ8mi0EwVtvpnGNmOr2RMGIPdXryQE8oF2AanyXrFcoD9TrltXnj4WW9+z1kmlOo3xyY8K0
 QZAgVXKTgy50ApigN5482ITbCYNbQ/YJc5tcoVCLp16fL/EERw6t8Llc8pNg9tltUsZBi7dxL
 Iew+tFnUQcDuqviL

On Tuesday 29 September 2015 17:30:59 Ksenija Stanojevic wrote:
> Fix build warnings:
> error: implicit declaration of function =E2=80=98olpc_board_at_least=E2=
=80=99
> [-Werror=3Dimplicit-function-declaration]
>=20
>  error: implicit declaration of function =E2=80=98olpc_board=E2=80=99=

> [-Werror=3Dimplicit-function-declaration]
>=20
> in files:
> drivers/power/olpc_battery.c
> drivers/input/mouse/hgpk.c
> drivers/staging/olpc_dcon/olpc_dcon.c
> arch/x86/platform/olpc/olpc.c
> sound/pci/cs5535audio/cs5535audio_olpc.c
>=20

The patch looks good to me in principle, except that it is missing
a 'Signed-off-by' line, and a somewhat inaccurate return code:

> +static inline int olpc_board_at_least(uint32_t rev)
> +{
> +       return -ENODEV;
> +}

The original function returns either 0 or 1, and so should this version=
.
Returning 0 probably makes more sense here.

With those two things changed, you could send the patch to the x86
architecture maintainers and the people that last touched
arch/x86/platform/olpc/olpc.c.

=09Arnd

