X-GM-THRID: 6331637573158436864
X-Received: by 10.28.1.83 with SMTP id 80mr258162wmb.14.1474200572907;
        Sun, 18 Sep 2016 05:09:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.161 with SMTP id e33ls723348lji.10.gmail; Sun, 18 Sep
 2016 05:09:32 -0700 (PDT)
X-Received: by 10.46.32.154 with SMTP id g26mr2822543lji.3.1474200572501;
        Sun, 18 Sep 2016 05:09:32 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id w16si655955wmd.0.2016.09.18.05.09.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 05:09:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id k12so7044167lfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 05:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WPOQq2dKLQg2astElpgIydhJDRro0LpPV3YipwfqOHI=;
        b=e54asuwXWVMLY+NsNfb/ZogDeOji+xuLVnNFZl1VZe9btqhe9i0us7Sn8qu1yU0YKF
         hx2MpML0ygITIIiz6zT8WkrUuEjaJSzFkZRdhBUHkg71zCBFP6W3OuxyQ/4UpYkW+nRq
         qdekgAyY9kpP0kt2MgZFvW+Mwcw4w+9AxVjbsTCPNpUwzbUmZAuCg3ThaYDhXQElWamg
         9nBdSUa/uqp2l4xxtL05GlpavCKKx3PIaTmo7R5XsAbhVaKtFYhJlQ22oVwOlc3LyrUY
         pXSy2JlAGc06btmSRUetLz/HHtgBfWtoK+lldpV0RrHSVjza6mZL9nEDP2TfDDJyaypj
         biUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WPOQq2dKLQg2astElpgIydhJDRro0LpPV3YipwfqOHI=;
        b=eKG3Rq3WDeqR9ItEiZlAiTIUWcmGuj8Z8WXTTIYNOqvunIV++Kb/9/fXvxjY0Zr9ng
         mA/qZUqqHaYQ3tnxb6uP6oeFnv3S2KRz3PTf0tfXm45GpywNYtkG5XCpPOmN3DWiNohp
         ijWV/Qz+5gihJMNK9xcUln82kofwNmUbYx6XCxdmnTGVUYqFxj6S0B2We90ZWlX8S4GO
         dCKgdey+7zKXjTUgzHhlAs2ZBZf2Is3Cr1MEXK40mWZUqpMF3cvpVGCZ5Pt7P199qvnE
         N2Y/d6gtqQub44mf0EBYMtgqdw3EMCdjNCUSC1vVZUylGOFriOfpaM22Aszmk/tdFO5T
         Ispw==
X-Gm-Message-State: AE9vXwP2plM2c3Ti5bnaZuAfgnmboPI0DeFu8urhCQk5WpuaqHH+RhFO4RxyzDWSciy1bCm8Zn2YT4x4xYRm+g==
X-Received: by 10.25.158.143 with SMTP id h137mr9390002lfe.83.1474200571952;
 Sun, 18 Sep 2016 05:09:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sun, 18 Sep 2016 05:09:31 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609181406150.3238@hadrien>
References: <1474199218-15749-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1609181351180.3238@hadrien> <CAOH+1jHDArZjjivS24GN=2ocUfvU92zC-P1WLfTJh=gq12dCAg@mail.gmail.com>
 <alpine.DEB.2.10.1609181406150.3238@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sun, 18 Sep 2016 17:39:31 +0530
Message-ID: <CAOH+1jEuX62EmC5_jXCXrQncx5dWHoyqFPQmDAN8oTjng1-6fg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove useless type conversion
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Sep 18, 2016 at 5:36 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 18 Sep 2016, Bhumika Goyal wrote:
>
>> On Sun, Sep 18, 2016 at 5:22 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sun, 18 Sep 2016, Bhumika Goyal wrote:
>> >
>> >> Some type conversions like casting a pointer to a pointer of same type,
>> >> casting to the original type using addressof(&) operator etc. are not
>> >> needed. Therefore, remove them. Done using coccinelle:
>> >>
>> >> @@
>> >> type t;
>> >> t *p,a;
>> >
>> > It makes no particular sense, but currently in Coccinelle, the * in the
>> > metavariable declaration applies to all of the declared variables.
>> >
>> > To avoid this problem, could you make separate declarations for p and a,
>> > and try again?
>> >
>> Oh, I didn't know that. Thanks for telling. I will modify the script then.
>
> You should actually run the script again, and not just change the commit
> message, because you may get different results.
>

Yes, I meant this only. I will run the script again and then commit a v2.

Thanks,
Bhumika

