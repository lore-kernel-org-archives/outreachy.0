X-GM-THRID: 6212181078592978944
X-Received: by 10.194.2.146 with SMTP id 18mr3490074wju.0.1446386636063;
        Sun, 01 Nov 2015 06:03:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.208.137 with SMTP id h131ls390126lfg.83.gmail; Sun, 01 Nov
 2015 06:03:55 -0800 (PST)
X-Received: by 10.112.142.195 with SMTP id ry3mr3532149lbb.22.1446386635296;
        Sun, 01 Nov 2015 06:03:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g18si366796wmd.1.2015.11.01.06.03.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:03:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,229,1444687200"; 
   d="scan'208";a="185446519"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Nov 2015 15:03:38 +0100
Date: Sun, 1 Nov 2015 15:03:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ioana Ciornei <ciorneiioana@gmail.com>
cc: outreachy-kernel@googlegroups.com, arve@android.com, riandrews@android.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: android: properly align
 function arguments
In-Reply-To: <1aa855620c3b81b4883c6a3a751186f53dd9de6d.1446385932.git.ciorneiioana@gmail.com>
Message-ID: <alpine.DEB.2.02.1511011503140.2070@localhost6.localdomain6>
References: <cover.1446385932.git.ciorneiioana@gmail.com> <1aa855620c3b81b4883c6a3a751186f53dd9de6d.1446385932.git.ciorneiioana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 1 Nov 2015, Ioana Ciornei wrote:

> FIx alingment issues by properly indenting function arguments
> int accordance with the kernel coding style.

Kind of a lot of typos here: FIx -> Fix, int -> in

julia

> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/android/lowmemorykiller.c |  4 ++--
>  drivers/staging/android/sync.c            |  4 ++--
>  drivers/staging/android/timed_gpio.c      | 10 +++++-----
>  3 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/android/lowmemorykiller.c b/drivers/staging/android/lowmemorykiller.c
> index de65db7..8b5a4a8 100644
> --- a/drivers/staging/android/lowmemorykiller.c
> +++ b/drivers/staging/android/lowmemorykiller.c
> @@ -105,8 +105,8 @@ static unsigned long lowmem_scan(struct shrinker *s, struct shrink_control *sc)
>  	}
>  
>  	lowmem_print(3, "lowmem_scan %lu, %x, ofree %d %d, ma %hd\n",
> -			sc->nr_to_scan, sc->gfp_mask, other_free,
> -			other_file, min_score_adj);
> +		     sc->nr_to_scan, sc->gfp_mask, other_free,
> +		     other_file, min_score_adj);
>  
>  	if (min_score_adj == OOM_SCORE_ADJ_MAX + 1) {
>  		lowmem_print(5, "lowmem_scan %lu, %x, return 0\n",
> diff --git a/drivers/staging/android/sync.c b/drivers/staging/android/sync.c
> index 5413f28..e0c1acb 100644
> --- a/drivers/staging/android/sync.c
> +++ b/drivers/staging/android/sync.c
> @@ -313,7 +313,7 @@ struct sync_fence *sync_fence_merge(const char *name,
>  EXPORT_SYMBOL(sync_fence_merge);
>  
>  int sync_fence_wake_up_wq(wait_queue_t *curr, unsigned mode,
> -				 int wake_flags, void *key)
> +			  int wake_flags, void *key)
>  {
>  	struct sync_fence_waiter *wait;
>  
> @@ -353,7 +353,7 @@ int sync_fence_wait_async(struct sync_fence *fence,
>  EXPORT_SYMBOL(sync_fence_wait_async);
>  
>  int sync_fence_cancel_async(struct sync_fence *fence,
> -			     struct sync_fence_waiter *waiter)
> +			    struct sync_fence_waiter *waiter)
>  {
>  	unsigned long flags;
>  	int ret = 0;
> diff --git a/drivers/staging/android/timed_gpio.c b/drivers/staging/android/timed_gpio.c
> index ce11726..5246f42 100644
> --- a/drivers/staging/android/timed_gpio.c
> +++ b/drivers/staging/android/timed_gpio.c
> @@ -76,8 +76,8 @@ static void gpio_enable(struct timed_output_dev *dev, int value)
>  			value = data->max_timeout;
>  
>  		hrtimer_start(&data->timer,
> -			ktime_set(value / 1000, (value % 1000) * 1000000),
> -			HRTIMER_MODE_REL);
> +			      ktime_set(value / 1000, (value % 1000) * 1000000),
> +			      HRTIMER_MODE_REL);
>  	}
>  
>  	spin_unlock_irqrestore(&data->lock, flags);
> @@ -94,8 +94,8 @@ static int timed_gpio_probe(struct platform_device *pdev)
>  		return -EBUSY;
>  
>  	gpio_data = devm_kzalloc(&pdev->dev,
> -			sizeof(struct timed_gpio_data) * pdata->num_gpios,
> -			GFP_KERNEL);
> +				 sizeof(*gpio_data) * pdata->num_gpios,
> +				 GFP_KERNEL);
>  	if (!gpio_data)
>  		return -ENOMEM;
>  
> @@ -104,7 +104,7 @@ static int timed_gpio_probe(struct platform_device *pdev)
>  		gpio_dat = &gpio_data[i];
>  
>  		hrtimer_init(&gpio_dat->timer, CLOCK_MONOTONIC,
> -				HRTIMER_MODE_REL);
> +			     HRTIMER_MODE_REL);
>  		gpio_dat->timer.function = gpio_timer_func;
>  		spin_lock_init(&gpio_dat->lock);
>  
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1aa855620c3b81b4883c6a3a751186f53dd9de6d.1446385932.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

