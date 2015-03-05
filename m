X-GM-THRID: 6688903004160
X-Received: by 10.236.222.103 with SMTP id s97mr7846888yhp.19.1425519374170;
        Wed, 04 Mar 2015 17:36:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.164 with SMTP id v36ls781796iov.99.gmail; Wed, 04 Mar
 2015 17:36:13 -0800 (PST)
X-Received: by 10.66.237.140 with SMTP id vc12mr8157455pac.44.1425519373761;
        Wed, 04 Mar 2015 17:36:13 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id kt5si954120qcb.3.2015.03.04.17.36.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:36:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id q107so2958297qgd.7
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 17:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=2nIiryJIptIckldUXyWnPbtANIcYEz+vzRPBC0NkOho=;
        b=IOYx9Mj3H97jyA9Qj5mB3/zqdvMqHL3UI7iKuXajQR533JVHeL9XwRDjhAUy1cyQMp
         5+30LXlYmA3LDjX70L1E199Cfck1gf8LbyC8YftEuzfXhT3whv+pWuRycdgLhBwy4jlo
         J5sjvDgPRQWJoh0ycL9UYs6O0Tc1K9LsUo1sPL9sGcurvyaXpHLx7wWkXmn5vh9Y1aq7
         rDexKl3FJtABY5rPUtPa6NwWp6NaTPVzAyfKwRyWzYbWjYh8VjRZ8aZ4tN/DtWd2p1O/
         udIHDVGoTNLMVVECLhNGvmPx5QJ4UNdzdi7lllGs4M+RY6K8Tbcda62SqAoPMG0bWvok
         tlIw==
X-Received: by 10.140.238.2 with SMTP id j2mr9597116qhc.5.1425519373609;
        Wed, 04 Mar 2015 17:36:13 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id 93sm2017998qks.43.2015.03.04.17.36.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 17:36:02 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F7B301.8020203@gmail.com>
Date: Wed, 04 Mar 2015 20:36:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Cristina Opriceana <cristina.opriceana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Bool tests don't
 need comparisons
References: <20150304230752.GA22499@Inspiron>
In-Reply-To: <20150304230752.GA22499@Inspiron>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/04/15 18:07, Cristina Opriceana wrote:
> This patch removes the following coccinelle warning:
> WARNING: Comparison to bool.
> It also adds small fixes for some coding style warnings.
> 
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c |  8 +++-----
>  drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c    |  4 ++--
>  drivers/staging/rtl8192u/r8192U_core.c                 |  2 +-
>  drivers/staging/rtl8192u/r8192U_dm.c                   | 12 ++++++------
>  drivers/staging/rtl8192u/r819xU_firmware.c             |  6 +++---
>  drivers/staging/rtl8192u/r819xU_phy.c                  |  2 +-
>  6 files changed, 16 insertions(+), 18 deletions(-)

This patch is technically correct, the only issue is with some cases
where you touch a line, you should try to fix up other aesthetic issues
on the same line while you are at it.

See my comments below.

Cheers,
Jes

> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index 1cc66a1..92e6e7f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -1364,12 +1364,10 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
>  		ieee->LinkDetectInfo.NumRecvDataInPeriod= 1;
>  	}
>  	ieee->link_change(ieee->dev);
> -	if(ieee->is_silent_reset == 0){
> +	if (!ieee->is_silent_reset) {
>  		printk("============>normal associate\n");
>  	notify_wx_assoc_event(ieee);
> -	}
> -	else if(ieee->is_silent_reset == 1)
> -	{
> +	} else if (ieee->is_silent_reset) {
>  		printk("==================>silent reset associate\n");
>  		ieee->is_silent_reset = false;
>  	}
> @@ -2053,7 +2051,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  								ieee->SetWirelessMode(ieee->dev, IEEE_G);
>  							}
>  
> -							if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode == true)
> +							if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode)
>  							{
>  								printk("===============>entern half N mode\n");
>  								ieee->bHalfWirelessN24GMode = true;

Here, since you are touching this line, you should break it down as well.

> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> index acaa723..8e77c6f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
> @@ -288,7 +288,7 @@ static PTS_COMMON_INFO SearchAdmitTRStream(struct ieee80211_device *ieee,
>  	//for(dir = DIR_UP; dir <= DIR_BI_DIR; dir++)
>  	for(dir = 0; dir <= DIR_BI_DIR; dir++)
>  	{
> -		if(search_dir[dir] ==false )
> +		if (!search_dir[dir])
>  			continue;
>  		list_for_each_entry(pRet, psearch_list, List){
>  	//		IEEE80211_DEBUG(IEEE80211_DL_TS, "ADD:%pM, TID:%d, dir:%d\n", pRet->Addr, pRet->TSpec.f.TSInfo.field.ucTSID, pRet->TSpec.f.TSInfo.field.ucDirection);
> @@ -400,7 +400,7 @@ bool GetTs(
>  	}
>  	else
>  	{
> -		if(bAddNewTs == false)
> +		if (!bAddNewTs)
>  		{
>  			IEEE80211_DEBUG(IEEE80211_DL_TS, "add new TS failed(tid:%d)\n", UP);
>  			return false;

Here you should move the bracket up on the if-line.

> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 7f0ace1..f84569b 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -2822,7 +2822,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
>  		}
>  		dm_initialize_txpower_tracking(dev);
>  
> -		if (priv->bDcut == true) {
> +		if (priv->bDcut) {
>  			u32 i, TempCCk;
>  			u32 tmpRegA = rtl8192_QueryBBReg(dev, rOFDM0_XATxIQImbalance, bMaskDWord);
>  			for (i = 0; i < TxBBGainTableLength; i++) {
> diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
> index 167d3b1..307e1d0 100644
> --- a/drivers/staging/rtl8192u/r8192U_dm.c
> +++ b/drivers/staging/rtl8192u/r8192U_dm.c
> @@ -562,7 +562,7 @@ static void dm_TXPowerTrackingCallback_TSSI(struct net_device *dev)
>  					break;
>  				}
>  			}
> -			if (viviflag == true) {
> +			if (viviflag) {
>  				write_nic_byte(dev, 0x1ba, 0);
>  				viviflag = false;
>  				RT_TRACE(COMP_POWER_TRACKING, "we filtered the data\n");
> @@ -765,7 +765,7 @@ void dm_txpower_trackingcallback(struct work_struct *work)
>  	struct r8192_priv *priv = container_of(dwork, struct r8192_priv, txpower_tracking_wq);
>  	struct net_device *dev = priv->ieee80211->dev;
>  
> -	if (priv->bDcut == true)
> +	if (priv->bDcut)
>  		dm_TXPowerTrackingCallback_TSSI(dev);
>  	else
>  		dm_TXPowerTrackingCallback_ThermalMeter(dev);
> @@ -1300,7 +1300,7 @@ void dm_initialize_txpower_tracking(struct net_device *dev)
>  {
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  
> -	if (priv->bDcut == true)
> +	if (priv->bDcut)
>  		dm_InitializeTXPowerTracking_TSSI(dev);
>  	else
>  		dm_InitializeTXPowerTracking_ThermalMeter(dev);
> @@ -1356,7 +1356,7 @@ static void dm_check_txpower_tracking(struct net_device *dev)
>  #ifdef RTL8190P
>  	dm_CheckTXPowerTracking_TSSI(dev);
>  #else
> -	if (priv->bDcut == true)
> +	if (priv->bDcut)
>  		dm_CheckTXPowerTracking_TSSI(dev);
>  	else
>  		dm_CheckTXPowerTracking_ThermalMeter(dev);
> @@ -1466,7 +1466,7 @@ void dm_cck_txpower_adjust(struct net_device *dev, bool binch14)
>  {	/*  dm_CCKTxPowerAdjust */
>  	struct r8192_priv *priv = ieee80211_priv(dev);
>  
> -	if (priv->bDcut == true)
> +	if (priv->bDcut)
>  		dm_CCKTxPowerAdjust_TSSI(dev, binch14);
>  	else
>  		dm_CCKTxPowerAdjust_ThermalMeter(dev, binch14);
> @@ -3063,7 +3063,7 @@ static void dm_dynamic_txpower(struct net_device *dev)
>  			priv->bDynamicTxLowPower = false;
>  		} else {
>  			/* high power state check */
> -			if (priv->undecorated_smoothed_pwdb < txlowpower_threshold && priv->bDynamicTxHighPower == true)
> +			if (priv->undecorated_smoothed_pwdb < txlowpower_threshold && priv->bDynamicTxHighPower)
>  				priv->bDynamicTxHighPower = false;
>  
>  			/* low power state check */

Here you should also break down the line to keep it below 80 characters.

> diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
> index 1a3a09f..aae30fc 100644
> --- a/drivers/staging/rtl8192u/r819xU_firmware.c
> +++ b/drivers/staging/rtl8192u/r819xU_firmware.c
> @@ -281,7 +281,7 @@ bool init_firmware(struct net_device *dev)
>  		if (rst_opt == OPT_SYSTEM_RESET)
>  			release_firmware(fw_entry);
>  
> -		if (rt_status != true)
> +		if (!rt_status)
>  			goto download_firmware_fail;
>  
>  		switch (init_step) {
> @@ -304,7 +304,7 @@ bool init_firmware(struct net_device *dev)
>  
>  			/* Check Put Code OK and Turn On CPU */
>  			rt_status = CPUcheck_maincodeok_turnonCPU(dev);
> -			if (rt_status != true) {
> +			if (!rt_status) {
>  				RT_TRACE(COMP_ERR, "CPUcheck_maincodeok_turnonCPU fail!\n");
>  				goto download_firmware_fail;
>  			}
> @@ -318,7 +318,7 @@ bool init_firmware(struct net_device *dev)
>  			mdelay(1);
>  
>  			rt_status = CPUcheck_firmware_ready(dev);
> -			if (rt_status != true) {
> +			if (!rt_status) {
>  				RT_TRACE(COMP_ERR, "CPUcheck_firmware_ready fail(%d)!\n",rt_status);
>  				goto download_firmware_fail;
>  			}
> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
> index 084e04f..3451ec7 100644
> --- a/drivers/staging/rtl8192u/r819xU_phy.c
> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
> @@ -1099,7 +1099,7 @@ bool rtl8192_SetRFPowerState(struct net_device *dev,
>  	if (eRFPowerState == priv->ieee80211->eRFPowerState)
>  		return false;
>  
> -	if (priv->SetRFPowerStateInProgress == true)
> +	if (priv->SetRFPowerStateInProgress)
>  		return false;
>  
>  	priv->SetRFPowerStateInProgress = true;
> 


