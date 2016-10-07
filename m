X-GM-THRID: 6338729335697965056
X-Received: by 10.28.193.142 with SMTP id r136mr1853322wmf.18.1475852413579;
        Fri, 07 Oct 2016 08:00:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.203.200 with SMTP id b191ls623051wmg.17.canary; Fri, 07 Oct
 2016 08:00:12 -0700 (PDT)
X-Received: by 10.195.11.68 with SMTP id eg4mr1352056wjd.17.1475852412911;
        Fri, 07 Oct 2016 08:00:12 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id s6si186360wmb.1.2016.10.07.08.00.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 08:00:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id b75so2774269lfg.3
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 08:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=tuzi58M2m66qL6FuMsJroLehpQGAQSUC0b0O6C+vnS4=;
        b=Gvph4xgpH0XOeJshrRYYNtHAIMfTtJoHVsxh2wwsO2+1nuyoktbHRq18G0xCs0yDuU
         wToMjnt+MtK12C/JJUg3wiLlTeoD1oG4Ow0Zd/vEAMnpFCThS94nGAL0th0YziEqqjYY
         nW+jF3KePrraPYMxzQjFcOupCt1/i3tuJgGZtY8U3ReIW7Srjn61CgS6gxiQj/IgyGMS
         uEFkQXG1LEaIyGG59++lKVsXTtB+t9fZ5ucMBb2BcbiYYpgGV9jTR0bMtyBmsnZIXzuu
         jTUipnOsbrtMGYJj1TG0fbWL35r26F5noUSSgp9doAlSb9Z/FsSEyO/GftPeL/aCD/60
         PaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tuzi58M2m66qL6FuMsJroLehpQGAQSUC0b0O6C+vnS4=;
        b=VRyL17EMh8g11wgx51qP0mVDFnCFUW4ZVnMUTUXGvq7r16ylm4RLdN9BGvk6g5Tsjm
         6GJ4eHcXZ+2ZqXbp2jz9z2foyf+A6/nH5DtYrtebvmA/WkkwNaTsKFz5VQ1+660R/VVH
         r8mBVDoRZ74pgQYGJRX8/cRf6OdBhGcjVz9nnzehKR0Isl3ck7SO6N2LHGAf9hfSCHoX
         9Loe0o+41KBUO6IZ2My3TEEhs/zPxoAP0IuRYrRe7RPtVu+MOYv+aLK9GNOUhDjbJ5lF
         PqHXEmimVEgzYF8hikfJ+e6oQzMUky8yiS+ucBhr4K3Ppjy3QONS7Gb9vaHp8p+DIHZz
         aK3A==
X-Gm-Message-State: AA6/9RnyTOuo4EneJX/7zAVYEPhkEn/XooTInqQwVVxEM/NDYmNTiq/ud8wbjQ2Z2TL4cjtsNbPyPiNKR92hlA==
X-Received: by 10.25.7.201 with SMTP id 192mr8076053lfh.170.1475852412554;
 Fri, 07 Oct 2016 08:00:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Fri, 7 Oct 2016 08:00:11 -0700 (PDT)
In-Reply-To: <20161007145438.GA19809@kroah.com>
References: <1475850411-16745-1-git-send-email-bhumirks@gmail.com>
 <20161007143203.GA26091@kroah.com> <CAOH+1jELrCr=PWNMVzunQty7Ohc3LKzUrJhf_KtikLyKBGMdFQ@mail.gmail.com>
 <20161007145438.GA19809@kroah.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Fri, 7 Oct 2016 20:30:11 +0530
Message-ID: <CAOH+1jENdbwVwe=h+TXa7_ON+QDvL3uX4M_+t-jhX=b95CnYig@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fsm-mc: bus: remove
 unused function modalias_show
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, German.Rivera@freescale.com, 
	stuart.yoder@nxp.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 7, 2016 at 8:24 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Oct 07, 2016 at 08:07:24PM +0530, Bhumika Goyal wrote:
>> On Fri, Oct 7, 2016 at 8:02 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Fri, Oct 07, 2016 at 07:56:51PM +0530, Bhumika Goyal wrote:
>> >> The function modalias_show is not used anywhere in the kernel, so
>> >> remove it. Done using Coccinelle:
>> >>
>> >> @r1@
>> >> identifier func;
>> >> type T;
>> >> @@
>> >> static T func(...)
>> >> {
>> >> ...
>> >> }
>> >>
>> >> @r@
>> >> identifier r1.func;
>> >> @@
>> >> func
>> >>
>> >> @delete depends on !r@
>> >> identifier r1.func;
>> >> type r1.T;
>> >> @@
>> >> - static T func(...){...}
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/fsl-mc/bus/fsl-mc-bus.c | 9 ---------
>> >>  1 file changed, 9 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> >> index 44f64b6..e8bca6e 100644
>> >> --- a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> >> +++ b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> >> @@ -121,15 +121,6 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
>> >>
>> >>       return 0;
>> >>  }
>> >> -
>> >> -static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
>> >> -                          char *buf)
>> >> -{
>> >> -     struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
>> >> -
>> >> -     return sprintf(buf, "fsl-mc:v%08Xd%s\n", mc_dev->obj_desc.vendor,
>> >> -                    mc_dev->obj_desc.type);
>> >> -}
>> >>  static DEVICE_ATTR_RO(modalias);
>> >
>> > Um, it's used right there in the line you didn't delete.  Did you build
>> > this code successfully with this change?
>> >
>> Yes, it did build successfully. I am confused that why didn't the
>> build complain then ?
>
> Are you sure you built this file?  It's only usually built for an ARM
> system...
>
My system's architecture is x86_64. And yes, it did build
successfully. I did : make drivers/staging/fsl-mc/

Thanks,
Bhumika

> thanks,
>
> greg k-h

