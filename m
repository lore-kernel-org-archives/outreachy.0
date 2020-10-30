X-GM-THRID: 6888933426501517312
X-Received: by 2002:a05:620a:11a4:: with SMTP id c4mr869034qkk.29.1604041903671;
        Fri, 30 Oct 2020 00:11:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:10:: with SMTP id j16ls2662844qki.3.gmail; Fri, 30
 Oct 2020 00:11:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwm7VuWgdqQqWxrR0Iu7O/8Yhxj1wkQnunZaMmE5NdntBYlq0qoZHNFoTXECSc2UdvDiZTn
X-Received: by 2002:a37:9d4d:: with SMTP id g74mr43664qke.176.1604041902370;
        Fri, 30 Oct 2020 00:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604041902; cv=none;
        d=google.com; s=arc-20160816;
        b=KNT7jw3mAH5L3NU1FT0LwRHzQproZ6M2ud6wwnmNlX3vx8Xh+M3AGd731BZiWdyZ8j
         d7ZE0HLh64QzYD503CaxY7ITLV04FBydUIyPIVao2BdrFfYHZsvq6N0UdWngpz1tUs/n
         yCCD2gmt2+bFGnmXCFCJpAV+BLU7WUrbvTatt0V4mmc308Z1mVfiPndnCS65tDNY9n1U
         koG1X5X3UjReEOyJGs/FZ/hxwkBMQTZnEc+ZBOu/D9Rlms21sqd/EMCJbL/XDYyJezU8
         KatZ46CYdRBGVrbfBY9zpkwmbo4qxoH3KHFWouhqc9/VT9UQXm5ERnLNT0igq2iFpITD
         +NKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v5VEv1JOpz2d4P2eQHlADZGLXKz4jR+SxDFMFXck/kU=;
        b=IKYHsApiadpGE+TvkG3t0Zq/3tlSBAhESysduLrbTji4kQC84LQpJxwNowtJBy6XPe
         XEb07AsfYWG86dOWotIZgRynIsuOuRXNBkXkLarL1Z/O9VHYqSuYrKQzLcUAg2KQhyai
         3YyB1lvrf9MReT3wLzSxmf+G7lr7iZd+hC4SemaE1PoSMMshQqAAhZjJ+yHzhaBn9pYC
         VtpkDh7e9Vccbq2k8F6YnU7fu/h71IrlPJ297/Jk9tBcMxHcZD5fTtkF2T1POI16EqAF
         w5U+7H9NXUhzJ0TAAoDikDOxbpOkil9aOuPwO/Q5dGsi6pt+B50DYNL/PhWyFOvLlfKK
         wAPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YZOXgluM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h21si243627qka.7.2020.10.30.00.11.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 00:11:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YZOXgluM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7DA6422203;
	Fri, 30 Oct 2020 07:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604041901;
	bh=voCsXjcOPe7ghnSQjX+0E7PqBCho0JNBbXAD5jsQkGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YZOXgluM7hYdNGCovaryGPBRfFfWecF1E4z1EkdaLuQjlsFM6eQ5uQivPNLFr+8HQ
	 dGzbLigZUCJX9es5IMMaLJ6WcbS5Lrco4IA9K/LlKl8tQ5+bo2CoUxzmxIOjFC3lGG
	 g8oOMYheTGBGI6MeQSHzTfeWAIUmhk6VPje9TWTw=
Date: Fri, 30 Oct 2020 08:12:22 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: vt6655: Remove useless else
Message-ID: <20201030071222.GB1493629@kroah.com>
References: <20201029065958.GA5259@Zangetsu>
 <20201029070723.GA3063205@kroah.com>
 <20201029080924.GA2011@Zangetsu>
 <20201030061229.GA89419@Zangetsu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201030061229.GA89419@Zangetsu>

On Thu, Oct 29, 2020 at 11:12:29PM -0700, Marcos Antonio de Jesus Filho wrote:
> On Thu, Oct 29, 2020 at 01:09:45AM -0700, Marcos Antonio de Jesus Filho wrote:
> > On Thu, Oct 29, 2020 at 08:07:23AM +0100, Greg Kroah-Hartman wrote:
> > > On Wed, Oct 28, 2020 at 11:59:58PM -0700, Marcos Antonio de Jesus Filho wrote:
> > > > The else statement is not useful due to the presence of a return
> > > > statement on the if block. Remove the else statement and adjust the
> > > > indentation of the code. Reported by checkpatch.
> > > > 
> > > > Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> > > > ---
> > > >  drivers/staging/vt6655/rxtx.c | 36 +++++++++++++++++------------------
> > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> > > > index 477d19314634..978efe81077a 100644
> > > > --- a/drivers/staging/vt6655/rxtx.c
> > > > +++ b/drivers/staging/vt6655/rxtx.c
> > > > @@ -519,28 +519,28 @@ s_uFillDataHead(
> > > >  										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> > > >  			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > > >  			return buf->duration;
> > > > -		} else {
> > > > -			struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > > > -			/* Get SignalField, ServiceField & Length */
> > > > -			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> > > > -					  byPktType, &buf->ab);
> > > > +		}
> > > >  
> > > > -			if (is_pspoll) {
> > > > -				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> > > > +		struct vnt_tx_datahead_ab *buf = pTxDataHead;
> > > > +		/* Get SignalField, ServiceField & Length */
> > > > +		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> > > > +				  byPktType, &buf->ab);
> > > >  
> > > > -				buf->duration = dur;
> > > > -			} else {
> > > > -				/* Get Duration and TimeStampOff */
> > > > -				buf->duration =
> > > > -					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> > > > -									    wCurrentRate, bNeedAck, uFragIdx,
> > > > -									    cbLastFragmentSize, uMACfragNum,
> > > > -									    byFBOption));
> > > > -			}
> > > > +		if (is_pspoll) {
> > > > +			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> > > >  
> > > > -			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > > > -			return buf->duration;
> > > > +			buf->duration = dur;
> > > > +		} else {
> > > > +			/* Get Duration and TimeStampOff */
> > > > +			buf->duration =
> > > > +				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> > > > +								    wCurrentRate, bNeedAck, uFragIdx,
> > > > +								    cbLastFragmentSize, uMACfragNum,
> > > > +								    byFBOption));
> > > >  		}
> > > > +
> > > > +		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> > > > +		return buf->duration;
> > > >  	} else {
> > > 
> > > You do the same thing here, right?  Shouldn't this else be dropped?
> > 
> > Definitely. I did not do it because we are instructed to solve one 'Warning' at time. I was going to do it in another patch.
> > Should I edit this patch and fix it now?
> >  
> > > 
> > > thanks,
> > > 
> > > greg k-h
> 
> I notice that after removing the else statement I get the compilation error "ISO C90 forbids mixed declarations and code", because we eliminate the scope of the else block. Should I leave as it is?   

You can not add build warnings to the kernel, so fix this up in a patch
series where you do one step at a time, and keep everything building
properly at each patch.

thanks,

greg k-h

