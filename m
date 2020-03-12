X-GM-THRID: 6803023005726277632
X-Received: by 2002:a17:90a:1a43:: with SMTP id 3mr4510646pjl.35.1584024808570;
        Thu, 12 Mar 2020 07:53:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls2735105plq.7.gmail; Thu, 12
 Mar 2020 07:53:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtaet4DUTnAfg+GNuIJjx70Or3ZL7lE+xMvp5kxLnea0XlvDGuffxHY0NqIxvaBFKvez6XT
X-Received: by 2002:a17:90a:348a:: with SMTP id p10mr4788297pjb.120.1584024806766;
        Thu, 12 Mar 2020 07:53:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584024806; cv=none;
        d=google.com; s=arc-20160816;
        b=oC9AeQgZFg+3/O3x+E5nYTr1V7fwZCqCKMr1wO9BvKxSYpA/8FWaAKdZdoX8P8Nw5f
         i32R94r8kRe7n7S1ZdfK3XrqpI1B5lIxHYxfUzjZ3P0umsSJgSGLJz9EjXsMOQm0El42
         KVO/crjeqY2fSVncGRENe4aacf0PuiROgnLNEkOQBbkWio6ioczbFOEM8wYLAlgb+dOf
         HtF3mvqf0y3f9n3e0I50JWBgvgTrA6HaAfjJytZJcGTip07IJDFDKf5ihTmgPhEBhqbt
         5tpDiToFKAbq2/F/is4avs39HSV2aLCf2sPdyg3TEWqYYSyfYgFJSNkTpN5l7YX3D2bq
         A6Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=qGPmrDerfMw4ZE0zylcUwaiSLZPJxeOVfnV+vA232uc=;
        b=MnFHpheyTNsoxmRtBdb1l8gVqYiejuyOw37jW+L+cE4s0W3kSoH0maxkPLklWpRlo6
         bHyN89zMo2/AOpp7pKF9LR3Am4DLj0CTFYv/Ra3rBRWltCyWNwaHQ84iHowLTbTTYHE2
         wL3bP/ZTxBEuydZ+xAAKhP+c4Roi2/0JQEYWy2KhMYIG+QV6JIFYfpv8CL9scrIJI6lo
         oW8vWcYkaV9ROiYT5dO6hp1ore9iphdRR+YYARwaRhiC+CHFrXNDRTqR3hopCVgLOY+b
         C5nQvavwwkmwtdAY7bFmw85ShxYKcdVMsbNIqGuDl4mxMb3BQhbkOOTcjxeEeDqiYEFu
         GaSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=v31i5Lai;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id h10si371118pju.1.2020.03.12.07.53.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:53:25 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=v31i5Lai;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1043.google.com with SMTP id u10so2656618pjy.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qGPmrDerfMw4ZE0zylcUwaiSLZPJxeOVfnV+vA232uc=;
        b=v31i5LaiUyai7xG/8n+a9FZNtNypp7/DU0X0QCx+/vzXwJmzUdkxtaDuNe9e/w7Wum
         Xcpyc5TCpV0h0Gcy8Yi/rA6LnZQnCv120OtFCHbIUGNv0xm0WboonP/Kd0O1B8pKYYx5
         M7Y02kSQKEG+q6M7GF7/ht3fdXxBxildZqsiXxTL//Y20bX/K3GYzZ8U/F8IcCvcka+s
         MRzaK2SCd8aRfImjKD6u1aBkLx41eYBol8jNupywj0vwplVwouBMxwMIjlt+49+sqiar
         xkgXY0EiVCAzBPxT2dQpzKVfXGftP2PQLqlCxzehkxZT9nohGHDrXzntFa1lYLEbRR/m
         +Fug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qGPmrDerfMw4ZE0zylcUwaiSLZPJxeOVfnV+vA232uc=;
        b=DWlsU+SR+mxlVBBQKftn9zACr8uUeB/X31+e+On+OkX0OJcLqVTzkoiFkppmAus6zH
         +tflAAX0kWPoYYKQJa5nfrkh1rDjITKLseU6IhUdU+gBosG/iHlxcrR1nNtE/uTOtsIa
         FfD5y6r8jxha8FMrmAPSCXO9cBpyjaXqJJOirfwb/naWasWe/xwdiZBwf8GvgVDyqfRD
         JZz9An3POwU9fSLrMs3LWj3DRp/SrPNyDE9YiYt0/s1II10x2jVqM4X5faZcAevkAxLy
         m0I9W7ZFd0eygAd81v9grAo4Ay7wgOhTcCZV/28mCQNZAmHn7p1nVyHd/NMBeB1PvP1E
         RCfg==
X-Gm-Message-State: ANhLgQ3McfjLOJfPDPeTlGG829Tv4GA5CzsY6HrcKvzlTb9PfM3XstgA
	i3fni+lhdiCB9h4yKACg9aMXo7Kx956BBA==
X-Received: by 2002:a17:90a:bc06:: with SMTP id w6mr4480026pjr.67.1584024805233;
        Thu, 12 Mar 2020 07:53:25 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id z16sm9175320pjt.40.2020.03.12.07.53.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 07:53:24 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Thu, 12 Mar 2020 20:23:16 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/5] staging: comedi: add braces to prevent precedence
Message-ID: <20200312145316.GB30896@kaaira-HP-Pavilion-Notebook>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
 <20200311184327.25338-5-kgupta@es.iitr.ac.in>
 <20200312081824.GE11746@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312081824.GE11746@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 09:18:24AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 12, 2020 at 12:13:26AM +0530, Kaaira Gupta wrote:
> > Add braces around 'a' in comedi/drivers/das1800.c to prevent precedence
> > isuues.
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/comedi/drivers/das1800.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> > index f16aa7e9f4f3..be4b33c8e93d 100644
> > --- a/drivers/staging/comedi/drivers/das1800.c
> > +++ b/drivers/staging/comedi/drivers/das1800.c
> > @@ -91,7 +91,7 @@
> >  #define DAS1800_SELECT          0x2
> >  #define   ADC                     0x0
> >  #define   QRAM                    0x1
> > -#define   DAC(a)                  (0x2 + a)
> > +#define   DAC(a)                  (0x2 + (a))
> 
> There are no precedence issues with the use of this macro.
> 
> But, to be "safe" it is fine to do, just use a better reason in the
> changelog comments please.

Yes, sure.

> 
> thanks,
> 
> greg k-h

