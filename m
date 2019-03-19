X-GM-THRID: 6670105232964321280
X-Received: by 2002:a2e:253:: with SMTP id 80mr1359968ljc.27.1553005928002;
        Tue, 19 Mar 2019 07:32:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4352:: with SMTP id o18ls1871144lfl.11.gmail; Tue, 19
 Mar 2019 07:32:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgB+2kmYo0gvnCkyrj3+Ld5SbWJemYdrj4hOrSMm7BrN3glSDozNmRW/rnAekooyJ4AW7D
X-Received: by 2002:ac2:4219:: with SMTP id y25mr20936lfh.16.1553005927068;
        Tue, 19 Mar 2019 07:32:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005927; cv=none;
        d=google.com; s=arc-20160816;
        b=SFHxKGBdVOfmU4CcDXxW3y1M/nZPb+GzXinMGFpV+Z83h7d/o5lr50XVat0KZN/hWG
         0woGEsAaWkZcKXKqx5S1xI0JP6Uxx8ymvnpjYKUktpCP3joECOtXNzjEPqMyk902xfW6
         Zwzd8KW8QHQMDrScCM0qkAn84DKPNlxUCxHuZnsswlZWpnxGtqpRma1z2Ljuiq07Y+C5
         8NWRlUty8a16D7+yZqIxnqUFp5M5Num802rxuPzrLSEh0LIKBc6rCMI3vFIocbMtWYqQ
         yRZ0eLUiYI5JIiFkLkCY5CdLGVW1vf3NTHti/HNuXkv4tE7Y6xNl7SR8xP3opvF8sbup
         NGcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R+e/N6hX5UMuvy4JjQGjGQeZxEzc7kyRUFQkz58JUhk=;
        b=h+DVjXZP30IicKdNdcupOFk0co+owvMT9M0iKP9ydERUR3aY064/ornJzDaoNA5G3o
         tDlfT6ODsOFAx8Kq8slIBJ19YD09xVf7v2BnpVczZV4OK15l4cXCcZLkAnTipzMOw5sY
         Jw2J8QHzmF5VpVMoo751cFDRvUO5/NZ7QHF4drELT5RX28Ge5JSGAtsjYNhlvXrqHvrU
         clXFUw9uRN9NuwlgJz1pS46OCE7PGV5f79pX7dw0fhUg7Q7BC7Q/bglYSP9urbetuzKd
         sDZDzFAALK09ZDAmU/ylZRc66IHLIqyJxzfdEcvH6i7javjcbG7ghL4ofNme9VzOOZya
         cQTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 19si368131lje.4.2019.03.19.07.32.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:32:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,498,1544482800"; 
   d="scan'208";a="299969319"
Received: from unknown (HELO hadrien.local) ([163.173.90.67])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 15:32:05 +0100
Date: Tue, 19 Mar 2019 15:32:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtl8192u: r8192U_dm:
 Fix alignment issue.
In-Reply-To: <20190319141806.8592-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.20.1903191530000.8263@hadrien>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com> <20190319141806.8592-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Mar 2019, Sanjana Sanikommu wrote:

> Ajdust alignment to match open paranthesis.
> Issue found by checkpatch.pl
>
> CHECK: Alignment should match open paranthesis.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_dm.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 4fe4c99a0880..8279fa721c74 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -1451,7 +1451,7 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
>
>  		rtl8192_setBBreg(dev, rCCK0_TxFilter1, bMaskHWord, TempVal);
>  		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
> -			rCCK0_TxFilter1, TempVal);
> +			 rCCK0_TxFilter1, TempVal);
>  		/* Write 0xa24 ~ 0xa27 */
>  		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][2] +

Since you will be sending this series again, maybe you could add another
patch in the series to remove these big spaces between the = and the array
reference.  I wonder if it is tab that should be a space, but I'm not sure
because the next line seems to be aligned according to this big distance.

julia

