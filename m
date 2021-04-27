X-GM-THRID: 6955860329873014784
X-Received: by 2002:a2e:7602:: with SMTP id r2mr13248404ljc.491.1619548392222;
        Tue, 27 Apr 2021 11:33:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9f57:: with SMTP id v23ls3658661ljk.4.gmail; Tue, 27 Apr
 2021 11:33:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy21ILKIc5gDo54TE21n/i2FCKfrpAXE1f8i3pHz34ka/q4N3Y/f6aaTUqDyof4Vk5rBpOs
X-Received: by 2002:a05:651c:290:: with SMTP id b16mr17165016ljo.453.1619548390602;
        Tue, 27 Apr 2021 11:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619548390; cv=none;
        d=google.com; s=arc-20160816;
        b=fPSa32/as5VY2CV1TTIMXdIe4tq1srhSUVq4zhZ8kW/Sikq8CGV5BvdHUux6qRLKEl
         J0UfiqZ322J3zxG8mn6D1FBHLdWmTCoHTSbbTySaza+FuDzquaUtcBjEcFcn4PYJvfR1
         VzN1cXRjJK2zTwiVG26HywBN09xxQNJQa/S98G5gemfmtl8qh/4O5XzbH3wN3uI9gaFT
         xiy9g8xQgYfqqC7+cLkhVcUJBBQ5EbHX5F4KoXRa5sPfvDA2zkAInqK9thYhDEPFcsgi
         awopb8jS70RmvgT5nZGTca/zpq2SIB9aLp5uA2HnxvDqCEohvIhOFnuAM2JyqwRtwpcj
         T45Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+jK/uOwMG4GlViMI9g7s8fbj+EdZlrRaIoH80GXoZxs=;
        b=ErGd5RThFbRqJKeJnCT4METADBOHDwjjYIa7g9udVbdc6c202a0S1WTcVpcT5P8Kmf
         UYX390GIHu0nLBuuXgASngxMMOwNQNPhjaYA/HKR4lIcWokwBTrV2Ew6xblqdJ6gV5ck
         iS2hRYb9MfPQJOev3ZWXuJzoR/0fVOYqLsqWQOy+Sy60adE9447YQ/25HXaJRpjzdSPL
         zvVVeGBA7DzsnkTmccdFEv4GH5qTKtn2fbTjLmdtMieUmGdu586lDgYBZUTJ7ZvPqMvW
         I8jraDdi8FbhF0bvh5hJtUiwEuQxhfv4FOXmL55kUHsdQmwP/EqZRAd6vHmUNyTyaYg2
         qwlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="qQf/1BVO";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b12si733606lfb.3.2021.04.27.11.33.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 11:33:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="qQf/1BVO";
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=+jK/uOwMG4GlViMI9g7s8fbj+EdZlrRaIoH80GXoZxs=; b=qQf/1BVOYmy3pvPV3RQfiSgift
	IcrDRb7poGYjKVV5jRNF5BAqOC5pDj3g1viD7srfFbyqrOnOY3TigJLfMg+uJ+MWDO+Fh9E1oJyWn
	T4tF9ozW5DouGV617IAHp9HF5xMgUH2eORqaiShtN12q/d573oTGfMza79EzAVrEt18U0XX0qZs1H
	qwpxts+QKVbAswGzld4IVe7Ac0MJxPnPhZAva0RsQZ/AUudfI6YKIDb5JSsob+Mj90z5YNlQx/bnX
	Im0AQOuMnMcu8p5dKs+Befgru8Z/rnxTi75jjyExEL8kiVKBBrruvb1jZpZ03GEqavCMYahsaYO7W
	eKch+X1A==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lbSVl-007G6W-T1; Tue, 27 Apr 2021 18:32:43 +0000
Date: Tue, 27 Apr 2021 19:32:41 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tawah Peggy <tawahpeggy98@gmail.com>, Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v2] Staging: greybus: Add ()
 around gcam macro.
Message-ID: <20210427183241.GC235567@casper.infradead.org>
References: <20210427175922.GA24978@peggy-Lenovo-V130-15IKB>
 <YIhTJkPeSObYqdHE@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YIhTJkPeSObYqdHE@kroah.com>

On Tue, Apr 27, 2021 at 08:08:38PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Apr 27, 2021 at 01:59:27PM -0400, Tawah Peggy wrote:
> > checkpatch.pl suggest addition of parenthesis around the gcam macro.
> > 
> > Signed-off-by: Tawah Peggy <tawahpeggy98@gmail.com>
> > 
> > ---
> >  drivers/staging/greybus/camera.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > index 324a26430f71..ae49e37a87e9 100644
> > --- a/drivers/staging/greybus/camera.c
> > +++ b/drivers/staging/greybus/camera.c
> > @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
> >  
> >  #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
> >  
> > -#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
> > -#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> > -#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
> > +#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
> > +#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
> > +#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)
> 
> This change makes no sense at all.  Please look at what this is doing
> and consider if it is actually a valid thing to do.

umm ... makes sense to me.  what if i call:

	gcam_err(p + 1, "hi");

looks to me like it'll expand into:

	dev_err(&p + 1->bundle->dev, "hi);

ok, the driver doesn't currently do that, but it's a nice bit of
resilience to add.

