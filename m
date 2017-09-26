X-GM-THRID: 6468338986973659136
X-Received: by 10.36.19.15 with SMTP id 15mr2671907itz.17.1506456954073;
        Tue, 26 Sep 2017 13:15:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.200.130 with SMTP id k124ls877800ywd.41.gmail; Tue, 26 Sep
 2017 13:15:53 -0700 (PDT)
X-Received: by 10.129.209.11 with SMTP id w11mr2527000ywi.157.1506456953185;
        Tue, 26 Sep 2017 13:15:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506456953; cv=none;
        d=google.com; s=arc-20160816;
        b=02WURWX5JGPmC+SQpMdbqwtOhJXE+YjIB2EPEaYRLCMWRdHzp0MescEcUecl+CmCn1
         YZEqa70W+xZWEUS3n1eguyzX6NHECVxe4YuvTRTRTiiOMoKtFgQ3eSpA96Ej40tCtuRM
         LBsh+Rc+ms2Jo7tw1qL68YK/wqZMfp2ii+l7Eop1qGh2/82GiJGoDpkgfafTXvG0mjLR
         7EfmUCpcuWkn7h2uRU6Q4O9BLLQEH8cjvzT68drY7QSxVyG4p8vJq4X9lw2raYECdtUQ
         InnKCRxrlHdRuzD9xj8GM+1rKXXls70R7VBMmzVlzE7w3Nr31f0iX/Jipfd4cDphAd4W
         Vyag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=uIZaEMKDLSpiHSUAVE6uMhpPB7N79hivLwfI8anYFyc=;
        b=B77tQJ5Y0t33pBKhJKTNAUkgLeWbPKg9WcanC+EwDaEhtdu3+6ua8JS9FittooaVRs
         bhgFubdPG6SPGDBixrrC9drlMv3/x6HDU8Px/rGERnuY7SxMBF5vq6fwEBirY/FB94Gr
         ROKmpngOJgc7oCUBLKoFHUW+fZZFBGMqKPvzpHQeo+97aK/pEOko4HS1Jx09m1/imd8x
         7iO5Z9Zj0vpL+tOiGFF5wC/jm9P+m7B3MmBrdaUPJ7sA5S0zSW5QWsYx0XJB3scI8XBV
         6k55utnIRVHjqm/YkykOY3SKLfZ5Mvz8y6vZfKKc0MbjcYkaOelUBqqPI5YdP9scPeg+
         objw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tVVrUOjY;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id k76si676866pfa.10.2017.09.26.13.15.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 13:15:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tVVrUOjY;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so7340231pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 13:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uIZaEMKDLSpiHSUAVE6uMhpPB7N79hivLwfI8anYFyc=;
        b=tVVrUOjYNkq+GfxMDtqndPleiJx2ICv9uwQLPuIpIWjMQXZybA5bba+u9JcVBFbTmJ
         FG6eprQC6hH8RJchGUzZ9CoBtD5UF6H9gGUX+IMyKXLcwoWtF5jUuz64eN0KCiJX69eT
         mudfGF/CFBNyRliZQmoX5NZ5VhapYJiMNHqBMyH3DToES2kJ/b81Jf7Sj0zNYaoRaJi0
         RpWhVdFoJTAXD+wA23Jb1njBlHhQTC/C4BsFA1ZMDRnBZqRg7OX8VE2hyteHnMK248P9
         ymTO2kSz2jHULRRWMRD1LKDDoj9IYcssIZMS4Gd2YXWk4+Mht+h13IYpAJbuhTY3kZf3
         FSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uIZaEMKDLSpiHSUAVE6uMhpPB7N79hivLwfI8anYFyc=;
        b=A1zNdIRhgy+zfPaP7lZtnNGADRl/euIuGJyQRfWpo9QXjTWa+jxm615JL42iL+arH1
         VreoB5kjfNmwpRzHCTQ4m6Fo1YMu5VwlLBMUbdnHgV7royVz4vnLsH8GYHfr2R4OVu/v
         8nTZoCee9E2k0K12CwhiXqcPmqEr2VIzOg47pglhUqtRYReUJKGmPByr1/6eiGUsL/L+
         ysj07wMUjkakmVkUt6F1wSRA3wOmgYkg+Yf27ZdDvwACAQdXNLi3aiwHwUkfaDR18I41
         U/30QvpTMl8Y8LPePvzphJpfU7LkNkm+nNUAJb8Vw6VK4w4OHItGLeKBGRzYYsq+8j9f
         KImg==
X-Gm-Message-State: AHPjjUgJLA5Y6ACVlncKi5NUnVsxGJBLsy9Jb99ZVeCFCktIXgU4ZfMK
	n1TJmY364QkrbpoFWiLKJEw=
X-Google-Smtp-Source: AOwi7QBs5FHgV6LfwVhfLp9YwnlfJNitl7ZMEFlb/n1NhxHbBUQIPYUzUOB4rETIHc90fXMfE5u99w==
X-Received: by 10.99.116.90 with SMTP id e26mr11969546pgn.290.1506456952772;
        Tue, 26 Sep 2017 13:15:52 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id e87sm17235736pfl.46.2017.09.26.13.15.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 13:15:52 -0700 (PDT)
Date: Tue, 26 Sep 2017 14:15:50 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] drm: Remove obsolete "This is
 gross" comment
Message-ID: <20170926201550.GA3729@Haneen>
References: <20170921210424.GA21951@Haneen>
 <20170926052438.mql37gqx2i6sdmwo@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170926052438.mql37gqx2i6sdmwo@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 26, 2017 at 07:24:38AM +0200, Daniel Vetter wrote:
> On Thu, Sep 21, 2017 at 03:04:24PM -0600, Haneen Mohammed wrote:
> > Remove obsolete comment which was initially added in 2008 to annotate
> > that idr_find() was used before idr_remove() since idr_remove() didn't
> > use to return feedback. The comment now is irrelevant with
> > commit f6cd7daecff5 ("drm: Release driver references to handle before
> > making it available again").
> 
> Personally I'd have added a lot more of the research story you've detailed
> in the private mails, just to show the work you've done. But the terse
> version is ok too ofc.
> 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Applied to drm-misc-next, thanks.
> -Daniel
> 

My bad, I was afraid to add too much details as I always read commit
message should be concise that I then ended up with too little. 

I will try next time to add the necessary information. 

Thank you!
Haneen

> > ---
> >  drivers/gpu/drm/drm_gem.c | 9 ---------
> >  1 file changed, 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > index c55f338..b9bddaa 100644
> > --- a/drivers/gpu/drm/drm_gem.c
> > +++ b/drivers/gpu/drm/drm_gem.c
> > @@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
> >  {
> >  	struct drm_gem_object *obj;
> >  
> > -	/* This is gross. The idr system doesn't let us try a delete and
> > -	 * return an error code.  It just spews if you fail at deleting.
> > -	 * So, we have to grab a lock around finding the object and then
> > -	 * doing the delete on it and dropping the refcount, or the user
> > -	 * could race us to double-decrement the refcount and cause a
> > -	 * use-after-free later.  Given the frequency of our handle lookups,
> > -	 * we may want to use ida for number allocation and a hash table
> > -	 * for the pointers, anyway.
> > -	 */
> >  	spin_lock(&filp->table_lock);
> >  
> >  	/* Check if we currently have a reference on the object */
> > -- 
> > 2.7.4
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921210424.GA21951%40Haneen.
> > For more options, visit https://groups.google.com/d/optout.
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

