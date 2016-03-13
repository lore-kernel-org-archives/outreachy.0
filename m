X-GM-THRID: 6261499450444742656
X-Received: by 10.112.142.42 with SMTP id rt10mr2325328lbb.13.1457869573174;
        Sun, 13 Mar 2016 04:46:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.35.70 with SMTP id j67ls354902wmj.44.canary; Sun, 13 Mar
 2016 04:46:12 -0700 (PDT)
X-Received: by 10.194.84.40 with SMTP id v8mr2282696wjy.2.1457869572664;
        Sun, 13 Mar 2016 04:46:12 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h187si343908wme.0.2016.03.13.04.46.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 04:46:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,330,1454972400"; 
   d="scan'208";a="207486413"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Mar 2016 12:46:09 +0100
Date: Sun, 13 Mar 2016 12:46:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: drivers: Fix lines over
 80 characters
In-Reply-To: <55e6d749e6540164f7e206c1eb7ddc17b30fa292.1457868804.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.02.1603131245390.2069@localhost6.localdomain6>
References: <cover.1457868804.git.anchalj109@gmail.com> <55e6d749e6540164f7e206c1eb7ddc17b30fa292.1457868804.git.anchalj109@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 13 Mar 2016, Anchal Jain wrote:

> Break lines so that they do not exceed 80
> characters. Problem found using checkpatch.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/linux_mon.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index fd25116..0d79a61 100644
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
> +	 * The packet offset field contains info about what type of management
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
> +struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device
> +									*real_dev)

The lines here are still over 80 characters.  checkpatch should have 
complained.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/55e6d749e6540164f7e206c1eb7ddc17b30fa292.1457868804.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

