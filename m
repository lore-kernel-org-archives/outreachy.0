X-GM-THRID: 6394401254530875392
X-Received: by 10.99.149.10 with SMTP id p10mr8387356pgd.77.1488865840733;
        Mon, 06 Mar 2017 21:50:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.119 with SMTP id 110ls16533667otc.44.gmail; Mon, 06 Mar
 2017 21:50:40 -0800 (PST)
X-Received: by 10.157.17.123 with SMTP id p56mr8746496otp.116.1488865840392;
        Mon, 06 Mar 2017 21:50:40 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 2si468981pfz.1.2017.03.06.21.50.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 21:50:40 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so19937719pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 21:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wRRCj9SgefFuBlZ8x8qNwIRzyGwseF1TKUjal9tYaR4=;
        b=VlynG6KvhgbHbS0obP8VxODpjD4obgoS+TFrAfIKCqo8zYZJ/Ikzegtgvt9fvoGuwI
         ca09QbnP357FLSIX0GEYloNE0CRBo4/ODutKmeAohspxqeJJJHAO07mox+GyN653siFr
         l/w5r5rGrR3hV9pMBp/d3fJt7YrlhqshrBHQSaI9gHCWkBMlZDlFZhs4fm4Tmqg8Zf9k
         EJ1G11Hyb2SwgmpcHunb6qaGOurGc2awJRLE1oIsRyN2pLiHLsKkCFwM7KMlUNhJByPg
         KFFOHn8abDKC7c9M4u5/eZ1C649oLrXQ177Fuzal+rc6Lxx8oMpDqFaCBl62NdcBluSw
         gkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wRRCj9SgefFuBlZ8x8qNwIRzyGwseF1TKUjal9tYaR4=;
        b=WsT1LvY1srEciMY38A1yZOC6u/jnhAsJbA9oysSruhPMHC91pICyS9FHityKdPB2CZ
         q++gYVMhaSeN2mF+aakOgn4p8g8ar+sd5pU0uzcq2WxSb1nl1t1wriOrwmeB14SEPDPT
         O7XtCAhHbCc6/61OK7jA8K6c/2ULauasnVlc6uSgJmaIj8UMi/5IDqrX4CMjy30IgMfH
         N0eMCm8WRaBYaZqmopf0DBHBjIMN1ZVbP/2CVrtVDDRmsE7SkwNOIX3NHnuNKccsO/5T
         sCNxewB7mmGpzun7jRnfnhY/UipBzN2ldrjlKcgxwyisWsR5ptGoSoh2Ad+IUOeEiLL8
         RFjw==
X-Gm-Message-State: AMke39mMr2sV01+E2a2zT3IHI3qlT//l+gE6wuPg1Fp0lBaWiVAjd4gBICdCnasj/h1aXA==
X-Received: by 10.99.114.6 with SMTP id n6mr25460557pgc.14.1488865839929;
        Mon, 06 Mar 2017 21:50:39 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id c124sm17382719pga.63.2017.03.06.21.50.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 21:50:39 -0800 (PST)
Date: Tue, 7 Mar 2017 11:20:34 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>,
	Eric Anholt <eric@anholt.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: bcm2835-audio: use
 conditional only for error case
Message-ID: <20170307055034.GA30995@aishwarya>
References: <cover.1488829304.git.aishpant@gmail.com>
 <b013f557b3bff6e4264bc9e6d1f7e502a8d1ac8c.1488829304.git.aishpant@gmail.com>
 <alpine.DEB.2.20.1703062236480.2172@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703062236480.2172@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 06, 2017 at 10:41:27PM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 7 Mar 2017, Aishwarya Pant wrote:
> 
> > This patch refactors conditional to check if memory allocation has
> > failed and immediately returns (-ENOMEM); the redundant if block for
> > success case is removed. The work functions now return the error value
> > -EBUSY instead of -1 when queue_work() fails.
> >
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> >
> > ---
> > Changes in v2:
> > 	- Return error value -EBUSY when queue_work fails
> 
> This is definitely an improvement.  Some opportunities for further
> improvement remain:
> 
> queue_work seems to fail in a very particular situation, which is
> mentioned in the definition of the function.  It could be good to make the
> error message more spcific.

Sure, will add error messages like failed to start/stop audio, write audio
bytes etc.

> 
> The code causes a memory leak if queue_work returns false.

Yes. kfree(work) needs to be done when queue_work is busy. One thing 
I noticed is that in the same file kfree((void *)work) has been used.
Both kfree(work) and kfree((void *)work) are valid as long as work is
not defined as const. kfree looks up the address and the memory actually 
keeps track of the size of allocation done by kmalloc, and that is how  
kfree knows how much to deallocate.

