X-GM-THRID: 6250414640766910464
X-Received: by 10.129.27.3 with SMTP id b3mr5311136ywb.0.1455345998023;
        Fri, 12 Feb 2016 22:46:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.208 with SMTP id h16ls388282igt.36.canary; Fri, 12 Feb
 2016 22:46:37 -0800 (PST)
X-Received: by 10.107.135.209 with SMTP id r78mr6174485ioi.19.1455345997756;
        Fri, 12 Feb 2016 22:46:37 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id v197si1388064ywa.1.2016.02.12.22.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:46:37 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id e124so3519118qkc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=hVJJKFLRXXmqmZx/g88sB1kia/NRD0gPIQ5y6nIJRdE=;
        b=bcQzBWbLl5G4oA1whlUSl0vrKqniuk5k8mWs2bWZSe/MDwmX1AKpuZ0iGFV4lRDzSN
         ZTtss47+4C4dJQtJiBRwe8lAR/CUla+9VQvoSMGXeX1HFEvlTgIZyNAAlrvNkdUCAWRG
         SmAIOclsycfyelJCqV31ymJCkeNaX5aaYV/mgLa6moVTt0z/37FyXY9FSF3vdy9bJS2C
         SzzmclEg3GtivkOB8Z+Hxw852X1C/9IeKM+FGFgNaz75l3JHYez6QRmV3VtBqinyQqJr
         U08yLLyoKorf25r9VV0cHVKCNuvW01X6Y32+1N2aKuJFBLOy0w2Sshu+uehK9ltT7saf
         hhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=hVJJKFLRXXmqmZx/g88sB1kia/NRD0gPIQ5y6nIJRdE=;
        b=aeStgVZxIdVrGQ/+6EW7ZjGT4Y0E8IHS9AeSEnfzoeTkyS16ygKE108JLY0iaKWSYh
         TVZPLxpNcz/Yrak/Aqf8LWTZqZQFi0tv1+ji7kO79Fv3VdCp4ehXNyehRJVBP/mPQxWj
         cCPLFLSXl5mGRtu8kcSNaXh1g53NkNa1ghz1QiGV3GDZhuEMGvTSp/DeFovcEkI7WVqg
         sX6SbYwLpSc9oHwTQZCmX+T3u09USv65k8hGTyYGK/T8ZmIXktWb6Pkxhn8UVn19eLQo
         PtLrL47k39To6J5y1b9Ei9DYSR0uBnLWBrMEILx5ulPrGtnR2qfrrHTpo6nKjWySlVj+
         011g==
X-Gm-Message-State: AG10YOTid04NvU7FgWpb/ZtIJBhgx59sSYnYIvph57awYRnsaQlf7lJvH7XqCAyEUcF5l2XQMwrKftOMv2Fnqw==
MIME-Version: 1.0
X-Received: by 10.55.41.11 with SMTP id p11mr2251316qkh.86.1455345997493; Fri,
 12 Feb 2016 22:46:37 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 12 Feb 2016 22:46:37 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602130734590.2225@localhost6.localdomain6>
References: <20160213043423.GA6239@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602130734590.2225@localhost6.localdomain6>
Date: Sat, 13 Feb 2016 12:16:37 +0530
Message-ID: <CA+5yK5GR7mdAm2KPdaZkC7tXy11QrjB09brrtLGAzQPQx8+uMw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 6/6] staging: rtl8192u: ieee80211:
 Remove MSECS macro
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 12:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 13 Feb 2016, Amitoj Kaur Chawla wrote:
>
>> Remove driver specific macro MSECS since all instances of this macro
>> have been replaced by direct calls to msecs_to_jiffies().
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>> Changes in v2:
>>         -None
>>
>>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> index 967ef9a..c0a0897 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> @@ -329,7 +329,6 @@ typedef struct ieee_param {
>>
>>
>>  // linux under 2.6.9 release may not support it, so modify it for common use
>> -#define MSECS(t) msecs_to_jiffies(t)
>>  #define msleep_interruptible_rsl  msleep_interruptible
>
> In another patch, this macro looks like a good candidate for dropping too.
>
> julia
>
Hmm, yes will see the instances for this too.

Thanks,
Amitoj

