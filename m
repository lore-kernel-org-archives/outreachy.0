X-GM-THRID: 6261559103932334080
X-Received: by 10.25.31.81 with SMTP id f78mr2345581lff.7.1457883111348;
        Sun, 13 Mar 2016 08:31:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.200 with SMTP id s191ls413188wmb.53.canary; Sun, 13 Mar
 2016 08:31:50 -0700 (PDT)
X-Received: by 10.28.85.137 with SMTP id j131mr1437341wmb.1.1457883110732;
        Sun, 13 Mar 2016 08:31:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 71si377141wmp.0.2016.03.13.08.31.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 08:31:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,331,1454972400"; 
   d="scan'208";a="168429098"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 16:31:49 +0100
Date: Sun, 13 Mar 2016 16:31:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] staging: wilc1000: Fix lines
 over 80 characters
In-Reply-To: <2872c92d61078c94d0b7475c3900a841a13d72bd.1457882673.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.02.1603131631370.2064@localhost6.localdomain6>
References: <cover.1457882673.git.anchalj109@gmail.com> <2872c92d61078c94d0b7475c3900a841a13d72bd.1457882673.git.anchalj109@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 13 Mar 2016, Anchal Jain wrote:

> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
> changes in v3:
>  - Make the commit message more clear

Now there is no commit message.

julia

>  drivers/staging/wilc1000/linux_mon.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index fd25116..242f82f 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -59,9 +59,10 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>  
>  	/* Get WILC header */
>  	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
> -
> -	/* The packet offset field conain info about what type of managment frame */
> -	/* we are dealing with and ack status */
> +	/*
> +	 * The packet offset field contain info about what type of management
> +	 * the frame we are dealing with and ack status
> +	 */
>  	pkt_offset = GET_PKT_OFFSET(header);
>  
>  	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
> @@ -105,7 +106,7 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>  		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
>  		hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
>  		hdr->hdr.it_present = cpu_to_le32
> -				(1 << IEEE80211_RADIOTAP_RATE);                   /* | */
> +				(1 << IEEE80211_RADIOTAP_RATE); /* | */
>  		hdr->rate = 5; /* txrate->bitrate / 5; */
>  	}
>  
> @@ -127,8 +128,10 @@ struct tx_complete_mon_data {
>  static void mgmt_tx_complete(void *priv, int status)
>  {
>  	struct tx_complete_mon_data *pv_data = priv;
> -
> -	/* incase of fully hosting mode, the freeing will be done in response to the cfg packet */
> +	/*
> +	 * in case of fully hosting mode, the freeing will be done
> +	 * in response to the cfg packet
> +	 */
>  	kfree(pv_data->buff);
>  
>  	kfree(pv_data);
> @@ -255,7 +258,8 @@ static const struct net_device_ops wilc_wfi_netdev_ops = {
>   *  @date	12 JUL 2012
>   *  @version	1.0
>   */
> -struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev)
> +struct net_device *WILC_WFI_init_mon_interface(const char *name,
> +					       struct net_device *real_dev)
>  {
>  	u32 ret = 0;
>  	struct WILC_WFI_mon_priv *priv;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2872c92d61078c94d0b7475c3900a841a13d72bd.1457882673.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

