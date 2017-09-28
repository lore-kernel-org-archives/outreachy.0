X-GM-THRID: 6470761478432489472
X-Received: by 10.223.130.234 with SMTP id 97mr510160wrc.5.1506605171602;
        Thu, 28 Sep 2017 06:26:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.144 with SMTP id r138ls89536wmb.12.canary-gmail; Thu, 28
 Sep 2017 06:26:10 -0700 (PDT)
X-Received: by 10.28.68.135 with SMTP id r129mr165791wma.19.1506605170477;
        Thu, 28 Sep 2017 06:26:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506605170; cv=none;
        d=google.com; s=arc-20160816;
        b=nAXfJf1JmLKNl4ZlubfpdqDTatk/rDgdTtrCVuXzpCN3jPPHJyky/f9IjrKK+uONaw
         O6KvTt0pkXci+dLpJKKq9TznsVGnpqomxWRSt/N1ch4vH/VhXDhmGU5lg44W4wqrEMxX
         IVp2TSZnCH6Pj5DqSZtu8a45wReyetOMaQ6/odEOmAsulrgEFWpxnhFIpNixTmmcYxV3
         /jBK9287JX+0Oq3TKqfLXVQzyFv0HHMyAWjEUJRB6y1NFl/AUR6e1NNWjqGtTtKTExrP
         ukEnJve6C9aelvx/YRMaceMZi4YzrcF/F7kfAtvJZ3+wOPGBumpSXwGYA7vLuU+AXSvi
         hbIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=bi6uR/VepRjKs8uWj//jZCJ0Yp0lHuVTpq71lTe9s8I=;
        b=QTJgF0w1/twktdMXKVzetKiqdHXmM+kEOTh7N4+vO7iasZ+pFdN+dy1c8D+BLQrsvK
         Sli7DxCrXG1xWLsLBwjlQO70roNTzk69oNznYKHG/TD5taOWxVfAo+1KONiSrimrSkKP
         JeQj4l36CcdzTQgEybIiyacI/7Sex9/+HeX3nRLN/HDdQvkzDuSstyEwhkPDpEXGCERO
         wO/uvd4NlHIHb97zv8xATZwkH3YReqF86JiQwczKcS8OPS0Bx3rvJnsZmmYutRtRyk6t
         ZOPk4F5aGppqDwgyC3i1/LWCUPOsV7cnrc88QZr+DpdwxCn76YM8u7N9117mY9Ybifbf
         B+dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j0lsESCN;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id 191si93552wmn.2.2017.09.28.06.26.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 06:26:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j0lsESCN;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id r74so2279368wme.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 06:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bi6uR/VepRjKs8uWj//jZCJ0Yp0lHuVTpq71lTe9s8I=;
        b=j0lsESCN/kKFzbgkq6cjVnd1N5IJW6zE1mBzuCULPLXx9qEtj8ChBqfdIf4IZ+Nylm
         yvKxjGRNUvcPMymh99+CG1AcXrZ2WUTj2Qq3Ymuz6x+YQqI4t54W6hke6gb6LcxiLwfO
         sJ+8YX8Vjoqt6Tn2+EMkg+vG3iWSX71lQkRnB1rHRLbIXB9C8QqI6nTQ0o/nH4vM8EAx
         4919uLegyxZJZ5HRHBF4a5xmcAQBQA2qAY+efV1mDgz9Nm7xHrEr0OQT0QrMDjUAnmpQ
         acix/9FtqLISzKCRtc5OPTrnyx/+IHltYfeCynbcSZWJoXjIjCwkSfKMsCkt/Mhhq8MI
         gOgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bi6uR/VepRjKs8uWj//jZCJ0Yp0lHuVTpq71lTe9s8I=;
        b=bYealYRwye2D2NN5U/0Twa0wbIWfyrciMT6MNvCrBatFi3nXqOzZPfZKEDoK6kEKcB
         068WrMz/Wjlzg+LaZW+aqbPgg9/WWTBTBT4zLMEbUE5J2DwgeBorR7bxpbTgJqS7NUdS
         VdWlkldqNiaTKcR9vzCRraUKeiN7UMWKuDkqsCywWQac+Ulsnf4vXmQ6yHazpssWZR87
         +IqRceIcV6GiuZk/1GsZnQ0UmakkqNKYoMwxV2jLr2BQQJ3U6UnNZ9fsWIrPW3VslP99
         z+7sWX/1oVosF+k/6BJqA0AcB1Muucg+yaOpw00+uDkVUjJq6ue8gjs3bvnlqyl2pFE/
         1okw==
X-Gm-Message-State: AMCzsaVZDrI+up/rD3ingZXwqluW+TScmYTTeM6+foc+ALLEgHGZXhbO
	k47rCEJJBWbs4EPsC9MaP8wQBw==
X-Google-Smtp-Source: AOwi7QBDJqI7RGVLaZBaCQbAqJkj5Z3JJeSBehMaooBmDj6IRmcKOQtjG8aLCHNJ/qu6hF4uGYoZcw==
X-Received: by 10.28.57.215 with SMTP id g206mr1200141wma.117.1506605170122;
        Thu, 28 Sep 2017 06:26:10 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id i7sm605875wmc.18.2017.09.28.06.26.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 06:26:09 -0700 (PDT)
Date: Thu, 28 Sep 2017 06:26:07 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Remove
 duplicate extern variable
Message-ID: <20170928132607.GA4714@ubuntu>
References: <20170928113505.GA12271@ubuntu>
 <alpine.DEB.2.20.1709281415240.30797@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709281415240.30797@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 02:16:00PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 28 Sep 2017, Mihaela Muraru wrote:
> 
> > This patch removes the extern vchiq_arm_log_level variable from
> > vchiq_2835_arm.c.The variable is also declared in vchiq_arm.h header.
> 
> This looks like the same code as the other patch I commented on, but again
> the change doesn't match the log message.
> 
> julia

I think I sent the wrong patch, sorry

Mihaela

> >
> > Issue found by checkpatch.pl
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> >
> > ---
> > Changes in v2:
> > 	- remove unnecessary blank line
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index ee00f51..a96bae0 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -84,7 +84,6 @@ static char *g_free_fragments;
> >  static struct semaphore g_free_fragments_sema;
> >  static struct device *g_dev;
> >
> > -
> >  static DEFINE_SEMAPHORE(g_free_fragments_mutex);
> >
> >  static irqreturn_t
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928113505.GA12271%40ubuntu.
> > For more options, visit https://groups.google.com/d/optout.
> >

