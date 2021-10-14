X-GM-THRID: 7018941118564794368
X-Received: by 2002:a2e:a413:: with SMTP id p19mr3878485ljn.488.1634225174429;
        Thu, 14 Oct 2021 08:26:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3081:: with SMTP id z1ls457415lfd.2.gmail; Thu, 14
 Oct 2021 08:26:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwAJvwUxXuEmbXAEryQeB1njee3MVB7IAGJ6W3MjrAXahNmtgb30QMKglPGzhl2Rj+G9o/i
X-Received: by 2002:a05:6512:260f:: with SMTP id bt15mr5742913lfb.134.1634225172663;
        Thu, 14 Oct 2021 08:26:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634225172; cv=none;
        d=google.com; s=arc-20160816;
        b=l7KSNoRLH1pRNPyombHZT6NjGk3HPphtTToqMmlM7uXX5lkL08bZgbHeOTY4NstIVy
         t5el7PdeywCEMo0rtbRJ8MnrWMjMRCqnBHWJ34XTMj6TaIsGvEE8/POaaSgFOaCcIvYW
         O5KedRFpxZstc1zQNk4kkQgfYCQuHvw1NStvwdYpd4WUFha520wN3cMfWhwdl8SCzBJO
         CkhQ/TFIveMpXiS1K0EgSbqBxmqYQ2A3qXJcmT3aNo9StynRtST/ExuEPSg63KSJ0t9Y
         7SkXWc9s41mkQhLC0ljUkzh4ZPczdbHf0Ybjedeb+ROmTQkD+/ztx0byrXpxhiQ/U+Tc
         g4kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=Rna3j62ptEQCywNWhg4CvbjNzoNCzoOW0rz+M5v40js=;
        b=xIvunAsAGDnOi6Ol0cG4oN1fzKTHoB1CgX9qeHtDPrszbVAJlO8CXsJDiyWfZQEmYW
         uvcq0JPFcQrG54lBWqeZgMtuI8B8qBhFsz1SVjaa9sHMYUvlNPKwXjK7cDVj4LfjgUa+
         cicWxHX5xwkzTpHqrfCYOBIJzrehAInLd09g1CmVt8La6csSz1OwmN45/zJpTg3GPEpv
         8hgM/NmZfqV1vuyh8IPwYnN0pPDr4MjuoCYbkI1gY5kVoRY8HrFyZex5OY/RKhxJAyNU
         +LjLNE7N6z0P/dmsBBvTl9Q4e4ymI4/dzkFmDAkSUAP7PMKYh+z0kqjtMTl8IMz9bzIZ
         dxiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i21si144951lfv.2.2021.10.14.08.26.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Oct 2021 08:26:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AsFWBHqhWWZ8cg4tbnlIEqm+RTXBQX+B33DAb?=
 =?us-ascii?q?v31ZSRFFG/FwyPrCoB1L73XJYWgqM03IwerwXpVoMkmsjKKdgLNhSYtKOTOLhI?=
 =?us-ascii?q?LGFvAH0WKP+Vzd8k7Fh5lgPMVbAs9D4bTLZDAU4/oSizPIcOrIteP3lZxA8t2u?=
 =?us-ascii?q?rUuFIzsLV4hQqyNCTiqLGEx/QwdLQbAjEoCH39FKozq7dW5SRtinB1EeNtKz5+?=
 =?us-ascii?q?HjpdbDW1orFhQn4A6BgXeD87jhCSGC0hMfST9UhZ8/7Gngnwb57qKiqfXT8G6e?=
 =?us-ascii?q?60bjq7Bt3PfxwNpKA8KBzuIPLC/3sx2lYIR6V6fHlCwpoduo9E0hnLD30lUdFv?=
 =?us-ascii?q?U2z0mUUnC+oBPr1QWl+i0p8WXa0lOdgWHuu4jTbhhSMbsGuatpNj/ir2YwttB1?=
 =?us-ascii?q?16xGm0iDsYBMNAjNmCTm68KNbTtO/3DE5UYKoKo2tThyQIEeYLheocg050VOCq?=
 =?us-ascii?q?4aECb78ow8VNR0BMbH/fBMbG6AZ3/XvmNT0MWhN05DWyuucwwngIi4wjJWlHd2?=
 =?us-ascii?q?ww8z38oEhE4a+JY8UZVfo+zCL6RzjblLCtUdZaV2AuAdTdqrY1a9Gi7kASa3Gx?=
 =?us-ascii?q?DKBasHM3XCp9rc+7Mu/tiwdJgJ1pcp3JDMSklRu2IpfV70A8Hm5uwNzjn9BEGG?=
 =?us-ascii?q?GRj9wMBX4JZ0/pfmQqDwCDaOTFA1n9Hlpe4eDM3dU/O4PZJbBOLiNGPiFJ1ExR?=
 =?us-ascii?q?eWYegKFVAuFOku/vorUVOHpczGbqfwsPbASe3eILr2HSxhQ3j4CHcYRjT/YM5R?=
 =?us-ascii?q?qkOsRmT+iB3QXH2FQD2kwbtAVIzhu8QDwokEMYNB9iIPj06i39qGLT1ZvrZzYV?=
 =?us-ascii?q?B3J6n/lLinuHK/8mnJ5Xh4IxY1NDcM3JzQF1dx4SMaOUL9drgO//+Ff3pJ4XeB?=
 =?us-ascii?q?LhhjC+vLDQ92vT1MiOuKBq3V4RpnJ8OsM2qcgXdWjmmNVY0glqqK4tqgUo8kD6?=
 =?us-ascii?q?whRLd6GWzwZlRIcEdR2Sx+gT0/NwLi/wDV+OmYZVsvda7inuxH8U2WyAhv2Dzi?=
 =?us-ascii?q?XAun1IASrzAgLkaTuIas8H0TrpBv9wBMGukk8cy9cH+UWBECqfV9P1tWZGuNBr?=
 =?us-ascii?q?VaSAyDeYVPg7juPBp9VGGQmFWh+mMOk8XRhjsvb0HaXF2pkMvwcylgU1Vjo9PX?=
 =?us-ascii?q?GX9PBxmglnNLGwFHWNdGZBn7U15IoJC2WpY=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="395927372"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Oct 2021 17:26:11 +0200
