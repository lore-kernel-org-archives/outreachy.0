X-GM-THRID: 6468311343549120512
X-Received: by 10.223.160.75 with SMTP id l11mr444157wrl.28.1506597902015;
        Thu, 28 Sep 2017 04:25:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.207 with SMTP id l198ls21290wmd.6.gmail; Thu, 28 Sep
 2017 04:25:01 -0700 (PDT)
X-Received: by 10.28.154.68 with SMTP id c65mr113579wme.5.1506597901408;
        Thu, 28 Sep 2017 04:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506597901; cv=none;
        d=google.com; s=arc-20160816;
        b=oa0PAqTu/djIVr2Do4hsGPK/IyfWyKR2e7bRP/TzQRKYMjRHQp4cQE92qfuqVV5D5m
         3XBLp0wYHBdE2aw1K1TIByXzMc9nH5qZKPsHQ6InzJFSLDEOurhFdiPnA21Ak2R33UjQ
         m8PDsGpAcnd3QaZamdTRDb3mclN7WyEDjo274pyLfx8wdQZ12Xy202g37eOPjzOSreZL
         9oL2mJRc6KdbFJU+C9bWMr5seYVB0yKDNz5OAwqvWP6aWlF0+N1DHt/ERwcGUIMCoPWx
         TQwi+z9wkf3Gdx5EW3rp2HSaoZ5t5SzBYdsuKTNGju4SAH7paUEBtzx6BZYajKsz3/aY
         6vBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=vjADDHJKkQ9l102pxZCIvF9fdkha2BNjvb0TAYzLUw8=;
        b=QnvyMi1JuPEh34Y0dpEYdHiG1AQU5y01G+flxry4FmLiCuYKn6M59K1Uc//SKPPjOF
         0Tb2UINQqxlaS5WHMsMfa0JgZLBe9BPMbtY6kVa7oKN2VnOkePfwG6VObUZB1XHEJpnA
         MDld4JIMwwcsM2i/RO4jsQSie186NXElH2F8tpgEZTaCdInpzs1+2af7HWEKMFpbGcyQ
         r5MQasHrioWeohaYDdtaUDGtaOkz90F7GqE2QNtffF2MN3PmOfS/0Kr8tILMArePK6A/
         KFPxIcwdXN/b5TatFtt85vZXhwpgRh2ThAb9M0YYJzX3N+Cpomi8Lyg4YpKTEIzUqBYq
         vISg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hoTR0TTE;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id m74si62653wma.0.2017.09.28.04.25.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 04:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hoTR0TTE;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u48so1736832wrf.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 04:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vjADDHJKkQ9l102pxZCIvF9fdkha2BNjvb0TAYzLUw8=;
        b=hoTR0TTEj4O5twYLEDYaA3oMxAFcPhJhoKOGMzwePWw3CNGRsy6DcM2EdJKAQrLND5
         q5gz+vnfi/kyhuVD2OBKtfmIIKN15y9g/eSc/yjIRej5BZeBviRx6AqAr+/LTgnspo4w
         76PlJ65vyooLvU/0NWSud0lJ2qQVEAyevf2ac27fsfovrg0y8bCYBMDyemnvOIA1tf6R
         06LV/DgeddMUcZtjk7+zzAz59N5mtTdnymEGNbaW7FMy2+zDPwm0JURU2AnZu06ICpTv
         FQsyWcJ9crTk867Psggk+YgPospl++mQKzKkVOhPhjVfsegMHns8rqPj3rDid5IfbDgV
         THoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vjADDHJKkQ9l102pxZCIvF9fdkha2BNjvb0TAYzLUw8=;
        b=FtbIB69hCiaxHmZG7hPYvAOly97933E9N2l0cPDzVzCHW9H1oFCuYBel1uJdHJFlWh
         2VGXyhbh5SbdxvZgKn1sTa8S+TBpael5O5map8bhVdNRBhxgdohnnokVNcrwpW52fqIj
         LInI5P0D0cU2vmkNm2FTV4xPhGvcQjNreIb3T8gLCBm9GAHgjssp0JF9HZAgUskaE68N
         vBg3TmhSiXcUstaygzRMU4w/yhI6ejo+C3rf+3epKPzAAzJPRVgat+qzzhLx47lVoWcz
         oRjAXuk00QdXiJATRzjKKG3YidyrswYnDVZef10ogkwtEagMMTFE07asv9Q0HrDlVjFB
         SuWQ==
