X-GM-THRID: 4857609060352
X-Received: by 10.112.138.202 with SMTP id qs10mr2816291lbb.24.1425159793003;
        Sat, 28 Feb 2015 13:43:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.179.4 with SMTP id dc4ls297454lac.73.gmail; Sat, 28 Feb
 2015 13:43:12 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr2908843lbc.2.1425159792366;
        Sat, 28 Feb 2015 13:43:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i7si374155wif.0.2015.02.28.13.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 28 Feb 2015 13:43:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,668,1418079600"; 
   d="scan'208";a="101655176"
Received: from unknown (HELO hadrien.local) ([207.164.135.98])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2015 22:43:11 +0100
Date: Sat, 28 Feb 2015 16:43:07 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging rtl8192u: Remove
 typedefs.
In-Reply-To: <4f46244ec99ca7d088e094221b36c2be29bd4a27.1425069407.git.ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1502281642570.2719@hadrien>
References: <cover.1425069407.git.ksenija.stanojevic@gmail.com> <4f46244ec99ca7d088e094221b36c2be29bd4a27.1425069407.git.ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Feb 2015, Ksenija Stanojevic wrote:

> This patch removes typedefs from structures and renames them per
> kernel coding standards.
> Issue found by checkpatch.pl

There are other things in this patch.

julia

