X-GM-THRID: 6955860329873014784
X-Received: by 2002:a54:4484:: with SMTP id v4mr4306682oiv.70.1619549159996;
        Tue, 27 Apr 2021 11:45:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls5540413oiw.10.gmail; Tue,
 27 Apr 2021 11:45:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9ErQk9tKQdA3l2Trs+rEFiL7YzcsSK9rpS09IPoOXbzfD4HRzfT5L/oStP/eCqtZAblEP
X-Received: by 2002:aca:1c07:: with SMTP id c7mr2223395oic.177.1619549159214;
        Tue, 27 Apr 2021 11:45:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619549159; cv=none;
        d=google.com; s=arc-20160816;
        b=kdTIJgxppMhXiwSNT/CPMkRsaD482S7TSfFNfjZSKYDpSC4EFl+4U7sVYfWcUGmy/U
         KcgHXqUiA5/AF8X3YNQnU147MmzIZ8GN+6sKEsRwD9ogaggGh6gChymvpWx8hHiQhDVM
         e3P0MaGnQHHVP5npJ7xy9FMLpU1xT3kakfbMDF9Z2Zl4UPImBKKFPS7FGM1LKY+a6pYQ
         hlUN+ijbOShupRwruCkb8bkGzQgQrvett1qsKQAFKfgp75LHaYtnrx54HF2V4VtkOZVo
         FH/jshAuCNsIUkHmRbs7HM30m+cB7F3T58k2oq7Gn7Otr3OSYQZdjFtsfBwWX1S/z9Uz
         QEJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kNdws0KCBDiZZ9iMxA3g16kmDyUmWnqBaPPD4fC21SM=;
        b=DnT8gGtNBBhLEjgk4blhjYQijkxdZ7PbitX61q5sh7tFh8+MqYBXMUNfsJ72pgt76F
         UlyGRDfwne6SP17MRBoUonBySw9Q3wG7+U109LC+5oZKdnX0QThZlYokV+u9sgMxeRxl
         Ma9+CA2JchT/nkYlPK3oznU2q7axcW8wGV8MvjFAdb9kEqOw2F5cWvHchZ2wAT3aKK8+
         o3fMIjlilv3IARl6ksnJYuuLWeTKjj4km+eTKlQRzzmOux1C97Zmm6mJSF3fOd1NydOZ
         mbKSVmShmpmwgnw9d3ia/D16SojIzvZblJril6rvCkCf/QhG9LC+dZcpN+tL6pIupuyw
         mm8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dQAHfWnd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l20si671328otf.1.2021.04.27.11.45.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:45:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dQAHfWnd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id C7B89613F4;
	Tue, 27 Apr 2021 18:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1619549158;
	bh=sXSfVqfvOOLBqZYV8fQLFeZBbjBSkY41/nIH5OyKZhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dQAHfWndcrTHXH4MjqpaxeQHys0LeL06LSmCnwIDdVrFGXSMW1c24sy9kSDBaZDKE
	 n6aahpgfhZYtKit85ND52TwxijPRnETSuK/izHcPiBA+ZXkVX7irTOt0kB8v4ClHJY
	 gcvBMxi7t4dhf4E7pN8dgL7iL6WpVMrTRMKuM6VY=
Date: Tue, 27 Apr 2021 20:45:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matthew Wilcox <willy@infradead.org>
Cc: Tawah Peggy <tawahpeggy98@gmail.com>, Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: greybus: Add ()
 around gcam macro.
Message-ID: <YIhb45k3YE+MZS4Z@kroah.com>
References: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>
 <YIhTJkPeSObYqdHE@kroah.com>
 <20210427183241.GC235567@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210427183241.GC235567@casper.infradead.org>

On Tue, Apr 27, 2021 at 07:32:41PM +0100, Matthew Wilcox wrote:
> On Tue, Apr 27, 2021 at 08:08:38PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Apr 27, 2021 at 01:59:27PM -0400, Tawah Peggy wrote:
> > > checkpatch.pl suggest addition of parenthesis around the gcam macro.
> > > 
> > > Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
> > > 
> > > ---
> > >  drivers/staging/greybus/camera.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > > index 324a26430f71..ae49e37a87e9 100644
> > > --- a/drivers/staging/greybus/camera.c
> > > +++ b/drivers/staging/greybus/camera.c
> > > @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
> > >  
> > >  #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
> > >  
> > > -#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
> > > -#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> > > -#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
> > > +#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
> > > +#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
> > > +#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)
> > 
> > This change makes no sense at all.  Please look at what this is doing
> > and consider if it is actually a valid thing to do.
> 
> umm ... makes sense to me.  what if i call:
> 
> 	gcam_err(p + 1, "hi");
> 
> looks to me like it'll expand into:
> 
> 	dev_err(&p + 1->bundle->dev, "hi);
> 
> ok, the driver doesn't currently do that, but it's a nice bit of
> resilience to add.

No it isn't, this is a tiny little wrapper around a logging message.  It
is fine as-is...

thanks,

greg k-h

