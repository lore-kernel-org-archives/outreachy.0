X-GM-THRID: 6524345864166572032
X-Received: by 10.129.118.72 with SMTP id j8mr1993369ywk.16.1519239864893;
        Wed, 21 Feb 2018 11:04:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5982:: with SMTP id n124-v6ls182278ybb.14.gmail; Wed, 21
 Feb 2018 11:04:22 -0800 (PST)
X-Google-Smtp-Source: AH8x2253CY8VGOLfvoxOFMjtcs9986jwHeyBQIGyQIpkcXBEqKxIpOgMRfnIGJXz2OqrpWFCkeUN
X-Received: by 2002:a25:7787:: with SMTP id s129-v6mr2242889ybc.63.1519239862487;
        Wed, 21 Feb 2018 11:04:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519239862; cv=none;
        d=google.com; s=arc-20160816;
        b=vvUhr7Kx8OjpQmnY0JpRm9HnqUF6yFy1NBH5y0QBlOmNf/dNuBXlvXgcz6oFlELdPh
         bm+uQnOCX+vdXAklW4kcHPfrdJGmdv6uOHPV3AodiBWrB6AlZjhWwYEBybsZCR3uswfZ
         HtMOI+wtzxmleSeAoAg0DAgTSMRASQ+N3C7vXXnD+431jZP4aDdbR8prrRxLZ0pkoIBH
         G9w0hgoVtOEfWUU9ZpznmaQV1vCsNCWPcL6zNetFXzQhmczacIeP0ZzQaFv6KCG6XMmc
         2J32lUtSbp9rklBaC5SoE/iV425XKEhK5k1Y644rm4C1uf7w4Puk0yMHZo6V/D2gE1/0
         rEGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=krO2vwEnMAVZ231H67ysnpi16AhN0chSSpk3zgUP++w=;
        b=M74DoU49IZy4pPDk+vhNFw1Os2I/TkpERAUiBeAsSlp2IHtIbcF+96FoNPyeSJQ7sg
         JWnuTYNFuxt+ZzCus9R4Ed4lAGZLP0LM0npSYgys5snUXFSG0kDGqENRKZZk3meybyNL
         GzQ6SsSW5OwKrQzisv/gYpDcjWfbkhuHIw0KsFqa32OjUbTQSdX2fQWunq5+TMOx+dHX
         OdMFJQul43zV9TogOuV+pb8IOFRmWgLm8X0xXSeFhgWQUl/f2oIzvGmn03+jvfL7hnSY
         z1ml4/PS77VyuNWlAQhukuit6wh3RMMG4Em+nviVbkb+0/HsxVSr1vm0yqwHUW4K+2dk
         hPbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMG60rLY;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id r17si774378ybm.0.2018.02.21.11.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 11:04:22 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMG60rLY;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x242.google.com with SMTP id ay8so1441036plb.4
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 11:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=krO2vwEnMAVZ231H67ysnpi16AhN0chSSpk3zgUP++w=;
        b=JMG60rLY0Zg7/8ROgn88cXIqBzmYxVmdA9Ad7Mg+XGfOxJ2RSAvJPpYD1fPGIhBrEb
         Kl80/ojfQcMLyZcKBr4ExPMd6/tj1hkYdyWd8xYVAMixcwFlFeP8JhVPFgHcN9jWaANH
         PzSVWOe3wTgMaGULHTciB5CQRkYxkGc+8qlUSdPNa4jddtr9aYujijKQBKFYQQVUvM6+
         wdScgRI3tZzhwLuBskRj67ulmiXsKBqH3gkVV2PRX3U9iqVQsp+jF7Qk5U9+QvX4xhsQ
         UxJGjhuxkwfJIl8c+eK1WDgud1MvikAjdV3V13JihU3sOW1IUsSNMFJjLXiL/ziWl/uo
         CbJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=krO2vwEnMAVZ231H67ysnpi16AhN0chSSpk3zgUP++w=;
        b=U9IxmxAua21HBXw5Z0cMDbnzwokbmlyxnkMVKxWwKVkQNVCrgktHI40TDY9Fl6Tck0
         HKDY2rkrq45sbHB0UBhrCmekCQfRnlF3mFKdkaoq5is0hayNgfYwrCPiObllKCwYQM1G
         e7lRFNPpbKYZaILsJAjgSfNQs1WtN9MjtwIrTsZGH3wA3eeXdRPINNWMEMxuBwzzZZ9t
         E6J/IQcLr2orQ+WYQfCo1hrM2oC4UsIh3zKcC/87DsKElmGaAVV7IK4gRue5tDUGsXOl
         xJOlxg2wobMmXf77/8PyGJa1e/tnkY/GFs2oV1HmF9RYF7on1YOyN5e+bd4pikCx+Vx6
         OqAg==
X-Gm-Message-State: APf1xPB+8PSIPjAYQ30sXdDWeRJgLBMgr3Q7ZWJyHaP04KoQ6WwSNFec
	9CWN5pgFNKDUEr2HOaWsVL42xriv
X-Received: by 2002:a17:902:7148:: with SMTP id u8-v6mr3895933plm.91.1519239861367;
        Wed, 21 Feb 2018 11:04:21 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id e127sm25349738pfe.157.2018.02.21.11.04.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 11:04:20 -0800 (PST)
Date: Wed, 21 Feb 2018 11:04:18 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: add spaces around
 arithmetic operators
Message-ID: <20180221190418.GA9501@ubuntu>
References: <1519067638-5144-1-git-send-email-santhameena13@gmail.com>
 <alpine.DEB.2.20.1802192158460.2909@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1802192158460.2909@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Feb 19, 2018 at 09:59:50PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 19 Feb 2018, Santha Meena Ramamoorthy wrote:
> 
> > Add spaces around arithmetic operators ('+', '-' and '*') to conform to
> > Linux kernel coding style. Problem found using checkpatch.
> >
> > Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> > ---
> >  drivers/staging/speakup/speakup_dtlk.c | 17 +++++++++--------
> >  1 file changed, 9 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> > index f8cb83c..835582a 100644
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
> > -					SYNTH_IO_EXTENT)) {
> > +		if (synth_request_region(speakup_info.port_tts - 1,
> > +					 SYNTH_IO_EXTENT)) {
> 
> I don't think that adjusting the indentation of SYNTH_IO_EXTENT is
> necessary for the space around - change.  The spacing is indeed improved,
> but that should be in another patch.
> 
> julia

Hi, 
When I removed the space for SYNTH_IO_EXTENT, checkpatch showed warning. So I split my changes into logical series and submitted them as a patchset. 
> 
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
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519067638-5144-1-git-send-email-santhameena13%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

