X-GM-THRID: 6671020394532569088
X-Received: by 2002:a25:9a82:: with SMTP id s2mr6662707ybo.254.1553238458977;
        Fri, 22 Mar 2019 00:07:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4095:: with SMTP id n143ls2576242yba.13.gmail; Fri, 22
 Mar 2019 00:07:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvZeDHSmW63MbI4G2DcPnomwt1pHok3Ul89av1hZhwOvbrTwhiBxXxZlge7foKBHho2mL3
X-Received: by 2002:a25:aa0f:: with SMTP id s15mr6771346ybi.185.1553238456964;
        Fri, 22 Mar 2019 00:07:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553238456; cv=none;
        d=google.com; s=arc-20160816;
        b=L7oxa58GEstb5KZ/p//6GhPFOGbC2nRM+rbWViV/9pQ9erPVWG/fp248ENpGNKB5Hf
         lyVG7JGnbqukUIR3/pAMW7aaxoDCzldmeuOj+PkkyWD6/K1OSA2jJL0VLCmoYdlvDlWi
         MyOUCe4Ff1bBOKcppwowUc9I9ZBL2lmGRC3cSWPgJIS0ZcVV7cxBVF+5bUuz3gWYblRH
         gQlw2PLQpW9t+DVyAQsAf6LZ2OOoWvfr4k32fkbRbJw2xufbszNNdmQec3gTXcxONjA3
         QWLDD1srB4H0/44XOBj9damPl+IN66Qj9GEHZ72gClrxrNuKQGw1NwoNprv1UwCX0hHZ
         EfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R0jVAOhlE2GIvw4Snbcd/K17Df9qpeZEdlaoNzINZgs=;
        b=riJfwxKYLlg+p11hW9UL95rQJljlEVQiKopWaZ1l0dn9LW+hwguRV0KUe5ZNwOecNw
         2aQyxpxhVjPFkTrOd7ynxjkepGBwmOcMTu7xZ6mi0U35aU4wJYNiBkZh60ufSQ1YOKl4
         zuJLRZpGmLi6eFsImURsoxb3kUdGZzV56PBFGJlxBTPxOXGFr7Y6l3JtkdkPoboXY+oj
         F7TM0weQznV0g6bW/R79Z9OUZ5qdSIW2vcZ4/5Z821BimNyaqEgqUAbQW15yYI0IFG/S
         2i964pMAruXBQxmObADBY/FAHY/RqiKmsyDh2J28qapaMb2pQPoQS4bokQ3b6CxaGxCr
         LuXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1Y8IQIVg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i204si412230yba.5.2019.03.22.00.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 00:07:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1Y8IQIVg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4E94B21900;
	Fri, 22 Mar 2019 07:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553238455;
	bh=MGpaBACu4zBLO6o0rY8iLt+IJF/UE9E47FeFz4w+qr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1Y8IQIVgdRGZNNbrPUl4Q33mjIAsPeSdA5Nd5XIinqwQdk9Shw3oZHScJSDn9OwFs
	 oRhzpHv08wN5gGm+ibWD0OwC9UA9kbkJIoLhrnfFY9kzjjOGvBa5GMfbcjI0/TPhwG
	 Z5MLOSe1/+o6TPtn0doqaGi981VJ4LgcHamPonQk=
Date: Fri, 22 Mar 2019 08:07:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>, mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] Staging: media: davinci_vpfe:
 Remove RESETBIT macro and use BIT macro
Message-ID: <20190322070732.GA6288@kroah.com>
References: <cover.1553217781.git.madhumithabiw@gmail.com>
 <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com>
 <20190322052659.GB29938@kroah.com>
 <alpine.DEB.2.21.1903220727420.2621@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903220727420.2621@hadrien>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 22, 2019 at 07:31:01AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 22 Mar 2019, Greg KH wrote:
> 
> > On Thu, Mar 21, 2019 at 08:26:06PM -0500, Madhumitha Prabakaran wrote:
> > > Remove RESETBIT macro and use BIT(x) instead of (1 << x) to improve
> > > codebase.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
> > >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
> > >  2 files changed, 4 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > index 382d88bee5a7..4f18db127caf 100644
> > > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > > @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> > >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> > >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> > >  		case MEDIA_BUS_FMT_Y8_1X8:
> > > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > > +			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);
> >
> > clear_bit()?
> >
> > >  			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
> >
> > set_bit()?
> 
> OK, I see that the definition of these things is much more complicated
> than what I was looking for.  These are atomic operations.  There is also
> __set_bit, which is not atomic.  But set_bit does seem to be commonly
> used.

Only use __set_bit() if you know you are safe doing the operation in an
"unordered" fashion.  Given that these originally were "open coded",
it's probably safe, but it's simpler to use the ordered calls for now.

thanks,

greg k-h

