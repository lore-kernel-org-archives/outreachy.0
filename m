X-GM-THRID: 6668560476445605888
X-Received: by 2002:a62:be1a:: with SMTP id l26mr4493136pff.9.1552841694116;
        Sun, 17 Mar 2019 09:54:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls7427104pln.3.gmail; Sun, 17
 Mar 2019 09:54:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqziygGl3LYnDWt286dHXFQZ7WR6WzDgGPigpBzIXYz6JxHR6iaF9/qDXBdkMHHXV/7AZNaJ
X-Received: by 2002:a17:902:ab8e:: with SMTP id f14mr4501609plr.82.1552841693340;
        Sun, 17 Mar 2019 09:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552841693; cv=none;
        d=google.com; s=arc-20160816;
        b=qgnB2Gk/h178hNUEtLNbwHSFMF8ziaxOGxskS5Eg83GedLIVM+qznTNWcYVxXpm9La
         Pq51x9cEUDuemHSr0Dtip4dlQ5JfK0VRVdTXX1a2GRD7oWZ6P3JJM4dzj1LuOdi1VzCw
         DLeTixCDJR8zzsj5HllBdS791ZwfhhxP6sPiiod/kLY7uQbpuHXJTTTyohfuAR4vSSqc
         jbW5l/R+U2z21LQ09pWCxKLZBV5Yq3H0IL5jcmtz+wNwPRmyfPOn+QBUnukhx639kjzR
         ESymNzF5F+77L+2YCRdLaUfOOaM2xkV1oMnFlOS3ciVnFW7iDxJyXviw/ibeAAvSGZFu
         A56w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XQtHhiqVx/OLsRdXSGE7O3IrAV5IuwLHiTFDnABSnVc=;
        b=rbo/p2KYC6yHUS2612T8ZSKQxUBJ/GlOBTRUZTjyoiW2IcG+XoShaDrjsFW+WI60qT
         GzTVS32Le0vPGAR+hqMTyoHUoaQmjG4lrn6YTXqGbiUUhoYE0nFH6ofe3mJrK2a4tLdZ
         Enc50FWNZ3gSBfkHyMAZ0QFKPBk/TzZMOH82VoHi+kHTnue4A7H86pkCtDgB7ADstf7+
         oQqOgE7/Vx0SGqjTypv85wElEVggpBQXxLM28gk05aka3pVoMAX6ha4R6x1ZCmsB4BZn
         ITmTqNygHLpInqeoujg4QkWCuSAI5tRm/V+4Kqone58ox660q4oPZ4jTdM3FyAPsvrcV
         YbfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H5C15Imm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si288694plo.2.2019.03.17.09.54.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 09:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H5C15Imm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8CC0A20872;
	Sun, 17 Mar 2019 16:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552841693;
	bh=LWd7IDxDXWMZjClPue1H8AjHjD3YPM8GjkNt47TeQuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H5C15ImmmSF7wb0BLw6LIyWGJSqgD72ms/i5IdJRnSKNOhY94yrzUkBcXfy+4CeNa
	 f5kgBYdZGef5UQDPHOB3iXAJwg9hsRA2ZzxnMXK6hfnqJNw6yMg1ozgmsX+iJEwlAI
	 gNeAmVfITsSWYYTqcdLclSjdERxz8uqc4UZqYhA4=
Date: Sun, 17 Mar 2019 17:54:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: sm750fb: Remove unnecessary function
Message-ID: <20190317165450.GA19824@kroah.com>
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
 <20190317104323.GA16257@kroah.com>
 <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 10:06:18PM +0530, NIshka Dasgupta wrote:
> 
> 
> On 17/03/19 4:13 PM, Greg KH wrote:
> > On Fri, Mar 15, 2019 at 03:50:07PM +0530, Nishka Dasgupta wrote:
> > > Remove function sii164ResetChip() as comment above it said "below
> > > function is not necessary".
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
> > >   drivers/staging/sm750fb/ddk750_sii164.h |  1 -
> > >   2 files changed, 14 deletions(-)
> > > 
> > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
> > > index c8e856c13912..8884ef927893 100644
> > > --- a/drivers/staging/sm750fb/ddk750_sii164.c
> > > +++ b/drivers/staging/sm750fb/ddk750_sii164.c
> > > @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
> > >   	return -1;
> > >   }
> > > -/* below sii164 function is not necessary */
> > > -
> > >   #ifdef SII164_FULL_FUNCTIONS
> > > -/*
> > > - *  sii164ResetChip
> > > - *      This function resets the DVI Controller Chip.
> > > - */
> > > -void sii164ResetChip(void)
> > > -{
> > > -	/* Power down */
> > > -	sii164SetPower(0);
> > > -	sii164SetPower(1);
> > > -}
> > > -
> > >   /*
> > >    * sii164GetChipString
> > >    *      This function returns a char string name of the current DVI Controller chip.
> > > diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
> > > index 862e7bf27353..1f7b5f9c1885 100644
> > > --- a/drivers/staging/sm750fb/ddk750_sii164.h
> > > +++ b/drivers/staging/sm750fb/ddk750_sii164.h
> > > @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
> > >   unsigned short sii164GetDeviceID(void);
> > >   #ifdef SII164_FULL_FUNCTIONS
> > > -void sii164ResetChip(void);
> > >   char *sii164GetChipString(void);
> > >   void sii164SetPower(unsigned char powerUp);
> > >   void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> > 
> > Did you test build this?  This function is still used if
> > SII164_FULL_FUNCTIONS is defined.
> 
> Yes, I did test build this, and there were no problems. However, I have not
> been able to properly grep search for it since my laptop crashed a few days
> ago and I have only just been able to set everything back up. Where can I
> find SII164_FULL_FUNCTIONS?

'git grep SII164_FULL_FUNCTIONS' in the kernel source tree and you will
find it.

thanks,

greg k-h

