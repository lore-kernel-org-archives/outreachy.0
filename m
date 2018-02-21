X-GM-THRID: 6525083396428791808
X-Received: by 10.46.50.8 with SMTP id y8mr260140ljy.34.1519243704760;
        Wed, 21 Feb 2018 12:08:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.62.8 with SMTP id l8ls236345lja.15.gmail; Wed, 21 Feb 2018
 12:08:23 -0800 (PST)
X-Google-Smtp-Source: AH8x226VOE7rZE2V6yvQGilYCx7uaQB8qRebn+7xv3gO6E5+yyENuyekkMI1tivYDstqSYYXiQbd
X-Received: by 10.46.22.71 with SMTP id 7mr179999ljw.17.1519243703011;
        Wed, 21 Feb 2018 12:08:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519243702; cv=none;
        d=google.com; s=arc-20160816;
        b=018qmCLsM6pgSj9WPPREeKCMpJ18V2DqRI0M9+LH3c0XKEGgVTKoXR0wPZfH4VFof7
         jVLQ/1g2MtRFmPgCw3DeT0s4IPMjDriW4qzjwwZLdlwDqkTdZAOEcdhbhH8jfsS6iGsK
         k1wV+EoYNsBd44sjC67AytB8tqJ0q5F7eN9R68yMmyAX/ahgD/7k2v+/pGJSI00lXLfg
         RQuInOGxTgqeSHLCyxzNYeNOuFyAy8HkMdcZgxEzftoW06FLo/DhUUXlzMJ4/puswXTa
         MwZK5ATgvzLfxib8dQlmvT1S4qS9YZ2iSrYCJtPEH4S8tuKInrNg6rYzMNldR0zP6v1s
         tpCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=2Cfeq2U/9twNmhMCx+D/HeK5kOzJq1++BQ6GDVJCSzQ=;
        b=XpxydUHZ5Y9+Jl7sfzScJYLWTpdozMsv8Fnk0a9lt0R4xa6oInsvyQh1S/XUCCvLkp
         D+KbHjvt+80gjiHUcOXD9QsFodssg6RuPJMc9cSXzgilXNpsK6p4/tQMeT/7Mj4/zXdq
         6QhdQpEFxdqoXhvJ9lN7o1hU8VorPLB75e6Nu9OAjNmFTVXdsMVCdtUMm5+RAL1mUTM9
         VazBHehDEMU2YmJz0UcyszWhoBM82bEfx695G3qpKnKN2o22x2PBMQ2ddLvTCMLRvXZP
         eWvgI7ycA6sgMonyvMM9z3NDLkerUrCkvDaSezxZdaBnERbQGwtMF+QEc7DiBawaugkh
         w38g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m18si365854lfj.0.2018.02.21.12.08.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Feb 2018 12:08:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,375,1515452400"; 
   d="scan'208";a="314734754"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2018 21:08:21 +0100
Date: Wed, 21 Feb 2018 21:08:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, chris@the-brannons.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: speakup: add spaces
 around arithmetic operators
In-Reply-To: <1519239357-9527-2-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802212107300.2292@hadrien>
References: <1519239357-9527-1-git-send-email-santhameena13@gmail.com> <1519239357-9527-2-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 21 Feb 2018, Santha Meena Ramamoorthy wrote:

> add space around arithmetic operators ('+', '-' and '*') to conform to
> Linux kernel coding style. Problem found using checkpatch.

Could you update this one to start the log message with a capital letter?

You will need to send the whole series again, and note where things
changes and where they did not.  See the tutorial.

thanks,
julia

>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/speakup/speakup_dtlk.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> index f8cb83c..df31f8b 100644
> --- a/drivers/staging/speakup/speakup_dtlk.c
> +++ b/drivers/staging/speakup/speakup_dtlk.c
> @@ -287,7 +287,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
>  	}
>  	t = buf;
>  	/* serial number is little endian */
> -	status.serial_number = t[0] + t[1]*256;
> +	status.serial_number = t[0] + t[1] * 256;
>  	t += 2;
>  	for (i = 0; *t != '\r'; t++) {
>  		status.rom_version[i] = *t;
> @@ -326,13 +326,13 @@ static int synth_probe(struct spk_synth *synth)
>  				speakup_info.port_tts);
>  		if ((port_forced & 0xf) != 0xf)
>  			pr_info("warning: port base should probably end with f\n");
> -		if (synth_request_region(speakup_info.port_tts-1,
> +		if (synth_request_region(speakup_info.port_tts - 1,
>  					SYNTH_IO_EXTENT)) {
>  			pr_warn("sorry, port already reserved\n");
>  			return -EBUSY;
>  		}
> -		port_val = inw(speakup_info.port_tts-1);
> -		synth_lpc = speakup_info.port_tts-1;
> +		port_val = inw(speakup_info.port_tts - 1);
> +		synth_lpc = speakup_info.port_tts - 1;
>  	} else {
>  		for (i = 0; synth_portlist[i]; i++) {
>  			if (synth_request_region(synth_portlist[i],
> @@ -341,7 +341,7 @@ static int synth_probe(struct spk_synth *synth)
>  			port_val = inw(synth_portlist[i]) & 0xfbff;
>  			if (port_val == 0x107f) {
>  				synth_lpc = synth_portlist[i];
> -				speakup_info.port_tts = synth_lpc+1;
> +				speakup_info.port_tts = synth_lpc + 1;
>  				break;
>  			}
>  			synth_release_region(synth_portlist[i],
> @@ -359,7 +359,7 @@ static int synth_probe(struct spk_synth *synth)
>  		cpu_relax(); /* wait until it's ready */
>  	sp = synth_interrogate(synth);
>  	pr_info("%s: %03x-%03x, ROM ver %s, s/n %u, driver: %s\n",
> -		synth->long_name, synth_lpc, synth_lpc+SYNTH_IO_EXTENT - 1,
> +		synth->long_name, synth_lpc, synth_lpc + SYNTH_IO_EXTENT - 1,
>  		sp->rom_version, sp->serial_number, synth->version);
>  	synth->alive = 1;
>  	return 0;
> @@ -369,7 +369,8 @@ static void dtlk_release(void)
>  {
>  	spk_stop_serial_interrupt();
>  	if (speakup_info.port_tts)
> -		synth_release_region(speakup_info.port_tts-1, SYNTH_IO_EXTENT);
> +		synth_release_region(speakup_info.port_tts - 1,
> +				     SYNTH_IO_EXTENT);
>  	speakup_info.port_tts = 0;
>  }
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519239357-9527-2-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

