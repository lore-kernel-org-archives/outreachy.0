X-GM-THRID: 6471841659603648512
X-Received: by 10.28.71.131 with SMTP id m3mr1455396wmi.19.1506867655534;
        Sun, 01 Oct 2017 07:20:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.136.40 with SMTP id d37ls1469784wrd.4.gmail; Sun, 01 Oct
 2017 07:20:54 -0700 (PDT)
X-Received: by 10.28.7.85 with SMTP id 82mr513684wmh.8.1506867654616;
        Sun, 01 Oct 2017 07:20:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506867654; cv=none;
        d=google.com; s=arc-20160816;
        b=KyOVb2V5aVL2sY4Oq5vBfotwbgnKCCDMIp/d3sCt7qMednALR/Ow9LsDFfc6lJGrzk
         V7ch9kNol687SOpRggVRQc6zJvyirPM+z+MHcpWUIVuPBZ8TG8qV6c/AHacLnAwXmtTe
         Mzgq3/gOm7perxqc9D9fpxiJUYjT4207ObSyQu4hS8Gt33mJGnK1n5OTOB6ZcqhvUlyq
         hK3LRkIaYF2kQDpx2V0ERsEmoequ3oeTSryD1aJyhsn5UoF5pGb7aNHKAtx7XqXhPwxa
         +JRTorIkqjv9+Zp/WTP9sXd8KLJF70394oGlcKCO01pM3i/2TFsa03kHIRVZLQYUfhh+
         f6Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:date:from:dkim-signature
         :arc-authentication-results;
        bh=ILwWZUghL2lsFHc085VOmSRf6Cyie+anXSi47eGmUTA=;
        b=osCMbrp/bFTmhzXdLTliIRiPV6YUewKKL4UNROBrHEWkPdvuSr1496rUBrFo8O3DCF
         TSQjeamI19HmoHXsfhwzPbYkSHUnCcRZOoYCi4fsPd/d7X/oA8gPiiYTwx7C4c4BdNhh
         tcrTU6fUyX1r/+04ckgtq+mzhGyulYwxw1MwS5ErEAodsdflBpO5r0B0e4pViaPsJZEl
         cXEDyVVaeJr3JpsZlyo/04mA23RdUfHZR37pHZukd1VbFDkwftlsL6IQT3c0XR2tOOaR
         TAZmi20S3k4nkk5Sg4ZfjaxtYPEsEi33es1U29Nr3CP++wJsjn6V9iJLEGyf0cdxhe/n
         4V0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C2/RprjF;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id n82si408345wmg.3.2017.10.01.07.20.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 07:20:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C2/RprjF;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id z96so894941wrb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ILwWZUghL2lsFHc085VOmSRf6Cyie+anXSi47eGmUTA=;
        b=C2/RprjF1plgCaIL4G2MzjkiPqPRNhfNpAX31aXN8QwjhkytY+G06/ta7mD/I38DJM
         WWH0SWwuAIba/3d654rh7WcjKiIv1BcKZ1Qankmf64XVkseXMDXd+ERn4EWdnfrH8vtX
         83Dj4mxCijDqo9MKQNiFNfKKZc0Oo2G9VPzedx0kr4lfnxwRLYjOemkebATgkz2Z1Bv6
         kZ8ZDYDwo6rlv9yOlvcfTXJxZ51++JUo54gDnshfQX0myJC2gUoigg+0NmZDMvzQFfyT
         I2reVxStayQJHHALHCExuAEu5x+DM8Scc7Cm1wzEU8WzN5asi89jvidaI+nUvZonqgsL
         3EmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ILwWZUghL2lsFHc085VOmSRf6Cyie+anXSi47eGmUTA=;
        b=EQl9oq3BTNbjAKURze2ZC22fpCRwNSih7DA6th2rv0H8oQgIfSXAfAmI9TT9hcCYSw
         Q1/d7Yct1Pj60fcPCSeY+5RbOpCCzrtqtoMgz4TUQy6ezbhFddiaODamxL7d+6uEKoBr
         cD46g0T441cMKAg7UDixz32OfwgUhD0eljxIY86D+LP8WubxALsDx+tp3JmtKQq1BNWP
         0V7FT1D2G82NhjSwP1SBXQSR3MrLjyB42s8GgsOyThIYwaWaMIcaVoxVcvUgIuW5Qwj2
         Z91Vprh4QiUMM9QUPtCEtGKKeivd+tpAwXorDbHDnrgzQ0XxVR5DRF+xw7K7koHw/7Fr
         pqzQ==
X-Gm-Message-State: AHPjjUjn6lkZhumQjpX4/YR3wFCAIoj2/Vly6aHY/OQDCNAuqL5Wn2Zq
	7DYA8+HrTlLZzPBRHgq53sL/9g==
X-Google-Smtp-Source: AOwi7QDGTV3w94vgvW1Y212vuupQFWSdUNcUDJKnvUYC+CDOdqBFQB5IBvcis/hGFlQfec0VS+Srew==
X-Received: by 10.223.195.205 with SMTP id d13mr10962687wrg.193.1506867653938;
        Sun, 01 Oct 2017 07:20:53 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id i10sm3687699wmf.14.2017.10.01.07.20.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 07:20:52 -0700 (PDT)
From: Julia Lawall <mihaela.muraru21@gmail.com>
X-Google-Original-From: Julia Lawall <julia.lawall@lip6.fr>
Date: Sun, 1 Oct 2017 17:20:51 +0300
To: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Use
 usleep_range() instead of msleep()
Message-ID: <20171001142051.GA11258@domino-MS-16Y1>
References: <20171001073056.GA7890@domino-MS-16Y1>
 <alpine.DEB.2.20.1710011519390.2031@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1710011519390.2031@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Oct 01, 2017 at 03:20:01PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 1 Oct 2017, Mihaela Muraru wrote:
> 
> > Since msleep() will often sleep 20 ms for any value given in the
> > 1~20ms range, use usleep_range() for a precise wakeup.
> 
> Why did you choose these particular argument values?
> 
> julia

Those values are from Documentation/timers/timers-howto.txt, file that 
also suggest to use usleep_range() instead of msleep().

Should I mention it in log message and send patch v2?

Thank you,

Mihaela

> > Issue found by checkpatch.pl.
> >
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > index 631ff73..daf18e8 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > @@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
> >  		if (status != VCHIQ_RETRY)
> >  			break;
> >
> > -		msleep(1);
> > +		usleep_range(1000, 2000);
> >  	}
> >
> >  	return vchiq_status_to_vchi(status);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171001073056.GA7890%40domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >

