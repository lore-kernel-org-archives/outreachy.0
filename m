X-GM-THRID: 6256396302413725696
X-Received: by 10.140.240.129 with SMTP id l123mr9478978qhc.8.1456681677393;
        Sun, 28 Feb 2016 09:47:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.225.71 with SMTP id ri7ls358647igc.14.canary; Sun, 28 Feb
 2016 09:47:57 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr15847511ioj.22.1456681677151;
        Sun, 28 Feb 2016 09:47:57 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x232.google.com (mail-oi0-x232.google.com. [2607:f8b0:4003:c06::232])
        by gmr-mx.google.com with ESMTPS id xh11si760758igb.0.2016.02.28.09.47.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:47:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::232 as permitted sender) client-ip=2607:f8b0:4003:c06::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::232 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x232.google.com with SMTP id m82so91315502oif.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=04VM0rMMcG83bZ4pOQovNXLJqF0thR0ENb5AQQn8XbE=;
        b=Yqy/JIbaYTJZm2JLG5z17CmAfab5+ZbgJ7ScYWe6xta+wvWFGveGJDswAFOBOczo0d
         nWgCjA6EPQf/3AabYtaThT3YOzefaeY4AkIiLMaaZH2Me/nO/4CYR5duHWzZFWeO5RpL
         qsy9AJuqkgafQ9A0DqaANRHqF8lhV3s0eUXZK3ltOtQTdZLHhgaZbkuIQnhmu+zSir10
         vMM4qr7JTZBRTufSpPhNqoO8ZijFVUVWsCTM8ZgpeAbkwv0slr7ZEy9iMfuPXIZvREAJ
         dbd7hJy9d4XcnJSuFKm+FdMTW+3CFF5rNnYKOa1Nju0raZM250KI26aKVZgZK3ss3QlL
         J9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=04VM0rMMcG83bZ4pOQovNXLJqF0thR0ENb5AQQn8XbE=;
        b=TnCLijvgq9xVVEKtV59hG/Y0lW36LeKIWzE0YwkXEVq4A9vDzhbKlW6E3v6LFbmZBp
         FVvmAZEix/e8RnRjrAnF9SUoFn6IEhTim0aHUqdjDdZbd6WO9IGpzk4snQ4e2KZeGt7o
         AKaNRNB4BQk7WuBPcx79tCFpSseLYTC9XB/Xa10/kbbmWTauBWfjnrAIhB9zaoaheStU
         W6rJ5OVOniAy0bdQKQAycvJZss3JKSsSMHy+4Yn1gCufx+GFN+Ey0mNsN+FYBW1YwQzG
         /A2CyA6ECqyLIv+2Pb2oocAmjcZTSicRl/Ouqgy0Ghbj+KiWGIh4nkjtpC8/ui9s3Xpl
         YONg==
X-Gm-Message-State: AD7BkJJcr/w4hU77s8n4whArWUtJwDLW2A5TPpod26PHNPCRDRHoKGILFpw4s1mnd6niyWH+sHjn/czngDtfyA==
MIME-Version: 1.0
X-Received: by 10.202.77.81 with SMTP id a78mr3524107oib.71.1456681676978;
 Sun, 28 Feb 2016 09:47:56 -0800 (PST)
Received: by 10.157.40.174 with HTTP; Sun, 28 Feb 2016 09:47:56 -0800 (PST)
In-Reply-To: <CAOH+1jF=uzS7sgVm=h6ghrHh_BJFkaRbJQttfS5Y2iYxwc5xWg@mail.gmail.com>
References: <1456680767-435-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.02.1602281838340.2147@localhost6.localdomain6>
	<CAOH+1jF=uzS7sgVm=h6ghrHh_BJFkaRbJQttfS5Y2iYxwc5xWg@mail.gmail.com>
Date: Sun, 28 Feb 2016 23:17:56 +0530
Message-ID: <CAOH+1jHsFSOS47wsX1H7z6tRxPPsPVeNM8R6-qB_VwcpRkr_iQ@mail.gmail.com>
Subject: Fwd: [Outreachy kernel] [PATCH] Staging: gdm724x: Remove print
 statement on failure
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 28, 2016 at 11:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 28 Feb 2016, Bhumika Goyal wrote:
>
>> The  memory allocation functions generates a call stack containing
>> all the context information on failure, so print statements can be
>> removed on failure of these functions.
>> Done using coccinelle:
>>
>> @@
>> expression e;
>> @@
>>
>> e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
>>    devm_kzalloc\|devm_ioremap\)(...);
>> ...
>> if(!e){
>> - \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
>> ...when any
>> }
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/gdm724x/gdm_lte.c | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
>> index 98570c6..44163e4 100644
>> --- a/drivers/staging/gdm724x/gdm_lte.c
>> +++ b/drivers/staging/gdm724x/gdm_lte.c
>> @@ -890,7 +890,6 @@ int register_lte_device(struct phy_dev *phy_dev,
>>               net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
>>                                  NET_NAME_UNKNOWN, ether_setup);
>>               if (!net) {
>> -                     pr_err("alloc_netdev failed\n");
>
> Actually, if you unfold the definition a bit, alloc_netdev can fail for
> reasons other than kmalloc failure.  So alloc_netdev should not be in the
> list.  Likewise for (devm_)ioremap.  It's not for all allocation functions
> where the message is superfluous, but only those based on kmalloc.
>
> julia
>

Ok I got the point and I will keep the patch limited to only kmalloc
based functions. I will drop this patch.

Thanks,
Bhumika
>>                       ret = -ENOMEM;
>>                       goto err;
>>               }
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456680767-435-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

