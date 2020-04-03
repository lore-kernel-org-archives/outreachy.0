X-GM-THRID: 6810983981857636352
X-Received: by 2002:a5d:8152:: with SMTP id f18mr6623157ioo.74.1585898674763;
        Fri, 03 Apr 2020 00:24:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:a8c:: with SMTP id 12ls454179jas.4.gmail; Fri, 03
 Apr 2020 00:24:33 -0700 (PDT)
X-Google-Smtp-Source: APiQypJoRlJZNwOy9vgM7t4yOAXRk5j91IhmzIMbADPZFzF5TsmUIVxUNr58YrhvmkdAdOf95fiM
X-Received: by 2002:a02:cc37:: with SMTP id o23mr7317277jap.106.1585898673612;
        Fri, 03 Apr 2020 00:24:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585898673; cv=none;
        d=google.com; s=arc-20160816;
        b=BJGq2A0zaG2R0MAUX7VTcn+vARPqHMvt1YJGoD3N4bh994VuelTL4225V+zQnRx61Z
         d2gXoFJpKF8c9nvkPsdIhk8gc0NZVf5E+OKeOqY12CRm77fpzwTl0M1Q9BDPigmHf0eN
         kvBcr/ZSdzZ0mOs14gSFdFEhA8RZMgVuUxRqXQTvGjPA1EEN5Yt/rxFqIN3eRWe7SFX2
         NSKSsNhS5GBBwRa6O6KcajgrSAm3nCmctOSmatPle2hK7lr1+Ij2DxCz1EYvfqqzs5GF
         0qXSARA6baVSePmdGPnJVu1/8MIFsf0z9b8G1zxBUVFk5BzlGmRzApU9v3LLkuq16PGZ
         94og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=f9NcpdR1UH4awqfsGj9y3ArKagLVrujqI21Y30mY/XY=;
        b=OrTccA/zJ7LUEe4vXFfi5KwkQa25q/TzJOBjRAFuoYvVf9fFS2fFbTdL6asML8QFDC
         LT0ceBjnZ55UzBp/M5Pe+mBJqvOdNaE224CcI0TAxVUaqt8WyplvCEmV67mX1oBYZl7F
         C+0RtBmJT2oFI5E36xyDaP9p4dpcELU+h4jJfHqtIViieJKBxWopC3SEdCz2dpyoDlZF
         piYte4cVTTDI0aChZAKKxrjPZjIWV4qgmZdMDehznGlk1gNSSrOPAHHPxd2RcqqArM4k
         r1PA59l6yAgBz+CkrB0wonRjVA4W0zc1ayivAqYvbCsB2di4HVgPKP4DDksynl+TFwsB
         w7Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V7FdQBm3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t125si626983iof.4.2020.04.03.00.24.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Apr 2020 00:24:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=V7FdQBm3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 49A5B206F8;
	Fri,  3 Apr 2020 07:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585898672;
	bh=PZzf2oNMDzLElQE0/RA3BNR6PJu62ZJBwzRvyvupSF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7FdQBm39SBrHISYK8LKNwYqF5v4hXkP5x1yx91z9NFVGMtAQMG50r1QLype5Xckq
	 /BWWjto2zCDF2dJdogESnHErVX7NFAu2XljztpPscnqwWPb2MGEKCAs59LazEUj8dX
	 weygf2rYV4G7Uq8hrqUPS4NsNqaru/+bPlJ72JJg=
Date: Fri, 3 Apr 2020 09:24:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
Message-ID: <20200403072430.GC3405737@kroah.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-2-jbwyatt4@gmail.com>
 <5d35084fcc0476fc2f43e3cf371f5078c0fbeeab.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d35084fcc0476fc2f43e3cf371f5078c0fbeeab.camel@perches.com>

On Wed, Apr 01, 2020 at 10:54:17PM -0700, Joe Perches wrote:
> On Wed, 2020-04-01 at 22:36 -0700, John B. Wyatt IV wrote:
> > Fix 4 over 80 char warnings by caching long enum values into local
> > variables.
> > 
> > All enums are only used once inside each function (and once inside
> > the entire file).
> > 
> > Reported by checkpatch.
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/gasket/apex_driver.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> > index 46199c8ca441..f48209ec7d24 100644
> > --- a/drivers/staging/gasket/apex_driver.c
> > +++ b/drivers/staging/gasket/apex_driver.c
> > @@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
> >  /* Enter GCB reset state. */
> >  static int apex_enter_reset(struct gasket_dev *gasket_dev)
> >  {
> > +	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
> > +
> 
> This indirection only makes the code more difficult to understand.

I agree, this patch does not improve the readability of the driver at
all, which should always be the primary goal of any coding style
cleanup.

thanks,

greg k-h

