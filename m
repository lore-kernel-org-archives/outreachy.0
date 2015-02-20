X-GM-THRID: 1433009127424
X-Received: by 10.42.62.67 with SMTP id x3mr298ich.4.1424459048199;
        Fri, 20 Feb 2015 11:04:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.100 with SMTP id rv4ls401086obb.84.gmail; Fri, 20 Feb
 2015 11:04:07 -0800 (PST)
X-Received: by 10.182.29.3 with SMTP id f3mr11226292obh.16.1424459047001;
        Fri, 20 Feb 2015 11:04:07 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22a.google.com (mail-qa0-x22a.google.com. [2607:f8b0:400d:c00::22a])
        by gmr-mx.google.com with ESMTPS id ba9si5308319qcb.0.2015.02.20.11.04.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:04:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22a as permitted sender) client-ip=2607:f8b0:400d:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22a as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x22a.google.com with SMTP id w8so13831644qac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 11:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=iN7QtDsG+YxrmocUzGpEnyRnWI5m8OfkkvRnjwTdzEw=;
        b=N3XXxBGVxSGHwXYKSzU8bVS67/HR+jadoYUR+Kj9n9CiQ/1Hf5FRFwPrwvOe+s5OwF
         pIm0bDBLk2wRWdzxKvtBGC1aTKZ+v1mkkJNudX9rUzSKuvHGgpTbAdl/QkzmqiTNB9G1
         c8aOPo1irTAlrRx/Jj+z2riDlLJ1W93bFOcMyiZCn08yv+Gt84DDUsSzn/RuvqVD0//x
         adT01VrvNWS0U4XkgOQu/aXk+EYhkSHIojTYnfUWWK+EAhkyRvrYIjNOjhHukLDluom+
         TI64ND/cJmMdMFG8OmHZv7pucnoXXSbEhRm3J1bkFvG5SAsz+xKpnKUyltFvCNZB1d2/
         Mn3A==
X-Received: by 10.140.150.199 with SMTP id 190mr27616274qhw.70.1424459046887;
        Fri, 20 Feb 2015 11:04:06 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id f63sm1092936qga.26.2015.02.20.11.04.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 11:04:06 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E78525.9090308@gmail.com>
Date: Fri, 20 Feb 2015 14:04:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove else after
 return
References: <1424457078-5570-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424457078-5570-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/20/15 13:31, Ksenija Stanojevic wrote:
> This patch simplifies the code by removing else and fixes
> the following checkpatch.pl warning: "else is not useful after
> break or return".
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
> index e210664..00be1fd 100644
> --- a/drivers/staging/rtl8192u/r819xU_phy.c
> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> @@ -1363,11 +1363,11 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
>  			if ((*stage) == 2) {
>  				(*delay) = CurrentCmd->msDelay;
>  				return true;
> -			} else {
> -				(*stage)++;
> -				(*step) = 0;
> -				continue;
>  			}
> +			(*stage)++;
> +			(*step) = 0;
> +			continue;
> +
>  		}
>  
>  		switch (CurrentCmd->CmdID) {
> 

There is one issue with your patch, you add a blank line after continue,
that one needs to be removed.

rtl8192_phy_SwChnlStepByStep() is an utter mess, and given that the
function is huge and have a lot of return points, one either has to take
the approach you have chosen or fix them all up. I just told Aybuke
Ozdemir to use a goto to fix a similar case, so I wanted to point out
that here I think your solution makes sense.

There is another bad case with this function in that they return
true/false in a u8 variable, ie. the variable and the values assigned to
it do not match. This would call for a separate patch though.

Cheers,
Jes


