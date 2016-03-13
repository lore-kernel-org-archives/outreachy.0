X-GM-THRID: 6261204257874116608
X-Received: by 10.112.210.129 with SMTP id mu1mr2092926lbc.3.1457841164523;
        Sat, 12 Mar 2016 19:52:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.2 with SMTP id 2ls316122wmr.34.gmail; Sat, 12 Mar 2016
 19:52:44 -0800 (PST)
X-Received: by 10.28.194.212 with SMTP id s203mr1214251wmf.3.1457841164096;
        Sat, 12 Mar 2016 19:52:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 71si315147wmp.0.2016.03.12.19.52.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 19:52:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,328,1454972400"; 
   d="scan'208";a="168376643"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 04:52:43 +0100
Date: Sun, 13 Mar 2016 04:52:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: wilc1000: Fix line over
 80 characters
In-Reply-To: <34df57c2a9e66d8279f7c3b948896da328c382ea.1457800084.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.02.1603130451471.2069@localhost6.localdomain6>
References: <cover.1457800084.git.anchalj109@gmail.com> <34df57c2a9e66d8279f7c3b948896da328c382ea.1457800084.git.anchalj109@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 12 Mar 2016, Anchal Jain wrote:

> Break comment lines so that they do not exceed
> 80 characters. Problem found using checkpatch.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index 7d9e5de..44996e2 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -60,8 +60,10 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>  	/* Get WILC header */
>  	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
>  
> -	/* The packet offset field conain info about what type of managment frame */
> -	/* we are dealing with and ack status */
> +	/* The packet offset field conain info
> +	 * about what type of managment frame
> +	 * we are dealing with and ack status

There is no need to make the lines so short.  Also, if you are redoing the 
multiline comment, it may as well also go to the right format, with /* on 
a line by itself at the start.

julia

> +	 */
>  	pkt_offset = GET_PKT_OFFSET(header);
>  
>  	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
> @@ -128,7 +130,9 @@ static void mgmt_tx_complete(void *priv, int status)
>  {
>  	struct tx_complete_mon_data *pv_data = priv;
>  
> -	/* incase of fully hosting mode, the freeing will be done in response to the cfg packet */
> +	/* incase of fully hosting mode, the freeing
> +	 * will be done in response to the cfg packet
> +	 */
>  	kfree(pv_data->buff);
>  
>  	kfree(pv_data);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/34df57c2a9e66d8279f7c3b948896da328c382ea.1457800084.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

