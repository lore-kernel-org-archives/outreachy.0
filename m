X-GM-THRID: 6394401254530875392
X-Received: by 10.157.23.43 with SMTP id i43mr4674662ota.118.1489054629587;
        Thu, 09 Mar 2017 02:17:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.204 with SMTP id h195ls1664458ioe.3.gmail; Thu, 09 Mar
 2017 02:17:08 -0800 (PST)
X-Received: by 10.107.29.207 with SMTP id d198mr3935004iod.28.1489054628919;
        Thu, 09 Mar 2017 02:17:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si1124657pfb.2.2017.03.09.02.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id b5so6388545pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 02:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GpZGM4/S1r2JuU0b7WboFdpODgg8kjyM+qJupiUgLEM=;
        b=fgba4nJQ7JGzlTzsFcfeun4vgIKRIzhOrH3ZSDScaX+qynC+G0XSGruPfc8qIDln8t
         YBGuhZm8isB84l0OyucrlxS6rb9IXAfl4G5K+TNzHk9nz+fGh+LBDofbvsWjbgGbByfa
         Sq8zYWCzw6lhrE1VlOoO8bYKSjCIiZXlgADBCkJk+n8Chko2eHZTYKcjWhYKfBrSiePZ
         4O0qFVbnE3QX3LhAEXyCqxlkEIAoTls/74zCh51M0Tk/J9x0cek7rO0Cmewb3RIQpcrQ
         Mnd46ccabavd7Orfxij9PqbASEQhaon4mjK8XF91nBkpmejpE26tsITpXcwy3L70jfwE
         UKBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GpZGM4/S1r2JuU0b7WboFdpODgg8kjyM+qJupiUgLEM=;
        b=d7/ofY91Xa72Rro2Usiiq1NAwb3fTA1SjDnRZdylaxw9ogQxPUMmWklpHqUNtR1oVU
         /XL8KQFkB9LvP3TZAtLi1tyLoqs1EJwjgRfXk/fiawfkGjIHUhEXhRZapzkyXVbg9/YX
         mAg5D61k+RI25WfBV49ySYfhFsc2LewkkEmI+uUxEXoP0yuBM5KUoXDkr3aHznXKMWgV
         zjcVcv/uK/I+RhhJ042R5E/azX57vSFf5VD5lBgLvUgWAkQZnP7kO5omwGvkhMCFj24S
         eeNM9s87QcHeHwTc86KaIzfx6qUvsgth4zPb02Jm4dpXQFekDXYZ2qXXVWiKuG4PC+9p
         vCIw==
X-Gm-Message-State: AMke39n17pV62gSccZlDLl9Hx2waW5RM5h/pri0aVfuObMguUGGL1X5dcwwIQEBsBEjNVQ==
X-Received: by 10.98.60.20 with SMTP id j20mr13187386pfa.128.1489054628302;
        Thu, 09 Mar 2017 02:17:08 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.9])
        by smtp.gmail.com with ESMTPSA id p129sm11434130pfp.118.2017.03.09.02.17.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 02:17:07 -0800 (PST)
Date: Thu, 9 Mar 2017 15:47:03 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 6/8] staging: bcm2835-audio: Add function name to
 debug and error logs
Message-ID: <20170309101703.GA2298@aishwarya>
References: <cover.1488984315.git.aishpant@gmail.com>
 <e3541396d2f2171a9abcb932b1e02b118377159e.1488984315.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e3541396d2f2171a9abcb932b1e02b118377159e.1488984315.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 08, 2017 at 08:19:51PM +0530, Aishwarya Pant wrote:
> This patch adds current function names __func__ to debug and error logs
> in the work functions.
> 
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> ---
>  .../staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c   | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 026582e..77657a0 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -138,7 +138,7 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
>  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
>  		/*--- Queue some work (item 1) ---*/
>  		if (!work) {
> -			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
>  			return -ENOMEM;
>  		}
>  		INIT_WORK(&work->my_work, my_wq_function);
> @@ -146,10 +146,11 @@ int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
>  		work->cmd = BCM2835_AUDIO_START;
>  		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
>  			kfree(work);
> +			LOG_ERR("%s: Error: Unable to start audio\n", __func__);
>  			return -EBUSY;
>  		}
>  	}
> -	LOG_DBG(" .. OUT\n");
> +	LOG_DBG("%s: .. OUT\n", __func__);
>  	return 0;
>  }
>  
> @@ -162,7 +163,7 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
>  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
>  		/*--- Queue some work (item 1) ---*/
>  		if (!work) {
> -			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
>  			return -ENOMEM;
>  		}
>  		INIT_WORK(&work->my_work, my_wq_function);
> @@ -170,10 +171,11 @@ int bcm2835_audio_stop(struct bcm2835_alsa_stream *alsa_stream)
>  		work->cmd = BCM2835_AUDIO_STOP;
>  		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
>  			kfree(work);
> +			LOG_ERR("%s: Error: Unable to stop audio\n", __func__);
>  			return -EBUSY;
>  		}
>  	}
> -	LOG_DBG(" .. OUT\n");
> +	LOG_DBG("%s: .. OUT\n", __func__);
>  	return 0;
>  }
>  
> @@ -187,7 +189,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
>  		work = kmalloc(sizeof(*work), GFP_ATOMIC);
>  		/*--- Queue some work (item 1) ---*/
>  		if (!work) {
> -			LOG_ERR(" .. Error: NULL work kmalloc\n");
> +			LOG_ERR("%s: Error: NULL work kmalloc\n", __func__);
>  			return -ENOMEM;
>  		}
>  		INIT_WORK(&work->my_work, my_wq_function);
> @@ -197,10 +199,11 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
>  		work->count = count;
>  		if (!queue_work(alsa_stream->my_wq, &work->my_work)) {
>  			kfree(work);
> +			LOG_ERR("%s: Error: Unable to write\n", __func__);
>  			return -EBUSY;
>  		}
>  	}
> -	LOG_DBG(" .. OUT\n");
> +	LOG_DBG("%s: .. OUT\n", __func__);


Please ignore this patch.
LOG_DBG/ERR/INFO(..) are wrappers around pr_*(..) family with line 
number and function name appended. I'll send a new patchset with 
these changes reverted.



>  	return 0;
>  }
>  
> -- 
> 2.7.4
> 

