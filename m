X-GM-THRID: 6463500175393423360
X-Received: by 10.159.34.132 with SMTP id 4mr4953254uan.59.1505022735271;
        Sat, 09 Sep 2017 22:52:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.190.79 with SMTP id i76ls578897itf.17.gmail; Sat, 09 Sep
 2017 22:52:14 -0700 (PDT)
X-Received: by 10.176.83.98 with SMTP id y31mr5259710uay.2.1505022734577;
        Sat, 09 Sep 2017 22:52:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505022734; cv=none;
        d=google.com; s=arc-20160816;
        b=au6uEASc2upsLMXhL640QtJJeHcAl/HWNq41NHXMlnKUtJNATL0arpkGdkP8LUYqRT
         5w/VRLK/b73cdZss8hIzQsXyzJk79Vks82cv1h55hSWE2TfD146d3nBFzN1DOXMlVgma
         M0Xyq9OdtpQe6fTKDPiW7n6NDaW02uNHNzrLrsHrQV1kl6me+BaXJPl8bmD8Vv80yyg3
         Ql4DwSducphXG+iPErWVHCuffhwjbeF2YYdGd5cxikFh+zG6MuYd/77akMx+gkpjTueX
         9aNtzL0M3dkVnr4ltAksDN8yOMADHxOZL/EGbXqACrmBVlhhY8Pc5XssuWrEZJrZ6G15
         eo8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=q6f0yNgV2bfxDFwEwD/VG2h6aFebxMBnOoAHqS3OvIE=;
        b=zk6Z2GbtfPn3AOefbLp9mK2D5GrJ47Pclp6ZXiLe/KZ5SGSXBkYBoCBkF6Nqn7p31O
         33/12RU+koTEgKzxkC0jBisrdlBBWPaoSuM0r4kqlKXqpsD8OphU9fdvLtWov5TBSl8w
         YO+POBfXcROUl6noErlZKCtk9YkWPbdGtJUYrflYUOmEBbYe1ylcWoUafhC9dgBNSyxy
         BPAjEAe/5BWkSwKmf28PdJ6SWVK1gNprkAj/6nTE2yQNMioQCSUmHgcgBvtHf4wKDAL8
         db6geEWZenaE9rSfZRRetFOH6Eczbpna6nyVHQxaS3oMB3wcnacv2cDT+/Tb2OM6sy90
         l9MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIa9Cd/1;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id u4si384853ywc.2.2017.09.09.22.52.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 22:52:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GIa9Cd/1;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id 7so3875978qtz.3
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Sep 2017 22:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=q6f0yNgV2bfxDFwEwD/VG2h6aFebxMBnOoAHqS3OvIE=;
        b=GIa9Cd/1WnP6Oi+vwYFhJtHcJr/hDsU3HO6OWj52+xlUGVSMiI3Q0pUMy2R1LA8JUn
         Un/VFYA3HvGsc1hEzC9SZ06TqpjgilodPjttLLkJ6i7By4AL/uS731NPDwma6KR1p9a/
         e40TDTbb79UyOU7BiYF29GdSsE+vxogtbdncxccrNfu6H50jgYW2cqasj5K3I6PFy8cv
         7kBV56rnB8yQtZaGrbMxvAEUDcB+mhC8HwSbekw4bOcVbLl84+R4WxFBFNMidjqo6d2z
         3qvkT6EUtWsDalAlUZwvovEcntxOMchcR5NQQum1VC038WJ8VGOF0KDGYfwPp/GJwWTX
         TfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=q6f0yNgV2bfxDFwEwD/VG2h6aFebxMBnOoAHqS3OvIE=;
        b=lfCDSpklj0L1+QaE07uU1rXSg/BBU1i306eZ8ZiEQlZrwiLLfTy47k5/AO4vUUw4n8
         5HztCvbpAhQsce8o218se0isbEpY38QgH3pOwm5YbWzpB0KYChkBOJ/K/2b9Kxl42arN
         tFdg9wM8ec11tvhL31Na0+PekGRj1zopY2q+6zoq8LHMN3jG24WZO+GmjfluYIZDHw2S
         N4bK4K6Q6BduanmLDH0tXJrfqfrrUqaeGu3CcxuFn0Z1aw81LdsxEF9lhHpj51mlvBkZ
         C/+uddgNWDh2yUnydrzjS3iq2xrApZSA/vbUpK6rIxGi3bmG4WyE/VfBNUoIYmamFbQP
         K+AQ==
X-Gm-Message-State: AHPjjUiR5KSz0LVxY4hdmi2uMeE0nom0A/1ZksIQhucTnUosLqSOTUd/
	7ix1z/nVWuMFZff5x/BUsVt4PaoayQ==
X-Google-Smtp-Source: AOwi7QAPxxUq2We0WhsUfIjbpnvvtK6C9VG1uM77F+OQtueq3QwfpGPokGay/Xlu8peakVlTfpGmUz8oxFV8wPVPQkE=
X-Received: by 10.237.53.23 with SMTP id a23mr12038283qte.125.1505022734241;
 Sat, 09 Sep 2017 22:52:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Sat, 9 Sep 2017 22:52:13 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709091858060.2149@hadrien>
References: <1504953861-3221-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709091858060.2149@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sun, 10 Sep 2017 11:22:13 +0530
Message-ID: <CAB3L5oyw7Mxj63q=mmYEDtNOQHiVy3M-d6dNd5+S7ZA2hKFSwA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Merge assignment with return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gilad Ben-Yossef <gilad@benyossef.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 9, 2017 at 10:29 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 9 Sep 2017, Srishti Sharma wrote:
>
>> Merge the assignment and return statements to return the value
>> directly. Done using coccinelle.
>
> Coccinelle is not always perfect about pretty printing, so you have to
> watch out for it.
>
>>
>> @@
>> local idexpression ret;
>> expression e;
>> @@
>>
>> -ret =
>> +return
>>      e;
>> -return ret;
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/ccree/ssi_sysfs.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/ccree/ssi_sysfs.c b/drivers/staging/ccree/ssi_sysfs.c
>> index 0655658..9fa7be0 100644
>> --- a/drivers/staging/ccree/ssi_sysfs.c
>> +++ b/drivers/staging/ccree/ssi_sysfs.c
>> @@ -412,7 +412,6 @@ static void sys_free_dir(struct sys_dir *sys_dir)
>>
>>  int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
>>  {
>> -     int retval;
>>
>
> This is going to leave a single empty line at the top of the function.
> That is not needed.
>
>>  #if defined CC_CYCLE_COUNT
>>       /* Init. statistics */
>> @@ -423,10 +422,9 @@ int ssi_sysfs_init(struct kobject *sys_dev_obj, struct ssi_drvdata *drvdata)
>>       SSI_LOG_ERR("setup sysfs under %s\n", sys_dev_obj->name);
>>
>>       /* Initialize top directory */
>> -     retval = sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
>> +     return sys_init_dir(&sys_top_dir, drvdata, sys_dev_obj, "cc_info",
>>                             ssi_sys_top_level_attrs,
>>                             ARRAY_SIZE(ssi_sys_top_level_attrs));
>
> Previously the arguments were lined up with the right side of the ( but
> now they are not.  So move the above two lines to the left by 2 spaces.

Thanks for this , I have re-sent the patch .

Regards,
Srishti

> julia
>
>> -     return retval;
>>  }
>>
>>  void ssi_sysfs_fini(void)
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504953861-3221-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

