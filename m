X-GM-THRID: 2532715790336
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1fe12539ed2f9d18
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.168.104 with SMTP id zv8mr845984lbb.10.1424636564321;
        Sun, 22 Feb 2015 12:22:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.88.98 with SMTP id bf2ls348003lab.70.gmail; Sun, 22 Feb
 2015 12:22:44 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr851032lbo.8.1424636563996;
        Sun, 22 Feb 2015 12:22:43 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id o3si539661wib.2.2015.02.22.12.22.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 12:22:43 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.10;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0Letvr-1XkjjJ2cc3-00qmgL; Sun, 22 Feb
 2015 21:22:42 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove unnecessary else after return or break
Date: Sun, 22 Feb 2015 21:22:42 +0100
Message-ID: <8023474.7DBYLVBYK5@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424623218-9487-1-git-send-email-dilekuzulmez@gmail.com>
References: <1424623218-9487-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:qrQdFTusD1etTwc9V6yyTDQBS0A0ynrviWQw2fTpf24uudMVXOH
 WwGmQEHGw+tLxL5wjvu7piqW2UQVj2r7a0SV8AOIlelYzS3BxVL7GA7cqZ4dRssKYUNoF7P
 QP59bZeGHaOHpEs5R9GXVZYvr3MSePDv84+u0TdhsqqHVMwaowHKkJno7E4rvbQQl4yT/tb
 SXiVXo0JY2N9JIf9/FuTg==
X-UI-Out-Filterresults: notjunk:1;

On Sunday 22 February 2015 18:40:18 Dilek Uzulmez wrote:
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 9bb364f..3a1b8b2 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -612,8 +612,8 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
>                                         netdev_info(padapter->pnetdev, "r8712u: SET WPS_IE, wps_phase==true\n");
>                                         cnt += buf[cnt+1]+2;
>                                         break;
> -                               } else
> -                                       cnt += buf[cnt + 1] + 2;
> +                               }
> +                               cnt += buf[cnt + 1] + 2;
>                         }
>                 }
>         }

The 'else' clause here seems to be much smaller than the 'if'
clause.

How about negating the condition to have the shorter path
indented and then reformat the other one?

Similarly, you could do the same change to the outer 'if'
condition and just return early from the function if 'ielen'
is zero to remove one more level of indentation, and you can
move the variable declarations to the top of the function
to gain yet another level.

Finally, you can add a temporary variable to cache a pointer
to padapter->securitypriv that will allow you to avoid most
of the line breaks.

After that, the function should become much easier to read,
which is what the warning you got is all about. Changing the
one line here doesn't seem to be all that helpful if you don't
change the other parts at the same time.

	Arnd

