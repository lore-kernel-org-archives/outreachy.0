X-GM-THRID: 6254962790992183296
X-Received: by 10.129.72.199 with SMTP id v190mr41245740ywa.44.1456396366058;
        Thu, 25 Feb 2016 02:32:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.133 with SMTP id gu5ls169810obb.16.gmail; Thu, 25 Feb
 2016 02:32:45 -0800 (PST)
X-Received: by 10.182.53.233 with SMTP id e9mr28519443obp.28.1456396365715;
        Thu, 25 Feb 2016 02:32:45 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id w126si445207ywe.6.2016.02.25.02.32.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:32:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id u128so1536757qkh.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=SDtMQrJw6HwtcaE3WS8+cWXV1fzA5KmpMyWcArAGMzI=;
        b=J0n2TbbCXN9ipmBB0D17+1n7LH2GUperVJiCk8scjjzCnBNVPXA86pMQ1SBARN4n65
         HEvLL2ta+zfMPNVTOsFhcbaNi0nN9+0s4V8EhjNVcSjar+8bx6ZJeTQm3p7gpseCdH4L
         1iFbPvWbTEcX1OkGhKHYGcKVF1MbP3uHvn+Rd5pPSVc6v2GptAsuU3+9yxN8QMP/vihx
         C1BuaAHXD4Ra/SJK4u/cFGVlJMuNxcPI3XBW8cXlpE2GCB2u7EaHrbyKuxsgy67lvgAu
         rVTkmefTopL9mJiMZQwhi2GAERzpRXh1XPuTeJ79LnOv4XbpDzwa+bi51mK1jA520VuH
         EKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=SDtMQrJw6HwtcaE3WS8+cWXV1fzA5KmpMyWcArAGMzI=;
        b=guFgUVkMzfByL8L9ZteaiWoISjNdf2WZCP/RPraKxP/VHl5MjK7W1kpC+V+znwpbrk
         qd5CNq5e9c9Vhq39SvyJtx5fSFhSLOyivrTF01UewwtrfELUH59cNaOQbJ0wzVDKVTCH
         RDmdFHcmgTMEjMiethXvu4mMy3ZAdK4U7cAF9f1Q6qoG6a7iJDm6YE/xsUbtOlZbGhg5
         Pvu72gyYmLTsQjDU3Dr8CbMkLC6igGgGms4u1qOiOzttx3qqWclIr+Q3/A28PviPNiEN
         zUdUB34ZOlN2yR8LnI+vd3g2MqWDpRPpoNvHkLMAeWTR7YfGshKiSKrmBFrc9J/UWzR5
         TbVA==
X-Gm-Message-State: AG10YORSBHXl6WAN+ICM66Q2wiJnWqdVpN/owk6dFHN8hkB9ISwbOzW9B2c3SOSo5ZO/zBYadg+wwyp9iJ455w==
X-Received: by 10.55.81.2 with SMTP id f2mr54942570qkb.87.1456396365481; Thu,
 25 Feb 2016 02:32:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Thu, 25 Feb 2016 02:32:06 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251126240.2708@hadrien>
References: <20160225102505.GA27359@Karyakshetra> <alpine.DEB.2.10.1602251126240.2708@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 16:02:06 +0530
Message-ID: <CAFNHFT8TSVXcJsE2XUJJCoaTbPjcUZUJcYR9JKVUHahL1MHgPQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Make return of 0 explicit
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,


On Thu, Feb 25, 2016 at 3:57 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> Delete unnecessary local variable whose value is always 0 and
>> return 0 as the result.
>> The following Coccinelle script was used:
>>
>> @@
>> identifier ret; expression E;
>> type T;
>> @@
>> (
>> - T ret;
>> |
>> - T ret = 0;
>> )
>>
>> ... when != \(ret=E
>> \|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
>> (
>> ?-ret = 0;
>> )
>> ... when != \(ret=E
>> \|ret--\|ret++\|--ret\|++ret\|ret-=E\|ret+=E\|ret|=E\|ret&=E\)
>> (
>> return
>> - ret
>> + 0
>> ;
>> )
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  Changes in v2:
>>  -Changed Coccinelle script to remove all occurrences of the variable
>>  and replace every return associated with the variable with return 0
>
> Since you have made a change, it would be v3.
>
> It is also nice to leave a blank line after the message, so that it can be
> seen more easily.
>
> julia


Sure. Will send in a v3 with the suggested changes incorporated.

Thanks,
Bhaktipriya
>
>>  drivers/staging/rtl8712/xmit_linux.c | 8 ++------
>>  1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
>> index adb51f0..8c15308 100644
>> --- a/drivers/staging/rtl8712/xmit_linux.c
>> +++ b/drivers/staging/rtl8712/xmit_linux.c
>> @@ -163,19 +163,15 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
>>       struct xmit_frame *pxmitframe = NULL;
>>       struct _adapter *padapter = netdev_priv(pnetdev);
>>       struct xmit_priv *pxmitpriv = &(padapter->xmitpriv);
>> -     int ret = 0;
>>
>>       if (!r8712_if_up(padapter)) {
>> -             ret = 0;
>>               goto _xmit_entry_drop;
>>       }
>>       pxmitframe = r8712_alloc_xmitframe(pxmitpriv);
>>       if (!pxmitframe) {
>> -             ret = 0;
>>               goto _xmit_entry_drop;
>>       }
>>       if ((!r8712_update_attrib(padapter, pkt, &pxmitframe->attrib))) {
>> -             ret = 0;
>>               goto _xmit_entry_drop;
>>       }
>>       padapter->ledpriv.LedControlHandler(padapter, LED_CTL_TX);
>> @@ -187,11 +183,11 @@ int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev)
>>       }
>>       pxmitpriv->tx_pkts++;
>>       pxmitpriv->tx_bytes += pxmitframe->attrib.last_txcmdsz;
>> -     return ret;
>> +     return 0;
>>  _xmit_entry_drop:
>>       if (pxmitframe)
>>               r8712_free_xmitframe(pxmitpriv, pxmitframe);
>>       pxmitpriv->tx_drop++;
>>       dev_kfree_skb_any(pkt);
>> -     return ret;
>> +     return 0;
>>  }
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225102505.GA27359%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>