X-Gm-Message-State: AHPjjUj1zLba0fmrUXQjUfo/CX+UH9QCTcxLPL5fPeupMWffaZJzdwDU
	RnND+DmmLF9bbkJUWM5CEQs=
X-Google-Smtp-Source: AOwi7QCERvr6DtZAle8c6wAxVa9U9V6+3THAr2OGuHofQ5M8IYInH5Im5P0Ji08/kGCcoPfa4sci8A==
X-Received: by 10.223.151.157 with SMTP id s29mr4753554wrb.168.1506597900901;
        Thu, 28 Sep 2017 04:25:00 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id c83sm444104wmd.2.2017.09.28.04.25.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 04:25:00 -0700 (PDT)
Date: Thu, 28 Sep 2017 04:24:59 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Remove
 typedef struct
Message-ID: <20170928112459.GB11913@ubuntu>
References: <20170928110230.GA11755@ubuntu>
 <alpine.DEB.2.20.1709281308320.2865@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709281308320.2865@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 28, 2017 at 01:12:02PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 28 Sep 2017, Mihaela Muraru wrote:
> 
> > This patch removes typedef from struct and renames it from "typdedef struc vchiq_2835_state_struct" to "struct vchiq_2835_state" as per kernel coding standards.
> 
> The log message should fit within at most 70-some characters per line.
> 
> Otherwise, this code seems to have a lot of cleanup potential.  Besides
> all the typedefs, you can also try to get rid of the pervasive casts and
> to use more kernel-standard return values.  It looks like the inited field
> could have type bool and true/false values too.  These would all be other
> patches of course.
> 
> julia
> 
Thank you for your help 

I will work on it :)

Mihaela
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index 12b0e0d..ee00f51 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -59,10 +59,10 @@
> >  #define BELL0	0x00
> >  #define BELL2	0x08
> >
> > -typedef struct vchiq_2835_state_struct {
> > +struct vchiq_2835_state {
> >  	int inited;
> >  	VCHIQ_ARM_STATE_T arm_state;
> > -} VCHIQ_2835_ARM_STATE_T;
> > +};
> >
> >  struct vchiq_pagelist_info {
> >  	PAGELIST_T *pagelist;
> > @@ -206,12 +206,12 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
> >  {
> >  	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> >
> > -	state->platform_state = kzalloc(sizeof(VCHIQ_2835_ARM_STATE_T), GFP_KERNEL);
> > -	((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 1;
> > -	status = vchiq_arm_init_state(state, &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state);
> > +	state->platform_state = kzalloc(sizeof(struct vchiq_2835_state), GFP_KERNEL);
> > +	((struct vchiq_2835_state *)state->platform_state)->inited = 1;
> > +	status = vchiq_arm_init_state(state, &((struct vchiq_2835_state *)state->platform_state)->arm_state);
> >  	if (status != VCHIQ_SUCCESS)
> >  	{
> > -		((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited = 0;
> > +		((struct vchiq_2835_state *)state->platform_state)->inited = 0;
> >  	}
> >  	return status;
> >  }
> > @@ -219,11 +219,11 @@ vchiq_platform_init_state(VCHIQ_STATE_T *state)
> >  VCHIQ_ARM_STATE_T*
> >  vchiq_platform_get_arm_state(VCHIQ_STATE_T *state)
> >  {
> > -	if (!((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->inited)
> > +	if (!((struct vchiq_2835_state *)state->platform_state)->inited)
> >  	{
> >  		BUG();
> >  	}
> > -	return &((VCHIQ_2835_ARM_STATE_T *)state->platform_state)->arm_state;
> > +	return &((struct vchiq_2835_state *)state->platform_state)->arm_state;
> >  }
> >
> >  void
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928110230.GA11755%40ubuntu.
> > For more options, visit https://groups.google.com/d/optout.
> >

