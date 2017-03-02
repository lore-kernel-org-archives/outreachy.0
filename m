X-GM-THRID: 6392947471116402688
X-Received: by 10.46.80.1 with SMTP id e1mr2364494ljb.10.1488494637277;
        Thu, 02 Mar 2017 14:43:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.137 with SMTP id y131ls138620lfc.24.gmail; Thu, 02 Mar
 2017 14:43:56 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr2016332lfi.2.1488494636828;
        Thu, 02 Mar 2017 14:43:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si35132wmh.1.2017.03.02.14.43.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 14:43:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,233,1484002800"; 
   d="scan'208";a="262896212"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 23:43:55 +0100
Date: Thu, 2 Mar 2017 23:43:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Aishwarya Pant <aishpant@gmail.com>, 
    Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 1/5] staging: bcm2835-audio: move
 logical continuation to the same line
In-Reply-To: <alpine.DEB.2.20.1703022342420.2175@hadrien>
Message-ID: <alpine.DEB.2.20.1703022343380.2175@hadrien>
References: <cover.1488479861.git.aishpant@gmail.com> <845a46f44fdc14bf896d03a9edd388716329cb47.1488479861.git.aishpant@gmail.com> <alpine.DEB.2.20.1703022342420.2175@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Julia Lawall wrote:

> The subject seems quite unrelated to the patch.

Oops, I didn't notice that this was already fixed.

julia

>
> julia
>
> On Fri, 3 Mar 2017, Aishwarya Pant wrote:
>
> > Remove instances of unnecessary blank space after cast in bcm2835-ctl.c
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> > index a4ffa1b..99e9ca3 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-ctl.c
> > @@ -116,7 +116,7 @@ static int snd_bcm2835_ctl_put(struct snd_kcontrol *kcontrol,
> >  		return -EINTR;
> >
> >  	if (kcontrol->private_value == PCM_PLAYBACK_VOLUME) {
> > -		audio_info("Volume change attempted.. volume = %d new_volume = %d\n", chip->volume, (int) ucontrol->value.integer.value[0]);
> > +		audio_info("Volume change attempted.. volume = %d new_volume = %d\n", chip->volume, (int)ucontrol->value.integer.value[0]);
> >  		if (chip->mute == CTRL_VOL_MUTE) {
> >  			/* changed = toggle_mute(chip, CTRL_VOL_UNMUTE); */
> >  			changed = 1; /* should return 0 to signify no change but the mixer takes this as the opposite sign (no idea why) */
> > @@ -226,7 +226,7 @@ static int snd_bcm2835_spdif_default_put(struct snd_kcontrol *kcontrol,
> >  		return -EINTR;
> >
> >  	for (i = 0; i < 4; i++)
> > -		val |= (unsigned int) ucontrol->value.iec958.status[i] << (i * 8);
> > +		val |= (unsigned int)ucontrol->value.iec958.status[i] << (i * 8);
> >
> >  	change = val != chip->spdif_status;
> >  	chip->spdif_status = val;
> > @@ -289,7 +289,7 @@ static int snd_bcm2835_spdif_stream_put(struct snd_kcontrol *kcontrol,
> >  		return -EINTR;
> >
> >  	for (i = 0; i < 4; i++)
> > -		val |= (unsigned int) ucontrol->value.iec958.status[i] << (i * 8);
> > +		val |= (unsigned int)ucontrol->value.iec958.status[i] << (i * 8);
> >  	change = val != chip->spdif_status;
> >  	chip->spdif_status = val;
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/845a46f44fdc14bf896d03a9edd388716329cb47.1488479861.git.aishpant%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

