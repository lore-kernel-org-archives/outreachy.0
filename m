X-GM-THRID: 6948029216404275200
X-Received: by 2002:aca:3bc4:: with SMTP id i187mr3613833oia.174.1617718330874;
        Tue, 06 Apr 2021 07:12:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:f057:: with SMTP id o84ls4068486oih.3.gmail; Tue, 06 Apr
 2021 07:12:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz297XdRANW1MBX3bxllmX7fbX5d8FhF146AsFFigww0j+EwI+S23X7Wt0FlpSXFVpMhLoq
X-Received: by 2002:a05:6808:90d:: with SMTP id w13mr3411013oih.145.1617718328652;
        Tue, 06 Apr 2021 07:12:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617718328; cv=none;
        d=google.com; s=arc-20160816;
        b=nrEpxs3icd6lO3bW1yddaFy8bu95aFBDDKWIvJsnV+Gk67hR0ua71jU8LIXYVmQcKo
         qNjqnI4+vcomEWxliL3ANMla7V1tCPdzf39ma1BMDvsdKxImRakk99JYrj63SBXpCLqf
         SVNNWRlwSPqmY63QgEuqfxFqaygdeNgSa9w0cjVsi/i+3WrSttAmIwIE66DNiiWSdQr/
         C/1kpyYVvjIiJQHpalbGNeVX0YS2YkP80H1dinNh1vBV9qF9LfU2bEz4srhsXNCMBSzU
         EpE9ZImNU3MxZWUG3fAyllQY8h3vgzHNLi+L1v6pbZzxwz/ESAx8qPAD5oc3xlpql7lq
         5buA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mvdOtv3OnaFsDBMmP1K++NOirR4Ukjm7fZ+aTY+BPuQ=;
        b=gGjMIA1Zd17fFbi5xEeGHJn/uRLItz9tSlOoGkD27d0l5N5tBOuxO4FgQkbe60drwX
         Oy8XAQKrHO626MYZKs9O2U0KJh8/7qBYe/6WsFI8KszZO+ValNGvia9d8P6Nn8d3ilP7
         IrWPzWGkGdtom+g8Js0+hVTCd7pbD7nJm/Sn1h0xYw0obUrF+Pzmetljy6mBbO3u6l7a
         axk4BE2jNDBjUbyopDX7/H8smOPNoBdp+276JQdapAdf71IOmMZFIsnR3LuZHFolmFNU
         KCLUC91IZ+13MQ0+4bka47yoAeIzEzt96Inl9xuk27Szuivh5v3ZoykS+S6BJpi+ft9U
         DzjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Qos20xoL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x143si1371586oif.2.2021.04.06.07.12.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:12:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Qos20xoL;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E4CB613A7;
	Tue,  6 Apr 2021 14:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617718327;
	bh=SkeXr6kmO3TRWmCpzmcCYhbhUeaQPRXZtA7DPBw4ur4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qos20xoLQTARUM1v/Ei2vOg66CGij/FyTkAVkAI6ODbCzRLzX13fgfKsTNgjhGS5w
	 DCOxLHSoVndSuhNPi7PTFbOmH4DImO9rovmmISMaeVH3mPzZYRJWVFSj/QXPRG9NxH
	 5tVPuUZhoir9WI97DMFKcL83iVv+Tm6aIeTI/IU0=
Date: Tue, 6 Apr 2021 16:12:05 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Add spaces
 around operators
Message-ID: <YGxsNVs+sexiPMJS@kroah.com>
References: <20210406130138.30744-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406130138.30744-1-fmdefrancesco@gmail.com>

On Tue, Apr 06, 2021 at 03:01:38PM +0200, Fabio M. De Francesco wrote:
> Added spaces around operators in file HalBtc8723b1Ant.c. Issue detected
> by checkpatch.pl. Spaces are preferred to improve readibility.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  .../staging/rtl8723bs/hal/HalBtc8723b1Ant.c   | 98 +++++++++----------
>  1 file changed, 49 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> index 3e794093092b..b2b872016e45 100644
> --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> @@ -38,7 +38,7 @@ static u8 halbtc8723b1ant_BtRssiState(
>  			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_LOW) ||
>  			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_LOW)
>  		) {
> -			if (btRssi >= (rssiThresh+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> +			if (btRssi >= (rssiThresh + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
>  
>  				btRssiState = BTC_RSSI_STATE_HIGH;
>  				BTC_PRINT(
> @@ -85,7 +85,7 @@ static u8 halbtc8723b1ant_BtRssiState(
>  			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_LOW) ||
>  			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_LOW)
>  		) {
> -			if (btRssi >= (rssiThresh+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> +			if (btRssi >= (rssiThresh + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
>  				btRssiState = BTC_RSSI_STATE_MEDIUM;
>  				BTC_PRINT(
>  					BTC_MSG_ALGORITHM,
> @@ -104,7 +104,7 @@ static u8 halbtc8723b1ant_BtRssiState(
>  			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_MEDIUM) ||
>  			(pCoexSta->preBtRssiState == BTC_RSSI_STATE_STAY_MEDIUM)
>  		) {
> -			if (btRssi >= (rssiThresh1+BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
> +			if (btRssi >= (rssiThresh1 + BTC_RSSI_COEX_THRESH_TOL_8723B_1ANT)) {
>  				btRssiState = BTC_RSSI_STATE_HIGH;
>  				BTC_PRINT(
>  					BTC_MSG_ALGORITHM,
> @@ -353,11 +353,11 @@ static void halbtc8723b1ant_MonitorBtCtr(struct btc_coexist *pBtCoexist)
>  
>  	u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regHPTxRx);
>  	regHPTx = u4Tmp & bMaskLWord;
> -	regHPRx = (u4Tmp & bMaskHWord)>>16;
> +	regHPRx = (u4Tmp & bMaskHWord) >> 16;
>  
>  	u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regLPTxRx);
>  	regLPTx = u4Tmp & bMaskLWord;
> -	regLPRx = (u4Tmp & bMaskHWord)>>16;
> +	regLPRx = (u4Tmp & bMaskHWord) >> 16;
>  
>  	pCoexSta->highPriorityTx = regHPTx;
>  	pCoexSta->highPriorityRx = regHPRx;
> @@ -1317,7 +1317,7 @@ static void halbtc8723b1ant_SetFwPstdma(
>  	pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);
>  
>  	if (bApEnable) {
> -		if (byte1&BIT4 && !(byte1&BIT5)) {
> +		if (byte1 & BIT4 && !(byte1 & BIT5)) {
>  			BTC_PRINT(
>  				BTC_MSG_INTERFACE,
>  				INTF_NOTIFY,
> @@ -1349,9 +1349,9 @@ static void halbtc8723b1ant_SetFwPstdma(
>  		(
>  			"[BTCoex], PS-TDMA H2C cmd = 0x%x%08x\n",
>  			H2C_Parameter[0],
> -			H2C_Parameter[1]<<24|
> -			H2C_Parameter[2]<<16|
> -			H2C_Parameter[3]<<8|
> +			H2C_Parameter[1] << 24 |
> +			H2C_Parameter[2] << 16 |
> +			H2C_Parameter[3]<< 8 |

Why did you miss the space that is needed here too?

Did you run this patch through checkpatch.pl?

Please do so.

thanks,

greg k-h

