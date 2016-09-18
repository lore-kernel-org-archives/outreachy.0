X-GM-THRID: 6331637573158436864
X-Received: by 10.46.5.71 with SMTP id 68mr404580ljf.28.1474199824097;
        Sun, 18 Sep 2016 04:57:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.195 with SMTP id h64ls726510lji.24.gmail; Sun, 18 Sep
 2016 04:57:03 -0700 (PDT)
X-Received: by 10.25.24.20 with SMTP id o20mr385308lfi.20.1474199823519;
        Sun, 18 Sep 2016 04:57:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id y6si1028758wmg.0.2016.09.18.04.57.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:57:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id s64so7039084lfs.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 04:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/BhkU1hx6OQFtANcwDGWO0w2gmUMaujh9Z08ZBlnG+0=;
        b=03eR5RdcaQyLZf6ITJTLp3dHS4+onJ46HHezUFpQYg9/9ixuOvaCYZGmWoxRri+FUn
         RFwmar4RJEWcLl1Rko2cMSOBzwj6nSz3k7WgLYgzJD8DL0wf4X2xYvxk5MvocBQGtHVv
         bwymWXYk85JYC0bqZ37uSE0TxD7F+tKlsqsVMfL+tU8+Qjvh6lasMOwRFZhgGVwSMqO3
         kR1MHZIf+XLQQt8BI3GPzkOafihugjZumY+Du0xnj7yMCZMdAOEzc3B8juIjupY2m6s1
         3JKQjOft/qWXa7qZdqThN2fsbz73ZsLPBvy9yWzNRtx7KVsySdHu4YiQHXuV9rF5Wa66
         nktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/BhkU1hx6OQFtANcwDGWO0w2gmUMaujh9Z08ZBlnG+0=;
        b=OkjEQ04c949zwEbEalICPulDu6a1mCy3CsXdvKccpIu0PiiB0hdwp88Tntib7jODd9
         3ALUmREkd6HhNG8L0wvUu62geYF2FmBGClcHrj8sIA4UfzdLUUq0bZe6HeYlv6ky17GL
         gACc3JAuNk6PPdwJGjtcppgRi8oAeL8YjzROpIRcho2PjozumxwgAhxcftr317bPf/xm
         CRj6k+9VnZxZhSmkUUOovIsmx+fhQtAzFhsNk4TvgvFfp7pwXeY4JqZ0KKqCrUBbxeDD
         d3nkYntC0JbbMXhs6nloN0ZocJH6V4TvQCxeshT6H2BE+Bxpde13dMZ3bDPw+xv8pg/S
         40uw==
X-Gm-Message-State: AE9vXwNo3zOyYIxDXS64CZCaRdAmvCOkoV5Qg/CidWgefhHqWCab4xyKvkrlU3+iSrcfixcQT66TK5dA7K5mSQ==
X-Received: by 10.25.66.11 with SMTP id p11mr2103192lfa.154.1474199822789;
 Sun, 18 Sep 2016 04:57:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sun, 18 Sep 2016 04:57:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609181351180.3238@hadrien>
References: <1474199218-15749-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1609181351180.3238@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sun, 18 Sep 2016 17:27:02 +0530
Message-ID: <CAOH+1jHDArZjjivS24GN=2ocUfvU92zC-P1WLfTJh=gq12dCAg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove useless type conversion
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 18, 2016 at 5:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 18 Sep 2016, Bhumika Goyal wrote:
>
>> Some type conversions like casting a pointer to a pointer of same type,
>> casting to the original type using addressof(&) operator etc. are not
>> needed. Therefore, remove them. Done using coccinelle:
>>
>> @@
>> type t;
>> t *p,a;
>
> It makes no particular sense, but currently in Coccinelle, the * in the
> metavariable declaration applies to all of the declared variables.
>
> To avoid this problem, could you make separate declarations for p and a,
> and try again?
>
Oh, I didn't know that. Thanks for telling. I will modify the script then.

Thanks,
Bhumika

