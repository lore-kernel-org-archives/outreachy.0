X-GM-THRID: 6619829989639454720
X-Received: by 2002:adf:fa82:: with SMTP id h2-v6mr1071539wrr.18.1541312953052;
        Sat, 03 Nov 2018 23:29:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:9388:: with SMTP id v130-v6ls154349wmd.7.gmail; Sat, 03
 Nov 2018 23:29:12 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cNtjZVSPil1HiO4GBxgGZFjoE9PzKoUdJjWAppY1LXqCdecd5AZPqMhhOUi5S1QBEl7vPR
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr354223wma.12.1541312952224;
        Sat, 03 Nov 2018 23:29:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541312952; cv=none;
        d=google.com; s=arc-20160816;
        b=R5i4TRBPCEsdamNjVUdCBwIYfL5lf9jJpvWWqSJtG043WkKA5FmXT+eZ3dwh7d6FuA
         8/2tTuuaENXqoe2+9qD8KwKq/6lyWfhQiXKLgMAShC8+DrQtTlDUiTRwv0n72pxcYB4P
         mXGCqHYFa8AxmWno5d3gHC7LytopTfLWHXt6o3DVuNq4BVwTVx0+GfiaypfsezjoV4YR
         4fEbgTd6bNFw2n/0jt43A73c9rer/krdDhpS4b8c2tXTaVcylcagYmdbwmQpJCmInwmy
         mls5B4klWvVgKqKsSmKITPgouajIB4MEM492jrtyif6u8tBPbPUsgmlo7NGIRhSjdKyc
         CKRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=h9xU5hSxkUb54mf0ePoRRpeqtTMVxjI23ZV6c8BlArQ=;
        b=QmXeqIX5RhSwoV41nsCaBpsUWG12a95AEXXiPiLgYE1Uyw4RXYawyC0sShN3Iy0FVI
         kS8M/uQuc5TXUDf9clcsgm6HWun/qsuai9vy+hm4gzoQOtF51X2LYY4pLS3HhBjvMOC1
         QPRaLcwEX8Qzyr3gVIhfP/OaKBY8zSopobP3dinbGD/pVDE2+HE3wSXJmtFYOu/ibTlR
         7G5tBoc2RY2bPonpqxTQr9pKMhOc0l0sDa5C5dDrVpVnDkevug/o+vpsLmYaHNnl8049
         044j2osygo54oLYAtYr9ZacTPcw/1+V/uoCYAAl0BDmB6EtW3cEQLtoYIzxmvGv9k2Lp
         YjZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b12-v6si416061wme.1.2018.11.03.23.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 23:29:12 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,463,1534802400"; 
   d="scan'208";a="284263733"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 07:29:11 +0100
Date: Sun, 4 Nov 2018 07:29:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    alexander.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Replace masking
 with BIT macro
In-Reply-To: <20181104024109.GA23126@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811040728260.2448@hadrien>
References: <20181104024109.GA23126@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> Replace bit masking with the more preferable BIT macro.

The patch shows a lot of ugly alignments that are probably due to some
things that look like spaces actually being tabs, or vice versa.  Since
they are on the lines that you are changing, you could fix those up as
well.

julia


