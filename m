X-GM-THRID: 825509281792
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fa9e50e85482f5ad
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.162.135 with SMTP id ya7mr835315lbb.14.1424377375905;
        Thu, 19 Feb 2015 12:22:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.68 with SMTP id y4ls211850lay.12.gmail; Thu, 19 Feb 2015
 12:22:55 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr847804lbb.13.1424377375421;
        Thu, 19 Feb 2015 12:22:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si6481509wic.1.2015.02.19.12.22.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 12:22:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,610,1418079600"; 
   d="scan'208";a="122575730"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 21:22:54 +0100
Date: Thu, 19 Feb 2015 21:22:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: drivers: dma: ste_dma40:
 Fix line over 80 characters warning
In-Reply-To: <1424376376-29500-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502192120560.2192@localhost6.localdomain6>
References: <1424376376-29500-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1242385239-1424377374=:2192"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1242385239-1424377374=:2192
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 19 Feb 2015, Hatice ERTÜRK wrote:

> WARNING: line over 80 characters
> chackpatch.pl warning in ste_dma40.c
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/dma/ste_dma40.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
> index 5cffef1..57dfe05 100644
> --- a/drivers/dma/ste_dma40.c
> +++ b/drivers/dma/ste_dma40.c
> @@ -1011,7 +1011,8 @@ static int d40_psize_2_burst_size(bool is_log, int psize)
>   * The dma only supports transmitting packages up to
>   * STEDMA40_MAX_SEG_SIZE * data_width, where data_width is stored in Bytes.
>   *
> - * Calculate the total number of dma elements required to send the entire sg list.
> + * Calculate the total number of dma
> +	elements required to send the entire sg list.

Why cut it here?  Since this is an English sentence, it would be 
reasonable to make the sentence go on as long as possible, and then line 
the rest up with the leftmost character of the text on the line above.

>   */
>  static int d40_size_2_dmalen(int size, u32 data_width1, u32 data_width2)
>  {
> @@ -1975,7 +1976,8 @@ static int d40_config_memcpy(struct d40_chan *d40c)
>  
>  	if (dma_has_cap(DMA_MEMCPY, cap) && !dma_has_cap(DMA_SLAVE, cap)) {
>  		d40c->dma_cfg = dma40_memcpy_conf_log;
> -		d40c->dma_cfg.dev_type = dma40_memcpy_channels[d40c->chan.chan_id];
> +		d40c->dma_cfg.dev_type =
> +		dma40_memcpy_channels[d40c->chan.chan_id];

On the other hand, for an assignment it would be reasonable to indent the 
continuation line.  See what is done elsewhere in the file, for example.

>  		d40_log_cfg(&d40c->dma_cfg,
>  			    &d40c->log_def.lcsp1, &d40c->log_def.lcsp3);
> @@ -2518,7 +2520,8 @@ d40_prep_memcpy_sg(struct dma_chan *chan,
>  	if (dst_nents != src_nents)
>  		return NULL;
>  
> -	return d40_prep_sg(chan, src_sg, dst_sg, src_nents, DMA_NONE, dma_flags);
> +	return d40_prep_sg(chan, src_sg, dst_sg,
> +				src_nents, DMA_NONE, dma_flags);
>  }
>  
>  static struct dma_async_tx_descriptor *
> @@ -3216,7 +3219,8 @@ static struct d40_base * __init d40_hw_detect_init(struct platform_device *pdev)
>  	 */
>  	rev = AMBA_REV_BITS(pid);
>  	if (rev < 2) {
> -		d40_err(&pdev->dev, "hardware revision: %d is not supported", rev);
> +		d40_err(&pdev->dev,
> +			"hardware revision: %d is not supported", rev);
>  		goto failure;
>  	}
>  
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424376376-29500-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1242385239-1424377374=:2192--

