X-GM-THRID: 2590517493760
X-Received: by 10.194.142.174 with SMTP id rx14mr1612125wjb.4.1424987713583;
        Thu, 26 Feb 2015 13:55:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.135 with SMTP id ay7ls262wib.13.gmail; Thu, 26 Feb 2015
 13:55:13 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr20341wic.4.1424987713272;
        Thu, 26 Feb 2015 13:55:13 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x236.google.com (mail-la0-x236.google.com. [2a00:1450:4010:c03::236])
        by gmr-mx.google.com with ESMTPS id xl7si200745lbb.1.2015.02.26.13.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:55:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::236 as permitted sender) client-ip=2a00:1450:4010:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by labgq15 with SMTP id gq15so13914412lab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 13:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=43arv6Aye39kpprN+wK6w3dHCsm3/P8/T6o4qbS+BGU=;
        b=vL72kVQrgxK3RzkKWq6mOFNF4aG2iB95zMGJ2GBqbqyrjDiNXhksS9i4zyqKEZmqgd
         r8Gj0Y927URJQT9gv80nwBRcS3Y93N7vBkzwOnAcGrMQ2FZoRGYvk1HYpONd32tkNqcu
         56O1Wua4TLZwFjE8Zd/9tUcLJluQZTuz4a5tMFC6QEK4NHnyWZcMqcwbJu1OLNJO4AMH
         DlOryxxvNKzbUMblXLxHLS4Iv7u8FfzFIc0nxs/6bs+twv6LM2pInSwk2ZqoBCCY0P4w
         2Vk1tiPBjslNGlB7uiU73EEPSPfdOOBSFDeFf4bC2ZIpJL+ai8E62uykkl4G7gYCoV5z
         xB5w==
MIME-Version: 1.0
X-Received: by 10.112.159.195 with SMTP id xe3mr9830746lbb.64.1424987713141;
 Thu, 26 Feb 2015 13:55:13 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Thu, 26 Feb 2015 13:55:13 -0800 (PST)
In-Reply-To: <20150226214543.GA17859@kroah.com>
References: <1424721379-8173-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20150226214543.GA17859@kroah.com>
Date: Thu, 26 Feb 2015 22:55:13 +0100
Message-ID: <CAL7P5jLEtranaPTzFej-b61B0FsW8=08cg3E5Cdrto0NvrqjkA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Replace printk()
 with pr_debug()
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 26, 2015 at 10:45 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Feb 23, 2015 at 08:56:19PM +0100, Ksenija Stanojevic wrote:
>> For dynamic debugging pr_debug() macro is preferred over printk(), which
>> is the raw way to print something. Issue found by checkpatch.pl.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>> v2: include only changes made to this file.
>>
>>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
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
>
> Please use net_dbg() instead
>
I already tried netdev_dbg, but there's no pointer to net stucture in
function argument list.
Ksenija
> thanks,
>
> greg k-h

