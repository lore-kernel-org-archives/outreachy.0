X-GM-THRID: 6803023005726277632
X-Received: by 2002:a92:41c7:: with SMTP id o190mr5101970ila.11.1583964694709;
        Wed, 11 Mar 2020 15:11:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls703722iog.6.gmail; Wed, 11 Mar
 2020 15:11:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vucJ+fGNaj0p9cNkU+cUISg/z7lvd/qoo91bFLQa1mUF/Nu98zvO4Pl3YSGitrrjZs3+1g1
X-Received: by 2002:a6b:8ed7:: with SMTP id q206mr1183350iod.148.1583964692052;
        Wed, 11 Mar 2020 15:11:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583964692; cv=none;
        d=google.com; s=arc-20160816;
        b=QqlNB2QIWh4ry6iBS04xtmB3OBBZF+m0siXh5Q1zSutXupDa1JsG/QKUPlDR0Wy4AN
         wgueRKf+I+EMwv7oiGguvJ0CHhOSLP5WOayLXaK1GMV4RQj27Be/jz9DltQB5t+i/ZLn
         erR2/3TgeGExv2DUCUJWbG1dSi++d3t/eWjJfbc47X8o223i1Slueny94o3xaOhxH8r6
         WaXr7xF0wzhvvQrNfFGrgwob69RqS+OxlCxwNNQ4uFqVZUDqCFk5qpYxx+2TmW1xqlNj
         n8hw20PHKhzdos8agEBWbbq4E8Zx8dOd5J+3IFq8lVO5qT6ossisxpCXik5hfOka03YL
         0vOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=9eQ67ESkxZhUzDuIsrYRPjbSH5oNyv89Bw2zaJ2lZWA=;
        b=ms8+aynOMsKKgwa/goDtfigwii8KdbwOuf+baHE3TDAiLh7EcCvdpRLKZJNXhYAbMu
         cZKC4mhmZP5ErtsqXltXWoj4MnQIN0c/8ROnGLNtBcO9Z4ob6qJuq9a2OFPQs7AhvDMQ
         EjbuMZeLFqqTghsG8Jaa/aon/36JVmKki80yZm1c8AiZJIQGu1KqlAcq3k/85FNlm1gb
         jkrdt1VObe7eSlLaC+0CUD97ufW/b5M959TbYwtuQuf0hh27HF+Y1UYXGzgj88RVecSX
         k5TLIHSbsE9ozlRktWYSilVtL71B7BL1A+EEKFkOKlsA/Q8FSWvB+4lI0q9bnylaI7Sl
         m+Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=rcgAOFFy;
       spf=neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id e7si139384iof.4.2020.03.11.15.11.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 15:11:31 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=rcgAOFFy;
       spf=neutral (google.com: 2607:f8b0:4864:20::541 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pg1-x541.google.com with SMTP id t3so1958361pgn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 15:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9eQ67ESkxZhUzDuIsrYRPjbSH5oNyv89Bw2zaJ2lZWA=;
        b=rcgAOFFy7gnxYN3iHwfhVrExC/1tLpesYnW4tgJZ4373l8cqqE2WlfQcFf5rjHe4lY
         BU9SgMd6l52/Rd6dfYCUJj0iV2YKD8wwHOzRc1PBuv2X7VjGek51c+SKs4+blfmTh1+Q
         I5WuBBuaTxF8juyhgeaSm59EZqLfu3ptL90u70QDJHnLKvgkSQ9TutciNnbVvVWpe5/D
         ewsNNH7bg53nIv2Z7WXQPdJFuIDwDNeZJ5JdwVh1fVTUgmZupC4xiTh8ZUn/nfcFPA64
         8H6dTNazueLXHpBln7uhogRuuESF8oS9HIHFTDPuds6OWkrQz2l+6oj8+ID8FThltFZr
         VxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9eQ67ESkxZhUzDuIsrYRPjbSH5oNyv89Bw2zaJ2lZWA=;
        b=rxONmwXLZCucpZGKTq8iEgNI59zf/HEiE59upbOITQ/J83O11V3zk6ytTA5MAdfURJ
         HzkLDrCGpNnPjmJGJ93H4d4o/+FACsE7PwP7fiSRpuNxCykX9+dKgr8VbsML6tbMNdel
         JUAx1asiJS5+MxSAoYqQWIAEdvpS8GXfCmCWOgLWoySsoCqtTNzeNqvHdYbXqYrhtEAG
         C6HBOnxwPfRahuPypprs6Ebys8qH8Y5/n4j3AERliuEibisnml26kZWEbulRO/pelKmp
         T9ft1HXwj5SrUwdSvr4n0zXFlBFRhod7BrMO/LypkMWoEZFeC01Lk/aE9ZTGPFlZtPz0
         F7jg==
X-Gm-Message-State: ANhLgQ3+iw2mvbDVRXrSsZlaZV1FlyEbIC/x9NUnci8nH3RuMmZnRusC
	zSJzlFazgO5yMBsAWG+lVbYIuw==
X-Received: by 2002:a62:e414:: with SMTP id r20mr5047796pfh.154.1583964690592;
        Wed, 11 Mar 2020 15:11:30 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id z20sm22387868pge.62.2020.03.11.15.11.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Mar 2020 15:11:30 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 12 Mar 2020 03:41:22 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: comedi: drivers: use
 unsigned int
Message-ID: <20200311221122.GA29568@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-6-kgupta@es.iitr.ac.in>
 <alpine.DEB.2.21.2003112150260.6093@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003112150260.6093@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Mar 11, 2020 at 09:51:10PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 12 Mar 2020, Kaaira Gupta wrote:
> 
> > Change i's type to unsigned instead of signed. It's always positive.
> > Reported by coccinelle.
> >
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/drivers/ni_mio_common.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
> > index 06ed4b1dd875..034cf8dafaf0 100644
> > --- a/drivers/staging/comedi/drivers/ni_mio_common.c
> > +++ b/drivers/staging/comedi/drivers/ni_mio_common.c
> > @@ -888,7 +888,7 @@ static void ni_sync_ai_dma(struct comedi_device *dev)
> >  static int ni_ai_drain_dma(struct comedi_device *dev)
> >  {
> >  	struct ni_private *devpriv = dev->private;
> > -	int i;
> > +	unsigned int i;
> 
> I'm not sure this is useful.  The value is not going to b lare enough to
> require an unsigned.  And loop indices often have type int.

Sorry, I didn't know that. I'll take care to see the largest value as
well before making such changes. Thanks!

Should I resend the patchset by removing this patch or leave it as it
is?

> 
> julia
> 
> >  	static const int timeout = 10000;
> >  	unsigned long flags;
> >  	int retval = 0;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311184327.25338-6-kgupta%40es.iitr.ac.in.
> >