Date: Thu, 14 Oct 2021 17:26:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Karolina Drobnik <karolinadrobnik@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Rename byPreambleType
 field
In-Reply-To: <20211014151543.46764-1-karolinadrobnik@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110141724560.3289@hadrien>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Oct 2021, Karolina Drobnik wrote:

> Drop Hungarian notation prefix in `byPreambleType` member of
> struct vnt_private. Change it to use snake case.

Are you sure that it is an instance of Hungarian notation?  Could it be
that "by" is meant to be the word "by"?  I have the imrepssion from a
quick look through the code that it should be a boolean.  Maybe it would
be helpful to give it boolean value, eg true instead of 1.

julia

>
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <byPreambleType>
>
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/baseband.c    | 10 +++---
>  drivers/staging/vt6655/baseband.h    |  2 +-
>  drivers/staging/vt6655/device.h      |  2 +-
>  drivers/staging/vt6655/device_main.c |  8 ++---
>  drivers/staging/vt6655/rxtx.c        | 50 ++++++++++++++--------------
>  5 files changed, 36 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
> index 0bae35af6e0f..69739de927be 100644
> --- a/drivers/staging/vt6655/baseband.c
> +++ b/drivers/staging/vt6655/baseband.c
> @@ -1691,8 +1691,8 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
>   *
>   * Parameters:
>   *  In:
> - *      by_preamble_type  - Preamble Type
> - *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
> + *      preamble_type     - Preamble Type
> + *      by_pkt_type       - PK_TYPE_11A, PK_TYPE_11B, PK_TYPE_11GB, PK_TYPE_11GA
>   *      cb_frame_length   - Baseband Type
>   *      tx_rate           - Tx Rate
>   *  Out:
> @@ -1700,7 +1700,7 @@ static const unsigned short awc_frame_time[MAX_RATE] = {
>   * Return Value: FrameTime
>   *
>   */
> -unsigned int bb_get_frame_time(unsigned char by_preamble_type,
> +unsigned int bb_get_frame_time(unsigned char preamble_type,
>  			       unsigned char by_pkt_type,
>  			       unsigned int cb_frame_length,
>  			       unsigned short tx_rate)
> @@ -1717,7 +1717,7 @@ unsigned int bb_get_frame_time(unsigned char by_preamble_type,
>  	rate = (unsigned int)awc_frame_time[rate_idx];
>
>  	if (rate_idx <= 3) {		    /* CCK mode */
> -		if (by_preamble_type == 1) /* Short */
> +		if (preamble_type == 1)     /* Short */
>  			preamble = 96;
>  		else
>  			preamble = 192;
> @@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
>  	u32 count = 0;
>  	u32 tmp;
>  	int ext_bit;
> -	u8 preamble_type = priv->byPreambleType;
> +	u8 preamble_type = priv->preamble_type;
>
>  	bit_count = frame_length * 8;
>  	ext_bit = false;
> diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
> index 0a30afaa7cc3..15b2802ed727 100644
> --- a/drivers/staging/vt6655/baseband.h
> +++ b/drivers/staging/vt6655/baseband.h
> @@ -44,7 +44,7 @@
>  #define TOP_RATE_2M         0x00200000
>  #define TOP_RATE_1M         0x00100000
>
> -unsigned int bb_get_frame_time(unsigned char by_preamble_type,
> +unsigned int bb_get_frame_time(unsigned char preamble_type,
>  			       unsigned char by_pkt_type,
>  			       unsigned int cb_frame_length,
>  			       unsigned short w_rate);
> diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
> index 92d6f82f939f..4706bde1ec1d 100644
> --- a/drivers/staging/vt6655/device.h
> +++ b/drivers/staging/vt6655/device.h
> @@ -203,7 +203,7 @@ struct vnt_private {
>  	unsigned char byMinChannel;
>  	unsigned char byMaxChannel;
>
> -	unsigned char byPreambleType;
> +	unsigned char preamble_type;
>  	unsigned char byShortPreamble;
>
>  	unsigned short wCurrentRate;
> diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> index 24f0e346da12..212d2a287b2c 100644
> --- a/drivers/staging/vt6655/device_main.c
> +++ b/drivers/staging/vt6655/device_main.c
> @@ -177,11 +177,11 @@ device_set_options(struct vnt_private *priv)
>  	priv->byPacketType = priv->byBBType;
>  	priv->byAutoFBCtrl = AUTO_FB_0;
>  	priv->bUpdateBBVGA = true;
> -	priv->byPreambleType = 0;
> +	priv->preamble_type = 0;
>
>  	pr_debug(" byShortRetryLimit= %d\n", (int)priv->byShortRetryLimit);
>  	pr_debug(" byLongRetryLimit= %d\n", (int)priv->byLongRetryLimit);
> -	pr_debug(" byPreambleType= %d\n", (int)priv->byPreambleType);
> +	pr_debug(" preamble_type= %d\n", (int)priv->preamble_type);
>  	pr_debug(" byShortPreamble= %d\n", (int)priv->byShortPreamble);
>  	pr_debug(" byBBType= %d\n", (int)priv->byBBType);
>  }
> @@ -1424,10 +1424,10 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
>  	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
>  		if (conf->use_short_preamble) {
>  			MACvEnableBarkerPreambleMd(priv->port_offset);
> -			priv->byPreambleType = true;
> +			priv->preamble_type = true;
>  		} else {
>  			MACvDisableBarkerPreambleMd(priv->port_offset);
> -			priv->byPreambleType = false;
> +			priv->preamble_type = false;
>  		}
>  	}
>
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index ff0b5391ea0b..0de801b666da 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -142,7 +142,7 @@ s_uFillDataHead(
>
>  static __le16 vnt_time_stamp_off(struct vnt_private *priv, u16 rate)
>  {
> -	return cpu_to_le16(wTimeStampOff[priv->byPreambleType % 2]
> +	return cpu_to_le16(wTimeStampOff[priv->preamble_type % 2]
>  							[rate % MAX_RATE]);
>  }
>
> @@ -163,7 +163,7 @@ s_uGetTxRsvTime(
>  {
>  	unsigned int uDataTime, uAckTime;
>
> -	uDataTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, cbFrameLength, wRate);
> +	uDataTime = bb_get_frame_time(pDevice->preamble_type, byPktType, cbFrameLength, wRate);
>
>  	if (!bNeedAck)
>  		return uDataTime;
> @@ -172,7 +172,7 @@ s_uGetTxRsvTime(
>  	 * CCK mode  - 11b
>  	 * OFDM mode - 11g 2.4G & 11a 5G
>  	 */
> -	uAckTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14,
> +	uAckTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14,
>  				     byPktType == PK_TYPE_11B ?
>  				     pDevice->byTopCCKBasicRate :
>  				     pDevice->byTopOFDMBasicRate);
> @@ -200,22 +200,22 @@ static __le16 get_rtscts_time(struct vnt_private *priv,
>  	unsigned int ack_time = 0;
>  	unsigned int data_time = 0;
>
> -	data_time = bb_get_frame_time(priv->byPreambleType, pkt_type, frame_length, current_rate);
> +	data_time = bb_get_frame_time(priv->preamble_type, pkt_type, frame_length, current_rate);
>  	if (rts_rsvtype == 0) { /* RTSTxRrvTime_bb */
> -		rts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 20, priv->byTopCCKBasicRate);
> -		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopCCKBasicRate);
> +		rts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 20, priv->byTopCCKBasicRate);
> +		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopCCKBasicRate);
>  		cts_time = ack_time;
>  	} else if (rts_rsvtype == 1) { /* RTSTxRrvTime_ba, only in 2.4GHZ */
> -		rts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 20, priv->byTopCCKBasicRate);
> -		cts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopCCKBasicRate);
> -		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopOFDMBasicRate);
> +		rts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 20, priv->byTopCCKBasicRate);
> +		cts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopCCKBasicRate);
> +		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopOFDMBasicRate);
>  	} else if (rts_rsvtype == 2) { /* RTSTxRrvTime_aa */
> -		rts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 20, priv->byTopOFDMBasicRate);
> -		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopOFDMBasicRate);
> +		rts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 20, priv->byTopOFDMBasicRate);
> +		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopOFDMBasicRate);
>  		cts_time = ack_time;
>  	} else if (rts_rsvtype == 3) { /* CTSTxRrvTime_ba, only in 2.4GHZ */
> -		cts_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopCCKBasicRate);
> -		ack_time = bb_get_frame_time(priv->byPreambleType, pkt_type, 14, priv->byTopOFDMBasicRate);
> +		cts_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopCCKBasicRate);
> +		ack_time = bb_get_frame_time(priv->preamble_type, pkt_type, 14, priv->byTopOFDMBasicRate);
>  		rrv_time = cts_time + ack_time + data_time + 2 * priv->uSIFS;
>  		return cpu_to_le16((u16)rrv_time);
>  	}
> @@ -255,7 +255,7 @@ s_uGetDataDuration(
>  	switch (byDurType) {
>  	case DATADUR_B:    /* DATADUR_B */
>  		if (bNeedAck) {
> -			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
> +			uAckTime = bb_get_frame_time(pDevice->preamble_type,
>  						     byPktType, 14,
>  						     pDevice->byTopCCKBasicRate);
>  		}
> @@ -273,7 +273,7 @@ s_uGetDataDuration(
>
>  	case DATADUR_A:    /* DATADUR_A */
>  		if (bNeedAck) {
> -			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
> +			uAckTime = bb_get_frame_time(pDevice->preamble_type,
>  						     byPktType, 14,
>  						     pDevice->byTopOFDMBasicRate);
>  		}
> @@ -292,7 +292,7 @@ s_uGetDataDuration(
>  	case DATADUR_A_F0:    /* DATADUR_A_F0 */
>  	case DATADUR_A_F1:    /* DATADUR_A_F1 */
>  		if (bNeedAck) {
> -			uAckTime = bb_get_frame_time(pDevice->byPreambleType,
> +			uAckTime = bb_get_frame_time(pDevice->preamble_type,
>  						     byPktType, 14,
>  						     pDevice->byTopOFDMBasicRate);
>  		}
> @@ -344,17 +344,17 @@ s_uGetRTSCTSDuration(
>
>  	switch (byDurType) {
>  	case RTSDUR_BB:    /* RTSDuration_bb */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
>  		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
>  		break;
>
>  	case RTSDUR_BA:    /* RTSDuration_ba */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
>  		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
>  		break;
>
>  	case RTSDUR_AA:    /* RTSDuration_aa */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopOFDMBasicRate);
>  		uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
>  		break;
>
> @@ -363,7 +363,7 @@ s_uGetRTSCTSDuration(
>  		break;
>
>  	case RTSDUR_BA_F0: /* RTSDuration_ba_f0 */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
>  		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
>  			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
>  		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
> @@ -372,7 +372,7 @@ s_uGetRTSCTSDuration(
>  		break;
>
>  	case RTSDUR_AA_F0: /* RTSDuration_aa_f0 */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopOFDMBasicRate);
>  		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
>  			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate - RATE_18M], bNeedAck);
>  		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
> @@ -381,7 +381,7 @@ s_uGetRTSCTSDuration(
>  		break;
>
>  	case RTSDUR_BA_F1: /* RTSDuration_ba_f1 */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopCCKBasicRate);
>  		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
>  			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
>  		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
> @@ -390,7 +390,7 @@ s_uGetRTSCTSDuration(
>  		break;
>
>  	case RTSDUR_AA_F1: /* RTSDuration_aa_f1 */
> -		uCTSTime = bb_get_frame_time(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> +		uCTSTime = bb_get_frame_time(pDevice->preamble_type, byPktType, 14, pDevice->byTopOFDMBasicRate);
>  		if ((byFBOption == AUTO_FB_0) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
>  			uDurTime = uCTSTime + 2 * pDevice->uSIFS + s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate - RATE_18M], bNeedAck);
>  		else if ((byFBOption == AUTO_FB_1) && (wRate >= RATE_18M) && (wRate <= RATE_54M))
> @@ -1289,9 +1289,9 @@ int vnt_generate_fifo_header(struct vnt_private *priv, u32 dma_idx,
>  		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LRETRY);
>
>  	if (tx_rate->flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
> -		priv->byPreambleType = PREAMBLE_SHORT;
> +		priv->preamble_type = PREAMBLE_SHORT;
>  	else
> -		priv->byPreambleType = PREAMBLE_LONG;
> +		priv->preamble_type = PREAMBLE_LONG;
>
>  	if (tx_rate->flags & IEEE80211_TX_RC_USE_RTS_CTS)
>  		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_RTS);
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20211014151543.46764-1-karolinadrobnik%40gmail.com.
>

