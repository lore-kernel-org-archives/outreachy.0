X-GM-THRID: 2590517493760
X-Received: by 10.152.36.132 with SMTP id q4mr1602669laj.6.1424721479978;
        Mon, 23 Feb 2015 11:57:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.114 with SMTP id nb18ls619280wic.26.canary; Mon, 23
 Feb 2015 11:57:59 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr1558737wik.5.1424721479811;
        Mon, 23 Feb 2015 11:57:59 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x234.google.com (mail-lb0-x234.google.com. [2a00:1450:4010:c04::234])
        by gmr-mx.google.com with ESMTPS id mv2si3807961lbc.0.2015.02.23.11.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:57:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::234 as permitted sender) client-ip=2a00:1450:4010:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x234.google.com with SMTP id z12so20641819lbi.11
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Q6t4aKvBD9W8lVMhGg5mlMHIy4RqCP18GuUmgS1Ccr4=;
        b=C1nYl+w2TOYJLZyBl3ATpv+h3mJTp1Mzz6Zu9N1i4nxN4Yc/5lU4U94OX6ftqF5dak
         yTlBIdlN28TQpnpY39IyvvfWSzN3PEz5foiZo4ZZNP9UigR/ObFnZIt9QzrFyp9QBOyx
         6yQr22k95e38A3q7jZvyFmnlaEhJHt5v48geWp+gwdBNc1H3O/sJd8UHjvEgKHPNEA47
         g5Z0LNH2G1124vhOfCFsdPuGX9R0kQi1RvsBKFcDEuTNGV9UwaD+z7JyYFxJQljJ/EaY
         T82fFV0eAcRWG3N+LhfbkQFMFUEGXorNDoG5nXM6ppWW1gwSGivhXhf2RBHfJPTiDPtf
         0xPw==
MIME-Version: 1.0
X-Received: by 10.152.87.3 with SMTP id t3mr11424623laz.19.1424721479722; Mon,
 23 Feb 2015 11:57:59 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Mon, 23 Feb 2015 11:57:59 -0800 (PST)
In-Reply-To: <54EB8343.10501@gmail.com>
References: <1424637382-27628-1-git-send-email-ksenija.stanojevic@gmail.com>
	<54EB8343.10501@gmail.com>
Date: Mon, 23 Feb 2015 20:57:59 +0100
Message-ID: <CAL7P5jLKtJDOPj_inhVfMGsekjZUy6dP+EiPyuGVdh-S3qO8xg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug()
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Ok, thank you for telling me. i didn't notice that I included changes
to both files!

On Mon, Feb 23, 2015 at 8:45 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 02/22/15 15:36, Ksenija Stanojevic wrote:
>> For dynamic debugging pr_debug() macro is preferred over printk(), which
>> is the raw way to print something. Issue found by checkpatch.pl.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/dma/ste_dma40.c                                  | 1 +
>>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> The fix to rtl8192u is correct, but you managed to include a change to
> drivers/dma/ste_dma40.c in the same patch. That is not good - you need
> to repost a v2, which only includes the rtl8192u changes.
>
> Cheers,
> Jes
>
>
>> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
>> index 15d4946..8adae93 100644
>> --- a/drivers/dma/ste_dma40.c
>> +++ b/drivers/dma/ste_dma40.c
>> @@ -23,6 +23,7 @@
>>  #include <linux/amba/bus.h>
>>  #include <linux/regulator/consumer.h>
>>  #include <linux/platform_data/dma-ste-dma40.h>
>> +#include <linux/sizes.h>
>>
>>  #include "dmaengine.h"
>>  #include "ste_dma40_ll.h"
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
>> index 8c1bf1f..7fab680 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
>> @@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
>>
>>       priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>>       if (IS_ERR(priv->tx_tfm)) {
>> -             printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
>> +             pr_debug("ieee80211_crypt_wep: could not allocate "
>>                      "crypto API arc4\n");
>>               priv->tx_tfm = NULL;
>>               goto fail;
>>       }
>>       priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>>       if (IS_ERR(priv->rx_tfm)) {
>> -             printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
>> +             pr_debug("ieee80211_crypt_wep: could not allocate "
>>                      "crypto API arc4\n");
>>               priv->rx_tfm = NULL;
>>               goto fail;
>>
>

