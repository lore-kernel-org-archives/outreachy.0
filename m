X-GM-THRID: 6811652718511259648
X-Received: by 2002:a5d:6441:: with SMTP id d1mr24963531wrw.301.1586168157811;
        Mon, 06 Apr 2020 03:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4101:: with SMTP id j1ls3013270wmi.2.canary-gmail;
 Mon, 06 Apr 2020 03:15:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypJVihAwhws8epDbR5RnrJKXZ3/P87yxImtpzr6yk3X2inXfZ9+gp79IsdkjyZQ+HaTLunw0
X-Received: by 2002:a7b:c343:: with SMTP id l3mr22674503wmj.38.1586168156339;
        Mon, 06 Apr 2020 03:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586168156; cv=none;
        d=google.com; s=arc-20160816;
        b=ygJQyWKa6buaKpc+FCDToZnSeIflXKp/lTnqzAm2Xfje+M+qmnqIl9IbQ0lKUnBwH1
         m32eJ+ABhTwHdZ49QuZWce5Md95HwUO9iLiQ/E1XrdVYRtdXnstOKg8dUFikC67K2ckq
         CQUyM1psXMpkjAC1doDpifsLzVdTYwmo2s1CWjVF7lwptwd4IhUZLKZkNpoaIVlGC0L4
         4vfGHqNGJtp7GalczBRJdLiuR3tkgWNZSB/9WrAobqzd0633ohxy/YoMD+StcPi14DI3
         IC82gX09h4A/x0EDYkjTP4LlRWHGS5+Ku0vb4DXDSjn4OgdFkDa0gV8ELGtR3roG8L1S
         izGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=LHCts7qKkym8J74bg6cu1dOATt9lkl7FM9/Bg+uYjm8=;
        b=lGFCA83/ltnc/uHNrhxYNX/YTjnidCBdKA0hfHutN60B1RXRYGvJUp/M4wdioQqrOo
         CT9GRIX0O+AERgoSlcjBicPJLBpJvg7CyAErJXYdmv0OzLCWquSymtpwytFM4hiHehYH
         MoLj5qbU9/cYX6BVL79u4Z2i0kN9h1F6Wdq4qz6VSkwzScEsh6eCOJZEyfHDGK73wD8V
         ycf1xB/K8nmRy5vM6ZW8vGUJf3v58C/jmo0eFDEVAjn/TzgKPLMT0obbIDD9fDbdJcI0
         jPWHGn28dHhUC10MhlCrWEWqhpYQDzXRglCyKUhNTOuOW6AcWm7Vsw7Py50Yyu5rLnLY
         6HAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.167.66 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <jhovold@gmail.com>
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com. [209.85.167.66])
        by gmr-mx.google.com with ESMTPS id i18si1324100wml.1.2020.04.06.03.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 03:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhovold@gmail.com designates 209.85.167.66 as permitted sender) client-ip=209.85.167.66;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jhovold@gmail.com designates 209.85.167.66 as permitted sender) smtp.mailfrom=jhovold@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: by mail-lf1-f66.google.com with SMTP id s13so11312586lfb.9
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 03:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LHCts7qKkym8J74bg6cu1dOATt9lkl7FM9/Bg+uYjm8=;
        b=HSMQ9S8t9c1+pm8tZ3QdGDh71Ufq2fctJ2KLF2yeyJn/io9kIr1D8VUvXXJlVdSM08
         MlokOk4GinAMLxy/qXgCHEe4rJs5pfJKnzELdht8bE1r7T0KXTdv/08s7xadcRXcxGsD
         SYEkm1NBkw5iYjb5HOnb7XX/QRzP84KoRkkokYUOsEzXWXkbyRCp7EkB+msrlkzilJnO
         SLTG6wnjnK2yeV8H87HLRzu9V1Y9Ab65AkfoR2WCKKi6b4mLEUOLJBPYgICYNoDlTQjq
         zktVsKcYUvppnlu9kfcWHeRMLy0pDFfDoLbnd6Q2TNgHjvL2SLJyxrAVpOFgXXJwSpiT
         Kv0A==
X-Gm-Message-State: AGi0Pub1b1+qpswBUvT2Oh+2RMYtpGyc9sLR9bo6jBHFuB/JgovWfV1f
	S+qxGAXBWuX6+PGd3KCUAZA=
X-Received: by 2002:ac2:46e7:: with SMTP id q7mr3653079lfo.95.1586168155813;
        Mon, 06 Apr 2020 03:15:55 -0700 (PDT)
Return-Path: <jhovold@gmail.com>
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se. [85.228.170.18])
        by smtp.gmail.com with ESMTPSA id y20sm9814070ljy.100.2020.04.06.03.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 03:15:54 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
	(envelope-from <johan@kernel.org>)
	id 1jLOnF-0001Cg-K8; Mon, 06 Apr 2020 12:15:49 +0200
Date: Mon, 6 Apr 2020 12:15:49 +0200
From: Johan Hovold <johan@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com,
	elder@kernel.org, johan@kernel.org, mgreer@animalcreek.com,
	vaibhav.sr@gmail.com
Subject: Re: [PATCH] staging: greybus: quoted string split across lines
Message-ID: <20200406101549.GA16292@localhost>
References: <20200404005122.GA6315@siyah2>
 <20200405071517.GA1547921@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200405071517.GA1547921@kroah.com>

On Sun, Apr 05, 2020 at 09:15:17AM +0200, Greg Kroah-Hartman wrote:
> On Sat, Apr 04, 2020 at 03:51:22AM +0300, Gokce Kuler wrote:
> > Quoted string merge to upper line.
> > 
> > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> > ---
> >  drivers/staging/greybus/audio_manager_sysfs.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
> > index ab882cc..d7216e9 100644
> > --- a/drivers/staging/greybus/audio_manager_sysfs.c
> > +++ b/drivers/staging/greybus/audio_manager_sysfs.c
> > @@ -18,8 +18,7 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
> >  	struct gb_audio_manager_module_descriptor desc = { {0} };
> >  
> >  	int num = sscanf(buf,
> > -			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
> > -			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> > +			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
> 
> No, try breaking this line by putting the "s " on the next line, so
> there is only quoted string there.

Not sure that would improve things; I'd say that "s " really does belong on the
same line as the "name=%" and field width define.

As Stefano pointed out, splitting a string like this isn't really an issue with
sscanf either.

I suggest we just leave this one as is.

Johan

