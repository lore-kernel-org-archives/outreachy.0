X-GM-THRID: 6338729335697965056
X-Received: by 10.28.152.87 with SMTP id a84mr976307wme.7.1475858122464;
        Fri, 07 Oct 2016 09:35:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.209 with SMTP id 200ls450312ljj.14.gmail; Fri, 07 Oct
 2016 09:35:21 -0700 (PDT)
X-Received: by 10.25.190.206 with SMTP id o197mr1429149lff.25.1475858121703;
        Fri, 07 Oct 2016 09:35:21 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id p199si289512wmd.1.2016.10.07.09.35.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Oct 2016 09:35:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id s64so2903681lfs.2
        for <outreachy-kernel@googlegroups.com>; Fri, 07 Oct 2016 09:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=JO9NfLW0zQ/OYrp5qWGlN9gTwnlW6PNE/PIHjocucOA=;
        b=Q37CsysQ2D8AS0rCpgmXkJzsEYwcUhJ7wMVOz5/okEzbcPvAqDziWu/G2yCEM61Ux6
         c0hIk7mBSRklEyH0FWASX6azh4ODBfTHCPBeD0PuN7+NQwTJFPYU9AoV46QW3qDIVkbu
         2rCn1yvHwzTuPDCz1+I90Ih8qHkpbmpqpscn36vykqUtruR02hx5wCVWlTR5zKweT7ah
         b646yWIH21FIb8TdlU8p4u5wWlltF8KT/zLYo9ZaZcXoOe7bxMwm34Tghxu1/U1O7R5b
         rj2OZkI7RN2NLszegRJscMMkMDlD1PlOfSLiUaStYnFYeFCbJOMJuiIG9hI+CZQPQP+J
         yeOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=JO9NfLW0zQ/OYrp5qWGlN9gTwnlW6PNE/PIHjocucOA=;
        b=PeN1ILkybozefr6TEewpUQzSnDivizhESd5BK/8XnU1XlgbwDhA1tp6UPxD1WQRQEh
         bmm1VrWxKaqMmV5ZlvvjyBMN5JpmXrov92U9XjkUEQGIlSVVPAON3MZPSz4ImOOR6Hlb
         nA4PfziGOlGSLj4biKBOxCkPaY1i6DwmDMJZKRCcFJN3VV4S93gfDshPZ6BvmurOPf6z
         6NuWFJUW25bjOQLTqzHjJMW97WwFc/4sbR+ViPRNyOewbbdhfJLQNmmnDxcmE2KZxDnp
         vRYEY5vzKlyqRwdQk+tLJQOSAD1j4XHdrKUQRsNGsOLDvA+Qky3XIysE2a5A4tJGbH5P
         gQjQ==
X-Gm-Message-State: AA6/9Rmj6rKbjn5MnUEclDG8DCK3XlTbL6uRB5RtfpabRvvHC9fd7PXITwXhBRTHuMsbp84+eYmAp1LReb++vQ==
X-Received: by 10.25.7.201 with SMTP id 192mr8249735lfh.170.1475858121036;
 Fri, 07 Oct 2016 09:35:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Fri, 7 Oct 2016 09:35:20 -0700 (PDT)
In-Reply-To: <20161007150614.GA23300@kroah.com>
References: <1475850411-16745-1-git-send-email-bhumirks@gmail.com>
 <20161007143203.GA26091@kroah.com> <CAOH+1jELrCr=PWNMVzunQty7Ohc3LKzUrJhf_KtikLyKBGMdFQ@mail.gmail.com>
 <20161007145438.GA19809@kroah.com> <CAOH+1jENdbwVwe=h+TXa7_ON+QDvL3uX4M_+t-jhX=b95CnYig@mail.gmail.com>
 <20161007150614.GA23300@kroah.com>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Fri, 7 Oct 2016 22:05:20 +0530
Message-ID: <CAOH+1jEyUktU_QtgX-ahz+uqPZC-KVxsZ=DTd3TH4ZwxkktAvQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: fsm-mc: bus: remove
 unused function modalias_show
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, German.Rivera@freescale.com, 
	stuart.yoder@nxp.com
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 7, 2016 at 8:36 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Oct 07, 2016 at 08:30:11PM +0530, Bhumika Goyal wrote:
>> On Fri, Oct 7, 2016 at 8:24 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Fri, Oct 07, 2016 at 08:07:24PM +0530, Bhumika Goyal wrote:
>> >> On Fri, Oct 7, 2016 at 8:02 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> >> > On Fri, Oct 07, 2016 at 07:56:51PM +0530, Bhumika Goyal wrote:
>> >> >> The function modalias_show is not used anywhere in the kernel, so
>> >> >> remove it. Done using Coccinelle:
>> >> >>
>> >> >> @r1@
>> >> >> identifier func;
>> >> >> type T;
>> >> >> @@
>> >> >> static T func(...)
>> >> >> {
>> >> >> ...
>> >> >> }
>> >> >>
>> >> >> @r@
>> >> >> identifier r1.func;
>> >> >> @@
>> >> >> func
>> >> >>
>> >> >> @delete depends on !r@
>> >> >> identifier r1.func;
>> >> >> type r1.T;
>> >> >> @@
>> >> >> - static T func(...){...}
>> >> >>
>> >> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> >> ---
>> >> >>  drivers/staging/fsl-mc/bus/fsl-mc-bus.c | 9 ---------
>> >> >>  1 file changed, 9 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> >> >> index 44f64b6..e8bca6e 100644
>> >> >> --- a/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> >> >> +++ b/drivers/staging/fsl-mc/bus/fsl-mc-bus.c
>> >> >> @@ -121,15 +121,6 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
>> >> >>
>> >> >>       return 0;
>> >> >>  }
>> >> >> -
>> >> >> -static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
>> >> >> -                          char *buf)
>> >> >> -{
>> >> >> -     struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
>> >> >> -
>> >> >> -     return sprintf(buf, "fsl-mc:v%08Xd%s\n", mc_dev->obj_desc.vendor,
>> >> >> -                    mc_dev->obj_desc.type);
>> >> >> -}
>> >> >>  static DEVICE_ATTR_RO(modalias);
>> >> >
>> >> > Um, it's used right there in the line you didn't delete.  Did you build
>> >> > this code successfully with this change?
>> >> >
>> >> Yes, it did build successfully. I am confused that why didn't the
>> >> build complain then ?
>> >
>> > Are you sure you built this file?  It's only usually built for an ARM
>> > system...
>> >
>> My system's architecture is x86_64. And yes, it did build
>> successfully. I did : make drivers/staging/fsl-mc/
>
> And did a .o file get built from the .c file you modified?
>
> Just because you tell the build system to build a subdir, doesn't mean
> it builds all of the files in it.
>
Understood.
My bad, I will be more careful from next time. Thanks for the input.

Thanks,
Bhumika

> thanks,
>
> greg k-h

