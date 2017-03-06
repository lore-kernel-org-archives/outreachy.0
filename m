X-GM-THRID: 6394250573317668864
X-Received: by 10.223.131.69 with SMTP id 63mr445578wrd.5.1488800721598;
        Mon, 06 Mar 2017 03:45:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.137 with SMTP id f9ls440145lji.7.gmail; Mon, 06 Mar 2017
 03:45:21 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr2303743ljv.0.1488800721021;
        Mon, 06 Mar 2017 03:45:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si197199wmg.3.2017.03.06.03.45.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 03:45:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,253,1484002800"; 
   d="scan'208";a="263305042"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2017 12:45:20 +0100
Date: Mon, 6 Mar 2017 12:45:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: refactor
 code
In-Reply-To: <20170306074212.GA19258@aishwarya>
Message-ID: <alpine.DEB.2.20.1703061244150.3078@hadrien>
References: <20170306051742.GA21192@aishwarya> <alpine.DEB.2.20.1703060741300.2259@hadrien> <20170306074212.GA19258@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 6 Mar 2017, Aishwarya Pant wrote:

> On Mon, Mar 06, 2017 at 07:41:53AM +0100, Julia Lawall wrote:
> >
> >
> > On Mon, 6 Mar 2017, Aishwarya Pant wrote:
> >
> > > This patch contains the following fixes:
> > > -Merge two if conditions into one
> > > -Remove initialization of unused semaphores
> > > alsa_stream->buffers_update_sem and alsa_stream->control_sem
> > > -Modify goto label err_free_mem to kfree vchi_instance if vchi_connect
> > > fails; add label err_init to add debug log and return error value
> > > (pre-existing functionality)
> >
> > These changes appear to be completely unrelated.  There should be three
> > patches.
>
> These changes don't build upon each other, so they should be sent as
> three patches (and not a patchset) right?

For changes in the same file, Greg will prefer to have a series.  Then
there is no ambiguity about the order in which they should be applied.
For changes in separate files, just sending them separately is better.

julia

>
> >
> > julia
> >
> > >
> > > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > > ---
> > >  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c   | 8 ++------
> > >  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 9 ++++++---
> > >  2 files changed, 8 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> > > index d60d702..32b3793 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> > > @@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
> > >  	audio_info("Alsa open (%d)\n", substream->number);
> > >  	idx = substream->number;
> > >
> > > -	if (spdif && chip->opened) {
> > > -		err = -EBUSY;
> > > -		goto out;
> > > -	} else if (!spdif && (chip->opened & (1 << idx))) {
> > > +	if ((spdif && chip->opened) ||
> > > +	    (!spdif && (chip->opened & (1 << idx))))	{
> > >  		err = -EBUSY;
> > >  		goto out;
> > >  	}
> > > @@ -156,8 +154,6 @@ static int snd_bcm2835_playback_open_generic(
> > >  	alsa_stream->substream = substream;
> > >  	alsa_stream->idx = idx;
> > >
> > > -	sema_init(&alsa_stream->buffers_update_sem, 0);
> > > -	sema_init(&alsa_stream->control_sem, 0);
> > >  	spin_lock_init(&alsa_stream->lock);
> > >
> > >  	err = bcm2835_audio_open(alsa_stream);
> > > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > > index df1f3dd..557ba8e 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > > @@ -402,7 +402,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> > >  		instance->alsa_stream = alsa_stream;
> > >  		alsa_stream->instance = instance;
> > >  		ret = 0; // xxx todo -1;
> > > -		goto err_free_mem;
> > > +		goto err_init;
> > >  	}
> > >
> > >  	/* Initialize and create a VCHI connection */
> > > @@ -413,7 +413,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> > >  				__func__, ret);
> > >
> > >  			ret = -EIO;
> > > -			goto err_free_mem;
> > > +			goto err_init;
> > >  		}
> > >  		ret = vchi_connect(NULL, 0, vchi_instance);
> > >  		if (ret) {
> > > @@ -441,9 +441,12 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> > >
> > >  	LOG_DBG(" success !\n");
> > >  	ret = 0;
> > > +err_init:
> > > +	LOG_DBG(" .. OUT\n");
> > > +	return ret;
> > >  err_free_mem:
> > >  	LOG_DBG(" .. OUT\n");
> > > -
> > > +	kfree(vchi_instance);
> > >  	return ret;
> > >  }
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306051742.GA21192%40aishwarya.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306074212.GA19258%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

