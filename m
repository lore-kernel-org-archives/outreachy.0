X-GM-THRID: 6524345864166572032
X-Received: by 10.107.148.72 with SMTP id w69mr2757853iod.56.1519235809552;
        Wed, 21 Feb 2018 09:56:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.181.206 with SMTP id e197ls386775iof.1.gmail; Wed, 21 Feb
 2018 09:56:48 -0800 (PST)
X-Google-Smtp-Source: AG47ELu4zyvjAqlq17WEdN2x6RWCZUjUJGwvK/XEjSaje+qYpbp7NcPBlgxNgqLoS6wH2mZTMRPq
X-Received: by 10.107.173.227 with SMTP id m96mr2869019ioo.70.1519235808540;
        Wed, 21 Feb 2018 09:56:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519235808; cv=none;
        d=google.com; s=arc-20160816;
        b=rz+BmC+zqAkn/JuEzczIrWCAlvD0eYI4hZZ6dXCLOAzsXb+1DOs5qODpMdjY9cpNMq
         DQJAHCfZ9GjEc8LvtgbyQMoOE8WaIWc9bawSTZnnJDZzy3dO+8KyTVuqB7YBn7x6vBWZ
         kWllhmU9f+GbNRh76azQZpBX8SiJEIsSJJC3Eg5p8rN3uI+0iBlbLsotSzB8Ne/zm9ze
         0OnUi5IBV6CQCp/pOCiP7jH+Zn/uhrB99OCtIRejwtbG0K40rfzoGQpO0aKc0WzcmIpC
         nRjns2gaMyhHxkrG1oeBPKPCY09T7yjEposd2y0GOUdkst5nR7DKRg0V/ikud0G5cImo
         KNbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=Pvt7SUcXgGd8VMfnKGYKmLps68uGa6hdavdGZiC2E98=;
        b=u3YcVQKBLrt0sBxRM5QT7Xo5r9cvKAN3iiInWb+oUMUqHwbMi+QhkwE4kYj6YU5lVL
         5rQorYFxQXmgCQrXFVxc1YF0NzqU4HZVAut5+hQYdfX4OMiwg3AMydCTdjPnmbsI6sX/
         FKQOz86xRXUJqTQ78E9Nd5bQa727DQNZowH9E7F/Mx709Z5xrRWjNjI83q6Cnn3E+WaN
         Gm9ns2kH70GjPJQo4NjbEqKPllK0Fz6IvFB4hbzs3v3JZ+Wx5g7OCC8scv7/Ij44oJRB
         hiRlos31Beqq8qTaNmmNeHfzyGpawIznNeOOaHKeiDsKw3Djc83RrbZLkmSKFthxSSkL
         +Ovg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g6bK991N;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id a8si1203180itc.0.2018.02.21.09.56.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 09:56:48 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g6bK991N;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x241.google.com with SMTP id u13so1336039plq.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Feb 2018 09:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Pvt7SUcXgGd8VMfnKGYKmLps68uGa6hdavdGZiC2E98=;
        b=g6bK991N9WC95XeE06iGdp5ak5LCspTaBl/GaL8gGJ99YHLok+MVLB/ltDJ8WfQ2Bd
         ItkgVhC82qVKkxjWI7ICGXndJZy7z8sSa0doTVMwCos5SH+f05BKLMhuxYjaGCLuhp8o
         vU1UGthsfNR+Pw+nXs8jJl13YP2M2aJ+JBnmWWhy+EoYscsVNJQIS1Uhj4UluhZDQX9N
         YgwOznecrjcfdcT6E63SdzwXKK+o1+bVniweykEM9jIvxKScIH19XYJLt4ywu9TOdJT3
         QCTMSTY0X/2OIE3RCryWeA5VWgdkYpurmTc7rz2M4Sw98oOjOIUz8j+n+X4KEwRGR4uj
         W/Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pvt7SUcXgGd8VMfnKGYKmLps68uGa6hdavdGZiC2E98=;
        b=msCFbjRkJMDOM30JnA8+N0DOdRW8igbN8KfdCXEZiqnN+r/siQixeFGvjuhlWayoLo
         kY8WWL27RJhi5tZw30+/Ag7s6vZXnL1AE5a6wEazK8DjWPM2V2OGGrb2U/Dp2IfzzV9V
         KQIia35KqNuv4/H7tKdaASnPwRcf/l5Bzbc8WH2j//QcHc3CIYO3TNquv60AgqdPQx5X
         h61U70cS0o9MUlCC1bdljsh3yvX0COvYKI7j57YIUF3ruhubnvWNurY/qJ4FAeN5859A
         OKn349PGONyryJWMHQ00rrxB/xnre7JpC8T4g3ieoj4G6kRcg9WZJYI2IOI6swC23YXf
         kxyw==
X-Gm-Message-State: APf1xPDKX1b5dU6XirlVx5m+qM2l4bEFnVrQofWck3OBc6t7+S0Xdgo4
	eqNMlrtvWcMZUvg6gPIxsG9Rgw==
X-Received: by 2002:a17:902:8b89:: with SMTP id ay9-v6mr3783310plb.439.1519235807609;
        Wed, 21 Feb 2018 09:56:47 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from ubuntu (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id e81sm56559642pfb.58.2018.02.21.09.56.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 09:56:46 -0800 (PST)
Date: Wed, 21 Feb 2018 09:56:44 -0800
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: add spaces around
 arithmetic operators
Message-ID: <20180221175644.GA7704@ubuntu>
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
Sure, I'll make the change and submit the v2 now. Thanks :)
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

