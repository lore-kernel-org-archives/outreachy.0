X-GM-THRID: 6662431164424257536
X-Received: by 2002:a9d:63d4:: with SMTP id e20mr2455359otl.60.1551288786838;
        Wed, 27 Feb 2019 09:33:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:ecc:: with SMTP id 70ls1381387otj.1.gmail; Wed, 27 Feb
 2019 09:33:05 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbgV1wCrV+wo/MfuEk2rFJq2Xn0HC66NNP/wq8b/dyYFwlQlIBHLGLZSGbsQMo/kMNsLt4V
X-Received: by 2002:a9d:65d5:: with SMTP id z21mr2424336oth.37.1551288785815;
        Wed, 27 Feb 2019 09:33:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551288785; cv=none;
        d=google.com; s=arc-20160816;
        b=vSHw6ssEQUgGsQmeznSIN0jm5vfcGhIVwfBpKuWb1texRdhG/YUgB6I66Pt3P3S82T
         liQhQL8vyxUhwhO6Opu6ZDJR5dgfbWsswe/zQmiPeTuWDrzH4HBnV5ZL07RSGAD1+bp4
         vRmDhklWQwq82f0VJUT5AyXe/fr5Si4X1Qjtgmp3KLGatsx3WBZw0q8yQhpdY/Y+Qcz4
         PJM/2KqgHCASanoclgo6a7HS+Ir2uGEQNcEnz4BYIpwybOxlVSoN27wAxeA+iC+cEFVd
         bNgw/z3RpRM4ajpgJvosozwU1hNc3UV9d2eZhdNfGFOZttBpAtmDVJJu/1a59BOeHdWd
         Fnng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t5/9SPdNM/my2hEqFJI+3fd3mAJNHXwqUAM90qkccyI=;
        b=Q8BTMhhxGqrNEji8OQAZpbZwuD0DbabPKZHMR1VBkcITAGmEjGN0cKYa5Cl5TlQ5mI
         Sv/XZ4MHH0c7EUyCBR1IoJ5I0/a3njm/mEeuG7BHdnJyzMXezBWPg2+Wlcg7/k+s/Yt8
         aUqzpljuBCNKZvIgFObfTfKOabkKHC06bgmDDJifezRih5KcWNxt/Z4I1za3+UekC0Cw
         fy9x1YwrhLSbx71XoktOxdlOW0N4zK+oDyutRZ/cqEOa0eFyZR9NdS05hvQ+FXbWpn++
         WPrJjUirG2u1YIWntI0RKJJrty4G0Ii/fc4dSzFEMd0losDrLQOJcU8UFr04Vx17ujyD
         U7TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hzmiPhko;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l6si1131462otn.5.2019.02.27.09.33.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 09:33:05 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hzmiPhko;
       spf=pass (google.com: domain of srs0=y1qt=rc=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=y1QT=RC=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5A3A020C01;
	Wed, 27 Feb 2019 17:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551288784;
	bh=rf0uRE0CvVevqOBAVme4Ky0OvKoDdGGv26mWJWaC9L4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hzmiPhko7f0RqPhjVBnE9EfvutJrzxuqJ7xcXJZwNyJFNFVrBr1sNk+OiIsPtPieK
	 cI71pLHi9xAh3ojC22RpwFWMIo4CPutQQ31iFXNPXtx6Vlm1aNTSlNn6EnSNUQbZG2
	 lDqTilJRBWY6aNyMwPHKqiWO/nDaqEV5AdtJGwuE=
Date: Wed, 27 Feb 2019 18:33:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: vt6655: Modify comment style for SPDX
 License Identifier
Message-ID: <20190227173302.GA16146@kroah.com>
References: <20190226215531.5196-1-madhumithabiw@gmail.com>
 <20190227144836.GA32231@kroah.com>
 <20190227164328.GB22354@madhuleo>
 <20190227170513.GA18050@kroah.com>
 <20190227171022.GA22572@madhuleo>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227171022.GA22572@madhuleo>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 27, 2019 at 11:10:23AM -0600, Madhumthia Prabakaran wrote:
> On Wed, Feb 27, 2019 at 06:05:14PM +0100, Greg KH wrote:
> > On Wed, Feb 27, 2019 at 10:43:29AM -0600, Madhumthia Prabakaran wrote:
> > > On Wed, Feb 27, 2019 at 03:48:36PM +0100, Greg KH wrote:
> > > > On Tue, Feb 26, 2019 at 03:55:31PM -0600, Madhumitha Prabakaran wrote:
> > > > > FIx the warning by changing comment style based on header file type as
> > > > > per License identifier syntax
> > > > > 
> > > > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > > > ---
> > > > > Changes in v2
> > > > > - Modified subject line and commit log
> > > > > 
> > > > >  drivers/staging/vt6655/baseband.h | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> > > > > index f2b6a98de2c1..0cc2e07829c5 100644
> > > > > --- a/drivers/staging/vt6655/baseband.h
> > > > > +++ b/drivers/staging/vt6655/baseband.h
> > > > > @@ -1,4 +1,4 @@
> > > > > -* SPDX-License-Identifier: GPL-2.0+ */
> > > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > 
> > > > This patch does not apply to my tree :(
> > > > 
> > > 
> > > 
> > > I didn't understand why it doesn't apply to your tree. 
> > > 
> > 
> > Neither do I :)
> > 
> > Please try rebasing your patch on the top of my staging-testing branch
> > and see if that produces a different patch or not.  If it does, please
> > resend.
> > 
> > thanks,
> > 
> > greg k-h
> 
> 
> I will rebase it and send it again.
> 
> Also, I want to make sure whether you got a similar patch with same commit log or not.

I have no idea.

Remember, I get over 1000 emails a day to do something with, I have the
short-term memory of a squirrel and have no idea if someone has sent
something prior to this at all, sorry.

It is your job as a patch submitter to make it as easy as possible for
me to apply patches.  Sometimes that requires extra work, and rebasing
patches due to other people's patches colliding with your work.  That's
just part of the development process.

thanks,

greg k-h

