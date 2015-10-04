X-GM-THRID: 6201866686183768064
X-Received: by 10.112.202.165 with SMTP id kj5mr4501987lbc.5.1443987955023;
        Sun, 04 Oct 2015 12:45:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.72 with SMTP id t69ls343562lfe.56.gmail; Sun, 04 Oct
 2015 12:45:54 -0700 (PDT)
X-Received: by 10.112.198.33 with SMTP id iz1mr4466500lbc.8.1443987954310;
        Sun, 04 Oct 2015 12:45:54 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id xl3si376571wib.1.2015.10.04.12.45.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 12:45:54 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0LtFON-1aks2M1gol-012oFy; Sun, 04 Oct
 2015 21:45:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Hatice =?ISO-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: mtd: ftl.c: Remove intialization of static to 0
Date: Sun, 04 Oct 2015 21:45:52 +0200
Message-ID: <27989039.P1pxbOgr35@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443984593-12445-1-git-send-email-haticeerturk27@gmail.com>
References: <1443984593-12445-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID: V03:K0:DaW4EzUa7wLZI48Roha7NXv72NO/znQIH7keegDa9NgL+f48Mff
 3ABGbFwK3KHfXU8Qyt763hmxjB9g1pqtBToYcTzlybppsthnVoqcYykl+bzC8HgVTKl+/dS
 4ZWuijGN/uzbDBQVB3KVpRtkIFUcv4OXMi6BYaH6Wt592FJLAv0cxKrInvNFTaiC6i0dCeE
 cPc9EiEPhT7Gb6Q1HZWtA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:VAnlDijf9rw=:ZbDGf9R9ninwNvOkC4Q888
 UeMfKemMb7RTWIk+S+41M/iNaEQYIMAJkjBOQB2U28cDnVvJ/iYnP9NJHeS+RL03Xkj4pQ0FF
 3AflLOeMBC/0dLr0BKrn8TtM8xNPHGmr2LQYd54P9zpiH2Y7OkJNHWggaRK2mjZ08pq87/a1d
 qwKXbAOA/tzdkWdtXbzAvPBL6OrhPEIlQ054mYS/juCmKVOebGjoiVlscrNQ3cuuqR6TQPRbQ
 h0v88cIg7KobE1dZSzPJZk8Ob1BWVRePDIom5dJKNy525ilaj6WCql7+vqwVEs4dRCwV4rVMx
 M9CEpWIzof/AaTaa6HhLkIFyYiQDt3MV8aOP+d11VYol2epoIwn8Bt45YRVhGE99O/ZoPrads
 XJKTaTtGmtTGngLtxwLfdN2ETkUMWkiYRoC1cf7rq8dPAzUe/DJUPj95xj/kOkMV9HRYX1tm/
 gxJiyeNb1/FN2AP2EwhD7zlAW1Cx2Ps/HOVii9xq84/jO+Sd/SqvJsctDvuUKjselXCdgTpOE
 8camcMHzh1ieyz/ukJYsd+ZTI5R8eTmvWgV9189Xiii+prp6GShx/XdyBn4yw+ZYAHoxlMiWJ
 wPuDyswskSabN/oA/4FMPfrUj9+ufFwnvQsuuvQ97SiNpGhg2LKOplc+DhbW+FfT6ebgvr+c3
 s6WgLditbgCv0eJPBomBURq3fyHnFQxRkGYKAX5tGY2+QR8H5XKFFXD34a9Ss9FyDphKHqAuV
 RbMkHsOVpX2lLLfl

On Sunday 04 October 2015 21:49:53 Hatice ERT=DCRK wrote:
> initial value unassigned static variables are automatically set to ze=
ro. So it is unnecessary to assign the initial value to zero
>=20
> Signed-off-by: Hatice ERT=DCRK <haticeerturk27@gmail.com>

Hi Hatice,

This file is outside of drivers/staging, which means that Greg won't
apply it to his staging tree, and we don't have a mentor that volunteer=
ed
for drivers/mtd.

Also, the kind of change means that this is something most maintainers
would not take. Purely cosmetic coding style changes are definitely
ok for staging, but I'd recommend sending them for other subsystems.

=09Arnd

