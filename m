X-GM-THRID: 1048238358528
X-Received: by 10.182.246.37 with SMTP id xt5mr8479087obc.25.1424423083938;
        Fri, 20 Feb 2015 01:04:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.131 with SMTP id r3ls676084ioi.82.gmail; Fri, 20 Feb
 2015 01:04:43 -0800 (PST)
X-Received: by 10.42.148.65 with SMTP id q1mr9465177icv.28.1424423083739;
        Fri, 20 Feb 2015 01:04:43 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id pc4si3211499pac.0.2015.02.20.01.04.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 01:04:43 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0Lzkkl-1XT0UD06mx-0152s8; Fri, 20 Feb
 2015 10:04:42 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Vatika Harlalka <vatikaharlalka@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: Remove unneeded log macro
Date: Fri, 20 Feb 2015 10:04:41 +0100
Message-ID: <7001025.GjmsQEPpzO@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20150219223412.GA1134@gmail.com>
References: <20150219223412.GA1134@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:t3yZKChkpuQifMl1ah6aD2txYG1IhbNbQGmVu7ZOKQrJDzB19J+
 xkh5DdN6wmRSyXzJHW8fEHhLjFsgf85Cepqgmu4SQ0j8DJ8QJkkzFyvKG1E9gLwqydPuNU1
 lT3YI4tdQC7bRNPdUo2kFZ+8sgApPvhI1pZuTc03IPKzA0AbFLiZCj4OOd2Qx/BeHxFoszh
 fif1Hkb1h7yfqUIszjnAg==
X-UI-Out-Filterresults: notjunk:1;

On Friday 20 February 2015 04:04:12 Vatika Harlalka wrote:
> This patch is to remove unneeded log macros which only
> indicate entry/exit from a function. The kernel provides 
> mechanisms for function tracing so these can be dropped.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>

I believe this driver was removed already, so the patch no longer
applies.

> 
> diff --git a/drivers/staging/media/tlg2300/pd-main.c b/drivers/staging/media/tlg2300/pd-main.c
> index b31f479..c2dd3b4 100644
> --- a/drivers/staging/media/tlg2300/pd-main.c
> +++ b/drivers/staging/media/tlg2300/pd-main.c
> @@ -207,7 +207,6 @@ void poseidon_delete(struct kref *kref)
>                 pd->interface = NULL;
>         }
>         kfree(pd);
> -       log();
>  }
>  
>  static int firmware_download(struct usb_device *udev)

Doing this is a good idea in general, but if I did this for another
driver, I would remove the macro definition along with the uses.

	Arnd


