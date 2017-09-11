X-GM-THRID: 6464551056446586880
X-Received: by 10.202.80.11 with SMTP id e11mr6923208oib.2.1505146085971;
        Mon, 11 Sep 2017 09:08:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.82.10 with SMTP id g10ls4469877iob.18.gmail; Mon, 11 Sep
 2017 09:08:05 -0700 (PDT)
X-Received: by 10.202.213.15 with SMTP id m15mr7026131oig.118.1505146085018;
        Mon, 11 Sep 2017 09:08:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505146084; cv=none;
        d=google.com; s=arc-20160816;
        b=IBJH/LmI9uJGrACCoT1EhNqb4iLYqXCb9OCUavH2FBjFns97nLdlvO/Kk3QsVWdooI
         95L/DVsvsz9MvnwLYY2oHgKAOpqygKsewD+QVvGsoLRu3eUxTziQcQFO9UIGjGUkXOjK
         0qgymVltowzQpR89bvD6wRphXwdcLEjDej03ueYEyNyGsV2+QQabap7YU5Kp0WwSUAN7
         lc69zphV3kM+X61/U3FzH0s/PbY4Ie2hlCjPF3KFsp2yeoKdWlgsdRxZ6Poi3b0A4DZC
         T5xVmyiQ6+tr3yjj5YXdTdQK86AenzK3Neaj7MZseXsWcLE1UoP3a0vSl6hKMaWlXbJT
         xZdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=ShrLOExiRDlhVIRPIZXxSKPLXRfAkh93+t/97CTtoY0=;
        b=ieHdqED1nB5Nrgt7ExDONEBgi7WHJEGP4QDkyYKPWaNmcUtg3E5RYDtx4mRQtBlU9h
         aDK7+7rQY+Lx3Jp/vGLWabK5zf+/jl7d2/sCvLOQKhECc6tjIZKqvnKrzbAp17yWk6dX
         9EOSy8LWAG9pMaOnPcrnzw+POrZq2TSqbBzOH5g5Cvksdvf0tlAWjLIs5gVNPLoc/QPB
         opUTw93q/+LKZs7jGBeiUfB8+cLJB/8VjjbB6aD7bCFZR4NNe+ru2QysSc1YY3J/yvGL
         L0jwm7l8tdbntw3esfm5XfidAkKsXSrFRQyrWmVlyUh3+zcSlK8bPXP+s0r+5WJpHHln
         nYeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MD+XnQQ4;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id v124si699976ywe.5.2017.09.11.09.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:08:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MD+XnQQ4;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id d70so5684689qkc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ShrLOExiRDlhVIRPIZXxSKPLXRfAkh93+t/97CTtoY0=;
        b=MD+XnQQ4uGy/5/AyaYMrxT73Eqj6neMuLTBleEzHhOnMM7xsEbyHUy5oQ79urUf+Ay
         cUFgiOxa4fM38SAiMibn5pMn/4yi4EkyVtubj2Db6fFH2Y1q0C9z2UyqK5ZAqxrsT05p
         Fcg45UGsvsR6OJpe3vmIAw0niRFNUg4iynwaCDNuUUNZuF6Yux1GKFUSs3ZJZbSAisZJ
         QgYAYDCPGVXai+rOe77HYGiDZaEGJNWFonBhwjfqriOgNjwWbtsHdRQOpZKLaa6F1XLb
         upcsoggyK1iELt94+K4wBJPCriIhmzj9OVlFc98n4O+LuvVZuyoCOHkEbmxZJpNq4qdk
         +NTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ShrLOExiRDlhVIRPIZXxSKPLXRfAkh93+t/97CTtoY0=;
        b=sd6OJbtrYvf8NtG3P/cCM+seYYpkt5NypOYbzlmD7+rurQ820WNZ/yEdfV8ERAqv53
         8pVDmiQ9li4/5YFEYXUJGUnI+qPkvfY5pecbYylMoncghNsBomHeGihepFlCwCkpOcGn
         kOwstU1nirQzcxUze63OsIXR3MlcqsdagZMZ7PAHZkhE3vIwz86u11kfvS4oa3B/vWqf
         tEwiEb79Wn6miS/cpyMbo49HyBfwB86hXfFciRX3CYj09EnMEZKuC41eRvvMhngq50PA
         WtuKQ8jL+hurEyDNVUVWcCN7C/88P4badyM21oGtU4E8feXJQe7hXEHiVFHI1oi5+oAR
         rPoA==
X-Gm-Message-State: AHPjjUg0lvwmhlkZErYTckYaTwQrIeH08urGCtEpmQ0Wlwul75J9FIEz
	Z2rYf/1fHXpAqLZu7fW4Ykjy+uEBhw==
X-Google-Smtp-Source: AOwi7QBkER25UyLkvmUsJ7P9bKtokNQB8St70vm+7YIXufHbrdSHSgpCGysBj9aKzzcINlfrRUeikV83C4HA9njQrFg=
X-Received: by 10.55.176.132 with SMTP id z126mr16607343qke.209.1505146084640;
 Mon, 11 Sep 2017 09:08:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Mon, 11 Sep 2017 09:08:04 -0700 (PDT)
In-Reply-To: <20170911160449.GA11886@kroah.com>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com> <20170911160449.GA11886@kroah.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Mon, 11 Sep 2017 21:38:04 +0530
Message-ID: <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
Subject: Re: [PATCH] Staging: ccree: Don't use volatile for monitor_lock
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 9:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
>> The use of volatile for the variable monitor_lock is unnecessary.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
>> index e5c2f92..7d77941 100644
>> --- a/drivers/staging/ccree/ssi_request_mgr.c
>> +++ b/drivers/staging/ccree/ssi_request_mgr.c
>> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>>       dma_addr_t dummy_comp_buff_dma;
>>       struct cc_hw_desc monitor_desc;
>>
>> -     volatile unsigned long monitor_lock;
>> +     unsigned long monitor_lock;
>
> While volatile is not right, odds are, this is still totally wrong as
> well.  How about using a "real" lock instead?

I tried to find where is this variable being used in the code, but I
didn't find any usage of it . It might be an important attribute of
this structure definition but, I don't see it's value being set to
anything or being used somewhere .

Regards,
Srishti
>
> thanks,
>
> greg k-h

