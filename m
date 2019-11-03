X-GM-THRID: 6754500769734459392
X-Received: by 2002:a81:a8b:: with SMTP id 133mr16325124ywk.246.1572784806852;
        Sun, 03 Nov 2019 04:40:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2388:: with SMTP id j130ls1906517ybj.7.gmail; Sun, 03
 Nov 2019 04:40:04 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZ+kUkzHuKjCv3IojEyf3BjQ0rj97N/W5uC6oze9JlKKsF8Q6WjmIwMELhqMBejwume/rd
X-Received: by 2002:a25:3541:: with SMTP id c62mr17229205yba.471.1572784804736;
        Sun, 03 Nov 2019 04:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572784804; cv=none;
        d=google.com; s=arc-20160816;
        b=N0pmJprs7mE1I8DkhfOfc/0loyGDl+VrY+Kwc8PA2vNjxPgaKzvT9dK0Qq1xYwnWSt
         cqDrcZDiGoppxNgixwUUghqifHdeZwtWUYN2um9/du8uwlQQW0YFC8/ABGDXMTpZdfVu
         CzTbgjFSb6ciRPFocSD43jAsb3HwD77EAmoRiQZ6fBBvQNdmSMkfKSJDCKY152gsOPWh
         Hj/m/p8RLox0Ahm30s6VgbzhM9ngkWZ1ZpV1s43Eyv1ojESPDPooa3t7PV12E3wdV46k
         Z3HTRSWxYikPkLQMHYsR7gyOETu2969/AYY8hundwGrSLUormujPU4wFWgMUmWe1iohl
         U4rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=3lTiu8spvdTXjYQ5Rt1+xw5pBa+eIMje71tZmXnQol8=;
        b=cfrKgojAEDay1P49yxd0TB4WIegYXrpICDIzrMrZzBEEk8hmElVKZibMURqvWWeFy4
         U5Sf3FQ9/mu13LC96Uu2RbJNBYovxtqxbRmgA8kZvcHg6nIJBvTr+XlrE2VpK+O+09FT
         GSpiWPBv1KQAoSUf9pJX7ype9pJU/X26gT3j7KuWvKEF2gVP7zmg3DtLyj+H7rDMQL3M
         JnXdCtbieuScj1YMnSUFV7bfzALKthBZXB5+uBfPFf/5yDQ13DPmkhX1eXGe1IwAOt/e
         0PcCUfMbnS2SCIYFyRMcPRSZZBvJ7dAevIx8F9DONzA9btPF3SORN1YM1kQnl46QhKmU
         AGTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=quy26Q1w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c79si133486ywb.3.2019.11.03.04.40.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 04:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=quy26Q1w;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 333EE2080F;
	Sun,  3 Nov 2019 12:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572784803;
	bh=x0EOiXvwhuzLUtrOUCXmm5ZWwEW6wrFHrafEsqHiHCY=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=quy26Q1wbeo9D0KK9SRMHmmPu3tGYBQ8FVE5t+mPTTD5UbTe5v0goxHxkLQrGcoFX
	 Z8M1U7G3nmPEWmnMIhSY4L+Y9Ai6vuWt6r+d6H9xwp7GtPZMqfEGlIH0v3kcIAxIpK
	 IPL2j6XVD4pdHkk/3yl8J6Q3xovHUgf7pqwWBTD0=
Date: Sun, 3 Nov 2019 13:40:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8723bs: Remove
 unnecessary conditional block
Message-ID: <20191103124001.GA619218@kroah.com>
References: <20191102003236.hjetw3qdulk7skrg@gmail.com>
 <20191102104324.GA184849@kroah.com>
 <20191102224551.myb6rjyhvgbldpt2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102224551.myb6rjyhvgbldpt2@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Nov 02, 2019 at 05:45:51PM -0500, Javier F. Arias wrote:
> On Sat, Nov 02, 2019 at 11:43:24AM +0100, Greg KH wrote:
> > On Fri, Nov 01, 2019 at 07:32:36PM -0500, Javier F. Arias wrote:
> > > This patch removes a conditional block that had no effect.
> > > It also reformat the affected lines to set the right indentation
> > > after the removal.
> > > Issue found by Coccinelle.
> > > 
> > > Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
> > >  1 file changed, 7 insertions(+), 12 deletions(-)
> > 
> > I have 11 patches sent from you, on the same day, for this single
> > driver, yet I have no idea what order to apply them in :(
> > 
> > Please resend all of them as a single patch series so I have a clue as
> > to what to do here.  Be kind to maintainers :)
> > 
> > thanks,
> > 
> > greg k-h
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102104324.GA184849%40kroah.com.
> 
> I'm sorry Greg, I had some patches ready to send and i didn't want to
> send a single patchset with +200 lines (as suggested in the
> documentation) so I thought it was easier to split it.

I can easily handle patchsets of 50+ patches, so that should not be an
issue here.  As long as you only do "one logical change per patch" then
all is fine.

thanks,

greg k-h

