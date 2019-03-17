X-GM-THRID: 6669265984427130880
X-Received: by 2002:a1c:200e:: with SMTP id g14mr712242wmg.13.1552811879940;
        Sun, 17 Mar 2019 01:37:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c0cc:: with SMTP id s12ls1625091wmh.14.gmail; Sun, 17
 Mar 2019 01:37:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwoPCXaek23kuyNjeEkPdQ3SD9gg1Fvt3gNQU6HVZMIPq9+yQvYPGe2+gk7yCKa0vDBTb58
X-Received: by 2002:a1c:f107:: with SMTP id p7mr662389wmh.12.1552811879176;
        Sun, 17 Mar 2019 01:37:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552811879; cv=none;
        d=google.com; s=arc-20160816;
        b=d7dLMwB/3ujTOzoVGkfuEWyfWGg6JzRr/vBusgCIP19FyQ6z2840mbCiFC6UQ+qPof
         QXqyxfbUTLy7FpugbaxhiQQ0Li7pbaKnWq4ycTIzhPU93dmICqqZrpN8RXvxb69AKQv0
         Ul2P7UgyDRXcSu1NnABHNg5oSEJrLDdzUP+Oyy51DqXWZVa5Dv7Wrm3I3M3iYdeE/2qu
         euPs/e2T9x85o9b9C3X9eCtKp6AbjFpodVJcabTyS26YnAi7ExLEnRWbPX2fZ9JOie9B
         lam2KL9MQtT+9IIgeKcR7/2Ov9bVX+H9gp62/sbi/rVbC30yot0h701XyLEwUsDD+/jP
         0Igg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=b7ueWS9qUxegxX1ZG5PS3Cqp80rRLzeFwIkiYnQKyWc=;
        b=gvzUcOXFlqT+85rNFJ6guELdZG/lHhg5D34GqIFvHl9XfAfbfHccgheRDDvrEEi9/G
         l9iBrevOXyMdh6qC5rWb35TtOoFyPIUxa3pdpJF/KgyMqJQXOUYvmS3sbREFF0pO5VDo
         V90eGyc3dSRmdoeYiQipr4VTUatgZ/6hnlPd4//lDzJ7yMyG/l3uda8VdRTHwQLEoDt7
         CA7vtudd6GXEEF6CHd6Vmy3hHpO01THQM2NLBn0fanhaIBPR4s77C8AZ4lvtlXa8ECsa
         Gw8V5VVpCw1HrL9Jy6Kce3UDRMVyrrlOdvV02SXBpDu8VISgsi7iWgGxvq/BmoPNkYqh
         C6zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p10si290591wro.1.2019.03.17.01.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 01:37:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,489,1544482800"; 
   d="scan'208";a="299678032"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 09:37:58 +0100
Date: Sun, 17 Mar 2019 09:37:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 statement.
In-Reply-To: <1552809479-10739-1-git-send-email-digholebhagyashri@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170934590.2588@hadrien>
References: <1552809479-10739-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Bhagyashri Dighole wrote:

> Remove unnecessary conditional statement.
> Detected by Coccinelle semantic patch cond_no_effect.cocci.

I have the impression that these are all done incorrectly.  If you have

if (x)
  thing();
else
  thing();

it should not become

if (x)
  thing();

It should become

thing();

alone with no if.

In many of these cases, it seems like the if encodes some information
about the device, and in some cases some information that needs to be
taken into account but remains a TODO.  If the information is not apparent
in some other way, then it might be better to keep the code as is,

julia