>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211.h    | 190 +++++++++---------
>  1 file changed, 95 insertions(+), 95 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 8aa536d79900..2d943f99dc02 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -503,28 +503,28 @@ do { if (ieee80211_debug_level & (level)) \
>   *
>   */
>
> -#define IEEE80211_DL_INFO          (1<<0)
> -#define IEEE80211_DL_WX            (1<<1)
> -#define IEEE80211_DL_SCAN          (1<<2)
> -#define IEEE80211_DL_STATE         (1<<3)
> -#define IEEE80211_DL_MGMT          (1<<4)
> -#define IEEE80211_DL_FRAG          (1<<5)
> -#define IEEE80211_DL_EAP           (1<<6)
> -#define IEEE80211_DL_DROP          (1<<7)
> -
> -#define IEEE80211_DL_TX            (1<<8)
> -#define IEEE80211_DL_RX            (1<<9)
> -
> -#define IEEE80211_DL_HT		   (1<<10)  //HT
> -#define IEEE80211_DL_BA		   (1<<11)  //ba
> -#define IEEE80211_DL_TS		   (1<<12)  //TS
> -#define IEEE80211_DL_QOS           (1<<13)
> -#define IEEE80211_DL_REORDER	   (1<<14)
> -#define IEEE80211_DL_IOT	   (1<<15)
> -#define IEEE80211_DL_IPS	   (1<<16)
> -#define IEEE80211_DL_TRACE	   (1<<29)  //trace function, need to user net_ratelimit() together in order not to print too much to the screen
> -#define IEEE80211_DL_DATA	   (1<<30)   //use this flag to control whether print data buf out.
> -#define IEEE80211_DL_ERR	   (1<<31)   //always open
> +#define IEEE80211_DL_INFO          (BIT(0))
> +#define IEEE80211_DL_WX            (BIT(1))
> +#define IEEE80211_DL_SCAN          (BIT(2))
> +#define IEEE80211_DL_STATE         (BIT(3))
> +#define IEEE80211_DL_MGMT          (BIT(4))
> +#define IEEE80211_DL_FRAG          (BIT(5))
> +#define IEEE80211_DL_EAP           (BIT(6))
> +#define IEEE80211_DL_DROP          (BIT(7))
> +
> +#define IEEE80211_DL_TX            (BIT(8))
> +#define IEEE80211_DL_RX            (BIT(9))
> +
> +#define IEEE80211_DL_HT		   (BIT(10))  //HT
> +#define IEEE80211_DL_BA		   (BIT(11))  //ba
> +#define IEEE80211_DL_TS		   (BIT(12))  //TS
> +#define IEEE80211_DL_QOS           (BIT(13))
> +#define IEEE80211_DL_REORDER	   (BIT(14))
> +#define IEEE80211_DL_IOT	   (BIT(15))
> +#define IEEE80211_DL_IPS	   (BIT(16))
> +#define IEEE80211_DL_TRACE	   (BIT(29))  //trace function, need to user net_ratelimit() together in order not to print too much to the screen
> +#define IEEE80211_DL_DATA	   (BIT(30))   //use this flag to control whether print data buf out.
> +#define IEEE80211_DL_ERR	   (BIT(31))   //always open
>  #define IEEE80211_ERROR(f, a...) printk(KERN_ERR "ieee80211: " f, ## a)
>  #define IEEE80211_WARNING(f, a...) printk(KERN_WARNING "ieee80211: " f, ## a)
>  #define IEEE80211_DEBUG_INFO(f, a...)   IEEE80211_DEBUG(IEEE80211_DL_INFO, f, ## a)
> @@ -580,35 +580,35 @@ struct ieee80211_snap_hdr {
>  #define WLAN_GET_SEQ_FRAG(seq) ((seq) & IEEE80211_SCTL_FRAG)
>  #define WLAN_GET_SEQ_SEQ(seq)  (((seq) & IEEE80211_SCTL_SEQ) >> 4)
>
> -#define WLAN_CAPABILITY_BSS (1<<0)
> -#define WLAN_CAPABILITY_IBSS (1<<1)
> -#define WLAN_CAPABILITY_CF_POLLABLE (1<<2)
> -#define WLAN_CAPABILITY_CF_POLL_REQUEST (1<<3)
> -#define WLAN_CAPABILITY_PRIVACY (1<<4)
> -#define WLAN_CAPABILITY_SHORT_PREAMBLE (1<<5)
> -#define WLAN_CAPABILITY_PBCC (1<<6)
> -#define WLAN_CAPABILITY_CHANNEL_AGILITY (1<<7)
> -#define WLAN_CAPABILITY_SPECTRUM_MGMT (1<<8)
> -#define WLAN_CAPABILITY_QOS (1<<9)
> -#define WLAN_CAPABILITY_SHORT_SLOT (1<<10)
> -#define WLAN_CAPABILITY_DSSS_OFDM (1<<13)
> +#define WLAN_CAPABILITY_BSS (BIT(0))
> +#define WLAN_CAPABILITY_IBSS (BIT(1))
> +#define WLAN_CAPABILITY_CF_POLLABLE (BIT(2))
> +#define WLAN_CAPABILITY_CF_POLL_REQUEST (BIT(3))
> +#define WLAN_CAPABILITY_PRIVACY (BIT(4))
> +#define WLAN_CAPABILITY_SHORT_PREAMBLE (BIT(5))
> +#define WLAN_CAPABILITY_PBCC (BIT(6))
> +#define WLAN_CAPABILITY_CHANNEL_AGILITY (BIT(7))
> +#define WLAN_CAPABILITY_SPECTRUM_MGMT (BIT(8))
> +#define WLAN_CAPABILITY_QOS (BIT(9))
> +#define WLAN_CAPABILITY_SHORT_SLOT (BIT(10))
> +#define WLAN_CAPABILITY_DSSS_OFDM (BIT(13))
>
>  /* 802.11g ERP information element */
> -#define WLAN_ERP_NON_ERP_PRESENT (1<<0)
> -#define WLAN_ERP_USE_PROTECTION (1<<1)
> -#define WLAN_ERP_BARKER_PREAMBLE (1<<2)
> -
> -#define IEEE80211_STATMASK_SIGNAL (1<<0)
> -#define IEEE80211_STATMASK_RSSI (1<<1)
> -#define IEEE80211_STATMASK_NOISE (1<<2)
> -#define IEEE80211_STATMASK_RATE (1<<3)
> +#define WLAN_ERP_NON_ERP_PRESENT (BIT(0))
> +#define WLAN_ERP_USE_PROTECTION (BIT(1))
> +#define WLAN_ERP_BARKER_PREAMBLE (BIT(2))
> +
> +#define IEEE80211_STATMASK_SIGNAL (BIT(0))
> +#define IEEE80211_STATMASK_RSSI (BIT(1))
> +#define IEEE80211_STATMASK_NOISE (BIT(2))
> +#define IEEE80211_STATMASK_RATE (BIT(3))
>  #define IEEE80211_STATMASK_WEMASK 0x7
>
> -#define IEEE80211_CCK_MODULATION    (1<<0)
> -#define IEEE80211_OFDM_MODULATION   (1<<1)
> +#define IEEE80211_CCK_MODULATION    (BIT(0))
> +#define IEEE80211_OFDM_MODULATION   (BIT(1))
>
> -#define IEEE80211_24GHZ_BAND     (1<<0)
> -#define IEEE80211_52GHZ_BAND     (1<<1)
> +#define IEEE80211_24GHZ_BAND     (BIT(0))
> +#define IEEE80211_52GHZ_BAND     (BIT(1))
>
>  #define IEEE80211_CCK_RATE_LEN			4
>  #define IEEE80211_CCK_RATE_1MB			0x02
> @@ -626,18 +626,18 @@ struct ieee80211_snap_hdr {
>  #define IEEE80211_OFDM_RATE_54MB		0x6C
>  #define IEEE80211_BASIC_RATE_MASK		0x80
>
> -#define IEEE80211_CCK_RATE_1MB_MASK		(1<<0)
> -#define IEEE80211_CCK_RATE_2MB_MASK		(1<<1)
> -#define IEEE80211_CCK_RATE_5MB_MASK		(1<<2)
> -#define IEEE80211_CCK_RATE_11MB_MASK		(1<<3)
> -#define IEEE80211_OFDM_RATE_6MB_MASK		(1<<4)
> -#define IEEE80211_OFDM_RATE_9MB_MASK		(1<<5)
> -#define IEEE80211_OFDM_RATE_12MB_MASK		(1<<6)
> -#define IEEE80211_OFDM_RATE_18MB_MASK		(1<<7)
> -#define IEEE80211_OFDM_RATE_24MB_MASK		(1<<8)
> -#define IEEE80211_OFDM_RATE_36MB_MASK		(1<<9)
> -#define IEEE80211_OFDM_RATE_48MB_MASK		(1<<10)
> -#define IEEE80211_OFDM_RATE_54MB_MASK		(1<<11)
> +#define IEEE80211_CCK_RATE_1MB_MASK		(BIT(0))
> +#define IEEE80211_CCK_RATE_2MB_MASK		(BIT(1))
> +#define IEEE80211_CCK_RATE_5MB_MASK		(BIT(2))
> +#define IEEE80211_CCK_RATE_11MB_MASK		(BIT(3))
> +#define IEEE80211_OFDM_RATE_6MB_MASK		(BIT(4))
> +#define IEEE80211_OFDM_RATE_9MB_MASK		(BIT(5))
> +#define IEEE80211_OFDM_RATE_12MB_MASK		(BIT(6))
> +#define IEEE80211_OFDM_RATE_18MB_MASK		(BIT(7))
> +#define IEEE80211_OFDM_RATE_24MB_MASK		(BIT(8))
> +#define IEEE80211_OFDM_RATE_36MB_MASK		(BIT(9))
> +#define IEEE80211_OFDM_RATE_48MB_MASK		(BIT(10))
> +#define IEEE80211_OFDM_RATE_54MB_MASK		(BIT(11))
>
>  #define IEEE80211_CCK_RATES_MASK		0x0000000F
>  #define IEEE80211_CCK_BASIC_RATES_MASK	(IEEE80211_CCK_RATE_1MB_MASK | \
> @@ -797,16 +797,16 @@ struct ieee80211_device;
>
>  #include "ieee80211_crypt.h"
>
> -#define SEC_KEY_1         (1<<0)
> -#define SEC_KEY_2         (1<<1)
> -#define SEC_KEY_3         (1<<2)
> -#define SEC_KEY_4         (1<<3)
> -#define SEC_ACTIVE_KEY    (1<<4)
> -#define SEC_AUTH_MODE     (1<<5)
> -#define SEC_UNICAST_GROUP (1<<6)
> -#define SEC_LEVEL         (1<<7)
> -#define SEC_ENABLED       (1<<8)
> -#define SEC_ENCRYPT       (1<<9)
> +#define SEC_KEY_1         (BIT(0))
> +#define SEC_KEY_2         (BIT(1))
> +#define SEC_KEY_3         (BIT(2))
> +#define SEC_KEY_4         (BIT(3))
> +#define SEC_ACTIVE_KEY    (BIT(4))
> +#define SEC_AUTH_MODE     (BIT(5))
> +#define SEC_UNICAST_GROUP (BIT(6))
> +#define SEC_LEVEL         (BIT(7))
> +#define SEC_ENABLED       (BIT(8))
> +#define SEC_ENCRYPT       (BIT(9))
>
>  #define SEC_LEVEL_0      0 /* None */
>  #define SEC_LEVEL_1      1 /* WEP 40 and 104 bit */
> @@ -1075,23 +1075,23 @@ typedef union _frameqos {
>
>  #define MAX_WPA_IE_LEN 64
>
> -#define NETWORK_EMPTY_ESSID (1<<0)
> -#define NETWORK_HAS_OFDM    (1<<1)
> -#define NETWORK_HAS_CCK     (1<<2)
> +#define NETWORK_EMPTY_ESSID (BIT(0))
> +#define NETWORK_HAS_OFDM    (BIT(1))
> +#define NETWORK_HAS_CCK     (BIT(2))
>
>  /* QoS structure */
> -#define NETWORK_HAS_QOS_PARAMETERS      (1<<3)
> -#define NETWORK_HAS_QOS_INFORMATION     (1<<4)
> +#define NETWORK_HAS_QOS_PARAMETERS      (BIT(3))
> +#define NETWORK_HAS_QOS_INFORMATION     (BIT(4))
>  #define NETWORK_HAS_QOS_MASK            (NETWORK_HAS_QOS_PARAMETERS | \
>  					 NETWORK_HAS_QOS_INFORMATION)
>  /* 802.11h */
> -#define NETWORK_HAS_POWER_CONSTRAINT    (1<<5)
> -#define NETWORK_HAS_CSA                 (1<<6)
> -#define NETWORK_HAS_QUIET               (1<<7)
> -#define NETWORK_HAS_IBSS_DFS            (1<<8)
> -#define NETWORK_HAS_TPC_REPORT          (1<<9)
> +#define NETWORK_HAS_POWER_CONSTRAINT    (BIT(5))
> +#define NETWORK_HAS_CSA                 (BIT(6))
> +#define NETWORK_HAS_QUIET               (BIT(7))
> +#define NETWORK_HAS_IBSS_DFS            (BIT(8))
> +#define NETWORK_HAS_TPC_REPORT          (BIT(9))
>
> -#define NETWORK_HAS_ERP_VALUE           (1<<10)
> +#define NETWORK_HAS_ERP_VALUE           (BIT(10))
>
>  #define QOS_QUEUE_NUM                   4
>  #define QOS_OUI_LEN                     3
> @@ -1262,7 +1262,7 @@ struct ieee80211_info_element_hdr {
>  enum {WMM_all_frame, WMM_two_frame, WMM_four_frame, WMM_six_frame};
>  #define MAX_SP_Len  (WMM_all_frame << 4)
>  #define IEEE80211_QOS_TID 0x0f
> -#define QOS_CTL_NOTCONTAIN_ACK (0x01 << 5)
> +#define QOS_CTL_NOTCONTAIN_ACK (BIT(5))
>
>  #define IEEE80211_DTIM_MBCAST 4
>  #define IEEE80211_DTIM_UCAST 2
> @@ -1441,9 +1441,9 @@ enum ieee80211_state {
>  #define DEFAULT_MAX_SCAN_AGE (15 * HZ)
>  #define DEFAULT_FTS 2346
>
> -#define CFG_IEEE80211_RESERVE_FCS (1<<0)
> -#define CFG_IEEE80211_COMPUTE_FCS (1<<1)
> -#define CFG_IEEE80211_RTS (1<<2)
> +#define CFG_IEEE80211_RESERVE_FCS (BIT(0))
> +#define CFG_IEEE80211_COMPUTE_FCS (BIT(1))
> +#define CFG_IEEE80211_RTS (BIT(2))
>
>  #define IEEE80211_24GHZ_MIN_CHANNEL 1
>  #define IEEE80211_24GHZ_MAX_CHANNEL 14
> @@ -2016,11 +2016,11 @@ struct ieee80211_device {
>  	u8 priv[0];
>  };
>
> -#define IEEE_A            (1<<0)
> -#define IEEE_B            (1<<1)
> -#define IEEE_G            (1<<2)
> -#define IEEE_N_24G		  (1<<4)
> -#define	IEEE_N_5G		  (1<<5)
> +#define IEEE_A            (BIT(0))
> +#define IEEE_B            (BIT(1))
> +#define IEEE_G            (BIT(2))
> +#define IEEE_N_24G		  (BIT(4))
> +#define	IEEE_N_5G		  (BIT(5))
>  #define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
>
>  /* Generate a 802.11 header */
> @@ -2028,32 +2028,32 @@ struct ieee80211_device {
>  /* Uses the channel change callback directly
>   * instead of [start/stop] scan callbacks
>   */
> -#define IEEE_SOFTMAC_SCAN (1<<2)
> +#define IEEE_SOFTMAC_SCAN (BIT(2))
>
>  /* Perform authentication and association handshake */
> -#define IEEE_SOFTMAC_ASSOCIATE (1<<3)
> +#define IEEE_SOFTMAC_ASSOCIATE (BIT(3))
>
>  /* Generate probe requests */
> -#define IEEE_SOFTMAC_PROBERQ (1<<4)
> +#define IEEE_SOFTMAC_PROBERQ (BIT(4))
>
>  /* Generate respones to probe requests */
> -#define IEEE_SOFTMAC_PROBERS (1<<5)
> +#define IEEE_SOFTMAC_PROBERS (BIT(5))
>
>  /* The ieee802.11 stack will manages the netif queue
>   * wake/stop for the driver, taking care of 802.11
>   * fragmentation. See softmac.c for details.
>   */
> -#define IEEE_SOFTMAC_TX_QUEUE (1<<7)
> +#define IEEE_SOFTMAC_TX_QUEUE (BIT(7))
>
>  /* Uses only the softmac_data_hard_start_xmit
>   * even for TX management frames.
>   */
> -#define IEEE_SOFTMAC_SINGLE_QUEUE (1<<8)
> +#define IEEE_SOFTMAC_SINGLE_QUEUE (BIT(8))
>
>  /* Generate beacons.  The stack will enqueue beacons
>   * to the card
>   */
> -#define IEEE_SOFTMAC_BEACONS (1<<6)
> +#define IEEE_SOFTMAC_BEACONS (BIT(6))
>
>  static inline void *ieee80211_priv(struct net_device *dev)
>  {
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104024109.GA23126%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

