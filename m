X-GM-THRID: 6338729335697965056
X-Received: by 10.25.193.148 with SMTP id r142mr1383167lff.2.1475851046711;
        Fri, 07 Oct 2016 07:37:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.166.144 with SMTP id p138ls883221wme.0.gmail; Fri, 07 Oct
 2016 07:37:26 -0700 (PDT)
X-Received: by 10.194.82.170 with SMTP id j10mr242762wjy.14.1475851046056;
        Fri, 07 Oct 2016 07:37:26 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id w79si168713wmw.0.2016.10.07.07.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 07:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id l131so2758046lfl.0
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 07:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wCk6/XXEeAR2Bj8mU/ucYmnghd5AsV2fHBuUAtAFO38=;
        b=Q4NXUY928zf2kVOFlwW37+R8qmL7IyPIknkt8e47FO+LzA8ZT2YrFkD5I3Z+pH9Vf6
         EqxjAoj/8ds9tIqRfJPuk+bduBLBfw52Yoh0sP7lROZozki/uNVnWn++c9wRtR9rQxrr
         eU6+SPEK0+A7Q9+qBXsRnMaZ0MEdtf7TSXHI3aVxv/kS5tTZtpD3rUMo1p9zIkNOyn9u
         c+VKOaFKSTJeCd5dta4nHAY19NCozqlA8z7mGvqvfuYVFLRg6c0MokpDZJ4T2+Qe6Atp
         u16h4aGar2oaNHBQk0jGiN8u0gGsckBdrTn5KS6NHNQMVbxqTS1ADs7mAGajLX5eFk6n
         e41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wCk6/XXEeAR2Bj8mU/ucYmnghd5AsV2fHBuUAtAFO38=;
        b=TqdIY+kT+ZJBpZkI0jaYOv7rwOv88zja6O9UqC6Y6dn0Gw3Ppj0kmP11EL+CWHxt3p
         FdxM/quhzaOsRb6jHBOrUH2hax5cxAMoY0KWUADMQB0MNrgy5tVZgp0WsNLq1Hf/2PYf
         JiqP6mKKP1D9cRUH6Oa8/hrcyQAs4FOLyWvnkLVfq/wKrs5HkOn5WChUTUfkC4sm9cNu
         N+g7rtwtCiH7B1ssKX1S94cZDYwCHI1pHTU+k2xL1W+B5CiFKvvYQFIDKcJqRpGjQ4me
         dZlTf/2c0qJXefbe5KEedEX91OYo365ROygnsxllVN+0EyP4KPr3A1lu0V6iziT/t+Wm
         Jmzw==
X-Gm-Message-State: AA6/9Rm83LnPqk4J8Cj+E4UyahvONYRKRHcyiiHqCK04ntMvv9dMi0/W+b9sqiIESnnG3MhlBewDbMn/bPtd7Q==
X-Received: by 10.25.24.163 with SMTP id 35mr7511298lfy.81.1475851045421; Fri,
 07 Oct 2016 07:37:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Fri, 7 Oct 2016 07:37:24 -0700 (PDT)
In-Reply-To: <20161007143203.GA26091@kroah.com>
References: <1475850411-16745-1-git-send-email-bhumirks@gmail.com> <20161007143203.GA26091@kroah.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Fri, 7 Oct 2016 20:07:24 +0530
Message-ID: <CAOH+1jELrCr=PWNMVzunQty7Ohc3LKzUrJhf_KtikLyKBGMdFQ@mail.gmail.com>
Subject: Re: [PATCH] Staging: fsm-mc: bus: remove unused function modalias_show
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, German.Rivera@freescale.com, 
	stuart.yoder@nxp.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 7, 2016 at 8:02 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Oct 07, 2016 at 07:56:51PM +0530, Bhumika Goyal wrote:
>> The function modalias_show is not used anywhere in the kernel, so
>> remove it. Done using Coccinelle:
>>
>> @r1@
>> identifier func;
>> type T;
>> @@
>> static T func(...)
>> {
>> ...
>> }
>>
>> @r@
>> identifier r1.func;
>> @@
>> func
>>
>> @delete depends on !r@
>> identifier r1.func;
>> type r1.T;
>> @@
>> - static T func(...){...}
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/fsl-mc/bus/fsl-mc-bus.c | 9 ---------
>>  1 file changed, 9 deletions(-)
>>
>> diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> index 44f64b6..e8bca6e 100644
>> --- a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> +++ b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> @@ -121,15 +121,6 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
>>
>>       return 0;
>>  }
>> -
>> -static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
>> -                          char *buf)
>> -{
>> -     struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
>> -
>> -     return sprintf(buf, "fsl-mc:v%08Xd%s\n", mc_dev->obj_desc.vendor,
>> -                    mc_dev->obj_desc.type);
>> -}
>>  static DEVICE_ATTR_RO(modalias);
>
> Um, it's used right there in the line you didn't delete.  Did you build
> this code successfully with this change?
>
Yes, it did build successfully. I am confused that why didn't the
build complain then ?

Thanks for the input.

Thanks,
Bhumika
> confused,
>
> greg k-h