>  					(CCKSwingTable_Ch14[priv->CCK_index][3]<<8) +
> @@ -1459,14 +1459,14 @@ static void dm_CCKTxPowerAdjust_ThermalMeter(struct net_device *dev, bool  bInCH
>  					(CCKSwingTable_Ch14[priv->CCK_index][5]<<24);
>  		rtl8192_setBBreg(dev, rCCK0_TxFilter2, bMaskDWord, TempVal);
>  		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
> -			rCCK0_TxFilter2, TempVal);
> +			 rCCK0_TxFilter2, TempVal);
>  		/* Write 0xa28  0xa29 */
>  		TempVal =	CCKSwingTable_Ch14[priv->CCK_index][6] +
>  					(CCKSwingTable_Ch14[priv->CCK_index][7]<<8);
>
>  		rtl8192_setBBreg(dev, rCCK0_DebugPort, bMaskLWord, TempVal);
>  		RT_TRACE(COMP_POWER_TRACKING, "CCK chnl 14, reg 0x%x = 0x%x\n",
> -			rCCK0_DebugPort, TempVal);
> +			 rCCK0_DebugPort, TempVal);
>  	}
>  }
>
> @@ -1517,7 +1517,7 @@ void dm_restore_dynamic_mechanism_state(struct net_device *dev)
>  		return;
>  	/* TODO: Only 11n mode is implemented currently, */
>  	if (!(priv->ieee80211->mode == WIRELESS_MODE_N_24G ||
> -		priv->ieee80211->mode == WIRELESS_MODE_N_5G))
> +	      priv->ieee80211->mode == WIRELESS_MODE_N_5G))
>  		return;
>
>  	{
> @@ -1748,7 +1748,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
>
>  	/* For smooth, we can not change DIG state. */
>  	if ((priv->undecorated_smoothed_pwdb > dm_digtable.rssi_low_thresh) &&
> -		(priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
> +	    (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_thresh))
>  		return;
>
>  	/*DbgPrint("Dig by Fw False Alarm\n");*/
> @@ -1811,7 +1811,7 @@ static void dm_ctrl_initgain_byrssi_by_fwfalse_alarm(
>  		u8 reset_flag = 0;
>
>  		if (dm_digtable.dig_state == DM_STA_DIG_ON &&
> -			(priv->reset_count == reset_cnt)) {
> +		    (priv->reset_count == reset_cnt)) {
>  			dm_ctrl_initgain_byrssi_highpwr(dev);
>  			return;
>  		}
> @@ -1909,7 +1909,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
>  	 */
>  	if (priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_power_highthresh) {
>  		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_ON &&
> -			(priv->reset_count == reset_cnt_highpwr))
> +		    (priv->reset_count == reset_cnt_highpwr))
>  			return;
>  		dm_digtable.dig_highpwr_state = DM_STA_DIG_ON;
>
> @@ -1925,7 +1925,7 @@ static void dm_ctrl_initgain_byrssi_highpwr(
>  			write_nic_byte(dev, rOFDM0_RxDetector1, 0x43);
>  	} else {
>  		if (dm_digtable.dig_highpwr_state == DM_STA_DIG_OFF &&
> -			(priv->reset_count == reset_cnt_highpwr))
> +		    (priv->reset_count == reset_cnt_highpwr))
>  			return;
>  		dm_digtable.dig_highpwr_state = DM_STA_DIG_OFF;
>
> @@ -2126,7 +2126,7 @@ static	void dm_cs_ratio(
>
>  	{
>  		if ((dm_digtable.precs_ratio_state != dm_digtable.curcs_ratio_state) ||
> -			!initialized || force_write) {
> +		    !initialized || force_write) {
>  			/*DbgPrint("Write CS_ratio state = %d\n", DM_DigTable.CurCS_ratioState);*/
>  			if (dm_digtable.curcs_ratio_state == DIG_CS_RATIO_LOWER) {
>  				/*  Lower CS ratio for CCK. */
> @@ -2643,7 +2643,7 @@ void dm_fsync_timer_callback(struct timer_list *t)
>  	bool		bDoubleTimeInterval = false;
>
>  	if (priv->ieee80211->state == IEEE80211_LINKED &&
> -		priv->ieee80211->bfsync_enable &&
> +	    priv->ieee80211->bfsync_enable &&
>  		(priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_CDD_FSYNC)) {
>  		/* Count rate 54, MCS [7], [12, 13, 14, 15] */
>  		u32 rate_bitmap;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319141806.8592-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

