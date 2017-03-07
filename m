X-GM-THRID: 6394401254530875392
X-Received: by 10.46.22.68 with SMTP id 4mr3050787ljw.14.1488868310344;
        Mon, 06 Mar 2017 22:31:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.26 with SMTP id y26ls1652203lja.2.gmail; Mon, 06 Mar
 2017 22:31:49 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr3017307ljv.0.1488868309262;
        Mon, 06 Mar 2017 22:31:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si1517472wmd.0.2017.03.06.22.31.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 22:31:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,257,1484002800"; 
   d="scan'208";a="263424118"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 07:31:48 +0100
Date: Tue, 7 Mar 2017 07:31:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Stephen Warren <swarren@wwwdotorg.org>, Lee Jones <lee@kernel.org>, 
    Eric Anholt <eric@anholt.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: bcm2835-audio: use
 conditional only for error case
In-Reply-To: <20170307055034.GA30995@aishwarya>
Message-ID: <alpine.DEB.2.20.1703070729270.2098@hadrien>
References: <cover.1488829304.git.aishpant@gmail.com> <b013f557b3bff6e4264bc9e6d1f7e502a8d1ac8c.1488829304.git.aishpant@gmail.com> <alpine.DEB.2.20.1703062236480.2172@hadrien> <20170307055034.GA30995@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Aishwarya Pant wrote:

> On Mon, Mar 06, 2017 at 10:41:27PM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 7 Mar 2017, Aishwarya Pant wrote:
> >
> > > This patch refactors conditional to check if memory allocation has
> > > failed and immediately returns (-ENOMEM); the redundant if block for
> > > success case is removed. The work functions now return the error value
> > > -EBUSY instead of -1 when queue_work() fails.
> > >
> > > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> > >
> > > ---
> > > Changes in v2:
> > > 	- Return error value -EBUSY when queue_work fails
> >
> > This is definitely an improvement.  Some opportunities for further
> > improvement remain:
> >
> > queue_work seems to fail in a very particular situation, which is
> > mentioned in the definition of the function.  It could be good to make the
> > error message more spcific.
>
> Sure, will add error messages like failed to start/stop audio, write audio
> bytes etc.
>
> >
> > The code causes a memory leak if queue_work returns false.
>
> Yes. kfree(work) needs to be done when queue_work is busy. One thing
> I noticed is that in the same file kfree((void *)work) has been used.
> Both kfree(work) and kfree((void *)work) are valid as long as work is
> not defined as const. kfree looks up the address and the memory actually
> keeps track of the size of allocation done by kmalloc, and that is how
> kfree knows how much to deallocate.
> >
> > The IN and OUT debugging messages are probably not so useful.  The don't
> > even say what function one is in or out of, and if that information is
> > needed, it could be just added to the error messages in the failure cases
> > (__func__).
>
> The IN and OUT debug messages are present in every function of the file.
> I'll keep them and add the current function name __func__

Probably not worth it.  They should probably all go, but you may want to
leave that for someone else to do.

julia

>
> >
> > julia
> >
> > >  .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 70 +++++++++++-----------
> > >  1 file changed, 35 insertions(+), 35 deletions(-)
> > >
> > > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > > index c5f3be8..08f200f 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > > @@ -131,77 +131,77 @@ static void my_wq_function(struct work_struct *work)
> > >
> > >  int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
> > >  {
> > > -	int ret = -1;
> > > -
> > >  	LOG_DBG(" .. IN\n");
> > >  	if (alsa_stream->my_wq) {
> > >  		struct bcm2835_audio_work *work;
> > >
> > >  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
> > >  		/*--- Queue some work (item 1) ---*/
> > > -		if (work) {
> > > -			INIT_WORK(&work->my_work, my_wq_function);
> > > -			work->alsa_stream = alsa_stream;
> > > -			work->cmd = BCM2835_AUDIO_START;
> > > -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> > > -				ret = 0;
> > > -		} else {
> > > +		if (!work) {
> > >  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> > > +			return -ENOMEM;
> > > +		}
> > > +		INIT_WORK(&work->my_work, my_wq_function);
> > > +		work->alsa_stream = alsa_stream;
> > > +		work->cmd = BCM2835_AUDIO_START;
> > > +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> > > +			LOG_ERR(" .. Error: Unable to queue work\n");
> > > +			return -EBUSY;
> > >  		}
> > >  	}
> > > -	LOG_DBG(" .. OUT %d\n", ret);
> > > -	return ret;
> > > +	LOG_DBG(" .. OUT\n");
> > > +	return 0;
> > >  }
> > >
> > >  int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
> > >  {
> > > -	int ret = -1;
> > > -
> > >  	LOG_DBG(" .. IN\n");
> > >  	if (alsa_stream->my_wq) {
> > >  		struct bcm2835_audio_work *work;
> > >
> > >  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
> > >  		/*--- Queue some work (item 1) ---*/
> > > -		if (work) {
> > > -			INIT_WORK(&work->my_work, my_wq_function);
> > > -			work->alsa_stream = alsa_stream;
> > > -			work->cmd = BCM2835_AUDIO_STOP;
> > > -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> > > -				ret = 0;
> > > -		} else {
> > > +		if (!work) {
> > >  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> > > +			return -ENOMEM;
> > > +		}
> > > +		INIT_WORK(&work->my_work, my_wq_function);
> > > +		work->alsa_stream = alsa_stream;
> > > +		work->cmd = BCM2835_AUDIO_STOP;
> > > +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> > > +			LOG_ERR(" .. Error: Unable to queue work\n");
> > > +			return -EBUSY;
> > >  		}
> > >  	}
> > > -	LOG_DBG(" .. OUT %d\n", ret);
> > > -	return ret;
> > > +	LOG_DBG(" .. OUT\n");
> > > +	return 0;
> > >  }
> > >
> > >  int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
> > >  			unsigned int count, void *src)
> > >  {
> > > -	int ret = -1;
> > > -
> > >  	LOG_DBG(" .. IN\n");
> > >  	if (alsa_stream->my_wq) {
> > >  		struct bcm2835_audio_work *work;
> > >
> > >  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
> > >  		/*--- Queue some work (item 1) ---*/
> > > -		if (work) {
> > > -			INIT_WORK(&work->my_work, my_wq_function);
> > > -			work->alsa_stream = alsa_stream;
> > > -			work->cmd = BCM2835_AUDIO_WRITE;
> > > -			work->src = src;
> > > -			work->count = count;
> > > -			if (queue_work(alsa_stream->my_wq, &work->my_work))
> > > -				ret = 0;
> > > -		} else {
> > > +		if (!work) {
> > >  			LOG_ERR(" .. Error: NULL work kmalloc\n");
> > > +			return -ENOMEM;
> > > +		}
> > > +		INIT_WORK(&work->my_work, my_wq_function);
> > > +		work->alsa_stream = alsa_stream;
> > > +		work->cmd = BCM2835_AUDIO_WRITE;
> > > +		work->src = src;
> > > +		work->count = count;
> > > +		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
> > > +			LOG_ERR(" .. Error: Unable to queue work\n");
> > > +			return -EBUSY;
> > >  		}
> > >  	}
> > > -	LOG_DBG(" .. OUT %d\n", ret);
> > > -	return ret;
> > > +	LOG_DBG(" .. OUT\n");
> > > +	return 0;
> > >  }
> > >
> > >  static void my_workqueue_init(struct bcm2835_alsa_stream *alsa_stream)
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b013f557b3bff6e4264bc9e6d1f7e502a8d1ac8c.1488829304.git.aishpant%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307055034.GA30995%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