> 
> The IN and OUT debugging messages are probably not so useful.  The don't
> even say what function one is in or out of, and if that information is
> needed, it could be just added to the error messages in the failure cases
> (__func__).

The IN and OUT debug messages are present in every function of the file.
I'll keep them and add the current function name __func__

> 
> julia
> 
> >  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 70 +++++++++++-----------
> >  1 file changed, 35 insertions(+), 35 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > index c5f3be8..08f200f 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > @@ -131,77 +131,77 @@ static void my_wq_function(struct work_struct *work)
> >
> >  int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
> >  {
> > -	int ret = -1;
> > -
> >  	LOG_DBG(" .. IN\n");
> >  	if (alsa_stream->my_wq) {
> >  		struct bcm2835_audio_work *work;
> >
> >  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
> >  		/*--- Queue some work (item 1) ---*/
> > -		if (work) {
> > -			INIT_WORK(&work->my_work, my_wq_function);
> > -			work->alsa_stream = alsa_stream;
> > -			work->cmd = BCM2835_AUDIO_START;
> > -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> > -				ret = 0;
> > -		} else {
> > +		if (!work) {
> >  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> > +			return -ENOMEM;
> > +		}
> > +		INIT_WORK(&work->my_work, my_wq_function);
> > +		work->alsa_stream = alsa_stream;
> > +		work->cmd = BCM2835_AUDIO_START;
> > +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> > +			LOG_ERR(" .. Error: Unable to queue work\n");
> > +			return -EBUSY;
> >  		}
> >  	}
> > -	LOG_DBG(" .. OUT %d\n", ret);
> > -	return ret;
> > +	LOG_DBG(" .. OUT\n");
> > +	return 0;
> >  }
> >
> >  int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
> >  {
> > -	int ret = -1;
> > -
> >  	LOG_DBG(" .. IN\n");
> >  	if (alsa_stream->my_wq) {
> >  		struct bcm2835_audio_work *work;
> >
> >  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
> >  		/*--- Queue some work (item 1) ---*/
> > -		if (work) {
> > -			INIT_WORK(&work->my_work, my_wq_function);
> > -			work->alsa_stream = alsa_stream;
> > -			work->cmd = BCM2835_AUDIO_STOP;
> > -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> > -				ret = 0;
> > -		} else {
> > +		if (!work) {
> >  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> > +			return -ENOMEM;
> > +		}
> > +		INIT_WORK(&work->my_work, my_wq_function);
> > +		work->alsa_stream = alsa_stream;
> > +		work->cmd = BCM2835_AUDIO_STOP;
> > +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> > +			LOG_ERR(" .. Error: Unable to queue work\n");
> > +			return -EBUSY;
> >  		}
> >  	}
> > -	LOG_DBG(" .. OUT %d\n", ret);
> > -	return ret;
> > +	LOG_DBG(" .. OUT\n");
> > +	return 0;
> >  }
> >
> >  int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
> >  			unsigned int count, void *src)
> >  {
> > -	int ret = -1;
> > -
> >  	LOG_DBG(" .. IN\n");
> >  	if (alsa_stream->my_wq) {
> >  		struct bcm2835_audio_work *work;
> >
> >  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
> >  		/*--- Queue some work (item 1) ---*/
> > -		if (work) {
> > -			INIT_WORK(&work->my_work, my_wq_function);
> > -			work->alsa_stream = alsa_stream;
> > -			work->cmd = BCM2835_AUDIO_WRITE;
> > -			work->src = src;
> > -			work->count = count;
> > -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> > -				ret = 0;
> > -		} else {
> > +		if (!work) {
> >  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> > +			return -ENOMEM;
> > +		}
> > +		INIT_WORK(&work->my_work, my_wq_function);
> > +		work->alsa_stream = alsa_stream;
> > +		work->cmd = BCM2835_AUDIO_WRITE;
> > +		work->src = src;
> > +		work->count = count;
> > +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> > +			LOG_ERR(" .. Error: Unable to queue work\n");
> > +			return -EBUSY;
> >  		}
> >  	}
> > -	LOG_DBG(" .. OUT %d\n", ret);
> > -	return ret;
> > +	LOG_DBG(" .. OUT\n");
> > +	return 0;
> >  }
> >
> >  static void my_workqueue_init(struct bcm2835_alsa_stream *alsa_stream)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b013f557b3bff6e4264bc9e6d1f7e502a8d1ac8c.1488829304.git.aishpant%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

