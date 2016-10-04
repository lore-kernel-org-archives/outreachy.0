X-GM-THRID: 6335655497747660800
X-Received: by 10.176.85.19 with SMTP id t19mr401686uaa.41.1475557002833;
        Mon, 03 Oct 2016 21:56:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.83 with SMTP id e80ls2918812ite.0.gmail; Mon, 03 Oct 2016
 21:56:39 -0700 (PDT)
X-Received: by 10.36.94.136 with SMTP id h130mr6081923itb.3.1475556999222;
        Mon, 03 Oct 2016 21:56:39 -0700 (PDT)
Return-Path: <agarwal10megha@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z73si2699971pfa.1.2016.10.03.21.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 21:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of agarwal10megha@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of agarwal10megha@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=agarwal10megha@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id hh10so2199043pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 21:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9DQbtx/YO7UOtMoAYsqEeTc3ObHsN/aWQqhdGzMbzY0=;
        b=Fmz7Uv6mTBG5bh1lEUuCSQEua/Ni4GVDARJ8hGxevCK2Q96ygke8nUuhFY2SzlXTvV
         g8UTVekk11mplGWcL0zukGrwcKemyp85IbY9kKeJpHtuK+Mtg78Vf2SwTA3J72fM6Qaw
         XPvBjeuD/mXyarOwwDhUvC1zAzOe/jVz/6ufqcwKl3SxjIqkKMLGfziolqw9cqbpRRDX
         s04tE0kQvRxiUqJHVvL1strwTanVdCqVOeuTqCLPGIY5kQSwIJy8GSV9XC/dNu/9wWgY
         871U6sO6wF1voW6e8/jiCp4d/i8SN3QrBj6z33Sa4PRhYJSzyXPSToUsutr8QMRf4mtC
         wOsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9DQbtx/YO7UOtMoAYsqEeTc3ObHsN/aWQqhdGzMbzY0=;
        b=ENa6LuJm+ncTUjGucUlaoBCF6HqvJp7DLMwJ7iAJ8HeLoD+mmtt9zyFpn9f421Zi4k
         yxGqPsyiwmVBMAoN500GI1IE1kC2ZaPUtfLWEssrfO3A34chgXeVa16ivcHK5z9kkEKZ
         pe9o3z0eNlDuLIVhUPu41swQIaQFnReLP1Dj6aNfd/4QNOVwABp9jN8U/5BDf0E2hfw9
         nrGD0KgIlLsx6u315T/BZtST96SUtuSYBHQs01YunMSuyNCn2HuN7fyAA1l6EtiDKL/X
         GFmF8egERd0CIL5og3lLEYtD1+mfNJY/UwVU3bRImjVlgRuXqbC2ad0fImjt45HH8/d1
         VyoA==
X-Gm-Message-State: AA6/9RkgrKBvfwG3uUr/wKvbIHczhhqRerQwPUrKZR0e+sEVp1isE7uevr3KOa0hdrkkvw==
X-Received: by 10.66.245.204 with SMTP id xq12mr2403597pac.37.1475556999057;
        Mon, 03 Oct 2016 21:56:39 -0700 (PDT)
Return-Path: <agarwal10megha@gmail.com>
Received: from megha-HP-15-Notebook-PC ([117.99.172.81])
        by smtp.gmail.com with ESMTPSA id co6sm1527641pad.23.2016.10.03.21.56.37
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 03 Oct 2016 21:56:38 -0700 (PDT)
Date: Tue, 4 Oct 2016 10:26:31 +0530
From: Megha Agarwal <agarwal10megha@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [PATCH] staging: media: bcm2048: Replace 'unsigned' with
 'unsigned int'
Message-ID: <20161004045631.GA4456@megha-HP-15-Notebook-PC>
References: <20160929073859.GA21701@megha-HP-15-Notebook-PC>
 <20161002145401.GA21187@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002145401.GA21187@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Oct 02, 2016 at 04:54:01PM +0200, Greg KH wrote:
> On Thu, Sep 29, 2016 at 01:08:59PM +0530, Megha Agarwal wrote:
> > This is a patch to the radio-bcm2048.c file that fixes up a
> > WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
> > found by the checkpatch.pl tool
> > 
> > Signed-off-by: Megha Agarwal <agarwal10megha@gmail.com>
> > ---
> >  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > index ea15cc6..f6f847b 100644
> > --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> > +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> > @@ -2022,7 +2022,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
> >  	return count;							\
> >  }
> >  
> > -DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
> > +DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
> >  DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
> >  DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
> >  DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)
> 
> Why only 1?  And are you sure this is correct?  Did you build it?
> 
> greg k-h

I was not sure if I could send the changes in all the lines in one
patch, hence sent the single change.

I am revising the patch as this change is giving an error on build : two or more data types in declaration specifiers.

megha


