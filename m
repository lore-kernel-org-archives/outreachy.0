X-GM-THRID: 6525083396428791808
X-Received: by 10.129.92.194 with SMTP id q185mr2089200ywb.49.1519246864760;
        Wed, 21 Feb 2018 13:01:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.207.193 with SMTP id r184ls125906ywd.32.gmail; Wed, 21 Feb
 2018 13:01:03 -0800 (PST)
X-Google-Smtp-Source: AH8x225Lep56CDz1WSjxq/3N31CVG+gEuag0AGLK+KJjxq/9x1vrS0b/YBaIFsGP4+5CMve780WM
X-Received: by 10.129.148.199 with SMTP id l190mr2341629ywg.212.1519246863638;
        Wed, 21 Feb 2018 13:01:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519246863; cv=none;
        d=google.com; s=arc-20160816;
        b=nOjSuSbzlszBMX50CR94rzRFOpcxY+Xa8vC+eDmq02Z6fsBUahSluv4hxmhVnDtr25
         3YN9DiifOqPcwuo/ma38OSV+QT+FLFQTD3EVLgCfDUpz4aGdDhsvfi48m8NoKt8n+P8J
         1MfzI90fuMsLFKRgh9mYGK/OqWCGJ55hRm+jCy5oXR/ku2tcxb8hAGuOPlUKhnD/KlRx
         sk5xhahj408GdxnXo2v4tuaPNSMHwA3UyeER9NAMuIY0wg04Uh3XBza6ZlaPyZH/d08Z
         tFqkNTAxHbvjM4GCAJiLfpQkk/oYsM8TGgR6nHTAsw+9PyVGGTVpDAdLtpeUXnpypGLk
         5xWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=9cCBHHDPxK52l/mwoTy88NJk95fhLsB2cfapLWInVi4=;
        b=k0/WKvhQzEZrqvi85wyaqqwyGTsm0jpfpqTq+bk4m27g3/j6d3xnsSZMxMSPiM6Rmt
         JRMUqzmR/h2wr0eakQFDHR1SqbqMFNd1gTZyuBfXvsD1QgNue3EN88A03xBtcP/vxBrG
         dwMgz7JGITY7MzZxWE06D/rZw38sSXqfw5A3sxZJGQE92Adj1e09AgzidLKEm95qK+JI
         5kgPLwMk8wsj+JvcHUX1pu13kDv/EQJ/Cg2YjzeLeJpu0iejEGTgLH7VnX4QBKj2Ozx7
         QDjdvi55HjoNc3FOL7vWCTj5tFSgVELJoqt9HAC5G34cGzgrp+F7ATlPjUQayN6UmH0d
         Ic5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tr2K6qOq;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22c as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x22c.google.com (mail-pg0-x22c.google.com. [2607:f8b0:400e:c05::22c])
        by gmr-mx.google.com with ESMTPS id l13si439885ywm.0.2018.02.21.13.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:01:03 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22c as permitted sender) client-ip=2607:f8b0:400e:c05::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tr2K6qOq;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22c as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22c.google.com with SMTP id f6so1127250pgs.10
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 13:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9cCBHHDPxK52l/mwoTy88NJk95fhLsB2cfapLWInVi4=;
        b=Tr2K6qOqHmcmAOTLZkHEoP1s8plFG1J2OMi2NRVPp2KtSC97cMRB7MRXgJGqLte6kD
         U/Hs8XgJhcL0pqw8ch/bgKtmlnk9MHsuMjOiwu/vgwvUIZg5a/60p3coKcjpPaOpMwG2
         KmBR2/q+Mnsmv8NoyLGEG1oSbk+2srAVgarBWDpoMsAgIbdcYqrNkcwRZtm0NMsKtpLd
         5Jm+wulu8jFXFNrh4pkcIM/WKKVlDlIbltkM7+VccedWQIbegzkPBMy6zX8FFH7xayLx
         Ns/S0i+oEWCdGpRR0Q3DJTXxRcqQFqgwvZbAuSD6P9DCVSq+HvIQMKt9ct/CTjHZFM2e
         MIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9cCBHHDPxK52l/mwoTy88NJk95fhLsB2cfapLWInVi4=;
        b=J57yvXBWUWtPo4Q/BYCqiF7XgTQNV89D4yOoFx7ee/k3HyWOI0+O7Mtk9I7+ah/UDE
         PPFRPbM3w3kXHoUzD2vHG+HoRszBcqmiYzYO+vkcnc1Gc6kKhgbzQn+yFt3XbqdmXqx1
         QGPJds0FRoDjTSeHW6kjy6aJBlZZLRW4u5/ay2KDcHny6gmIhg3MF9p1eN2GAevksKBW
         VZPbAalGXKngcUD6t7qXDxFsvktQ9f91ijlpV1DAOlXirstOq9rde580bquCIKU+S1Ra
         I2CcQoQELJyxhM55t6Wo82PIWEd3ff4j+yeDl3SmBQL4+StDk0f4L7hkOPLO6KHTjX9l
         3XNg==
