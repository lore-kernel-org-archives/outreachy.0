X-GM-THRID: 2590517493760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,93e7be34ae9f918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.53.10 with SMTP id f10mr13092616yhc.17.1424720709341;
        Mon, 23 Feb 2015 11:45:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.74 with SMTP id m71ls1702000iom.109.gmail; Mon, 23 Feb
 2015 11:45:09 -0800 (PST)
X-Received: by 10.68.104.5 with SMTP id ga5mr13309486pbb.2.1424720709132;
        Mon, 23 Feb 2015 11:45:09 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x233.google.com (mail-qc0-x233.google.com. [2607:f8b0:400d:c01::233])
        by gmr-mx.google.com with ESMTPS id e5si3606094qcg.1.2015.02.23.11.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:45:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::233 as permitted sender) client-ip=2607:f8b0:400d:c01::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::233 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by qcqi8 with SMTP id i8so12829718qcq.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=FY/RWFMPY9Sp8yBVEEMSqUWUhmIpb9u2uzwt37Lnro8=;
        b=Gc7WkdaOh4oWhHfaB279BRWHPgRAe86Jd5nWAkbTMLezGjaCobenN9g0m0iXo8VLeh
         Ov3/AVnqf0f/B5pFu32GsHEbJupD+r13tL4MqN/YkAUBNLGHeAgbgTgfgc7epBfPMgC7
         Y09p8y8MlRf204ApIFBupfHjnHqsrwl79SpnZmHGyZS4WlEbIUo2U5/TtbPwBkvaqPnR
         UCuZnrQG3tGw3qlwW5qkxMKwuhCAvKKYSzhnUOjIJPbanpGl2v8vIlXZNT1WaDm/GjUC
         DTvfx8TsbVjiskMtNqCN3l6ukUNf9MxLOgxtVmhhCHWxi/rpBApU0EJh1nGecCkYaP7u
         p3fQ==
X-Received: by 10.140.201.8 with SMTP id w8mr17065381qha.51.1424720709002;
        Mon, 23 Feb 2015 11:45:09 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id n81sm18056386qhb.37.2015.02.23.11.45.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:45:08 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB8343.10501@gmail.com>
Date: Mon, 23 Feb 2015 14:45:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug()
References: <1424637382-27628-1-git-send-email-ksenija.stanojevic@gmail.com>
In-Reply-To: <1424637382-27628-1-git-send-email-ksenija.stanojevic@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/22/15 15:36, Ksenija Stanojevic wrote:
> For dynamic debugging pr_debug() macro is preferred over printk(), which
> is the raw way to print something. Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/dma/ste_dma40.c                                  | 1 +
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>  2 files changed, 3 insertions(+), 2 deletions(-)

The fix to rtl8192u is correct, but you managed to include a change to
drivers/dma/ste_dma40.c in the same patch. That is not good - you need
to repost a v2, which only includes the rtl8192u changes.

Cheers,
Jes


> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index 15d4946..8adae93 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -23,6 +23,7 @@
>  #include <linux/amba/bus.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/platform_data/dma-ste-dma40.h>
> +#include <linux/sizes.h>
>  
>  #include "dmaengine.h"
>  #include "ste_dma40_ll.h"
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> index 8c1bf1f..7fab680 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
> @@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
>  
>  	priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->tx_tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> +		pr_debug("ieee80211_crypt_wep: could not allocate "
>  		       "crypto API arc4\n");
>  		priv->tx_tfm = NULL;
>  		goto fail;
>  	}
>  	priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>  	if (IS_ERR(priv->rx_tfm)) {
> -		printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
> +		pr_debug("ieee80211_crypt_wep: could not allocate "
>  		       "crypto API arc4\n");
>  		priv->rx_tfm = NULL;
>  		goto fail;
> 


