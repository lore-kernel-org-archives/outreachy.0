X-GM-THRID: 6394250573317668864
X-Received: by 10.107.178.15 with SMTP id b15mr5796326iof.93.1488786143971;
        Sun, 05 Mar 2017 23:42:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.119 with SMTP id a110ls2395751otc.29.gmail; Sun, 05 Mar
 2017 23:42:23 -0800 (PST)
X-Received: by 10.157.82.157 with SMTP id f29mr6248320oth.114.1488786143208;
        Sun, 05 Mar 2017 23:42:23 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 207si1246123pfu.8.2017.03.05.23.42.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 23:42:23 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so16798383pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 23:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3QlekrJw5tiK9eG3vRRQfTshLuoGxTzIqRyoeqh1dCY=;
        b=jrLbp6a/kUnbvm2nE+5bb3S/2ZgK7G4j6w0SVnGboUbSQcUcacUpiJaM9EdyzO3Tte
         KstDpYEAJ35uvN2ukFex4E4spgvQT9sws3FU5PCnA5TEnKZgIvD4ZZ4IidQ1cDjXbzV0
         dCtq4RfuGs65Z1P0PiqxusM3TiFy489hEG9krW9N8l71CLa7S/vMZPwJ9gNxi3ZKcWXi
         cKXcdL1mfzgaTGecGyk8kzDg3u9BsC7SLGjh8nUPCGjYA+jxOOFc1J5oqQyJGsVX4/md
         UAio6Y2p7nCl+52rOxfGKUL8zyPzQK9NIa15RT03CRorFyPR0+YM+XjED2IocA8Z3JIC
         yGJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3QlekrJw5tiK9eG3vRRQfTshLuoGxTzIqRyoeqh1dCY=;
        b=AJDTam1uTEyMnVHccyjt+RWVPOgKmWaKi69HxjNqUv+e7V8wIZav4a3Z3quZEXgnMd
         P9h7vL543UNVTMg7iIt1i5/QiBobZjhuEaiTl6SH0CS6ZpwrUVdCyAqk0xWejMOl2Ibi
         PWLvdvgehZc9snuOYzZ0Pniqx/KjhPVJ23DizDqx4Sr+WHlMjYJilatmCSaugFzXwzSZ
         TsmGz1V0ib4l2Rh88GLDJ0dZjI5SVMVoPCmpnut1elDLITuSph4Ax9NxI9/GR+hLAIVs
         8wYyy1r7FUIe+oZ4a/VQVifNM1JFH28umGYFdp/AYwRN7z2e6iH0LhE/T9WTukEo+zTe
         HAoA==
X-Gm-Message-State: AMke39kyzeNTN7tHaIXc/c5+KWDIVnQ6nOi/4+2Z+bRiBjuYwQdt6Cj+uGLDdCsIB7Yy+Q==
X-Received: by 10.98.198.78 with SMTP id m75mr14952383pfg.160.1488786142903;
        Sun, 05 Mar 2017 23:42:22 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.134.163])
        by smtp.gmail.com with ESMTPSA id s20sm37394505pfg.11.2017.03.05.23.42.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 23:42:22 -0800 (PST)
Date: Mon, 6 Mar 2017 13:12:12 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: bcm2835-audio: refactor code
Message-ID: <20170306074212.GA19258@aishwarya>
References: <20170306051742.GA21192@aishwarya>
 <alpine.DEB.2.20.1703060741300.2259@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703060741300.2259@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 06, 2017 at 07:41:53AM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 6 Mar 2017, Aishwarya Pant wrote:
> 
> > This patch contains the following fixes:
> > -Merge two if conditions into one
> > -Remove initialization of unused semaphores
> > alsa_stream->buffers_update_sem and alsa_stream->control_sem
> > -Modify goto label err_free_mem to kfree vchi_instance if vchi_connect
> > fails; add label err_init to add debug log and return error value
> > (pre-existing functionality)
> 
> These changes appear to be completely unrelated.  There should be three
> patches.

These changes don't build upon each other, so they should be sent as
three patches (and not a patchset) right?

> 
> julia
> 
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c   | 8 ++------
> >  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 9 ++++++---
> >  2 files changed, 8 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> > index d60d702..32b3793 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> > @@ -122,10 +122,8 @@ static int snd_bcm2835_playback_open_generic(
> >  	audio_info("Alsa open (%d)\n", substream->number);
> >  	idx = substream->number;
> >
> > -	if (spdif && chip->opened) {
> > -		err = -EBUSY;
> > -		goto out;
> > -	} else if (!spdif && (chip->opened & (1 << idx))) {
> > +	if ((spdif && chip->opened) ||
> > +	    (!spdif && (chip->opened & (1 << idx))))	{
> >  		err = -EBUSY;
> >  		goto out;
> >  	}
> > @@ -156,8 +154,6 @@ static int snd_bcm2835_playback_open_generic(
> >  	alsa_stream->substream = substream;
> >  	alsa_stream->idx = idx;
> >
> > -	sema_init(&alsa_stream->buffers_update_sem, 0);
> > -	sema_init(&alsa_stream->control_sem, 0);
> >  	spin_lock_init(&alsa_stream->lock);
> >
> >  	err = bcm2835_audio_open(alsa_stream);
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > index df1f3dd..557ba8e 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > @@ -402,7 +402,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> >  		instance->alsa_stream = alsa_stream;
> >  		alsa_stream->instance = instance;
> >  		ret = 0; // xxx todo -1;
> > -		goto err_free_mem;
> > +		goto err_init;
> >  	}
> >
> >  	/* Initialize and create a VCHI connection */
> > @@ -413,7 +413,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> >  				__func__, ret);
> >
> >  			ret = -EIO;
> > -			goto err_free_mem;
> > +			goto err_init;
> >  		}
> >  		ret = vchi_connect(NULL, 0, vchi_instance);
> >  		if (ret) {
> > @@ -441,9 +441,12 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> >
> >  	LOG_DBG(" success !\n");
> >  	ret = 0;
> > +err_init:
> > +	LOG_DBG(" .. OUT\n");
> > +	return ret;
> >  err_free_mem:
> >  	LOG_DBG(" .. OUT\n");
> > -
> > +	kfree(vchi_instance);
> >  	return ret;
> >  }
> >
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170306051742.GA21192%40aishwarya.
> > For more options, visit https://groups.google.com/d/optout.
> >

