X-GM-THRID: 6254962790992183296
X-Received: by 10.66.221.100 with SMTP id qd4mr40637687pac.0.1456396197969;
        Thu, 25 Feb 2016 02:29:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.105 with SMTP id rj9ls175239igc.31.canary; Thu, 25 Feb
 2016 02:29:57 -0800 (PST)
X-Received: by 10.107.11.23 with SMTP id v23mr1774925ioi.13.1456396197485;
        Thu, 25 Feb 2016 02:29:57 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id i133si483681ywe.7.2016.02.25.02.29.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 02:29:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id b35so36250548qge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 02:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=0afXO+aJBwfuQ0deOJYTwmvjGaoKbQPywx0X2a8D1qs=;
        b=YAFiNis4Pc4tZJ7HpZDI+A5Yu+OHKKBFH2/4600ny11x6V+8KV2I8LGBh9/2RdIvat
         c/RvQOGLWpdcZuOujtx6GO5A4kWqiXg47snuGy4RY/LSw9oFpP18XkHKwCwRWp9N7Yd9
         m35d9NmJTld8n5VSo5qPG07WkJ09yYn+EyqSlsFMIvaTHa7TWBZFX2oVn3T0h/SeoDYp
         11qJxGyE36qv9kO6Ymu9Rs+F2Y23BrpD6vm9yr076bza2U9LKGhFv3Hjsv7X3zwHv1Dp
         nxQIweK4chdB3FPQG3CgtJ0Ed7GGmSb0J79tfvyDuWlW0mw004Cli3sj1LcmBh3yHlYw
         rRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=0afXO+aJBwfuQ0deOJYTwmvjGaoKbQPywx0X2a8D1qs=;
        b=EJsLDaTMoGD2yxa1ktDz+tB/5w5UlVSOsVGkhKByEPWR5f0sXLk+C3vUO1QhOCDsDM
         clNNT14CFlHV7HL4iIwefhbBM7vOpIlb87cUeJpFPkxbowWHLilzvbtflrDS/uI1sq/q
         qxfAB03W6du8YxaxN/RWQhEirxbHWDW6HVmuPGwmZAgNNWo5/sr/gTI9g3VxlT+aEz++
         xr6PA6Vo5pkwxjfvafg8RPNjbc4Kylbf1Rx8WjR2OSFwqKUXVb6cVBUWcUp1WXfKx8EY
         fC+lQKqIqZDRMaQtdXFOB0V9l57Qop4ojkylm1BsVhBdFVZf5JbeusbO812FmwrrO2ce
         XiZA==
X-Gm-Message-State: AG10YORlJvSqe4n4WXoG13bwH8VPS2tJsl6dNt3ZHC83CMlmYo2pM5fW6a8mB3lOIoT9+Sj4KfS2LweovfA3xA==
X-Received: by 10.140.134.144 with SMTP id 138mr58592794qhg.63.1456396197250;
 Thu, 25 Feb 2016 02:29:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Thu, 25 Feb 2016 02:29:17 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251117160.2708@hadrien>
References: <20160225101549.GA27308@Karyakshetra> <alpine.DEB.2.10.1602251117160.2708@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 15:59:17 +0530
Message-ID: <CAFNHFT_Gg==Q+7q4Ou1MwuN7PxvGYLHKrv=TeawgoLaxVWhTxw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Make return of 0 explicit
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

On Thu, Feb 25, 2016 at 3:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
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
>
> Good job on the semantic patch, but you didn't explain v2.

Thank you for your guidance.  Sorry, it slipped from my mind. I have
sent v2 with the explanation.
Please have a look.

Thanks,
Bhaktipriya

>
> julia
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225101549.GA27308%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>

