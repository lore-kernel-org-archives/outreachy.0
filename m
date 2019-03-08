X-GM-THRID: 6664981263437266944
X-Received: by 2002:a17:902:1125:: with SMTP id d34mr5309842pla.25.1552030895638;
        Thu, 07 Mar 2019 23:41:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls4393968plb.6.gmail; Thu, 07
 Mar 2019 23:41:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqw2GjDsoIZICzgZb8mfrdekvw5WNt1U1ByzvJUurYPGLu+wUOUx7dA5wVXXgMvoy70Mvzt8
X-Received: by 2002:a17:902:e686:: with SMTP id cn6mr5274833plb.83.1552030894973;
        Thu, 07 Mar 2019 23:41:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552030894; cv=none;
        d=google.com; s=arc-20160816;
        b=FeIPlfSvo+LatYDMONF12wu0MrijItDmrAPiGjZZDUUib4xpFmStjKACvar3vcftN5
         Vg3M57Fvrv00tOBU0zMSFzMfdwpMqs9kG5unlhkkNwi+cVKeCbqG4dxELL3YsqKuVmw/
         i6impWKcLS3XAFEv4hNMb7CzT5q8RbSQ7jO/s4L9+uFOVfiFjZTvS20NKnDdiqu2PaF2
         MeW4YzumL+OOJtuguy3HTYUzOi2jLHJxXYiG6uPLkXfwzTONfGicSXpRIfgpi1Q792uu
         ii7N8ej6jUCyWnPGvTvieKFbEy/4MtQRpx7kMP4pnPQAP8VXn4DjAOqyqTKbNS/UGxlW
         benw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tya0M3FrjN9MsUI1+tUJ1A1P0ZC4N7punMIGHutg6Ac=;
        b=gYlBIm6Bf9OEeouenIY8XUOTus3ePPbKX2/0fqXfdMVo2zzly+Pf61DiK3oyRwtqws
         sSj2onFVbQurnMQ5DKSLJV8MZM94DZcy3itRI8xR8t6DG1H1i+iEFlv0hJiTB+kR6btw
         BFBB3k2KhR4HL4AdOHRNjrIqZjnAcEyenv2v11rlqCPtY6aUwFz3lhKLAQ3n/lY8uLcg
         nlL9GJdr7mxfKZ88cOXFknbV/QMfq43FWmG4tgrIdhTwucWk/f/Jrsk/Ip/PxL3C+xno
         +TtrvDhXHgnT9VTHICn90WcFTjQrswI0jJIHWVdzldHV5LCcl3CZEGVLH9Eo4YleAZsp
         oKZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nifOMpDp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j8si328289plk.3.2019.03.07.23.41.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 23:41:34 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nifOMpDp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 304FC2081B;
	Fri,  8 Mar 2019 07:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552030894;
	bh=3vvBJN0JibTSbwhvGZcO5mLoOCQ2iIXHNM29LF1k6iU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nifOMpDpFCpT3dji5JW9ISHwGtr4Eq6/ISJYNvkj4Ef7s+SOVXFMZqPlJfH913D5y
	 9LG3sWxk7fY+cc/DeW516NEa4f5DwCBgQTV7f6ITV2yXFcv0tIbVjjyyICHzHa4EiR
	 lwDBpVXJSYBp6wOnxXjMpjV+a3Hu2nB7H9UJVeJg=
Date: Fri, 8 Mar 2019 08:41:25 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v5] staging: fbtft: convert a macro to a function.
Message-ID: <20190308074125.GB16279@kroah.com>
References: <20190308065424.GA7942@bhagyashri-Lenovo-G570>
 <20190308065854.GA6875@kroah.com>
 <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMPgjhrBxq96-We_5fHqaZZHxqxVhpuBwCYKAncOCq7XS5ksA@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 12:58:24PM +0530, Bhagyashri Dighole wrote:
> On Fri, Mar 8, 2019 at 12:28 PM Greg Kroah-Hartman <
> gregkh@linuxfoundation.org> wrote:
> 
> > On Fri, Mar 08, 2019 at 12:24:24PM +0530, Bhagyashri Dighole wrote:
> > > Convert a macro to an inline function to improve type safety and make
> > > the code simpler.
> > >
> > > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > > ---
> > > Changes in v5:
> > >   -- Add space on both the side of operator.
> > >
> > > Changes in v4:
> > >   -- Modify log messages.
> > >
> > > Changes in v3:
> > >   -- Change the subject line according to log messages.
> > >   -- Remove extra spaces.
> > >
> > > Changes in v2:
> > >   -- Make the converion from macro to inline function
> > >
> > >  drivers/staging/fbtft/fb_watterott.c | 15 +++++----------
> > >  1 file changed, 5 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/fbtft/fb_watterott.c
> > b/drivers/staging/fbtft/fb_watterott.c
> > > index 0a5206d..7ee8a83 100644
> > > --- a/drivers/staging/fbtft/fb_watterott.c
> > > +++ b/drivers/staging/fbtft/fb_watterott.c
> > > @@ -90,15 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t
> > offset, size_t len)
> > >       return 0;
> > >  }
> > >
> > > -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> > > -                        (((c) & 000600) >> 6) |\
> > > -                        (((c) & 0x001C) >> 2))
> > > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > > -                        (((c) & 000700) >> 6) |\
> > > -                        (((c) & 0x0018) >> 3))
> > > -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> > > -                        (((c) & 000700) >> 5) |\
> > > -                        (((c) & 0x001C) >> 2))
> > > +inline int rgb565_to_rgb332(u16 c)
> > > +{
> > > +     return ((c & 0xE000) >> 8) | ((c & 000700) >> 6) | ((c & 0x0018)
> > >> 3);
> > > +}
> >
> > You also deleted 2 unused macros here, making this patch do multiple
> > things, and you didn't describe it in the changelog text :(
> >
> > This should be 2 separate patches, one to remove the unused macros, and
> > one to turn the macro that is used, into an inline function.
> >
> 
> Patch one : to remove the unused macros is added in staging tree.
> I thought i need to send only second patch.

That is correct, but you sent both patches squished together here :)

That means this patch itself would not even apply :(

thanks,

greg k-h

