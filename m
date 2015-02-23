X-GM-THRID: 2829093699584
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b7e065b60dab7b1c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.160.176 with SMTP id xl16mr594173wib.6.1424712090790;
        Mon, 23 Feb 2015 09:21:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.211.114 with SMTP id nb18ls594362wic.26.canary; Mon, 23
 Feb 2015 09:21:30 -0800 (PST)
X-Received: by 10.181.13.236 with SMTP id fb12mr1473228wid.1.1424712090487;
        Mon, 23 Feb 2015 09:21:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si742251wix.0.2015.02.23.09.21.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 09:21:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,631,1418079600"; 
   d="scan'208";a="123037617"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 18:21:30 +0100
Date: Mon, 23 Feb 2015 18:21:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add blank line
 after declarations
In-Reply-To: <1424704560-7115-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231819560.2479@hadrien>
References: <1424704560-7115-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes these warning messages found by checkpatch.pl:
> WARNING: Missing a blank line after declarations.
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/usb_halinit.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> index 14650e9..62e1be3 100644
> --- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> +++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> @@ -104,6 +104,7 @@ static u32 rtl8188eu_InitPowerOn(struct adapter *adapt)
>  	u16 value16;
>  	/*  HW Power on sequence */
>  	struct hal_data_8188e	*haldata	= GET_HAL_DATA(adapt);
> +
>  	if (haldata->bMacPwrCtrlOn)
>  		return _SUCCESS;
>
> @@ -234,6 +235,7 @@ static void _InitNormalChipOneOutEpPriority(struct adapter *Adapter)
>  	struct hal_data_8188e	*haldata	= GET_HAL_DATA(Adapter);
>

Perhaps one could remove this blank line?

>  	u16 value = 0;
> +
>  	switch (haldata->OutEpQueueSel) {
>  	case TX_SELE_HQ:
>  		value = QUEUE_HIGH;
> @@ -352,6 +354,7 @@ static void _InitTransferPageSize(struct adapter *Adapter)
>  	/*  Tx page size is always 128. */
>

And this one?

julia

>  	u8 value8;
> +
>  	value8 = _PSRX(PBP_128) | _PSTX(PBP_128);
>  	usb_write8(Adapter, REG_PBP, value8);
>  }
> @@ -1417,6 +1420,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  		if (*((u8 *)val)) { /* under sitesurvey */
>  			/* config RCR to receive different BSSID & not to receive data frame */
>  			u32 v = usb_read32(Adapter, REG_RCR);
> +
>  			v &= ~(RCR_CBSSID_BCN);
>  			usb_write32(Adapter, REG_RCR, v);
>  			/* reject all data frame */
> @@ -1445,6 +1449,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  			} else {
>  				if (Adapter->in_cta_test) {
>  					u32 v = usb_read32(Adapter, REG_RCR);
> +
>  					v &= ~(RCR_CBSSID_DATA | RCR_CBSSID_BCN);/*  RCR_ADF */
>  					usb_write32(Adapter, REG_RCR, v);
>  				} else {
> @@ -1589,6 +1594,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  		{
>  			u32 cmd;
>  			u32 *cam_val = (u32 *)val;
> +
>  			usb_write32(Adapter, WCAMI, cam_val[0]);
>
>  			cmd = CAM_POLLINIG | CAM_WRITE | cam_val[1];
> @@ -1692,6 +1698,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  	case HW_VAR_RXDMA_AGG_PG_TH:
>  		{
>  			u8 threshold = *((u8 *)val);
> +
>  			if (threshold == 0)
>  				threshold = haldata->UsbRxAggPageCount;
>  			usb_write8(Adapter, REG_RXDMA_AGG_PG_TH, threshold);
> @@ -1713,6 +1720,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  	case HW_VAR_H2C_FW_JOINBSSRPT:
>  		{
>  			u8 mstatus = (*(u8 *)val);
> +
>  			rtl8188e_set_FwJoinBssReport_cmd(Adapter, mstatus);
>  		}
>  		break;
> @@ -1735,6 +1743,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  	case HW_VAR_RPT_TIMER_SETTING:
>  		{
>  			u16 min_rpt_time = (*(u16 *)val);
> +
>  			ODM_RA_Set_TxRPT_Time(podmpriv, min_rpt_time);
>  		}
>  		break;
> @@ -1791,6 +1800,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  	case HW_VAR_TX_RPT_MAX_MACID:
>  		{
>  			u8 maxMacid = *val;
> +
>  			DBG_88E("### MacID(%d),Set Max Tx RPT MID(%d)\n", maxMacid, maxMacid+1);
>  			usb_write8(Adapter, REG_TX_RPT_CTRL+1, maxMacid+1);
>  		}
> @@ -1884,6 +1894,7 @@ GetHalDefVar8188EUsb(
>  			struct mlme_priv *pmlmepriv = &Adapter->mlmepriv;
>  			struct sta_priv *pstapriv = &Adapter->stapriv;
>  			struct sta_info *psta;
> +
>  			psta = rtw_get_stainfo(pstapriv, pmlmepriv->cur_network.network.MacAddress);
>  			if (psta)
>  				*((int *)pValue) = psta->rssi_stat.UndecoratedSmoothedPWDB;
> @@ -1931,6 +1942,7 @@ GetHalDefVar8188EUsb(
>  	case HW_DEF_RA_INFO_DUMP:
>  		{
>  			u8 entry_id = *((u8 *)pValue);
> +
>  			if (check_fwstate(&Adapter->mlmepriv, _FW_LINKED)) {
>  				DBG_88E("============ RA status check ===================\n");
>  				DBG_88E("Mac_id:%d , RateID = %d, RAUseRate = 0x%08x, RateSGI = %d, DecisionRate = 0x%02x ,PTStage = %d\n",
> @@ -1946,6 +1958,7 @@ GetHalDefVar8188EUsb(
>  	case HW_DEF_ODM_DBG_FLAG:
>  		{
>  			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
> +
>  			pr_info("dm_ocm->DebugComponents = 0x%llx\n", dm_ocm->DebugComponents);
>  		}
>  		break;
> @@ -2011,6 +2024,7 @@ static u8 SetHalDefVar8188EUsb(struct adapter *Adapter, enum hal_def_variable eV
>  		{
>  			u8 bRSSIDump = *((u8 *)pValue);
>  			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
> +
>  			if (bRSSIDump)
>  				dm_ocm->DebugComponents	=	ODM_COMP_DIG|ODM_COMP_FA_CNT;
>  			else
> @@ -2021,6 +2035,7 @@ static u8 SetHalDefVar8188EUsb(struct adapter *Adapter, enum hal_def_variable eV
>  		{
>  			u64	DebugComponents = *((u64 *)pValue);
>  			struct odm_dm_struct *dm_ocm = &(haldata->odmpriv);
> +
>  			dm_ocm->DebugComponents = DebugComponents;
>  		}
>  		break;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424704560-7115-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

