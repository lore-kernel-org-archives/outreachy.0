X-GM-THRID: 6465168256299696128
X-Received: by 10.28.109.193 with SMTP id b62mr363825wmi.16.1505329091799;
        Wed, 13 Sep 2017 11:58:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.133 with SMTP id l127ls138325lfg.35.gmail; Wed, 13 Sep
 2017 11:58:09 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7ZV7bzQpPlB8N6HTHp2SM3OyGiD6vK68gKJ2VFENcqiSVR7trDEYmMbTNikwGg3mfeclgj
X-Received: by 10.46.91.21 with SMTP id p21mr1140468ljb.24.1505329089673;
        Wed, 13 Sep 2017 11:58:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505329089; cv=none;
        d=google.com; s=arc-20160816;
        b=Nk1tOeh+EkKVQowleTU9Xt3zU9BprfNoRYCQsPidzhH8sNqDMrheL+OscTaYhLJNMX
         DqWVTSNRnP/7P8AK8w9zGhKg2e8uGlvnRa6sHwXe6OYNGXj+78h7Hea5mYxbhc1EOEWg
         Ok+VBGw6snJtwKBXIz0SQyFppkVkm9IfFS+oPwJ7qyAcd0XP3QqfAVdySaZbQJgTDnSP
         uspky0oK9FGJzj400KOofxLvXnve3cYMTc+Q3t4PLG8sMyVG9WOAXkb5rJtU0UKzpMDd
         Wdxa72LJJDR2WEMdBqCYnkitneK6UM2S+Hl638zoSLwQPhcXg4qV4gOJGmqoq7v8rFwJ
         pjdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=TMcfOL3JyRJTssM6M1XfwGwYR4dJNZJ0kKXgv8v+bC0=;
        b=u7tm4QL4wCQXa6MiIYWFrp/EsljcKr1R3JCiYfVsWyAaq4bVRzjMBtwSzMQt5q+GDC
         xUdpYMbihxxaUO/kTAR3VCFnexQ/kCyZ+n3368wvah9cBTmq+r6A661Ex2XWnYjZLZmG
         LwvsYNjsyL6bpnaHSNbbvTSZrAipJFdsYn4mwIlkZCwHx1LBtTgQxuVckgAs6z+/XY9p
         bhOIoMJtClMBJvVT/JTjCOPMDt1bhiI2T5ffOYMIPRZtbXH7C5J358AOaPBb44usZhj0
         OrX359gW6ExyYn6GP8oufKyYWtDI3bsESVAtiejnJyY+wRbYNyo+Zj4zNxEtwS46Lcgi
         hlzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id s127si96398wme.8.2017.09.13.11.58.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 11:58:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9DE37AC8;
	Wed, 13 Sep 2017 18:58:07 +0000 (UTC)
Date: Wed, 13 Sep 2017 11:58:05 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Himanshi Jain <himshijain.hj@gmail.com>, devel@driverdev.osuosl.org,
	daniel.baluta@gmail.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	outreachy-kernel@googlegroups.com, pmeerw@pmeerw.net,
	knaack.h@gmx.de
Subject: Re: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
Message-ID: <20170913185805.GB26390@kroah.com>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
 <20170913180310.27cbf1b1@archlinux>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170913180310.27cbf1b1@archlinux>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Wed, Sep 13, 2017 at 06:03:10PM +0100, Jonathan Cameron wrote:
> On Wed, 13 Sep 2017 14:14:07 +0530
> Himanshi Jain <himshijain.hj@gmail.com> wrote:
> 
> > Add __ATTR_NAMED macro similar to __ATTR but taking name as a
> > string instead of implicit conversion of argument to string using
> > the macro _stringify(_name).
> > 
> > Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> > ---
> >  include/linux/sysfs.h | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
> > index aa02c32..20321cf 100644
> > --- a/include/linux/sysfs.h
> > +++ b/include/linux/sysfs.h
> > @@ -104,6 +104,13 @@ struct attribute_group {
> >  	.store	= _store,						\
> >  }
> >  
> > +#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
> 
> I'm not sure about the naming here.  The normal __ATTR macro is also
> 'named'.  Maybe something as awful as
> 
> __ATTR_STRING_NAME ? 
> 
> Greg what do you think?

ick ick ick.

> This is all to allow us to have names with operators in them without
> checkpatch complaining about them... A worthwhile aim just to stop
> more people wasting time trying to 'fix' those cases by adding spaces.

Yeah, but this really seems "heavy" for just a crazy sysfs name in a
macro.  Adding a whole new "core" define for that is a hard sell...

I also want to get rid of the "generic" __ATTR type macros, and force
people to use the proper _RW and friends instead.  I don't want to add
another new one that people will start to use that I later have to
change...

So no, I don't like this, how about just changing your macros instead?
No one else has this problem :)

thanks,

greg k-h

