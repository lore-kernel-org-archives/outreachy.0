X-GM-THRID: 6394877671484948480
X-Received: by 10.25.29.11 with SMTP id d11mr464930lfd.14.1488923626836;
        Tue, 07 Mar 2017 13:53:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls200866ljb.27.gmail; Tue, 07 Mar
 2017 13:53:46 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr525447lja.13.1488923626351;
        Tue, 07 Mar 2017 13:53:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si1761136wmd.0.2017.03.07.13.53.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 13:53:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,260,1486422000"; 
   d="scan'208";a="215939097"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 22:53:45 +0100
Date: Tue, 7 Mar 2017 22:53:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: wilc_wlan.h Add
 identifier name
In-Reply-To: <20170307215120.4545-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703072253290.2292@hadrien>
References: <20170307215120.4545-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Tamara Diaconita wrote:

> Add identifier name for function definition argument.
> Fix the checkpath.pl warning:
> WARNING: function definition argument 'struct wilc *' should also have
> an identifier name.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
> index 11365ef..7a5eba9 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.h
> +++ b/drivers/staging/wilc1000/wilc_wlan.h
> @@ -274,8 +274,8 @@ struct wilc_vif;
>
>  int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
>  				u32 buffer_size);
> -int wilc_wlan_start(struct wilc *);
> -int wilc_wlan_stop(struct wilc *);
> +int wilc_wlan_start(struct wilc *wilc);
> +int wilc_wlan_stop(struct wilc *wilc);

These changes have also already been made.

julia

>  int wilc_wlan_txq_add_net_pkt(struct net_device *dev, void *priv, u8 *buffer,
>  			      u32 buffer_size, wilc_tx_complete_func_t func);
>  int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count);
> @@ -291,7 +291,7 @@ int wilc_wlan_txq_add_mgmt_pkt(struct net_device *dev, void *priv, u8 *buffer,
>  void wilc_chip_sleep_manually(struct wilc *wilc);
>
>  void wilc_enable_tcp_ack_filter(bool value);
> -int wilc_wlan_get_num_conn_ifcs(struct wilc *);
> +int wilc_wlan_get_num_conn_ifcs(struct wilc *wilc);
>  int wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
>
>  void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307215120.4545-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

