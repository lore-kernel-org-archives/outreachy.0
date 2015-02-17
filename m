X-GM-THRID: 126410031104
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6dcdcaf60ee56e37
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.87.97 with SMTP id w1mr4262065igz.1.1424183646673;
        Tue, 17 Feb 2015 06:34:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.101 with SMTP id m5ls1524885ige.28.canary; Tue, 17 Feb
 2015 06:34:06 -0800 (PST)
X-Received: by 10.42.96.67 with SMTP id i3mr27057959icn.7.1424183646471;
        Tue, 17 Feb 2015 06:34:06 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id nt6si1081444igb.2.2015.02.17.06.34.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 06:34:06 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0McvNR-1Y5mhR0WeH-00Hy7R; Tue, 17 Feb
 2015 15:34:04 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Replace C99 with C89 style comment.
Date: Tue, 17 Feb 2015 15:34:03 +0100
Message-ID: <2698466.rZGt9NFiuE@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1424183244-4997-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424183244-4997-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:PjCJIck4m34i4HSQY1c3sNqK0GgyxOAL/+y4giGSEFCgPkTKuhE
 SZRtdASMzauOHfIabaGbdsOwjhJLhYPBTY/aZMjlimu6yeI6PgD3ewAsN+dEVpXpTCRuZAJ
 4UZv4kfE4JFYGo5HHDh8TgxNWMSf3lPxF93F0T/UNNTfKJgTpip4eJPFLMtL+5N7sLw3sez
 uXI8+B+GuJJ3TLhsto2UQ==
X-UI-Out-Filterresults: notjunk:1;

On Tuesday 17 February 2015 15:27:24 Ksenija Stanojevic wrote:
> diff --git a/drivers/staging/media/vino/saa7191.c b/drivers/staging/media/vino/saa7191.c
> index 8e96992..087acab 100644
> --- a/drivers/staging/media/vino/saa7191.c
> +++ b/drivers/staging/media/vino/saa7191.c
> @@ -33,7 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>");
>  MODULE_LICENSE("GPL");
>  
>  
> -// #define SAA7191_DEBUG
> +/* #define SAA7191_DEBUG */
>  
>  #ifdef SAA7191_DEBUG
>  #define dprintk(x...) printk("SAA7191: " x);
> 

The patch looks correct, but it's worth noting that the comment here
is used for a particular purpose that is also against coding style:
instead of defining its own dprintk() macro that depends on
SAA7191_DEBUG, the driver should just use the 'pr_debug' symbol
that is provided by the kernel for the same purpose.

Can you try replacing all uses of dprintk in this driver with
pr_debug or (better) dev_dbg() and remove the other definitions
as well?

	Arnd

