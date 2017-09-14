X-GM-THRID: 6465665383361675264
X-Received: by 10.25.18.223 with SMTP id 92mr1983087lfs.11.1505405419918;
        Thu, 14 Sep 2017 09:10:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.131 with SMTP id u125ls1605850wmd.0.gmail; Thu, 14 Sep
 2017 09:10:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCqJ/CDYe1X134VP+wZwm7QEP6FyrSBJgLl5QE1uGWDYRpM/IreQ4wY3vKxVM3SYyJeaqAO
X-Received: by 10.28.230.79 with SMTP id d76mr63018wmh.12.1505405417925;
        Thu, 14 Sep 2017 09:10:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505405417; cv=none;
        d=google.com; s=arc-20160816;
        b=jLc78mfROBVkQxmizgwd1Lpr45QLc/yVdbZb2Og801YifWNP2zlLC89CMxxD3GXGLN
         CRcihJvpKqtmShK1F9UkPfzoNzp8GbXMKTBQ9a9l1DgsxxeKwjwpRoTke706QacZIWQ8
         mTgu0ejdBAqDwMZWgBb/sZIF3Yav8DEGBjxEKOL/9YpUaKxVHYV+/UX4ih5beGb8/5Er
         IhDFVgyUeE3pP7iHJshp63tzofF5NW/S0xAeOshrf+D5KJ3KwjE1dGKHfM6vWLlyzuGL
         Jn/4XqZTN7wRIWwLN8NUOcErYZ/H2wNlJzQRT8RwRaLCOWJH3Y39HZNB2WpXCFmZ3+Bu
         YMTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=KLw040TCnJ7XE20L/bFYnXgV68Z6j/iWIS46FyqFdNU=;
        b=QgEgYRHqScJUqdhD2XXVEd3TjuwB1XLK0AJ0/2gFox+teOG92qfJDnJRlQmlJHFGfu
         qv+komdohQ1PiWN5NPPb2O7EM/hBDMMn6trzDLwqAU5YwpQ2csA1TGn/ZdAU1I0p6Fmo
         cJtNylwI0NcF+fDUE6+UAoXde0ZXVZkVJdX3OoRVIqwBkM5Vz3Huy5qz9uOFFPRJbkux
         ZrRYtTmppoAIaSknaLEvFG2vJPT+JLtAVUXcb9Q5abr2mkkqQCPgcRvfscP8mrjnBs2U
         JGjQfMJxJwzMT6yuO90r4XnSN4ErOyJB2RK+WC5YMF2n9Z/bBvWiRNqnTTJnhaPVBEcy
         CJzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r185si19659wma.9.2017.09.14.09.10.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 09:10:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,393,1500933600"; 
   d="scan'208";a="291123571"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 18:10:15 +0200
Date: Thu, 14 Sep 2017 18:09:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unused
 variable ret
In-Reply-To: <1505404910-11548-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141807561.3185@hadrien>
References: <1505404910-11548-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Harsha Sharma wrote:

> Remove unused variable ret as it is not used anywhere.
> Remove multiple blank lines.
> Done using following coccinelle semantic patch
>
> @@
> type T;
> identifier i;
> constant C;
> @@
>
> (
> extern T i;
> |
> - T i;
>   <+... when != i
> - i = C;
>   ...+>
> )
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index ffbb35a..7935dc5 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -2337,10 +2337,6 @@ static int rtw_wx_read32(struct net_device *dev,
>  	u32 data32;
>  	u32 bytes;
>  	u8 *ptmp;
> -	int ret;
> -
> -
> -	ret = 0;
>  	padapter = (struct adapter *)rtw_netdev_priv(dev);
>  	p = &wrqu->data;
>  	len = p->length;
> @@ -2352,7 +2348,6 @@ static int rtw_wx_read32(struct net_device *dev,
>  		return -ENOMEM;
>
>  	if (copy_from_user(ptmp, p->pointer, len)) {
> -		ret = -EFAULT;
>  		goto exit;
>  	}
>
> @@ -2375,7 +2370,6 @@ static int rtw_wx_read32(struct net_device *dev,
>  			break;
>  		default:
>  			DBG_871X(KERN_INFO "%s: usage> read [bytes],[address(hex)]\n", __func__);
> -			ret = -EINVAL;
>  			goto exit;

One could have the impression that the function should instead return ret.
One would have to figure out where the function is called from and what
happens there to the return value.

julia

>  	}
>  	DBG_871X(KERN_INFO "%s: addr = 0x%08X data =%s\n", __func__, addr, extra);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505404910-11548-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

