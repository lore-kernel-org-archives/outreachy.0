X-GM-THRID: 6394051769917243392
X-Received: by 10.46.20.27 with SMTP id u27mr2039777ljd.4.1488743329082;
        Sun, 05 Mar 2017 11:48:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.215.94 with SMTP id o91ls166400lfg.16.gmail; Sun, 05 Mar
 2017 11:48:48 -0800 (PST)
X-Received: by 10.46.21.11 with SMTP id s11mr1943264ljd.23.1488743328414;
        Sun, 05 Mar 2017 11:48:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id e72si621944wma.0.2017.03.05.11.48.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:48:48 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so8530945wmg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 11:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aEsnd07liJvmhJwqSk5yne7kc/HjJ4BD/49bR0y0vco=;
        b=hkXpUKBYAgB4LNTuUt2GtM1DTyXLRH8QzpS/jQHcNVv7KlI746J9DXVRFqZR3X23tc
         Pg6+T7/iKJIl9X4o+ALSSjsXMvVpvgBFzGsGsL/Tqb180WbAeNiDV3IwvW+qN5U8Z26i
         5esrWssduuUU59fXkVl6LaOiXGEzQlJuMM0MkVWk7m+cHY6n4sTuV3kUMu2pL/6D2y4p
         MHxdp3fq2gBjHR+a7OJWTLXTHdDB2UhWfI5+jYO38ZOwKmFXfqgrZ3kxKjRHn+JIP8/b
         RwO8Idu0P+P9mnN5iKFJrPotZP6oMfYY7QMzSI9rvi3orYEdDPYz16ETz0X63281RgVR
         nYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aEsnd07liJvmhJwqSk5yne7kc/HjJ4BD/49bR0y0vco=;
        b=jiNrRWhNrrmhbOxFzJzpxgwuA9HsgoQMfpFujFjy716TNEzmeaprP4SJ/LAxtr8wbV
         Di3EZMC5Cpzq5vnWW3rYPLd84YaqTP6iPcrDFTqrb1c26j89lHy6y5i2a0CQvE6htNu7
         TO2hI6s5aacLocHwBL0M64OA/M39IHVMAAxVL361W5et6CKGrmB4T7lEvaYKCsW8CL6A
         4Ss7jKCIDSjkLYA68LajLV+4ZAqfoAvR1XCeSB6OIlZoZl9QmF/KpDgfk0Dt5mKaAmtU
         fMH8vFoyK87IROKJbKLSccpil52jcTf0u1W0ege7OF02+ikRwcxqHo9QW2oxprhHPcjZ
         kj0Q==
X-Gm-Message-State: AMke39lZhoGalODoxW8kc17aQXb8Vu7DlrkEsozAigmjlOhDmfZL3V3iqaohScOx97VTNQ==
X-Received: by 10.28.183.4 with SMTP id h4mr11427215wmf.140.1488743328137;
        Sun, 05 Mar 2017 11:48:48 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 82sm366040wmg.0.2017.03.05.11.48.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 11:48:47 -0800 (PST)
Date: Sun, 5 Mar 2017 21:48:46 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Alison Schofield <amsfield22@gmail.com>, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: iio: accel: Group
 similar macros into enums
Message-ID: <20170305194845.GA27902@nati-X550JK>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>
 <20170305185828.GA3380@d830.WORKGROUP>
 <20170305191459.GA20822@nati-X550JK>
 <alpine.DEB.2.20.1703052017040.3052@hadrien>
 <20170305192840.GA12508@nati-X550JK>
 <alpine.DEB.2.20.1703052031200.3052@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703052031200.3052@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Mar 05, 2017 at 08:31:42PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > On Sun, Mar 05, 2017 at 08:17:45PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 5 Mar 2017, Narcisa Ana Maria Vasile wrote:
> > >
> > > > On Sun, Mar 05, 2017 at 10:58:29AM -0800, Alison Schofield wrote:
> > > > > On Sun, Mar 05, 2017 at 06:26:03PM +0200, Narcisa Ana Maria Vasile wrote:
> > > > > > Group related macros into enums, for clarity.
> > > > >
> > > > > Hi Narcisa,
> > > > >
> > > > > Is this enum then used in a type declaration?
> > > > >
> > > > > BTW - I can see Jonathan is following right along and sweeping these up,
> > > > > but for future reference, this patch depended on a previous patch sent hours
> > > > > earlier, that was not yet in staging-testing.  When this happens, one option
> > > > > is to give a note below the --- (as you would for version comments) stating the
> > > > > dependency.  This way someone reviewing the patch doesn't simply reject
> > > > > it as not applying to my tree.
> > > > >
> > > > > alisons
> > > > >
> > > >   Hi,
> > > >
> > > >   Do you mean whether there are any type declarations where I could
> > > >   now replace the type with the enum type ? If so, I searched for
> > > >   these type of situations, but didn't find any. If I missed one of
> > > >   these cases, please let me know and I'll send a new patch.
> > >
> > > Typically the constant would be stored in something, compared to
> > > something, etc.  Are these constants not used at all?
> > >
> > > julia
> > >
> > >
> >   Yes, they are used, they are stored. I thought she was asking
> >   if I encountered any situations like in adc/ad7280a.h file
> >   where you could define an enum for conversion averaging
> >   macros and replace the 'unsigned int' field in the
> >   ad7280_platform_data with the enum type.
> 
> If they are stored in something, I guess you could change the type of that
> thing?
> 
> julia
> 
  The scan indexes(si) are given to macros such as:
  
  #define ADIS_ACCEL_CHAN(mod, addr, si, info_sep, info_all, bits) \
    ADIS_MOD_CHAN(IIO_ACCEL, mod, addr, si, info_sep, info_all, bits)
  
  (defined in the linux/iio/imu/adis.h header). 
  which are used to initialize the adis162xx_channels[].

  Since they are used like this, I don't see anything I can
  replace/improve here.
  Am I missing something? 

  Narcisa.
  
    


> >
> >   Narcisa
> > > >
> > > >   Thank you for the note about the patch dependencies. I was just about
> > > >   to ask about this, cause I realized there might be a problem.
> > > >   I'll keep in mind to make a note next time.
> > > >
> > > >   Narcisa
> > > >
> > > > > > Narcisa Ana Maria Vasile (2):
> > > > > >   staging: iio: adis16209: Group similar macros into enums
> > > > > >   staging: iio: adis16240: Group similar macros into enums
> > > > > >
> > > > > >  drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
> > > > > >  drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
> > > > > >  2 files changed, 18 insertions(+), 14 deletions(-)
> > > > > >
> > > > > > --
> > > > > > 1.9.1
> > > > > >
> > > > > > --
> > > > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488730643.git.narcisaanamaria12%40gmail.com.
> > > > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305191459.GA20822%40nati-X550JK.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305192840.GA12508%40nati-X550JK.
> > For more options, visit https://groups.google.com/d/optout.
> >

