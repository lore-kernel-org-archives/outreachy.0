X-GM-THRID: 6390816507551547392
X-Received: by 10.46.33.163 with SMTP id h35mr848002lji.17.1488004364009;
        Fri, 24 Feb 2017 22:32:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.206 with SMTP id 197ls267974ljj.39.gmail; Fri, 24 Feb
 2017 22:32:43 -0800 (PST)
X-Received: by 10.46.8.74 with SMTP id g10mr676092ljd.1.1488004363415;
        Fri, 24 Feb 2017 22:32:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c188si252879wmd.0.2017.02.24.22.32.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 22:32:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,202,1484002800"; 
   d="scan'208";a="214667084"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 07:32:42 +0100
Date: Sat, 25 Feb 2017 07:32:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: codes in the comments
 are removed
In-Reply-To: <20170224231154.GA32083@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702250732110.2088@hadrien>
References: <20170224231154.GA32083@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Remember to use the imperative and to make your subject lines as short as
possible.  Here the subject line could be "remove code in comments".

julia

On Sat, 25 Feb 2017, Arushi Singhal wrote:

> Commenting Code Is a Bad Idea.
> Comments are their to explain the code and how the code achieves its
> goal and as codes in the comments  does not explain what the code is
> doing so there is no use of commenting them.
> So in thos patch codes in the comments are removed.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index 2c263f98bdbb..54aa2e2f516f 100644
> --- a/drivers/staging/ks7010/ks7010_sdio.c
> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> @@ -495,10 +495,6 @@ static void ks7010_rw_function(struct work_struct *work)
>  	/* wiat after WAKEUP */
>  	while (time_after(priv->last_wakeup + ((30 * HZ) / 1000), jiffies)) {
>  		DPRINTK(4, "wait after WAKEUP\n");
> -/*
> - *   queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
> - *   (priv->last_wakeup + ((30*HZ)/1000) - jiffies));
> - */
>  		dev_info(&priv->ks_wlan_hw.sdio_card->func->dev,
>  			 "wake: %lu %lu\n",
>  			 priv->last_wakeup + (30 * HZ) / 1000,
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170224231154.GA32083%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

