X-GM-THRID: 2004918206464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b8f4bc22680c0184
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.182.44 with SMTP id eb12mr418874wic.4.1424554474282;
        Sat, 21 Feb 2015 13:34:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.4.131 with SMTP id k3ls406793lak.21.gmail; Sat, 21 Feb
 2015 13:34:33 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr470836lbb.9.1424554473700;
        Sat, 21 Feb 2015 13:34:33 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id cl5si374558wib.3.2015.02.21.13.34.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:34:33 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MTgfY-1Xyma01wIa-00QRiT; Sat, 21 Feb
 2015 22:34:32 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Hatice =?ISO-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: else is not generally useful after a break or return
Date: Sat, 21 Feb 2015 22:34:31 +0100
Message-ID: <13586314.AW5Wp0HSbj@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424542612-19551-1-git-send-email-haticeerturk27@gmail.com>
References: <1424542612-19551-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Provags-ID:  V03:K0:UO9S7aXdstv1sMkXG9dF6UgXZcvK955PsD9UbLWqROiGkzi5mXn
 mDFexwRPei42Licdoo/jp3vsYmM6Q5+nkpVP2DY0MSUKXsPXEl5LOVc7EJUN3E5P52DQD36
 hwY6Ejtm64FH6qNvJMTGzSu2Ve/XtixNyZ68YWrHskM2gepI0my4cl3EGgK9lbghN1gOAuT
 qMWwMWxfJ7PbNG4LVDaeA==
X-UI-Out-Filterresults: notjunk:1;

On Saturday 21 February 2015 20:16:52 Hatice ERT=DCRK wrote:
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/stag=
ing/rtl8188eu/core/rtw_recv.c
> index bd79e9e..2b022be 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -1779,8 +1779,8 @@ static int enqueue_reorder_recvframe(struct rec=
v_reorder_ctrl *preorder_ctrl,
>                         plist =3D plist->next;
>                 else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_=
num))
>                         return false;
> -               else
> -                       break;
> +
> +               break;
>         }
> =20

This is not a correct change, you add a 'break' in the case that
the first condition was true, which did not exist earlier.

=09Arnd

