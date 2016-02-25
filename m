X-GM-THRID: 6253249019883028480
X-Received: by 10.107.184.195 with SMTP id i186mr3057800iof.24.1456417873542;
        Thu, 25 Feb 2016 08:31:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls489869qgm.97.gmail; Thu, 25 Feb
 2016 08:31:12 -0800 (PST)
X-Received: by 10.31.169.130 with SMTP id s124mr41773049vke.1.1456417872787;
        Thu, 25 Feb 2016 08:31:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id y131si554067ywc.0.2016.02.25.08.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 08:31:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id q184so1843475qkb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 08:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=HUHZDV9tCFCuLP82WENi4CUcNj7tD2NP8VfrDfA9kHs=;
        b=EEV+8UFY5Lfcgw8GYrWyARH+lWZF08Z9sThtD8JMwyQxhd5MKlqDEFK2JcnB8vX/PC
         d/4ui5OmZoHhDLyEZ7LVDn9BW33vditcCmC3603SeCq/DVcBBjpr1poHpFRzxCZDNQm1
         BuCJldkcDZkB4bWpipWsGSPsrFWsatLmALFboi2+3dzVU7tcMsktoAvoqDeTB4H8caK1
         +8u9/yrozglB+J2cxx4W9kCJ1EfjqNtkOqPBUb8NW1g+V4d/ErKuPrXaj9yoP74YiPia
         1wck1J/uLnPKAvEKblLui5Q4VcBEuiV4YWWYFdvbR9tRzZSznJwzsFmne6flPo1ods8u
         0rEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=HUHZDV9tCFCuLP82WENi4CUcNj7tD2NP8VfrDfA9kHs=;
        b=hjogRace89HE9TBWw88anWg+CEQy44vUkPr1FjztrQXwMg7a/FR9Lpb7hhMfDqpbZN
         kHcKgaXB2Fkq5Tc0ph5vIKkQBYyo7HWO7TJ+975FtWeb/dBqGxyf9dmPDoxQtA6thJ3t
         htAUwhobLztStrN5YktorjIiIDf0bvU6kEGjsvWkD27Cy0RBtWULRe1b2x3vG3k4WH/W
         Rsp3GwxUIUpaI8plN/2aaCQb2AXqWc4gjYxu3SI4d7JKI5poPhD+fXM+GJWx2K2a+Mj0
         sN8mwzE+mL4jfdf86IiM44FlXHZ451KVXjYv1veQUEpGTLd7hnFJPf6WFd6jchSapjBG
         sCVQ==
X-Gm-Message-State: AG10YOQdgZermQL645QSnal53Q6CRR3zHnuMjGoTpbeA1R9K/y/Eafv0PqcfLddxIBhYyw4EqZK6hgxqFA9bTg==
X-Received: by 10.55.72.12 with SMTP id v12mr18900300qka.100.1456417872573;
 Thu, 25 Feb 2016 08:31:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Thu, 25 Feb 2016 08:30:33 -0800 (PST)
In-Reply-To: <20160220060022.GA28788@Karyakshetra>
References: <20160220060022.GA28788@Karyakshetra>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 22:00:33 +0530
Message-ID: <CAFNHFT_DMhG9xB3bOXn7gkGNmdLM+NTeOhJHkGsWQ_Tz5rZBsg@mail.gmail.com>
Subject: Re: [PATCH v2] staging: octeon: Use system_wq instead of dedicated workqueue
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset=UTF-8

Hello Tejun,

I have removed dedicated workqueue usages from octeon/ethernet driver.
Can you please review this patch.

Thanks,
Bhaktipriya

On Sat, Feb 20, 2016 at 11:30 AM, Bhaktipriya Shridhar
<bhaktipriya96@gmail.com> wrote:
> With cmwq, there's no need for octeon/ethernet driver to use a separate
> workqueue. Removed the dedicated workqueue from ethernet and
> used system_wq instead.
>
> Here, creating a whole set of worker threads in order to run a function is an
> overkill. The workqueue in octeon/ethernet is a singlethread_workqueue and is
> not cpu-intensive or high-priority. Hence system_wq is preferred.
>
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/octeon/ethernet.c | 21 ++++-----------------
>  1 file changed, 4 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
> index 8d239e2..c193f88 100644
> --- a/drivers/staging/octeon/ethernet.c
> +++ b/drivers/staging/octeon/ethernet.c
> @@ -86,10 +86,6 @@ int rx_napi_weight = 32;
>  module_param(rx_napi_weight, int, 0444);
>  MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
>
> -/*
> - * cvm_oct_poll_queue - Workqueue for polling operations.
> - */
> -struct workqueue_struct *cvm_oct_poll_queue;
>
>  /*
>   * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
> @@ -121,8 +117,7 @@ static void cvm_oct_rx_refill_worker(struct work_struct *work)
>         cvm_oct_rx_refill_pool(num_packet_buffers / 2);
>
>         if (!atomic_read(&cvm_oct_poll_queue_stopping))
> -               queue_delayed_work(cvm_oct_poll_queue,
> -                                  &cvm_oct_rx_refill_work, HZ);
> +               schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);
>  }
>
>  static void cvm_oct_periodic_worker(struct work_struct *work)
> @@ -138,8 +133,7 @@ static void cvm_oct_periodic_worker(struct work_struct *work)
>                                                 cvm_oct_device[priv->port]);
>
>         if (!atomic_read(&cvm_oct_poll_queue_stopping))
> -               queue_delayed_work(cvm_oct_poll_queue,
> -                                               &priv->port_periodic_work, HZ);
> +               schedule_delayed_work(&priv->port_periodic_work, HZ);
>  }
>
>  static void cvm_oct_configure_common_hw(void)
> @@ -677,11 +671,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
>                 return -EINVAL;
>         }
>
> -       cvm_oct_poll_queue = create_singlethread_workqueue("octeon-ethernet");
> -       if (!cvm_oct_poll_queue) {
> -               pr_err("octeon-ethernet: Cannot create workqueue");
> -               return -ENOMEM;
> -       }
>
>         cvm_oct_configure_common_hw();
>
> @@ -840,8 +829,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
>                                 fau -=
>                                     cvmx_pko_get_num_queues(priv->port) *
>                                     sizeof(u32);
> -                               queue_delayed_work(cvm_oct_poll_queue,
> -                                               &priv->port_periodic_work, HZ);
> +                               schedule_delayed_work(&priv->port_periodic_work, HZ);
>                         }
>                 }
>         }
> @@ -854,7 +842,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
>          */
>         cvm_oct_tx_poll_interval = 150 * (octeon_get_clock_rate() / 1000000);
>
> -       queue_delayed_work(cvm_oct_poll_queue, &cvm_oct_rx_refill_work, HZ);
> +       schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);
>
>         return 0;
>  }
> @@ -897,7 +885,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
>                 }
>         }
>
> -       destroy_workqueue(cvm_oct_poll_queue);
>
>         cvmx_pko_shutdown();
>
> --
> 2.1.4
>

