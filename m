X-GM-THRID: 6201143102107811840
X-Received: by 10.112.54.197 with SMTP id l5mr3351320lbp.21.1443859904570;
        Sat, 03 Oct 2015 01:11:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.184.166 with SMTP id ev6ls530877wic.28.canary; Sat, 03 Oct
 2015 01:11:44 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr327446wic.4.1443859904150;
        Sat, 03 Oct 2015 01:11:44 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si59003wiy.3.2015.10.03.01.11.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 01:11:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,627,1437429600"; 
   d="scan'208";a="180822198"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Oct 2015 10:11:21 +0200
Date: Sat, 3 Oct 2015 10:11:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] Staging: comedi: Use mutex
 instead of semaphore in usbdux.c
In-Reply-To: <cfec30d2021f3462908802a6fe8cbb46cefe213b.1443815181.git.ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.02.1510031010520.2022@localhost6.localdomain6>
References: <cover.1443815181.git.ksenija.stanojevic@gmail.com> <cfec30d2021f3462908802a6fe8cbb46cefe213b.1443815181.git.ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 2 Oct 2015, Ksenija Stanojevic wrote:

> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of semaphore
> is also the one that increments it, and acts like a mutex where owner of the
> lock is the only one that can release the lock.

Very nice commit message.

julia

> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> Changes in v2:
> 	-change subject line and commit message
> 
>  drivers/staging/comedi/drivers/usbdux.c | 64 ++++++++++++++++-----------------
>  1 file changed, 32 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
> index 39710f2..f4f05d2 100644
> --- a/drivers/staging/comedi/drivers/usbdux.c
> +++ b/drivers/staging/comedi/drivers/usbdux.c
> @@ -210,7 +210,7 @@ struct usbdux_private {
>  	unsigned int ai_interval;
>  	/* commands */
>  	u8 *dux_commands;
> -	struct semaphore sem;
> +	struct mutex mut;
>  };
>  
>  static void usbdux_unlink_urbs(struct urb **urbs, int num_urbs)
> @@ -237,10 +237,10 @@ static int usbdux_ai_cancel(struct comedi_device *dev,
>  	struct usbdux_private *devpriv = dev->private;
>  
>  	/* prevent other CPUs from submitting new commands just now */
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  	/* unlink only if the urb really has been submitted */
>  	usbdux_ai_stop(dev, devpriv->ai_cmd_running);
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return 0;
>  }
> @@ -365,10 +365,10 @@ static int usbdux_ao_cancel(struct comedi_device *dev,
>  	struct usbdux_private *devpriv = dev->private;
>  
>  	/* prevent other CPUs from submitting a command just now */
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  	/* unlink only if it is really running */
>  	usbdux_ao_stop(dev, devpriv->ao_cmd_running);
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return 0;
>  }
> @@ -646,7 +646,7 @@ static int usbdux_ai_inttrig(struct comedi_device *dev,
>  	if (trig_num != cmd->start_arg)
>  		return -EINVAL;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (!devpriv->ai_cmd_running) {
>  		devpriv->ai_cmd_running = 1;
> @@ -662,7 +662,7 @@ static int usbdux_ai_inttrig(struct comedi_device *dev,
>  	}
>  
>  ai_trig_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  	return ret;
>  }
>  
> @@ -675,7 +675,7 @@ static int usbdux_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  	int i;
>  
>  	/* block other CPUs from starting an ai_cmd */
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (devpriv->ai_cmd_running)
>  		goto ai_cmd_exit;
> @@ -736,7 +736,7 @@ static int usbdux_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  	}
>  
>  ai_cmd_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -754,7 +754,7 @@ static int usbdux_ai_insn_read(struct comedi_device *dev,
>  	int ret = -EBUSY;
>  	int i;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (devpriv->ai_cmd_running)
>  		goto ai_read_exit;
> @@ -782,7 +782,7 @@ static int usbdux_ai_insn_read(struct comedi_device *dev,
>  	}
>  
>  ai_read_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret ? ret : insn->n;
>  }
> @@ -795,9 +795,9 @@ static int usbdux_ao_insn_read(struct comedi_device *dev,
>  	struct usbdux_private *devpriv = dev->private;
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
> @@ -814,7 +814,7 @@ static int usbdux_ao_insn_write(struct comedi_device *dev,
>  	int ret = -EBUSY;
>  	int i;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (devpriv->ao_cmd_running)
>  		goto ao_write_exit;
> @@ -838,7 +838,7 @@ static int usbdux_ao_insn_write(struct comedi_device *dev,
>  	}
>  
>  ao_write_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret ? ret : insn->n;
>  }
> @@ -854,7 +854,7 @@ static int usbdux_ao_inttrig(struct comedi_device *dev,
>  	if (trig_num != cmd->start_arg)
>  		return -EINVAL;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (!devpriv->ao_cmd_running) {
>  		devpriv->ao_cmd_running = 1;
> @@ -870,7 +870,7 @@ static int usbdux_ao_inttrig(struct comedi_device *dev,
>  	}
>  
>  ao_trig_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  	return ret;
>  }
>  
> @@ -960,7 +960,7 @@ static int usbdux_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  	struct comedi_cmd *cmd = &s->async->cmd;
>  	int ret = -EBUSY;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (devpriv->ao_cmd_running)
>  		goto ao_cmd_exit;
> @@ -1002,7 +1002,7 @@ static int usbdux_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
>  	}
>  
>  ao_cmd_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -1033,7 +1033,7 @@ static int usbdux_dio_insn_bits(struct comedi_device *dev,
>  	struct usbdux_private *devpriv = dev->private;
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	comedi_dio_update_state(s, data);
>  
> @@ -1055,7 +1055,7 @@ static int usbdux_dio_insn_bits(struct comedi_device *dev,
>  	data[1] = le16_to_cpu(devpriv->insn_buf[1]);
>  
>  dio_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret ? ret : insn->n;
>  }
> @@ -1070,7 +1070,7 @@ static int usbdux_counter_read(struct comedi_device *dev,
>  	int ret = 0;
>  	int i;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	for (i = 0; i < insn->n; i++) {
>  		ret = send_dux_commands(dev, USBDUX_CMD_TIMER_RD);
> @@ -1084,7 +1084,7 @@ static int usbdux_counter_read(struct comedi_device *dev,
>  	}
>  
>  counter_read_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret ? ret : insn->n;
>  }
> @@ -1100,7 +1100,7 @@ static int usbdux_counter_write(struct comedi_device *dev,
>  	int ret = 0;
>  	int i;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	devpriv->dux_commands[1] = chan;
>  
> @@ -1112,7 +1112,7 @@ static int usbdux_counter_write(struct comedi_device *dev,
>  			break;
>  	}
>  
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret ? ret : insn->n;
>  }
> @@ -1148,11 +1148,11 @@ static int usbdux_pwm_cancel(struct comedi_device *dev,
>  	struct usbdux_private *devpriv = dev->private;
>  	int ret;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  	/* unlink only if it is really running */
>  	usbdux_pwm_stop(dev, devpriv->pwm_cmd_running);
>  	ret = send_dux_commands(dev, USBDUX_CMD_PWM_OFF);
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -1257,7 +1257,7 @@ static int usbdux_pwm_start(struct comedi_device *dev,
>  	struct usbdux_private *devpriv = dev->private;
>  	int ret = 0;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	if (devpriv->pwm_cmd_running)
>  		goto pwm_start_exit;
> @@ -1276,7 +1276,7 @@ static int usbdux_pwm_start(struct comedi_device *dev,
>  		devpriv->pwm_cmd_running = 0;
>  
>  pwm_start_exit:
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  
>  	return ret;
>  }
> @@ -1576,7 +1576,7 @@ static int usbdux_auto_attach(struct comedi_device *dev,
>  	if (!devpriv)
>  		return -ENOMEM;
>  
> -	sema_init(&devpriv->sem, 1);
> +	mutex_init(&devpriv->mut);
>  
>  	usb_set_intfdata(intf, devpriv);
>  
> @@ -1691,7 +1691,7 @@ static void usbdux_detach(struct comedi_device *dev)
>  	if (!devpriv)
>  		return;
>  
> -	down(&devpriv->sem);
> +	mutex_lock(&devpriv->mut);
>  
>  	/* force unlink all urbs */
>  	usbdux_pwm_stop(dev, 1);
> @@ -1700,7 +1700,7 @@ static void usbdux_detach(struct comedi_device *dev)
>  
>  	usbdux_free_usb_buffers(dev);
>  
> -	up(&devpriv->sem);
> +	mutex_unlock(&devpriv->mut);
>  }
>  
>  static struct comedi_driver usbdux_driver = {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cfec30d2021f3462908802a6fe8cbb46cefe213b.1443815181.git.ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

