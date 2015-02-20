X-GM-THRID: 1055341412352
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fa81c02fcb664df
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.33.97 with SMTP id q1mr9281348obi.42.1424432244478;
        Fri, 20 Feb 2015 03:37:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.227 with SMTP id i90ls924589qge.59.gmail; Fri, 20 Feb
 2015 03:37:24 -0800 (PST)
X-Received: by 10.236.36.39 with SMTP id v27mr9103704yha.24.1424432244328;
        Fri, 20 Feb 2015 03:37:24 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22c.google.com (mail-qc0-x22c.google.com. [2607:f8b0:400d:c01::22c])
        by gmr-mx.google.com with ESMTPS id ba9si5167552qcb.0.2015.02.20.03.37.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:37:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22c as permitted sender) client-ip=2607:f8b0:400d:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22c as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22c.google.com with SMTP id m20so122309qcx.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=JyLpUfxROm0nDiH5Z7/k+Zup9mGRV3rChsstpLWyn8g=;
        b=Gyw6Bo2XIA2jWZ8E153sYUwHw6eYToXMe1tOM3QfHUGE54oW5u87Cxy0DeFOqLBDPO
         O/KAK3v+EDM+ZEIdbwgkM6e1DCYqMMlPqXVlUX3NYl5D8f5blCeK4EBpEzlto5RR2nlw
         GH5fBoOYViNKfB847Sosk4ARrhFaSWrSBcmHwMYPlBeOXaEFwqRuSQ9zDiSIhbJauOF9
         uLX4hATZ2SR8afKIgQKv2Hcu0q2VZ4ORrOrWrULE2iLSRHZGrC9fbKqlGdtFU+AgrXxR
         NiLOKlOB7QyLWGj+jDSUCmnrfBGDnnbw0SOGEsT33xuyH0ws0PxC5IWHwnpt5O3KB5nf
         a+sQ==
X-Received: by 10.229.216.71 with SMTP id hh7mr6384525qcb.0.1424432244215;
        Fri, 20 Feb 2015 03:37:24 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id k3sm21767705qao.0.2015.02.20.03.37.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:37:23 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E71C73.7090007@gmail.com>
Date: Fri, 20 Feb 2015 06:37:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Reposition of return
 statements
References: <1424385500-22022-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424385500-22022-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/19/15 17:38, Ksenija Stanojevic wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "else is not generally useful after a break or return"
> by placing return reg after if-else branch.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_phy.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
> index d006602..f343735 100644
> --- a/drivers/staging/rtl8192u/r819xU_phy.c
> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> @@ -355,13 +355,12 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev, RF90_RADIO_PATH_E eRFPath,
>  		bitshift =  rtl8192_CalculateBitShift(bitmask);
>  		reg = (reg & bitmask) >> bitshift;
>  		udelay(200);
> -		return reg;
>  	} else {
>  		reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
>  		bitshift =  rtl8192_CalculateBitShift(bitmask);
>  		reg = (reg & bitmask) >> bitshift;
> -		return reg;
>  	}
> +	return reg;
>  }
>  
>  /******************************************************************************
> 

In this case the automated commit message is actually a little unclear,
at least to me. Explaining that you are simplifying the code by not
having two identical paths would be better.

You could take this patch further as most of the code is identical
except for the udelay() in the first case.

Cheers,
Jes


