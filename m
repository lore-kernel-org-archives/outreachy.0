X-GM-THRID: 6331202607933030400
X-Received: by 10.28.206.131 with SMTP id e125mr64995wmg.5.1474101582075;
        Sat, 17 Sep 2016 01:39:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.209.66 with SMTP id i63ls20714wmg.1.gmail; Sat, 17 Sep 2016
 01:39:41 -0700 (PDT)
X-Received: by 10.194.74.131 with SMTP id t3mr217709wjv.21.1474101581256;
        Sat, 17 Sep 2016 01:39:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si839558wmg.3.2016.09.17.01.39.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 01:39:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,349,1470693600"; 
   d="scan'208";a="237191163"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 10:39:40 +0200
Date: Sat, 17 Sep 2016 10:39:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ks7010: Remove extern keyword
 from function declaration
In-Reply-To: <1474097953-4884-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609171039200.3113@hadrien>
References: <1474097953-4884-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 17 Sep 2016, Bhumika Goyal wrote:

> Remove extern specifier from function declaration as they have
> it by default. Also move extern declaration from .c files to
> their respective header file 'ks_hostif.h'. Coccinelle was used

Did you check that the ones in the .c files actually have to be extern?

julia

> to remove extern and other changes were done by hand.
> Script:
> @@
> identifier func;
> type T;
> @@
> - extern
> T func(...);
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c     |  9 ---------
>  drivers/staging/ks7010/ks_hostif.h     | 22 +++++++++++++++-------
>  drivers/staging/ks7010/ks_wlan.h       |  4 ++--
>  drivers/staging/ks7010/ks_wlan_ioctl.h |  6 +++---
>  drivers/staging/ks7010/ks_wlan_net.c   |  4 ----
>  drivers/staging/ks7010/michael_mic.h   |  1 -
>  6 files changed, 20 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index deb82ab..eb0192d 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -21,15 +21,6 @@
>  /* Include Wireless Extension definition and check version */
>  #include <net/iw_handler.h>	/* New driver API */
>
> -extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
> -			 unsigned long size,
> -			 void (*complete_handler) (void *arg1, void *arg2),
> -			 void *arg1, void *arg2);
> -extern void send_packet_complete(void *, void *);
> -
> -extern void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
> -extern int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
> -
>  /* macro */
>  #define inc_smeqhead(priv) \
>          ( priv->sme_i.qhead = (priv->sme_i.qhead + 1) % SME_EVENT_BUFF_SIZE )
> diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
> index dc806b5b..ffd0174 100644
> --- a/drivers/staging/ks7010/ks_hostif.h
> +++ b/drivers/staging/ks7010/ks_hostif.h
> @@ -616,13 +616,21 @@ enum {
>  #include "ks_wlan.h"
>
>  /* function prototype */
> -extern int hostif_data_request(struct ks_wlan_private *priv,
> -			       struct sk_buff *packet);
> -extern void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
> -			   unsigned int size);
> -extern void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
> -extern int hostif_init(struct ks_wlan_private *priv);
> -extern void hostif_exit(struct ks_wlan_private *priv);
> +int hostif_data_request(struct ks_wlan_private *priv,
> +			 struct sk_buff *packet);
> +void hostif_receive(struct ks_wlan_private *priv, unsigned char *p,
> +	             unsigned int size);
> +void hostif_sme_enqueue(struct ks_wlan_private *priv, uint16_t event);
> +int hostif_init(struct ks_wlan_private *priv);
> +void hostif_exit(struct ks_wlan_private *priv);
> +int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
> +		   unsigned long size,
> +		   void (*complete_handler) (void *arg1, void *arg2),
> +		   void *arg1, void *arg2);
> +void send_packet_complete(void *, void *);
> +
> +void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv);
> +int ks_wlan_hw_power_save(struct ks_wlan_private *priv);
>
>  static
>  inline int hif_align_size(int size)
> diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
> index f05dc01..693e7d8 100644
> --- a/drivers/staging/ks7010/ks_wlan.h
> +++ b/drivers/staging/ks7010/ks_wlan.h
> @@ -499,7 +499,7 @@ struct ks_wlan_private {
>  	uint wakeup_count;	/* for detect wakeup loop */
>  };
>
> -extern int ks_wlan_net_start(struct net_device *dev);
> -extern int ks_wlan_net_stop(struct net_device *dev);
> +int ks_wlan_net_start(struct net_device *dev);
> +int ks_wlan_net_stop(struct net_device *dev);
>
>  #endif /* _KS_WLAN_H */
> diff --git a/drivers/staging/ks7010/ks_wlan_ioctl.h b/drivers/staging/ks7010/ks_wlan_ioctl.h
> index 49369e4..84554b6 100644
> --- a/drivers/staging/ks7010/ks_wlan_ioctl.h
> +++ b/drivers/staging/ks7010/ks_wlan_ioctl.h
> @@ -58,9 +58,9 @@
>  #include "ks_wlan.h"
>  #include <linux/netdevice.h>
>
> -extern int ks_wlan_read_config_file(struct ks_wlan_private *priv);
> -extern int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
> -				   unsigned int commit_flag);
> +int ks_wlan_read_config_file(struct ks_wlan_private *priv);
> +int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
> +		             unsigned int commit_flag);
>
>  #endif /* __KERNEL__ */
>
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index 70cc9be..ee9c8f3 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -69,10 +69,6 @@ static const struct iw_handler_def ks_wlan_handler_def;
>  /*
>   *	function prototypes
>   */
> -extern int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p,
> -			 unsigned long size,
> -			 void (*complete_handler) (void *arg1, void *arg2),
> -			 void *arg1, void *arg2);
>  static int ks_wlan_open(struct net_device *dev);
>  static void ks_wlan_tx_timeout(struct net_device *dev);
>  static int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev);
> diff --git a/drivers/staging/ks7010/michael_mic.h b/drivers/staging/ks7010/michael_mic.h
> index c7e4eb2..89f17d5 100644
> --- a/drivers/staging/ks7010/michael_mic.h
> +++ b/drivers/staging/ks7010/michael_mic.h
> @@ -20,7 +20,6 @@ struct michel_mic_t {
>  	uint8_t Result[8];
>  };
>
> -extern
>  void MichaelMICFunction(struct michel_mic_t *Mic, uint8_t * Key,
>  			uint8_t * Data, int Len, uint8_t priority,
>  			uint8_t * Result);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474097953-4884-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

