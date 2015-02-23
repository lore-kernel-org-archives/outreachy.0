X-GM-THRID: 1698312486912
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a8137618093e02d4
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.77.101 with SMTP id r5mr1714341lbw.4.1424728521779;
        Mon, 23 Feb 2015 13:55:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.71 with SMTP id r7ls513371lag.42.gmail; Mon, 23 Feb
 2015 13:55:21 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr1636641lbb.6.1424728521327;
        Mon, 23 Feb 2015 13:55:21 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id el6si789943wib.2.2015.02.23.13.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 13:55:21 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MOlGA-1YUzK22Vi2-0065G0; Mon, 23 Feb
 2015 22:55:20 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Removed unnecessary else expression.
Date: Mon, 23 Feb 2015 22:55:20 +0100
Message-ID: <12946799.ZKSCC8uM5z@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424514568-14515-1-git-send-email-dilekuzulmez@gmail.com>
References: <1424514568-14515-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:8b35+Vqn6eCGTcRNpFP24PgdqF34EpZMkwrLoIYqipWuKAr0BmL
 I4rD7sYDwpIcQiLBzyBf+KqmLeqHd8a/V8kKSuFvgcApk2+hCJTZa+LPuLkZqNZPnYp9DFN
 1dWZLm9/ohFQYtQM6jo4iO8CT6g07iQIwP1+ZIud0m41peYBVaC1PgPY7sratoidYLQ8Tc3
 4Lv5ddBUFXdKwsRNGtm8w==
X-UI-Out-Filterresults: notjunk:1;

On Saturday 21 February 2015 12:29:28 Dilek Uzulmez wrote:
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index cd8b444..800b2b3 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -496,8 +496,7 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
>                         plist = plist->next;
>                 else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
>                         return false;
> -               else
> -                       break;
> +               break;
>         }
> 

I think someone else sent the same patch already, and it's still wrong.

Please make sure that you do not change the code behavior in cleanup
patches.

	Arnd

