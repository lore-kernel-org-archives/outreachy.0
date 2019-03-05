X-GM-THRID: 6664640601666879488
X-Received: by 2002:a37:444:: with SMTP id 65mr2040635qke.51.1551806271962;
        Tue, 05 Mar 2019 09:17:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:7344:: with SMTP id o65ls3958643qkc.8.gmail; Tue, 05 Mar
 2019 09:17:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqzTBscDDwAN2oUB5S+ruxA9wjtozoe3B87J89Oj6YL4ioaaXhX49L+lKHIeR2bhB3esZVvf
X-Received: by 2002:a37:a5c1:: with SMTP id o184mr1973514qke.42.1551806271372;
        Tue, 05 Mar 2019 09:17:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551806271; cv=none;
        d=google.com; s=arc-20160816;
        b=oIqNmA3V8bnLPQMiQvZf/r/xpqjxCusTE4ozh5jdRbeLDqAvZxF9xHG5rlq/RSVj6v
         TAkEDNsKtosyib/hTpVsHYp0xXPxqnAoq1aPDqMlnHQOGgZtAaaHUnUYwRtubKLcmYSY
         1NcFxrm6zmRYhgA8u5vcqELrU95LxSUUm05fKjQqg8vub1h9Xj1hfj4HaKzjcnPtNPEN
         nOc7yAjtFDXHxlU7ScrOHYf9sGmRm6QEWRLE2xQheM3Si7CVlrWS06Og3J8b2mtpPeIr
         7c0CQkwgC6UXchBSQFDKnQ5wT/TYvIKL57NnSYSi7hQarGTnMt0wdNp0VymQhJ3aHDiz
         gkgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ornRrR8Xp5DXkEarynZ6yGNZefK0hGds8nsgutw7y/Y=;
        b=MfQOCmuWDm6wzqSv1OI7OVwIoJ0Y/zDT1ifpEdG7MxFggRJvfmaDrdUfLtJI7Vcl/p
         g+BZ0tLMuyTSb2Nn94ZtguXkxX2PgM7d0jGO7a9fsgSkXwRPmNlBsuu9vAerOnvSQ8iT
         /W4VrGaPOw/RUDeWcaJy4DvpFsqbEpDUdHqLk4hTeNZj0u6G8qd1383uVmz88JKEtGJD
         o2TCYT3KmCHT2Fj9OJirpBjeYKAFvVyLKkKlqqTEG8ZWtW0unAFzc4HQ/Eb3zGC2+Rhv
         tSWhKq/QbVcbw4lMpCwA62xX9h7L1XLVwSaHuugRWbjViMuClHc0y0yCcKjnP9WyM8EO
         E44A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="MJ/hxCtv";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si613137qkg.3.2019.03.05.09.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 09:17:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="MJ/hxCtv";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CA6C020842;
	Tue,  5 Mar 2019 17:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551806270;
	bh=oiL30G9s29/UGopEu4jzy+5Apgis9eqptRAWzx72kic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJ/hxCtvNc0OrMoe0Gpm3tMfxaiH+Nvi8GAS3VmxxOa0jWwuyQGO4HcN6o0rQ176v
	 4qRLMqAQHQop0paXXmcNZKHgL2U9WjiVUXa2nlHPYONid/uYnG4HcC25pyxinRFvoc
	 lOzw5t91TL2/TqD5m+bgSk39SUHDe0h5QLXzk3Rg=
Date: Tue, 5 Mar 2019 18:17:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Avoid multiple assignments
Message-ID: <20190305171747.GB6531@kroah.com>
References: <20190304183110.3702-1-nishka.dasgupta@yahoo.com>
 <20190305075115.GC6956@kroah.com>
 <0f0632e9-f9e3-ea09-b866-00a865ad6ab6@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0f0632e9-f9e3-ea09-b866-00a865ad6ab6@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Tue, Mar 05, 2019 at 10:42:08PM +0530, Nishka Dasgupta wrote:
> 
> 
> On 05/03/19 1:21 PM, Greg KH wrote:
> > On Tue, Mar 05, 2019 at 12:01:10AM +0530, Nishka Dasgupta wrote:
> > > Avoid multiple assignments in the same line. Issue found with
> > > Checkpatch.
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/sm750fb/sm750.c | 3 ++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > > index e9f10c2669ea..739841c3b5d6 100644
> > > --- a/drivers/staging/sm750fb/sm750.c
> > > +++ b/drivers/staging/sm750fb/sm750.c
> > > @@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> > >   		0x800f0 + (int)crtc->channel * 0x140;
> > >   	pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
> > > -	crtc->cursor.maxH = crtc->cursor.maxW = 64;
> > > +	crtc->cursor.maxW = 64;
> > > +	crtc->cursor.maxH = crtc->cursor.maxW;
> > 
> > The original code is fine here.  I would just ignore this checkpatch.pl
> > message for this line.
> Okay, will do. What should I do for similar Checkpatch warnings in future?
> Do I just ignore them?

It all depends on what they look like.  This one is setting a width and
height to the exact same value, making it pretty obvious what is going
on here.  If other code is doing other things (like just zeroing out
stuff, or using temp variables), maybe it should be fixed up.

Again, checkpatch is just a hint, you still need to use your brain to
see if what it says makes sense :)

thanks,

greg k-h

