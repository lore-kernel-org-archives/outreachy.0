X-GM-THRID: 6806929906514001920
X-Received: by 2002:a17:906:f842:: with SMTP id ks2mr16074512ejb.379.1584875376217;
        Sun, 22 Mar 2020 04:09:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:17f6:: with SMTP id t22ls6268010edy.6.gmail; Sun,
 22 Mar 2020 04:09:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtYFnirsUYVV0C1KjyQ3ltz+zYNmGriP5M31bSFhVvt5e6vtz8okG/8QHswRYW+/RreuYcB
X-Received: by 2002:aa7:cfc5:: with SMTP id r5mr2269041edy.78.1584875374903;
        Sun, 22 Mar 2020 04:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584875374; cv=none;
        d=google.com; s=arc-20160816;
        b=HRZqnd9olJGWEA6IHisiKk1iWxdm8nTBMZV1bC52Ye31PCfpzWpK1HwrIrG1ACDbx0
         6a+/Y04t3SA1lPw51bz3YJqk6mnw1HsmHcdkQXUdPpZuq43m68eW8IYH5PpTr1gIVe/z
         7l9wKLx46i3GvTblO3aQX2NjJ8HfuIkd8M6u9eAdn8eCrZpr0Dj8EYC3ZlKuuoiLAH9I
         Lt7/2rDg+spky1aaJ8cyh3GYKZV9uvR28wnU9vWudqbGi2Z7L0bBBlNf7F54z2unmx6V
         ZxVw024hcG38Ewb6gKMqtlbfjVeDEak2ZbNJFbCxaH/pXHOv0s+WdoBHgmoOCogAysAZ
         yRww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=t1PQgabdC2XfTjyhUxdpH/yBauHRTTAf3/s9K6ExUy4=;
        b=eFfTq3j5Yroas6k5G2ybz5VqSB7COceAm3SJ2nDoIrqfPM6ck/niZSBiCM1LcIK979
         +/99NReNvaehaJ9b+KT7Nzm0+UMURGPKq0FlKT4+9wD/ghpb9+5QXNQFY+v0eE2njBlE
         Fkzn75hsAbdUPQMDWWV7wDkJUDUAg958yVZT9VsKoOvP1yVyrCZ3oJfLHCPYi80oXvnC
         HRGw9OD/TeF4MF3Cc4vE2fgoIkhfeWEeHBiHd45izV7dS1KobM4vXHrHnMcdTD7SK6HI
         7csqxRLmXYxHxmPxlJKcx6Uz87lR+BIg/7pNCy9OsOZY9csJaL5MpxxEZRYCuu5m6P6Z
         J6yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f2si301690edm.1.2020.03.22.04.09.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 04:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,292,1580770800"; 
   d="scan'208";a="441535605"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2020 12:09:34 +0100
Date: Sun, 22 Mar 2020 12:09:34 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sam Muhammed <jane.pnx9@gmail.com>
cc: Jaroslav Kysela <perex@perex.cz>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: hp: Use netdev_warn().
In-Reply-To: <20200322110035.2756-1-jane.pnx9@gmail.com>
Message-ID: <alpine.DEB.2.21.2003221207570.2325@hadrien>
References: <20200322110035.2756-1-jane.pnx9@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 22 Mar 2020, Sam Muhammed wrote:

> This replaces printk(KERN_WARNING ..) with netdev_warn(),
> as the use of printk() isn't preferred when
> a struct net_device is available.
>
> Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> ---
> Changes in v4:
> - Make log message more clear.
>
> Changes in v3:
> - Update subject line and log message to be more desriptive.
>
> Changes in v2:
> - Remove " : " from the printing message, netdev_warn() doesn't need it.
>
>  drivers/staging/hp/hp100.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index b89c4dcf53f5..1afd511260d0 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -469,8 +469,7 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>
>  	eid = hp100_read_id(ioaddr);
>  	if (eid == NULL) {	/* bad checksum? */
> -		printk(KERN_WARNING "%s: bad ID checksum at base port 0x%x\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev, "bad ID checksum at base port 0x%x\n", ioaddr);

After I apply the patch, I see this as 1 character over 80 characters.
You could put ioaddr on another line.

julia

>  		goto out2;
>  	}
>
> @@ -478,9 +477,9 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
>  	for (i = uc = 0; i < 7; i++)
>  		uc += hp100_inb(LAN_ADDR + i);
>  	if (uc != 0xff) {
> -		printk(KERN_WARNING
> -		       "%s: bad lan address checksum at port 0x%x)\n",
> -		       __func__, ioaddr);
> +		netdev_warn(dev,
> +			    "bad lan address checksum at port 0x%x)\n",
> +			    ioaddr);
>  		err = -EIO;
>  		goto out2;
>  	}
> ---
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322110035.2756-1-jane.pnx9%40gmail.com.
>

