X-GM-THRID: 6387984774735069184
X-Received: by 10.99.160.103 with SMTP id u39mr2004655pgn.47.1487323532111;
        Fri, 17 Feb 2017 01:25:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.23 with SMTP id g23ls4021952ote.24.gmail; Fri, 17 Feb
 2017 01:25:31 -0800 (PST)
X-Received: by 10.129.175.36 with SMTP id n36mr2347016ywh.30.1487323531702;
        Fri, 17 Feb 2017 01:25:31 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id f187si1180486ywc.0.2017.02.17.01.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 01:25:31 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id l16so2905135ywb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 01:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WLZSfdfx0QuBdBalOie3LeR4nVXeN4/jgNPLXR2O2bI=;
        b=C7Hk5XXUCS79XxD2UvDI3AH72Mi+8WjZfO44qhLA0OmLNtxxfuPEBTWF7U++OQXAAB
         skldJk9uiXDizdNHTD46jN6CuIJRfBdBH+iqbvYIp9ztBD4XMR8/i7Uv1bgjgi+ubZWe
         4M5uwmInHZFSijwV98OQOlpx68MjlI2XJS4v5hgHa21GmvHgJYmLOXiqE3vdLebOGRID
         4WB7RTdvogiIkjugWk1HvZJ36LHwUSebG4qJ4JjOpH2++K3sHuMgg2lYgAmM2x7xDFOq
         R6FDweEm2S2y5Mr9L6ZL71px47vI745rVgN+fHXTljLczPaMqCZjTKhutLw/0RsImHo9
         Imkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WLZSfdfx0QuBdBalOie3LeR4nVXeN4/jgNPLXR2O2bI=;
        b=euDZAdVu9aSGVOLwPCqxFDaq/MymvQUa3zLOUjuch9DzVOtaH3MlzPn3lBBacHcvul
         ROCejtkwh5457TWIaJ5LFMzPd0ILz/XORSy7YYosO+5fztqBQDIojVrjExrN9Pfs4+oY
         TMerEP4ez3S0u9vmXINiTT/s5a6olXSX0zo32fzKLef8kthJ7XRghdSHBC3EDAaYv7Ud
         +xaFoxIeDtYVf0qzzkMN7HwgNEWRWiXGlUgQ7aZ5zrfaNESQQMetMOdzmVthW/iIqreu
         W2J0FoC66StwZXn0EVhJW1SBcNMedy+8HqHQ487faX25Ya6NgH4y6bWsxIeFpyhyokMb
         QNbQ==
X-Gm-Message-State: AMke39nAxUR6CNVMhz70AkhMsTEawvkx1KEHZKim/ohMb4ob457PbbHjhaHA9me2YOqVwbmg2iZZG8+jv1WmDg==
X-Received: by 10.129.123.197 with SMTP id w188mr5000777ywc.267.1487323531364;
 Fri, 17 Feb 2017 01:25:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.163.196 with HTTP; Fri, 17 Feb 2017 01:24:51 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702171008130.3109@hadrien>
References: <20170217080309.GA13492@sayli-HP-15-Notebook-PC> <alpine.DEB.2.20.1702171008130.3109@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Fri, 17 Feb 2017 14:54:51 +0530
Message-ID: <CAKG5xWiMvkoOFL-JRGh=QS-akQU2iVqxmV2E1gdKX2a6LEEChg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Remove
 typedef to the tx_pending_t structure
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 17, 2017 at 2:40 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 17 Feb 2017, sayli karnik wrote:
>
>> Using typedef for a structure type is not suggested in Linux kernel
>> coding style guidelines. So remove typedef from structure tx_pending_t.
>>
>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> ---
>> Grepped to ensure no other usage of the typedef variable.
>> The driver does not use the typdef variable anywhere, it declares using a
>> structure variable when required.
>>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> index 0d24705..7de3a78 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> @@ -1456,10 +1456,10 @@ enum ieee80211_state {
>>
>>
>>
>> -typedef struct tx_pending_t{
>> +struct tx_pending_t {
>>       int frag;
>>       struct ieee80211_txb *txb;
>> -}tx_pending_t;
>> +};
>
> Was anyone using the typedef?  Normally, a typedef is used elsewhere and
> when you remove the typedef, you need to update the users as well.
>
Yes, but I found this case to be a little different.
There is one instance where they use-
struct  tx_pending_t tx_pending;
(without using the typedef declared earlier)
I used grep to find out that the typedef was not used anywhere else.

> Also, it is normally only typedefs that have names that end in _t.  So it
> would be better to change the type name to struct tx_pending.
>
Ah, thought so. I'll send the next version.

>>  typedef struct _bandwidth_autoswitch {
>>       long threshold_20Mhzto40Mhz;
>
> You can work on this one also.
>
Yes, I will.

> julia
>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170217080309.GA13492%40sayli-HP-15-Notebook-PC.
>> For more options, visit https://groups.google.com/d/optout.
>>

