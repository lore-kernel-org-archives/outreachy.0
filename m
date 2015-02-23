X-GM-THRID: 2590517493760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,93e7be34ae9f918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.221.165 with SMTP id qf5mr2402852pac.30.1424721658479;
        Mon, 23 Feb 2015 12:00:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.14.77 with SMTP id 74ls337960ioo.38.gmail; Mon, 23 Feb
 2015 12:00:58 -0800 (PST)
X-Received: by 10.70.109.129 with SMTP id hs1mr13362454pdb.6.1424721658240;
        Mon, 23 Feb 2015 12:00:58 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id ba9si6226093qcb.0.2015.02.23.12.00.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:00:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id h3so26371910qgf.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 12:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=5Fs7+mjyRQ81/dwmAUZol2s4t0no+PfmD8pE+/1IQes=;
        b=TPdCYqh3eA8T2jiKEQfN/Ooxh/nI4pU6iUkdEIS1V7LW4UJJuVvF/g37CB1etVoB3q
         yaHvLj7QffolCfL02B1uOrAKN0XUsTheBFkMKQeOuUSJFRc/yG2DeldpNJ2c2DIRBl5a
         4ZE79JooMfbDzpKaKBgZmo6HTMsl9F0wh/3xi/akjPMHOc8s74eA05lXJ6KJNjJUstkp
         +9AG3geMNHXAEE7dp3tj90Zvem3J3DPHBLKtuem7zao88Pb/TQ006hkmisLLdmRCgL0z
         qjLOZ6UmmckUmryjTUiz0sriePlYTAjJpNg4eALYqzvc1zMm2FhsdvTmM1efgJMwZH/9
         QBVw==
X-Received: by 10.229.171.134 with SMTP id h6mr28728729qcz.19.1424721658092;
        Mon, 23 Feb 2015 12:00:58 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id n81sm18083369qhb.37.2015.02.23.12.00.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 12:00:57 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB86F8.9050401@gmail.com>
Date: Mon, 23 Feb 2015 15:00:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?S3NlbmlqYSBTdGFub2pldmnEhw==?=
 <ksenija.stanojevic@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace printk()
 with pr_debug()
References: <1424637382-27628-1-git-send-email-ksenija.stanojevic@gmail.com>	<54EB8343.10501@gmail.com> <CAL7P5jLKtJDOPj_inhVfMGsekjZUy6dP+EiPyuGVdh-S3qO8xg@mail.gmail.com>
In-Reply-To: <CAL7P5jLKtJDOPj_inhVfMGsekjZUy6dP+EiPyuGVdh-S3qO8xg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/23/15 14:57, Ksenija Stanojević wrote:
> Ok, thank you for telling me. i didn't notice that I included changes
> to both files!

It is a good idea to inspect patch files visually before you post them
to catch such things.

Again here, please do not top-post replies in email.

Cheers,
Jes


> On Mon, Feb 23, 2015 at 8:45 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>> On 02/22/15 15:36, Ksenija Stanojevic wrote:
>>> For dynamic debugging pr_debug() macro is preferred over printk(), which
>>> is the raw way to print something. Issue found by checkpatch.pl.
>>>
>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>> ---
>>>  drivers/dma/ste_dma40.c                                  | 1 +
>>>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>>>  2 files changed, 3 insertions(+), 2 deletions(-)
>>
>> The fix to rtl8192u is correct, but you managed to include a change to
>> drivers/dma/ste_dma40.c in the same patch. That is not good - you need
>> to repost a v2, which only includes the rtl8192u changes.
>>
>> Cheers,
>> Jes
>>
>>
>>> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
>>> index 15d4946..8adae93 100644
>>> --- a/drivers/dma/ste_dma40.c
>>> +++ b/drivers/dma/ste_dma40.c
>>> @@ -23,6 +23,7 @@
>>>  #include <linux/amba/bus.h>
>>>  #include <linux/regulator/consumer.h>
>>>  #include <linux/platform_data/dma-ste-dma40.h>
>>> +#include <linux/sizes.h>
>>>
>>>  #include "dmaengine.h"
>>>  #include "ste_dma40_ll.h"
>>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
>>> index 8c1bf1f..7fab680 100644
>>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
>>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c
>>> @@ -49,14 +49,14 @@ static void *prism2_wep_init(int keyidx)
>>>
>>>       priv->tx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>>>       if (IS_ERR(priv->tx_tfm)) {
>>> -             printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
>>> +             pr_debug("ieee80211_crypt_wep: could not allocate "
>>>                      "crypto API arc4\n");
>>>               priv->tx_tfm = NULL;
>>>               goto fail;
>>>       }
>>>       priv->rx_tfm = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
>>>       if (IS_ERR(priv->rx_tfm)) {
>>> -             printk(KERN_DEBUG "ieee80211_crypt_wep: could not allocate "
>>> +             pr_debug("ieee80211_crypt_wep: could not allocate "
>>>                      "crypto API arc4\n");
>>>               priv->rx_tfm = NULL;
>>>               goto fail;
>>>
>>


