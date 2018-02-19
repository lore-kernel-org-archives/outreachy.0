X-GM-THRID: 6524345864166572032
X-Received: by 10.46.54.17 with SMTP id d17mr335631lja.28.1519073993546;
        Mon, 19 Feb 2018 12:59:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.80 with SMTP id 77ls517316ljj.12.gmail; Mon, 19 Feb 2018
 12:59:51 -0800 (PST)
X-Google-Smtp-Source: AH8x2241Wl/asIL/ozTrh2pHbal9iMG5EjhFllQ7W7+zEDVeIMNNqWS/hwdqF53OnNi732f5x03z
X-Received: by 10.46.87.24 with SMTP id l24mr931991ljb.7.1519073991683;
        Mon, 19 Feb 2018 12:59:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519073991; cv=none;
        d=google.com; s=arc-20160816;
        b=BafYoS8FggZ1oGJWw/l8Bzg0u3Qvxb+0rhHDqsO19rwb/KTFm1cAoJC7glMeRCzTIV
         3B/orNA2ZytpgRSN60V7Uy4dtyCE0YxJydwYSwjGXsZxoDpb/iWa1e74jAqSr6LaHnTa
         YiiDsL67GE+x8Y3X4Ub+87s6LNBbeLp0OPtV+Zg70H/3hIAT4QAJXIFV0szsZ4aaKwhI
         aImp9kko1WLQ1O1VFYISCiDruaaXXUuKabNkg4NHfRy4cTLV7v5S0wgQl/PTntH+6KDA
         TUq6Z2ZivRtYCZTy2XO0DvLmy3MsDfUxNR8e3/GP+cUmq3g3wWTT4qWXiXcteHF0dWx1
         3dhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Q9dfqrm+MIYROWz/MM2/1LrZ0St281cBPFz0kZw96uk=;
        b=pXdQtxv9zKHEr9msDjuabjQlTxNn6XscOaeE4av5l4490GuTZeii6v9M1334G+S8A3
         vmTIZvFZvatQjb1ZlRN2zh9dM73l5l2bZv4k+IzXeDegHryptPBBx6VU62sfcNObIckj
         ESkH8pccFPulNaiu3PPgxA30Ztncx7KrqEZCLkfvUE8U2wSmXKE4/sI3VIAKuE6Y3rdF
         6wFIvvkhThNhxjJdd8qJIXl6+U4zPxiL3zNUa66MYbSykGXZdu3wK/cDL9wDxQ70vstO
         DjD9Dz7AYlImBd//QlF+mXKvG4GprB9PBiR3wZDhyNYfPafFBfqjyXlzJkcZExRdY0xy
         ffjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z10si217358ljc.5.2018.02.19.12.59.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 12:59:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,536,1511823600"; 
   d="scan'208";a="314371454"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2018 21:59:50 +0100
Date: Mon, 19 Feb 2018 21:59:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, w.d.hubbs@gmail.com, 
    outreachy-kernel@googlegroups.com, chris@the-brannons.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: add spaces around
 arithmetic operators
In-Reply-To: <1519067638-5144-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802192158460.2909@hadrien>
References: <1519067638-5144-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Feb 2018, Santha Meena Ramamoorthy wrote:

> Add spaces around arithmetic operators ('+', '-' and '*') to conform to
> Linux kernel coding style. Problem found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/speakup/speakup_dtlk.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
> index f8cb83c..835582a 100644
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
> -					SYNTH_IO_EXTENT)) {
> +		if (synth_request_region(speakup_info.port_tts - 1,
> +					 SYNTH_IO_EXTENT)) {

I don't think that adjusting the indentation of SYNTH_IO_EXTENT is
necessary for the space around - change.  The spacing is indeed improved,
but that should be in another patch.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519067638-5144-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

