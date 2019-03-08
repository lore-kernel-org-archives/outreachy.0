X-GM-THRID: 6664981263437266944
X-Received: by 2002:a25:6405:: with SMTP id y5mr9038157ybb.52.1552026089218;
        Thu, 07 Mar 2019 22:21:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5888:: with SMTP id m130ls3259574ywb.9.gmail; Thu, 07
 Mar 2019 22:21:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqwBkjDwVvTKmzP9+0VXUmkjkLohJ12hQ261PHnafVsLNDOw568KI0dLUbv2qLCmCaFcUSLU
X-Received: by 2002:a81:8546:: with SMTP id v67mr7638122ywf.1.1552026088416;
        Thu, 07 Mar 2019 22:21:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552026088; cv=none;
        d=google.com; s=arc-20160816;
        b=cql2PsxMFjHaZQWiXnoTDkEEhBJm+7n8mSbuwiwri7xgPIDs7fiSveTeq8/I88HGa3
         GHtWzoe7TdGF7MfJ+pHe9B7/W1LbV/LVyNZCHFPEecGqPV8qxXe/u9jW8WMt/X66I2tZ
         Qgl1bQukoR+unQCE4UMTmHfZq2gf2kWwKFB1j4T2U8JcMoM6D3TcsC5eSihoNOlLwMbS
         DBb8DYxNH894IzS2KOvzGPbHAsx31j9nC4WD1a8GEp9hAHr7hprPmUH1J8iRAxSGYF8n
         ixqOz6VBTJToEBBwuO+8y2hBHFjaPRF1iP6oV0IcHnCJIH0Z8uLm5R+Z9F8e0eWy6Qih
         UKjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=T4qBIroe2d37JxWipA3ch8vWBMDJYNcG9UrPk+lj02M=;
        b=wDq92JA2oW3+FwZMDVZVDuDjHEDPA3fnNR3Vm+GeVidkVUYA0JFDqLXvyy2A5rWk/R
         3X9x7I0Hj66E/4r01k9GKRo32FRB5OwTZmfkOe27xAQkvvHZX2JSOlhBIlFZCx1A22wz
         1mM9b5Ao3iMJmONDP99oQA4W/iVmYYDV0qXkbqRIjuNoUucaq7PwHraDi13Fsw9p9pbX
         ttL0khl2egjREceNH8b0yh0zwUNQ8v61R4cB5rmXTbFXAS/6fbBk4iAeOVitM0TIWovH
         hpWPpnDWi0CSSfKMpg9Kp0RC3rWwmQarV4JVq6JqRgDcVM0t0eb/Ke64SvZIVbAszTu7
         ytVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=veG89a9e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l39si351251ywh.5.2019.03.07.22.21.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 22:21:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=veG89a9e;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8FC7620811;
	Fri,  8 Mar 2019 06:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552026087;
	bh=UgL6PlyAgodnshrIrPyGn4Cw0SV8O8OqPrUyBchd4ks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=veG89a9efwNUq0OUjrB8DhSW7ADlBBVRdCYPRUcGYsnkNj6yLuDBOyzKTsUUQqN09
	 Pnyg1HSmMmG4NgpsjIhbKE+KEFVpZENWVbISZku+/ZFw20wnXhxVbxeXJYatd0/zdc
	 Uggnz4iwlS++Bw77W1MK5HQghkpujbqIlJirjXkg=
Date: Fri, 8 Mar 2019 07:21:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v4 2/2] staging: fbtft: convert a macro to a function.
Message-ID: <20190308062124.GB24189@kroah.com>
References: <20190306111512.GA11718@bhagyashri-Lenovo-G570>
 <20190307193050.GA16807@kroah.com>
 <CAOMPgjgKXCwp80uTW2P7W0kbUYwRKpM6N3QKXnYERM_LxM5Bsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMPgjgKXCwp80uTW2P7W0kbUYwRKpM6N3QKXnYERM_LxM5Bsw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 11:35:02AM +0530, Bhagyashri Dighole wrote:
> On Fri, Mar 8, 2019 at 1:00 AM Greg Kroah-Hartman <
> gregkh@linuxfoundation.org> wrote:
> 
> > On Wed, Mar 06, 2019 at 04:45:12PM +0530, Bhagyashri Dighole wrote:
> > > Convert a macro to an inline function to improve type safety and make
> > > the code simpler.
> > >
> > > Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> > > ---
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
> > >  drivers/staging/fbtft/fb_watterott.c | 9 +++++----
> > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/staging/fbtft/fb_watterott.c
> > b/drivers/staging/fbtft/fb_watterott.c
> > > index 502d67f..40e5427 100644
> > > --- a/drivers/staging/fbtft/fb_watterott.c
> > > +++ b/drivers/staging/fbtft/fb_watterott.c
> > > @@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t
> > offset, size_t len)
> > >       return 0;
> > >  }
> > >
> > > -#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
> > > -                        (((c) & 000700) >> 6) |\
> > > -                        (((c) & 0x0018) >> 3))
> > > +inline int rgb565_to_rgb332(u16 c)
> > > +{
> > > +     return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >>
> > 3);
> >
> > Odd placement of '|' right?  checkpatch.pl didn't complain about this?
> >
> 
> Yes, checkpatch.pl complain about it, but as per the suggestion i got,
> I need to skip one space because line is about to reach 80 characters.

Don't make one coding style change just to have to send a follow-on
coding style change for that modification.  The goal is to reduce the
number of warnings, not just constantly send new patches :)

thanks,

greg k-h