> thanks,
> julia
>
>> @@
>> (
>> - (t)(a)
>> + a
>> |
>> - (t *)(p)
>> + p
>> |
>> - (t *)(&a)
>> + &a
>> )
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 6 +++---
>>  drivers/staging/rtl8192u/r8192U_core.c                 | 3 +--
>>  drivers/staging/rtl8192u/r8192U_dm.c                   | 6 +++---
>>  4 files changed, 8 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> index 49db1b7..10a8040 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> @@ -806,7 +806,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>>               *(tag++) = 2;
>>
>>               put_unaligned_le16(ieee->current_network.atim_window,
>> -                                (u8 *)tag);
>> +                                tag);
>>               tag+=2;
>>       }
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> index 28737ec..98fbb6e 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> @@ -354,7 +354,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
>>
>>       req = (struct rtl_80211_hdr_3addr *) skb->data;
>>       tag = (u8 *)req;
>> -     dst = (u8 *)(&req->addr2[0]);
>> +     dst = &req->addr2[0];
>>       tag += sizeof(struct rtl_80211_hdr_3addr);
>>       pDialogToken = tag + 2;  //category+action
>>       pBaParamSet = (PBA_PARAM_SET)(tag + 3);   //+DialogToken
>> @@ -452,7 +452,7 @@ int ieee80211_rx_ADDBARsp(struct ieee80211_device *ieee, struct sk_buff *skb)
>>       }
>>       rsp = (struct rtl_80211_hdr_3addr *)skb->data;
>>       tag = (u8 *)rsp;
>> -     dst = (u8 *)(&rsp->addr2[0]);
>> +     dst = &rsp->addr2[0];
>>       tag += sizeof(struct rtl_80211_hdr_3addr);
>>       pDialogToken = tag + 2;
>>       pStatusCode = (u16 *)(tag + 3);
>> @@ -590,7 +590,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
>>
>>       IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
>>       delba = (struct rtl_80211_hdr_3addr *)skb->data;
>> -     dst = (u8 *)(&delba->addr2[0]);
>> +     dst = &delba->addr2[0];
>>       pDelBaParamSet = (PDELBA_PARAM_SET)&delba->payload[2];
>>
>>       if(pDelBaParamSet->field.Initiator == 1)
>> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
>> index b86b28a..9a7f1df 100644
>> --- a/drivers/staging/rtl8192u/r8192U_core.c
>> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>> @@ -5010,8 +5010,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
>>
>>       dev->netdev_ops = &rtl8192_netdev_ops;
>>
>> -     dev->wireless_handlers =
>> -             (struct iw_handler_def *)&r8192_wx_handlers_def;
>> +     dev->wireless_handlers = &r8192_wx_handlers_def;
>>
>>       dev->type = ARPHRD_ETHER;
>>
>> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
>> index 1e0e53c..9209aad 100644
>> --- a/drivers/staging/rtl8192u/r8192U_dm.c
>> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
>> @@ -150,7 +150,7 @@ void deinit_hal_dm(struct net_device *dev)
>>  #ifdef USB_RX_AGGREGATION_SUPPORT
>>  void dm_CheckRxAggregation(struct net_device *dev)
>>  {
>> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
>> +     struct r8192_priv *priv = ieee80211_priv(dev);
>>       PRT_HIGH_THROUGHPUT     pHTInfo = priv->ieee80211->pHTInfo;
>>       static unsigned long    lastTxOkCnt;
>>       static unsigned long    lastRxOkCnt;
>> @@ -2346,7 +2346,7 @@ dm_CheckEdcaTurbo_EXIT:
>>
>>  static void dm_init_ctstoself(struct net_device *dev)
>>  {
>> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
>> +     struct r8192_priv *priv = ieee80211_priv(dev);
>>
>>       priv->ieee80211->bCTSToSelfEnable = true;
>>       priv->ieee80211->CTSToSelfTH = CTSToSelfTHVal;
>> @@ -2354,7 +2354,7 @@ static void dm_init_ctstoself(struct net_device *dev)
>>
>>  static void dm_ctstoself(struct net_device *dev)
>>  {
>> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
>> +     struct r8192_priv *priv = ieee80211_priv(dev);
>>       PRT_HIGH_THROUGHPUT     pHTInfo = priv->ieee80211->pHTInfo;
>>       static unsigned long                            lastTxOkCnt;
>>       static unsigned long                            lastRxOkCnt;
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474199218-15749-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

