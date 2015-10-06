X-GM-THRID: 6202249828233117696
X-Received: by 10.112.26.212 with SMTP id n20mr6187074lbg.2.1444119140330;
        Tue, 06 Oct 2015 01:12:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls550237lfg.109.gmail; Tue, 06 Oct
 2015 01:12:19 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr6065936lbc.5.1444119139714;
        Tue, 06 Oct 2015 01:12:19 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id h2si150799wiy.0.2015.10.06.01.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 01:12:19 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0MR7U6-1aCdZt019y-00UMHv; Tue, 06 Oct
 2015 10:12:19 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Hatice =?ISO-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: lustre: lnet: klnds: socklnd: Fixed comment style warnings
Date: Tue, 06 Oct 2015 10:12:18 +0200
Message-ID: <5387713.QMGkoe8ZvK@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1444073583-9311-1-git-send-email-haticeerturk27@gmail.com>
References: <1444073583-9311-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID: V03:K0:tCLNg+OYmqNYVHdKBpn8d2/wHaI6om+1y59ADv0HIe9OweRhpc9
 2EFjyerCySJ51WCx/q/J13yNKA6aOBQZFU2qkNyABYW6L2eHOKnSGkXB/G/d6nMwZioK7UU
 DhNV/q6OYW0OEBHuaDD1n5jto+w9w5+LqPRh8YEeps3Kw6IfH7Qlj033rUO1gTwdehwTt6u
 0J65zZZ454mvBB5ICFSiQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2kEufcl58FA=:wodWlb4MM2mccLiqo+YytY
 inq8UTgBzqtjkXcBzTl89vPS8sUulFmvcsvgzUxu4LjypBKclUytPqQqQlqaT9+vPN3CWnr9/
 xug2A+EQkXqzJMrtjJf4OY/O4/gHRLmSp7k3Vl1waePkuMHyZt3kDE+MBGe5XRvXreHLZBwlS
 p94RHjH8TjQQnKnPQok+HTWsMVqWXqCC2XdGppoZ1ZoRebEXYXnTqDUPbciA/PgxygfggDn5P
 yGL2ptVKDGHl7XQ+lSSE3Fq4F34iYSrIZ1Ue4SPjY2n6DAw187GpKs5h+tGz96xK1JmFjUTQ0
 mrDzxSJzJO642dWuE+QliBkz0bHZ79/iIHCl9guLhg+077VkIduK4Qe/o+QG1l/jcIF7ib2uh
 yL8aDQ/8j49Kve7efJJneal6lArYLhdAOn8c+OdTgcXYbraZM+XfcRPfqExKzKabl3dDQ9VGi
 8yNpMvts5bSDbBhMAvMSFW1+2j/5E9Ohg42SL14vYn2nzgKrlsD0UvhvtXFsJueGjBbEHRIXx
 odWbFlEQGGVwT2VoJVTXFYrKkQ1Px/PSNpUjtFKRUCN+A53MfEbHg52IyMm8eVIRyjQVaOOcK
 VNeA5DkIqpUPRE+26fmVraa8LmsDLe2Xu2PtQQiUJdxZi8FG7pliSZ2oRttFhQaJ2agVDu4Nu
 KoJEa8CInSxgI8dk5NJZ7lKhVzoLn1sETgO+YEEsaEZiUeE2b4xd2G3OVRNT/6RlEqcBMy+py
 gSM3f11NmUAa4449

On Monday 05 October 2015 22:33:03 Hatice ERT=DCRK wrote:
> +               /*=20
> +                * All IPs in peer->ksnp_passive_ips[] come from the
> +                * interface list, therefore the call must succeed.
> +                */
>=20

There is also trailing whitespace in this one. Not sure if you already
found this after the comment on the other patch.

=09Arnd

