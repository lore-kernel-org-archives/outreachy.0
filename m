X-GM-THRID: 1013903785984
X-Received: by 10.70.46.233 with SMTP id y9mr8879262pdm.9.1424431934708;
        Fri, 20 Feb 2015 03:32:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.120.161 with SMTP id ld1ls300289obb.83.gmail; Fri, 20 Feb
 2015 03:32:14 -0800 (PST)
X-Received: by 10.182.148.164 with SMTP id tt4mr8561261obb.30.1424431934433;
        Fri, 20 Feb 2015 03:32:14 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x230.google.com (mail-qa0-x230.google.com. [2607:f8b0:400d:c00::230])
        by gmr-mx.google.com with ESMTPS id e5si2550436qcg.1.2015.02.20.03.32.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:32:14 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::230 as permitted sender) client-ip=2607:f8b0:400d:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::230 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x230.google.com with SMTP id dc16so11854528qab.7
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=LpUWpIWAoPZltnNopK4copbxgw74VI8mt5sBgLfr3tk=;
        b=whnJ3oerNDqzHu3/NG8n1iJV3hLJM/ukK2SI7wgqhdZdK8Ne+LewlsOu7F5X/G7k2V
         gwIratKE4uNNuUSWLAsFXXPvXUD2BJi/lkhURiLeddPRfB5iDn0S28OHj9TQZQwb+g7v
         KdxIMHmGbiqwxIRWgaJbI8oyc59450xS1UaQNq3y2u0ni2+/88EKiiuML0t/At9zVn7S
         UWdvW48mafGvxJx5IyNzsT6abFF1uC/UJLb+/qdlySTdaWcgvR7pjFRguHL4Dvl0a0fK
         hovPBi0I6LNN742LgRUIArZIw9IPQtpsf5ad3voTnUr2DTVe4EQD03C0h856yzJ6rCbr
         z5sQ==
X-Received: by 10.140.23.40 with SMTP id 37mr21281552qgo.93.1424431934305;
        Fri, 20 Feb 2015 03:32:14 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id 10sm11468503qhc.12.2015.02.20.03.32.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:32:13 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E71B3D.6090107@gmail.com>
Date: Fri, 20 Feb 2015 06:32:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove space before
 tab
References: <1424383520-21750-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424383520-21750-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/19/15 17:05, Ksenija Stanojevic wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "please, no space before tabs"
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Again here your patch looks fine, the only thing needed to make it top
of the line is a more personalized commit message.

Cheers,
Jes

> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
> index 0589602..dbd3321 100644
> --- a/drivers/staging/rtl8192u/r819xU_phy.c
> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> @@ -106,10 +106,10 @@ void rtl8192_setBBreg(struct net_device *dev, u32 reg_addr, u32 bitmask,
>  /******************************************************************************
>   * function:  This function reads specific bits from BB register
>   * input:     net_device	*dev
> - *            u32	 	reg_addr   //target addr to be readback
> - *            u32	 	bitmask    //taget bit pos to be readback
> + *            u32		reg_addr   //target addr to be readback
> + *            u32		bitmask    //taget bit pos to be readback
>   * output:    none
> - * return:    u32	 	data       //the readback register value
> + * return:    u32		data       //the readback register value
>   * notice:
>   ******************************************************************************/
>  u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32 bitmask)
> @@ -478,7 +478,7 @@ static void phy_FwRFSerialWrite(struct net_device *dev,
>  /******************************************************************************
>   * function:  This function reads BB parameters from header file we generate,
>   *            and do register read/write
> - * input:     net_device 	*dev
> + * input:     net_device	*dev
>   * output:    none
>   * return:    none
>   * notice:    BB parameters may change all the time, so please make
> 