>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_cmdpkt.h | 53 +++++++++++++++-----------------
>  1 file changed, 25 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.h b/drivers/staging/rtl8192u/r819xU_cmdpkt.h
> index 52cd437..8e0ec40 100644
> --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.h
> +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.h
> @@ -1,12 +1,12 @@
>  #ifndef R819XUSB_CMDPKT_H
>  #define R819XUSB_CMDPKT_H
>  /* Different command packet have dedicated message length and definition. */
> -#define		CMPK_RX_TX_FB_SIZE		sizeof(cmpk_txfb_t)	/* 20 */
> -#define		CMPK_TX_SET_CONFIG_SIZE		sizeof(cmpk_set_cfg_t)	/* 16 */
> -#define		CMPK_BOTH_QUERY_CONFIG_SIZE	sizeof(cmpk_set_cfg_t)	/* 16 */
> -#define		CMPK_RX_TX_STS_SIZE		sizeof(cmpk_tx_status_t)
> -#define		CMPK_RX_DBG_MSG_SIZE		sizeof(cmpk_rx_dbginfo_t)
> -#define		CMPK_TX_RAHIS_SIZE		sizeof(cmpk_tx_rahis_t)
> +#define	 CMPK_RX_TX_FB_SIZE		sizeof(struct cmpk_txfb)    /* 20 */
> +#define	 CMPK_TX_SET_CONFIG_SIZE	sizeof(struct cmpk_set_cfg) /* 16 */
> +#define	 CMPK_BOTH_QUERY_CONFIG_SIZE	sizeof(struct cmpk_set_cfg) /* 16 */
> +#define	 CMPK_RX_TX_STS_SIZE		sizeof(struct cmpk_tx_status)
> +#define	 CMPK_RX_DBG_MSG_SIZE		sizeof(struct cmpk_rx_dbginfo)
> +#define	 CMPK_TX_RAHIS_SIZE		sizeof(struct cmpk_tx_rahis)
>
>  /* 2008/05/08 amy For USB constant. */
>  #define ISR_TxBcnOk		BIT27		/* Transmit Beacon OK */
> @@ -19,7 +19,7 @@
>  /*------------------------------Define structure----------------------------*/
>  /* Define different command packet structure. */
>  /* 1. RX side: TX feedback packet. */
> -typedef struct tag_cmd_pkt_tx_feedback {
> +struct cmpk_txfb {
>  	/* DWORD 0 */
>  	u8	element_id;			/* Command packet type. */
>  	u8	length;				/* Command packet length. */
> @@ -52,20 +52,20 @@ typedef struct tag_cmd_pkt_tx_feedback {
>  	/* DWORD 5 */
>  	u16	reserve3;
>  	u16	duration;
> -} cmpk_txfb_t;
> +};
>
>  /* 2. RX side: Interrupt status packet. It includes Beacon State,
>   * Beacon Timer Interrupt and other useful informations in MAC ISR Reg. */
> -typedef struct tag_cmd_pkt_interrupt_status {
> +struct cmpk_intr_sta {
>  	u8	element_id;			/* Command packet type. */
>  	u8	length;				/* Command packet length. */
>  	u16	reserve;
>  	u32	interrupt_status;		/* Interrupt Status. */
> -} cmpk_intr_sta_t;
> +};
>
>
>  /* 3. TX side: Set configuration packet. */
> -typedef struct tag_cmd_pkt_set_configuration {
> +struct cmpk_set_cfg {
>  	u8	element_id;			/* Command packet type. */
>  	u8	length;				/* Command packet length. */
>  	u16	reserve1;
> @@ -80,14 +80,11 @@ typedef struct tag_cmd_pkt_set_configuration {
>  	u8	cfg_offset;
>  	u32	value;
>  	u32	mask;
> -} cmpk_set_cfg_t;
> +};
>
> -/* 4. Both side : TX/RX query configuraton packet. The query structure is the
> -      same as set configuration. */
> -#define		cmpk_query_cfg_t	cmpk_set_cfg_t
>
>  /* 5. Multi packet feedback status. */
> -typedef struct tag_tx_stats_feedback {
> +struct cmpk_tx_status {
>  	/* For endian transfer --> Driver will not the same as
>  	   firmware structure. */
>  	/* DW 0 */
> @@ -124,11 +121,11 @@ typedef struct tag_tx_stats_feedback {
>  	u16	reserve3_23;
>  	u8	reserve3_1;
>  	u8	rate;
> -} __packed cmpk_tx_status_t;
> +};
>
>  /* 6. Debug feedback message. */
>  /* Define RX debug message  */
> -typedef struct tag_rx_debug_message_feedback {
> +struct cmpk_rx_dbginfo {
>  	/* For endian transfer --> for driver */
>  	/* DW 0 */
>  	u16	reserve1;
> @@ -138,10 +135,10 @@ typedef struct tag_rx_debug_message_feedback {
>  	/* DW 1-?? */
>  	/* Variable debug message. */
>
> -} cmpk_rx_dbginfo_t;
> +};
>
>  /* Define transmit rate history. For big endian format. */
> -typedef struct tag_tx_rate_history {
> +struct cmpk_tx_rahis {
>  	/* For endian transfer --> for driver */
>  	/* DW 0 */
>  	u8	element_id;			/* Command packet type */
> @@ -161,9 +158,9 @@ typedef struct tag_tx_rate_history {
>  	 */
>  	u16	ht_mcs[4][16];
>
> -} __packed cmpk_tx_rahis_t;
> +};
>
> -typedef enum tag_command_packet_directories {
> +enum cmpk_element {
>  	RX_TX_FEEDBACK			= 0,
>  	RX_INTERRUPT_STATUS		= 1,
>  	TX_SET_CONFIG			= 2,
> @@ -173,19 +170,19 @@ typedef enum tag_command_packet_directories {
>  	RX_TX_PER_PKT_FEEDBACK		= 6,
>  	RX_TX_RATE_HISTORY		= 7,
>  	RX_CMD_ELE_MAX
> -} cmpk_element_e;
> +};
>
> -typedef enum _rt_status {
> +enum rt_status {
>  	RT_STATUS_SUCCESS,
>  	RT_STATUS_FAILURE,
>  	RT_STATUS_PENDING,
>  	RT_STATUS_RESOURCE
> -} rt_status, *prt_status;
> +};
>
>  extern u32 cmpk_message_handle_rx(struct net_device *dev,
> -		struct ieee80211_rx_stats *pstats);
> -extern rt_status SendTxCommandPacket(struct net_device *dev,
> -		void *pData, u32 DataLen);
> +				  struct ieee80211_rx_stats *pstats);
> +extern enum rt_status SendTxCommandPacket(struct net_device *dev,
> +					  void *pData, u32 DataLen);
>
>
>  #endif
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4f46244ec99ca7d088e094221b36c2be29bd4a27.1425069407.git.ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

