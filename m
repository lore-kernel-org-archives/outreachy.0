X-GM-THRID: 6200385233952440320
X-Received: by 10.180.35.132 with SMTP id h4mr5110077wij.5.1443649339651;
        Wed, 30 Sep 2015 14:42:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.106 with SMTP id w10ls8448wiz.53.canary; Wed, 30 Sep
 2015 14:42:19 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr888862wjb.5.1443649339327;
        Wed, 30 Sep 2015 14:42:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k7si14838wif.1.2015.09.30.14.42.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 14:42:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,614,1437429600"; 
   d="scan'208";a="180288693"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2015 23:42:18 +0200
Date: Wed, 30 Sep 2015 23:42:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use mutex instead
 of semaphore
In-Reply-To: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1509302341570.1977@localhost6.localdomain6>
References: <1443639675-18965-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 30 Sep 2015, Ksenija Stanojevic wrote:

> Replace binary semaphore with mutex because mutex gives better performance
> than binary semaphore.

Nice :)  I didn't even realize that down and up were still used...

julia

> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt9812.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/dt9812.c b/drivers/staging/comedi/drivers/dt9812.c
> index e11c216..7d309f9 100644
> --- a/drivers/staging/comedi/drivers/dt9812.c
> +++ b/drivers/staging/comedi/drivers/dt9812.c
> @@ -233,7 +233,7 @@ struct dt9812_usb_cmd {
>  };
>  
>  struct dt9812_private {
> -	struct semaphore sem;
> +	struct mutex mut;
>  	struct {
>  		__u8 addr;
>  		size_t size;
> @@ -335,7 +335,7 @@ static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
>  	u8 value[2];
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  	ret = dt9812_read_multiple_registers(dev, 2, reg, value);
>  	if (ret == 0) {
>  		/*
> @@ -345,7 +345,7 @@ static int dt9812_digital_in(struct comedi_device *dev, u8 *bits)
>  		 */
>  		*bits = (value[0] & 0x7f) | ((value[1] & 0x08) << 4);
>  	}
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -357,9 +357,9 @@ static int dt9812_digital_out(struct comedi_device *dev, u8 bits)
>  	u8 value[1] = { bits };
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  	ret = dt9812_write_multiple_registers(dev, 1, reg, value);
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -444,7 +444,7 @@ static int dt9812_analog_in(struct comedi_device *dev,
>  	u8 val[3];
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	/* 1 select the gain */
>  	dt9812_configure_gain(dev, &rmw[0], gain);
> @@ -493,7 +493,7 @@ static int dt9812_analog_in(struct comedi_device *dev,
>  	}
>  
>  exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -504,7 +504,7 @@ static int dt9812_analog_out(struct comedi_device *dev, int channel, u16 value)
>  	struct dt9812_rmw_byte rmw[3];
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	switch (channel) {
>  	case 0:
> @@ -545,7 +545,7 @@ static int dt9812_analog_out(struct comedi_device *dev, int channel, u16 value)
>  	}
>  	ret = dt9812_rmw_multiple_registers(dev, 3, rmw);
>  
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -608,9 +608,9 @@ static int dt9812_ao_insn_read(struct comedi_device *dev,
>  	struct dt9812_private *devpriv = dev->private;
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  	ret = comedi_readback_insn_read(dev, s, insn, data);
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -774,7 +774,7 @@ static int dt9812_auto_attach(struct comedi_device *dev,
>  	if (!devpriv)
>  		return -ENOMEM;
>  
> -	sema_init(&devpriv->sem, 1);
> +	mutex_init(&devpriv->mut);
>  	usb_set_intfdata(intf, devpriv);
>  
>  	ret = dt9812_find_endpoints(dev);
> @@ -846,11 +846,11 @@ static void dt9812_detach(struct comedi_device *dev)
>  	if (!devpriv)
>  		return;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	usb_set_intfdata(intf, NULL);
>  
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  }
>  
>  static struct comedi_driver dt9812_driver = {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1443639675-18965-1-git-send-email-ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

