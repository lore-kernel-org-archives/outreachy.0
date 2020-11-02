X-GM-THRID: 6885028425195585536
X-Received: by 2002:a17:90b:1881:: with SMTP id mn1mr12273174pjb.225.1604348892400;
        Mon, 02 Nov 2020 12:28:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:bd82:: with SMTP id z2ls291920pjr.3.canary-gmail;
 Mon, 02 Nov 2020 12:28:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwMlAe9XMJmIw4Db0ses7z6qLjHZuRZ9x1y0er1wrgRl7FIGcCQ2ndg4Sayz/jCz3p+/205
X-Received: by 2002:a17:902:ab89:b029:d5:b297:2cc1 with SMTP id f9-20020a170902ab89b02900d5b2972cc1mr23684827plr.7.1604348890904;
        Mon, 02 Nov 2020 12:28:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604348890; cv=none;
        d=google.com; s=arc-20160816;
        b=Mv1ZuBmWzmbMuMYBF94q6WE34QWoUmxp9Z2jKhJwiWvOnmupkQOkbkgSsYNqkLNULA
         hUORpWEpDbNf1VNStTQZPHx5ySCk4DTOlM1Dx8HX5dZCwW+OtsD8ZXHDx9PrXQj2+o8A
         sLqOYhJYkjdEYzxKgCK8K0Crf1AxBcH7lovvNMyRRo7BxHGZuhyW7kSbGW0vnloPWDc+
         Cy+DG2KLWUq7LXA/3Y1uCxOgmEv9H9ZP1xKRTiMM0cg6LE6gaVcXNNKsxFoA9pZAtT59
         EGHiPxLgqE4kdpp09Xkz4B9Tx02kZjxr/LiftNyNvJEbWfETCFMuqbShY9DBadSqGvmB
         E+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=shSOapaXWmk+VRyRY+sBIgSLLrhqQvLB3xvEhIH968Y=;
        b=FeZY2LGYVtslTmNMLTgdwd8/YT3LqYJRdXtljsxIu1h88C713/kHUcUvUsi3Li1mJR
         2nC77XyNWMoyhzAyHlQequofJvlBPHTLE8nCGuzDajJAUomnapR5PIy7dnZzGpBgLGwa
         V7kqEUsQ5GWC2THgn0ENZVKbk0e7Wgpy/6ydma4icEbLk7tSSxdf5dzzyLIMfdzcGvmT
         Co8Oz1XN9cVLVqLhmwSBBH0SC+YK7QCG+WFUDbw2qm3XFTDWRwQrs3lLQbCcR+Ga4iz+
         on4vN19xtgZ8eAPRnkXHKv9AAfG3ks+whS2erpctRP1vLmxSca37uSDHjBzXfXb6yaZ+
         kZMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WuVFifbC;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t126si1215611pgc.0.2020.11.02.12.28.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 12:28:10 -0800 (PST)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WuVFifbC;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id x13so12140085pfa.9
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2020 12:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=shSOapaXWmk+VRyRY+sBIgSLLrhqQvLB3xvEhIH968Y=;
        b=WuVFifbC9sMe3BPpt4cdgvotcFeHA0JtoU3tkzgT1r68jHlOi6q/3v8Iwd6YHxvZsR
         5zxoBa9NfkmbTHpKzRYdUba7oAwIELOm6aT1GWuJ4HmUgCscj/tAVJq2+DxxlQRggI3W
         9MHET3qTkSP09MK/yB4Pbdf4c7klgq6UwbchaV6L+2el3zgvIqd0QfaQzKey+sBKZZpM
         9CLWqiuUeK6FYhxgSlFZCR3FXZSs/bOWvsI04mKj/PTi/hr8njY2bZ2lUzHe3w7z477o
         5zcJEU6dtHmo+chrVtQh4k0gE7iOhOv+kC8uOVqvXT/f48GPCu96vrVGwLR4NkFgVzeH
         wuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=shSOapaXWmk+VRyRY+sBIgSLLrhqQvLB3xvEhIH968Y=;
        b=i3eFXvRNAIIV9co4bJ0FeVNAH+SNdokruJpojSXaCYRQxvjhaXofl0wXvCPQO8tMyg
         XzIwlFDD6H87ZAtFPEA1e+FIRU1IhLcQgph7FvSlA2fgRNOUnxfsAgPq1J+7Kro+nkaQ
         YvvzdgQkfFzFMO+16qDGm2ee9NlXS7K0qN7a4jNlc8M3nI1cizR9jNgbCxrqn37YpOwh
         tx2IX6ohzRNwNMqvkVVxpQO4UFZz6n4gJcGR1OLTC3jHgPH5Kx1TXdDxGAjfXkTNVt+k
         8+nz/kGVPFHiwqhcc4zVeW+sGRdjHCRXZ3refZdahMTdqGnHYe8yzKV+NJ6Za1oyZlu8
         b+9Q==
X-Gm-Message-State: AOAM53127603GUX2KxAl11S6PvsjA6js2s1qUl7OIDLgnOQ4ydDWQQX3
	+zSpmIwq1H8TPGbo/rr8UXc=
X-Received: by 2002:a17:90a:1b21:: with SMTP id q30mr19277672pjq.58.1604348890674;
        Mon, 02 Nov 2020 12:28:10 -0800 (PST)
Return-Path: <mh12gx2825@gmail.com>
Received: from localhost ([160.202.157.3])
        by smtp.gmail.com with ESMTPSA id e6sm14042140pgn.9.2020.11.02.12.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 12:28:10 -0800 (PST)
Date: Tue, 3 Nov 2020 01:58:05 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: fieldbus: Use sysfs_emit for show(device *...)
 functions
Message-ID: <20201102202805.GA63429@localhost>
References: <20201018182633.GA46761@ubuntu204>
 <CAGngYiVKiRxDHi_7Hbfy6FViFkS_5dV66nkV-apRsEoZ1OmHzg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGngYiVKiRxDHi_7Hbfy6FViFkS_5dV66nkV-apRsEoZ1OmHzg@mail.gmail.com>

On Fri, Oct 23, 2020 at 09:40:25AM -0400, Sven Van Asbroeck wrote:
> Hi Deepak, thank you for the patch.
> 
> There are many other sysfs show functions in this driver that can be converted
> to use sysfs_emit().

Hello Sven & Greg,
Is it okay for me to now change other show functions as suggested for 
this driver and send another patch?
Just want to confirm since I will be sending the patches from the linux
next tree and for the staging driver.

Thank you.
./drv


> 
> But, the perfect musn't be the enemy of the good:
> 
> Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
> 
> On Sun, Oct 18, 2020 at 2:26 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Convert snprintf calls in device show functions to sysfs_emit for
> > PAGE_SIZE buffer safety.
> > Warning generated by: scripts/coccinelle/api/device_attr_show.cocci
> >
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >  drivers/staging/fieldbus/dev_core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
> > index 1ba0234cc60d..698d7b479270 100644
> > --- a/drivers/staging/fieldbus/dev_core.c
> > +++ b/drivers/staging/fieldbus/dev_core.c
> > @@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev, struct device_attribute *attr,
> >          * card_name was provided by child driver, could potentially be long.
> >          * protect against buffer overrun.
> >          */
> > -       return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
> > +       return sysfs_emit(buf, "%s\n", fb->card_name);
> >  }
> >  static DEVICE_ATTR_RO(card_name);
> >
> > --
> > 2.25.1
> >

