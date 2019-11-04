X-GM-THRID: 6755490770490228736
X-Received: by 2002:a17:90a:f312:: with SMTP id ca18mr1358332pjb.112.1572900399856;
        Mon, 04 Nov 2019 12:46:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b304:: with SMTP id i4ls3516179pgf.9.gmail; Mon, 04 Nov
 2019 12:46:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqw25Hie0ARqNeqDvV2Ha8InyV5JSYXmzJqSTDufdIRyncz8dpB3bomvCxRGQMd2dvZGN9BQ
X-Received: by 2002:a62:1ad6:: with SMTP id a205mr33234321pfa.64.1572900398688;
        Mon, 04 Nov 2019 12:46:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572900398; cv=none;
        d=google.com; s=arc-20160816;
        b=TLwN6GcwvxNTwEExpuKps4V/8pSg2nmGfbt8vdMvTdVHFS/D6CrPxL3HOKYwWUUuYk
         iehO60xdnlbt6+B8nQ45aMwPUbaUY2jRdQACLpgJq6FF5vjRCFWmciXcFROgNZw+lbZn
         QWaNrLla3YIGfNF5XFdW2h9dQ3ec5cDJL880/77W3cAT2uGjIGdqJ4WQ8HAAA2avUA51
         jiu0Th5IMxmNR0NqlwgwiRPQAbVZeTg8MdTLGsVXoNEqvM99Ik/DCm1VtohFBWR9Wi+E
         u4jdaEv6sZyrJG99qZnaCotLPpXwy4ICvXFpOZKU4Ip2OvZhQPlAYbn5f/Q/24FgNlGm
         4HKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uMqAGQkGoN9Y0KsFTVXLejZJ/jT3/IX1mS4S4dwCWeE=;
        b=RnM2s6KLjl1008hF79FZX4A5ggk6SbeOf9DB2nuQy999u8dYefnbiN2SGBkI8cBMXg
         PwpVA/qEF8s3llat1cbvMkvS9Fh5+GmtkSTV2jTSXypAJ+ON+NZQe+uEDctnTUBCCcpe
         g62evxEf1J81t7yszeyLPqvrczj9y/XG6oZFEtX5SPZ3vOvP1TN/5g/fG67XuTWT/RQ+
         fZmwQOUDj+do5idEhLb1r3wccxcZMRkIvSsA8E/SJX/HvonOB2FyW3L9WxcGweF7JTS5
         aENN78mRyTF3G4Cn4W7umSR1kCYJy5hP1XPAyV+eGCcKvX8r+dMg+gvmLnzK3ftYUVx7
         Mo0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0c3pb4Mj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d9si785114pfr.3.2019.11.04.12.46.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 12:46:38 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0c3pb4Mj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (6.204-14-84.ripe.coltfrance.com [84.14.204.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E88F020679;
	Mon,  4 Nov 2019 20:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572900398;
	bh=iId+7Mf9N878uMPp7QnhpaRhi2VZhgetrbRgL8S6wjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0c3pb4MjyGgppSaUthsGGhz/HsDyOvxejGnjxLh0lmfgJKM8F4B1RDWenlNBmL01V
	 c2jOzeb3e/ko2ZLd59fGrzNyXO7IsZWYJWHD9lPQfXjmHZSA5yzmGf+K5pWe2g+TDP
	 jy3intsVPe2j9DXqSZTKPZg96odIi8vtrnaExJXU=
Date: Mon, 4 Nov 2019 21:46:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
Message-ID: <20191104204636.GA2359379@kroah.com>
References: <20191104163331.68173-1-jbi.octave@gmail.com>
 <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 05:03:04PM +0000, Ian Abbott wrote:
> On 04/11/2019 16:33, Jules Irenge wrote:
> > Rewrite macro function with the GNU extension typeof
> > to remove a possible side-effects of MACRO argument reuse "x".
> >   - Problem could rise if arguments have different types
> > and different use though.
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> > v1 - had no full commit log message, with changes not intended to be in the patch
> > v2 - remove some changes not intended to be in this driver
> >       include note of a potential problem
> >   drivers/staging/comedi/comedi.h | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> > index 09a940066c0e..a57691a2e8d8 100644
> > --- a/drivers/staging/comedi/comedi.h
> > +++ b/drivers/staging/comedi/comedi.h
> > @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
> >   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
> > -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb + (x)))
> > -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> > +#define NI_USUAL_PFI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> > +#define NI_USUAL_RTSI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
> >   /*
> >    * mode bits for NI general-purpose counters, set with
> > 
> 
> I wasn't sure about this the first time around due to the use of GNU
> extensions in uapi header files, but I see there are a few, rare instances
> of this GNU extension elsewhere in other uapi headers (mainly in netfilter
> stuff), so I guess it's OK.  However, it  does mean that user code that uses
> these macros will no longer compile unless GNU extensions are enabled.
> 
> Does anyone know any "best practices" regarding use of GNU extensions in
> user header files under Linux?

We try to never do it if at all possible :)

thanks,

greg k-h