>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/comedi/drivers/das1800.c            |  8 --------
>  drivers/staging/rtl8723bs/core/rtw_cmd.c            |  4 ----
>  drivers/staging/rtl8723bs/core/rtw_mlme.c           |  6 ------
>  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c     | 12 ------------
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c          |  2 --
>  drivers/staging/rtl8723bs/hal/odm_DIG.c             |  3 ---
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c        |  5 -----
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c      |  2 --
>  drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c |  3 ---
>  drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c |  6 ------
>  10 files changed, 51 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> index f16aa7e9..35f890a 100644
> --- a/drivers/staging/comedi/drivers/das1800.c
> +++ b/drivers/staging/comedi/drivers/das1800.c
> @@ -1299,14 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
>  			outb(DAC(i), dev->iobase + DAS1800_SELECT);
>  			outw(0, dev->iobase + DAS1800_DAC);
>  		}
> -	} else if (board->id == DAS1800_ID_AO) {
> -		/*
> -		 * 'ao' boards have waveform analog outputs that are not
> -		 * currently supported.
> -		 */
> -		s->type		= COMEDI_SUBD_UNUSED;
> -	} else {
> -		s->type		= COMEDI_SUBD_UNUSED;
>  	}
>
>  	/* Digital Input subdevice */
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 91520ca..62e2582 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -527,10 +527,6 @@ int rtw_cmd_thread(void *context)
>  				DBG_871X(ADPT_FMT" cmd =%d process_time =%lu > 1 sec\n",
>  					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
>  				/* rtw_warn_on(1); */
> -			} else if (pcmd->cmdcode == GEN_CMD_CODE(_Set_MLME_EVT)) {
> -				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
> -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> -				/* rtw_warn_on(1); */
>  			} else {
>  				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
>  					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 406e313..0eaeb91 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -2900,15 +2900,9 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  			/* remove this part because testbed AP should disable RX AMPDU */
>  			/* phtpriv->ampdu_enable = false; */
>  			phtpriv->ampdu_enable = true;
> -		} else {
> -			phtpriv->ampdu_enable = true;
>  		}
> -	} else if (pregistrypriv->ampdu_enable == 2) {
> -		/* remove this part because testbed AP should disable RX AMPDU */
> -		/* phtpriv->ampdu_enable = true; */
>  	}
>
> -
>  	/* check Max Rx A-MPDU Size */
>  	len = 0;
>  	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
> diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
> index cb62fc0..0632f78 100644
> --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
> +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
> @@ -1605,9 +1605,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
>  					} else if (maxInterval == 2) {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 14);
>  						pCoexDm->psTdmaDuAdjType = 14;
> -					} else if (maxInterval == 3) {
> -						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
> -						pCoexDm->psTdmaDuAdjType = 15;
>  					} else {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 15);
>  						pCoexDm->psTdmaDuAdjType = 15;
> @@ -1619,9 +1616,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
>  					} else if (maxInterval == 2) {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 10);
>  						pCoexDm->psTdmaDuAdjType = 10;
> -					} else if (maxInterval == 3) {
> -						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
> -						pCoexDm->psTdmaDuAdjType = 11;
>  					} else {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 11);
>  						pCoexDm->psTdmaDuAdjType = 11;
> @@ -1635,9 +1629,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
>  					} else if (maxInterval == 2) {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 6);
>  						pCoexDm->psTdmaDuAdjType = 6;
> -					} else if (maxInterval == 3) {
> -						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
> -						pCoexDm->psTdmaDuAdjType = 7;
>  					} else {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 7);
>  						pCoexDm->psTdmaDuAdjType = 7;
> @@ -1649,9 +1640,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
>  					} else if (maxInterval == 2) {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 2);
>  						pCoexDm->psTdmaDuAdjType = 2;
> -					} else if (maxInterval == 3) {
> -						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
> -						pCoexDm->psTdmaDuAdjType = 3;
>  					} else {
>  						halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, 3);
>  						pCoexDm->psTdmaDuAdjType = 3;
> diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> index 2b43f6d..fb4d130 100644
> --- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> +++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
> @@ -495,8 +495,6 @@ static u8 halbtcoutsrc_Get(void *pBtcContext, u8 getType, void *pOutBuf)
>  			*pU4Tmp = BTC_WIFI_BW_LEGACY;
>  		else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_20)
>  			*pU4Tmp = BTC_WIFI_BW_HT20;
> -		else if (pHalData->CurrentChannelBW == CHANNEL_WIDTH_40)
> -			*pU4Tmp = BTC_WIFI_BW_HT40;
>  		else
>  			*pU4Tmp = BTC_WIFI_BW_HT40; /* todo */
>  		break;
> diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
> index 4fa6cd3..a15f033 100644
> --- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
> +++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
> @@ -499,9 +499,6 @@ void odm_DIGInit(void *pDM_VOID)
>  	if (pDM_Odm->BoardType & (ODM_BOARD_EXT_PA|ODM_BOARD_EXT_LNA)) {
>  		pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
>  		pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
> -	} else {
> -		pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
> -		pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
>  	}
>
>  }
> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> index 3c65a9c..8ff4029 100644
> --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> @@ -562,11 +562,6 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
>  		/*  Timeout value is calculated by 34 / (2^n) */
>  		valueDMATimeout = 0x06;
>  		valueDMAPageCount = 0x06;
> -	} else {
> -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> -		/*  TX/RX Balance */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
>  	}
>
>  	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH+1, valueDMATimeout);
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 8fb03ef..6a30363 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -214,8 +214,6 @@ static char *translate_scan(struct adapter *padapter,
>  	} else if (ht_cap) {
>  		if (mcs_rate&0x8000) { /* MCS15 */
>  			max_rate = (bw_40MHz) ? ((short_GI)?300:270):((short_GI)?144:130);
> -		} else if (mcs_rate&0x0080) { /* MCS7 */
> -			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
>  		} else { /* default MCS7 */
>  			/* DBG_871X("wx_get_scan, mcs_rate_bitmap = 0x%x\n", mcs_rate); */
>  			max_rate = (bw_40MHz) ? ((short_GI)?150:135):((short_GI)?72:65);
> diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
> index ade271c..959e0d7 100644
> --- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
> +++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
> @@ -3365,9 +3365,6 @@ static void halbtc8822b1ant_action_wifi_connected(struct btc_coexist *btcoexist)
>  				/*sy modify case16 -> case17*/
>  				halbtc8822b1ant_coex_table_with_type(
>  					btcoexist, NORMAL_EXEC, 1);
> -			else
> -				halbtc8822b1ant_coex_table_with_type(
> -					btcoexist, NORMAL_EXEC, 1);
>  		}
>  	} else {
>  		if (coex_dm->bt_status == BT_8822B_1ANT_BT_STATUS_ACL_BUSY) {
> diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> index 7e60710..cfa194c 100644
> --- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> +++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
> @@ -2696,12 +2696,6 @@ static void halbtc8822b2ant_action_hid(struct btc_coexist *btcoexist)
>  							     NORMAL_EXEC, 4);
>  			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
>  						108);
> -		} else if (wifi_bw == 0) { /* if 11bg mode */
> -
> -			halbtc8822b2ant_coex_table_with_type(btcoexist,
> -							     NORMAL_EXEC, 8);
> -			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
> -						111);
>  		} else {
>  			halbtc8822b2ant_coex_table_with_type(btcoexist,
>  							     NORMAL_EXEC, 8);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552809479-10739-1-git-send-email-digholebhagyashri%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