X-Gm-Message-State: APf1xPCZ55mP9Q01x0IUg7Ah3xNLEHCElLlnJO8Wnf/huGKm5DEyIdev
	+3UeHUqJ68f22Uq/Ae9dqoc=
X-Received: by 10.99.124.7 with SMTP id x7mr3708268pgc.356.1519246862302;
        Wed, 21 Feb 2018 13:01:02 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id p63sm60709543pfk.74.2018.02.21.13.01.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 13:01:01 -0800 (PST)
Date: Wed, 21 Feb 2018 13:00:59 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: speakup: add spaces
 around arithmetic operators
Message-ID: <20180221210058.GA3025@ubuntu>
References: <1519239357-9527-1-git-send-email-santhameena13@gmail.com>
 <1519239357-9527-2-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802212107300.2292@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802212107300.2292@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Feb 21, 2018 at 09:08:21PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 21 Feb 2018, Santha Meena Ramamoorthy wrote:
> 
> > add space around arithmetic operators ('+', '-' and '*') to conform to
> > Linux kernel coding style. Problem found using checkpatch.
> 
> Could you update this one to start the log message with a capital letter?
> 
> You will need to send the whole series again, and note where things
> changes and where they did not.  See the tutorial.
> 
> thanks,
> julia

Sorry for the silly mistake. I have changed it and submitted v2. Thanks
:) 
> >
> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> > ---
> >  drivers/staging/speakup/speakup_dtlk.c | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> > index f8cb83c..df31f8b 100644
> > --- a/drivers/staging/speakup/speakup_dtlk.c
> > +++ b/drivers/staging/speakup/speakup_dtlk.c
> > @@ -287,7 +287,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
> >  	}
> >  	t = buf;
> >  	/* serial number is little endian */
> > -	status.serial_number = t[0] + t[1]*256;
> > +	status.serial_number = t[0] + t[1] * 256;
> >  	t += 2;
> >  	for (i = 0; *t != '\r'; t++) {
> >  		status.rom_version[i] = *t;
> > @@ -326,13 +326,13 @@ static int synth_probe(struct spk_synth *synth)
> >  				speakup_info.port_tts);
> >  		if ((port_forced & 0xf) != 0xf)
> >  			pr_info("warning: port base should probably end with f\n");
> > -		if (synth_request_region(speakup_info.port_tts-1,
> > +		if (synth_request_region(speakup_info.port_tts - 1,
> >  					SYNTH_IO_EXTENT)) {
> >  			pr_warn("sorry, port already reserved\n");
> >  			return -EBUSY;
> >  		}
> > -		port_val = inw(speakup_info.port_tts-1);
> > -		synth_lpc = speakup_info.port_tts-1;
> > +		port_val = inw(speakup_info.port_tts - 1);
> > +		synth_lpc = speakup_info.port_tts - 1;
> >  	} else {
> >  		for (i = 0; synth_portlist[i]; i++) {
> >  			if (synth_request_region(synth_portlist[i],
> > @@ -341,7 +341,7 @@ static int synth_probe(struct spk_synth *synth)
> >  			port_val = inw(synth_portlist[i]) & 0xfbff;
> >  			if (port_val == 0x107f) {
> >  				synth_lpc = synth_portlist[i];
> > -				speakup_info.port_tts = synth_lpc+1;
> > +				speakup_info.port_tts = synth_lpc + 1;
> >  				break;
> >  			}
> >  			synth_release_region(synth_portlist[i],
> > @@ -359,7 +359,7 @@ static int synth_probe(struct spk_synth *synth)
> >  		cpu_relax(); /* wait until it's ready */
> >  	sp = synth_interrogate(synth);
> >  	pr_info("%s: %03x-%03x, ROM ver %s, s/n %u, driver: %s\n",
> > -		synth->long_name, synth_lpc, synth_lpc+SYNTH_IO_EXTENT - 1,
> > +		synth->long_name, synth_lpc, synth_lpc + SYNTH_IO_EXTENT - 1,
> >  		sp->rom_version, sp->serial_number, synth->version);
> >  	synth->alive = 1;
> >  	return 0;
> > @@ -369,7 +369,8 @@ static void dtlk_release(void)
> >  {
> >  	spk_stop_serial_interrupt();
> >  	if (speakup_info.port_tts)
> > -		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
> > +		synth_release_region(speakup_info.port_tts - 1,
> > +				     SYNTH_IO_EXTENT);
> >  	speakup_info.port_tts = 0;
> >  }
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519239357-9527-2-git-send-email-santhameena13%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