> julia
>
>>
>> Thanks,
>> Bhumika
>>
>> > thanks,
>> > julia
>> >
>> >> @@
>> >> (
>> >> - (t)(a)
>> >> + a
>> >> |
>> >> - (t *)(p)
>> >> + p
>> >> |
>> >> - (t *)(&a)
>> >> + &a
>> >> )
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>> >>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c    | 6 +++---
>> >>  drivers/staging/rtl8192u/r8192U_core.c                 | 3 +--
>> >>  drivers/staging/rtl8192u/r8192U_dm.c                   | 6 +++---
>> >>  4 files changed, 8 insertions(+), 9 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> >> index 49db1b7..10a8040 100644
>> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>> >> @@ -806,7 +806,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>> >>               *(tag++) = 2;
>> >>
>> >>               put_unaligned_le16(ieee->current_network.atim_window,
>> >> -                                (u8 *)tag);
>> >> +                                tag);
>> >>               tag+=2;
>> >>       }
>> >>
>> >> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> >> index 28737ec..98fbb6e 100644
>> >> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> >> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
>> >> @@ -354,7 +354,7 @@ int ieee80211_rx_ADDBAReq(struct ieee80211_device *ieee, struct sk_buff *skb)
>> >>
>> >>       req = (struct rtl_80211_hdr_3addr *) skb->data;
>> >>       tag = (u8 *)req;
>> >> -     dst = (u8 *)(&req->addr2[0]);
>> >> +     dst = &req->addr2[0];
>> >>       tag += sizeof(struct rtl_80211_hdr_3addr);
>> >>       pDialogToken = tag + 2;  //category+action
>> >>       pBaParamSet = (PBA_PARAM_SET)(tag + 3);   //+DialogToken
>> >> @@ -452,7 +452,7 @@ int ieee80211_rx_ADDBARsp(struct ieee80211_device *ieee, struct sk_buff *skb)
>> >>       }
>> >>       rsp = (struct rtl_80211_hdr_3addr *)skb->data;
>> >>       tag = (u8 *)rsp;
>> >> -     dst = (u8 *)(&rsp->addr2[0]);
>> >> +     dst = &rsp->addr2[0];
>> >>       tag += sizeof(struct rtl_80211_hdr_3addr);
>> >>       pDialogToken = tag + 2;
>> >>       pStatusCode = (u16 *)(tag + 3);
>> >> @@ -590,7 +590,7 @@ int ieee80211_rx_DELBA(struct ieee80211_device *ieee, struct sk_buff *skb)
>> >>
>> >>       IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
>> >>       delba = (struct rtl_80211_hdr_3addr *)skb->data;
>> >> -     dst = (u8 *)(&delba->addr2[0]);
>> >> +     dst = &delba->addr2[0];
>> >>       pDelBaParamSet = (PDELBA_PARAM_SET)&delba->payload[2];
>> >>
>> >>       if(pDelBaParamSet->field.Initiator == 1)
>> >> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
>> >> index b86b28a..9a7f1df 100644
>> >> --- a/drivers/staging/rtl8192u/r8192U_core.c
>> >> +++ b/drivers/staging/rtl8192u/r8192U_core.c
>> >> @@ -5010,8 +5010,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
>> >>
>> >>       dev->netdev_ops = &rtl8192_netdev_ops;
>> >>
>> >> -     dev->wireless_handlers =
>> >> -             (struct iw_handler_def *)&r8192_wx_handlers_def;
>> >> +     dev->wireless_handlers = &r8192_wx_handlers_def;
>> >>
>> >>       dev->type = ARPHRD_ETHER;
>> >>
>> >> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
>> >> index 1e0e53c..9209aad 100644
>> >> --- a/drivers/staging/rtl8192u/r8192U_dm.c
>> >> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
>> >> @@ -150,7 +150,7 @@ void deinit_hal_dm(struct net_device *dev)
>> >>  #ifdef USB_RX_AGGREGATION_SUPPORT
>> >>  void dm_CheckRxAggregation(struct net_device *dev)
>> >>  {
>> >> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
>> >> +     struct r8192_priv *priv = ieee80211_priv(dev);
>> >>       PRT_HIGH_THROUGHPUT     pHTInfo = priv->ieee80211->pHTInfo;
>> >>       static unsigned long    lastTxOkCnt;
>> >>       static unsigned long    lastRxOkCnt;
>> >> @@ -2346,7 +2346,7 @@ dm_CheckEdcaTurbo_EXIT:
>> >>
>> >>  static void dm_init_ctstoself(struct net_device *dev)
>> >>  {
>> >> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
>> >> +     struct r8192_priv *priv = ieee80211_priv(dev);
>> >>
>> >>       priv->ieee80211->bCTSToSelfEnable = true;
>> >>       priv->ieee80211->CTSToSelfTH = CTSToSelfTHVal;
>> >> @@ -2354,7 +2354,7 @@ static void dm_init_ctstoself(struct net_device *dev)
>> >>
>> >>  static void dm_ctstoself(struct net_device *dev)
>> >>  {
>> >> -     struct r8192_priv *priv = ieee80211_priv((struct net_device *)dev);
>> >> +     struct r8192_priv *priv = ieee80211_priv(dev);
>> >>       PRT_HIGH_THROUGHPUT     pHTInfo = priv->ieee80211->pHTInfo;
>> >>       static unsigned long                            lastTxOkCnt;
>> >>       static unsigned long                            lastRxOkCnt;
>> >> --
>> >> 1.9.1
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474199218-15749-1-git-send-email-bhumirks%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jHDArZjjivS24GN%3D2ocUfvU92zC-P1WLfTJh%3Dgq12dCAg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

