X-GM-THRID: 6395446243166781440
X-Received: by 10.99.164.9 with SMTP id c9mr6471085pgf.4.1489084504637;
        Thu, 09 Mar 2017 10:35:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.194 with SMTP id 185ls2049602iof.19.gmail; Thu, 09 Mar
 2017 10:35:03 -0800 (PST)
X-Received: by 10.99.36.131 with SMTP id k125mr6297725pgk.25.1489084503619;
        Thu, 09 Mar 2017 10:35:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y203si990498pfb.0.2017.03.09.10.35.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so8120733pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 10:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=syZ8jwG7kYfdF4GUqY2tyKOp7agq6wqQAYG9sL2Ogls=;
        b=kXGq/ofXIe3kPS5YTHMvYlh6p8x5PBFkLK3BVvwq2uAwaw1aLUXoU6lzLoYXhUXWxV
         Yswu8haRt+C5TQYLBV1Xg96F65iGmIEd8Glt2mAc9CmVNsznstWEYC10oqHQBcO5x28G
         imanzwyQYoIDFIwI1pmcsj/qwRy5juivVfjQwhwI/xWKMdp8BC3JHNyJKyA2gaKu46YF
         uRN5Gr4AFVVZ72jZoYsmiGGcCSj/G/JZxkPmuctGH37MAzePzddlDfH6h5TmT3PiTt0V
         t2GkBR9L+hQryXiTfIRzLKM3E2hzXMHwu0rXNOxlDtSJRJ4V7z1S4SyiykxO5AVBhorq
         BsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=syZ8jwG7kYfdF4GUqY2tyKOp7agq6wqQAYG9sL2Ogls=;
        b=OwwfCocy7irDglqLJQs5bO5x3yF4ai21Pl1gYHimEty5zvBNN1sQ44oK2GsSdBeG6v
         dwefjgQTPBS0Ed69QnHuwrIE9XIE8rMOMc8ZL0GyYLEK7r4h/K5hQmSDnp/ekPG4a0IF
         aUp669OqkQIrGY9LVX1rsSEP15RZgBtmkVhkl/NOy1CxvVRtAWLL4v3etiVjpImTbKFQ
         T/MGijbDfg5U5Ibw/i+LF3RlhmB+Mu4qGxWhwni27u2ol3gqkbFGFB5cmG5uJNaTRNXj
         15EcwCOTg1HskaeyueFBCrHuoNsQY8akBeEHwrhwbG9G3cjZqiDenTaKWeyHNcvyos2N
         dP+A==
X-Gm-Message-State: AMke39kM1xmwhKFln/+sexql3p2P9l+CCwtWsocLjMsL0uEV8hzf/n3jvpbL8ff7KBGgZg==
X-Received: by 10.98.13.197 with SMTP id 66mr15731633pfn.91.1489084503299;
        Thu, 09 Mar 2017 10:35:03 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.243.15])
        by smtp.gmail.com with ESMTPSA id t6sm14014682pgt.8.2017.03.09.10.34.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:35:02 -0800 (PST)
Date: Fri, 10 Mar 2017 00:04:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v5 2/7] staging: bcm2835-audio:
 replace null with error pointer value
Message-ID: <20170309183432.GA15683@aishwarya>
References: <cover.1489055580.git.aishpant@gmail.com>
 <cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1489055580.git.aishpant@gmail.com>
 <alpine.DEB.2.20.1703091418370.3186@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703091418370.3186@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Mar 09, 2017 at 02:24:08PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 9 Mar 2017, Aishwarya Pant wrote:
> 
> > This patch replaces NULL values returned by vc_vchi_audio_init(...) with
> > error pointer values:
> > 	- Return ERR_PTR(-EINVAL) when too many instances of audio
> > 	  service are initialised
> > 	- Return ERR_PTR(-ENOMEM) when kzalloc fails
> > 	- RETURN ERR_PTR(-EPERM) when vchi connections fail to open
> >
> > Similarly, a NULL check where vc_vchi_audio_init(...) is called is
> > replaced by IS_ERR(..)
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > index 005e287..d2686b4 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > @@ -287,12 +287,12 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
> >  		LOG_ERR("%s: unsupported number of connections %u (max=%u)\n",
> >  			__func__, num_connections, VCHI_MAX_NUM_CONNECTIONS);
> >
> > -		return NULL;
> > +		return ERR_PTR(-EINVAL);
> >  	}
> >  	/* Allocate memory for this instance */
> >  	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
> >  	if (!instance)
> > -		return NULL;
> > +		return ERR_PTR(-ENOMEM);
> >
> >  	instance->num_connections = num_connections;
> >
> > @@ -341,7 +341,7 @@ vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
> >  	kfree(instance);
> >  	LOG_ERR("%s: error\n", __func__);
> >
> > -	return NULL;
> > +	return ERR_PTR(-EPERM);
> 
> I find it a bit odd to have -EPERM hard coded at the end of the function.
> If the function becomes more complicated, this code could end up being
> shared.  In that case, different exits would have different codes.  Also,
> ultimately the code should come from the result of vchi_service_open,
> although that is not suitable now.
> 
> How about adding status = -EPERM just before the goto, and the putting
> return ERR_PTR(status) at the end of the function?

Yes that sounds fair.

> 
> By the way, I found that having all the LOG_DBG lines made the code really
> hard to follow.  Maybe it could be possible to just remove them.
> 

The LOG_DBG / LOG_ERR messages here are a wrapper of pr_err / pr_dbg
appended with the current function names and line numbers. So I am
taking a guess they are useful as long as the driver is in staging.

> Another suggestion on this particular function is to do something about
> this declaration:
> 
>                 SERVICE_CREATION_T params = {
>                         VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
>                         VC_AUDIO_SERVER_NAME, // 4cc service code
>                         vchi_connections[i], // passed in fn pointers
>                         0, // rx fifo size (unused)
>                         0, // tx fifo size (unused)
>                         audio_vchi_callback, // service callback
>                         instance, // service callback parameter
>                         1, //TODO: remove VCOS_FALSE,   // unaligned bulk receives
>                         1, //TODO: remove VCOS_FALSE,   // unaligned bulk transmits
>                         0 // want crc check on bulk transfers
>                 };
> 
> The typedef needs to go, the fields should be initialied using their names
> (.x = e) and the comments should be dropped.
> 

All-right I'll give this a go. The vchi_services driver is sprinkled
with typedefs.

> julia
> 
> >  }
> >
> >  static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
> > @@ -432,7 +432,7 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
> >  	/* Initialize an instance of the audio service */
> >  	instance = vc_vchi_audio_init(vchi_instance, &vchi_connection, 1);
> >
> > -	if (!instance) {
> > +	if (IS_ERR(instance)) {
> >  		LOG_ERR("%s: failed to initialize audio service\n", __func__);
> >
> >  		ret = -EPERM;
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cc9cc8c7a3576a9d556815fd9f57ca58338abb01.1489055580.git.aishpant%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

