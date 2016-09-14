X-GM-THRID: 6329968789142110208
X-Received: by 10.28.199.201 with SMTP id x192mr163538wmf.1.1473831974586;
        Tue, 13 Sep 2016 22:46:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.80.68 with SMTP id e65ls10337lfb.14.gmail; Tue, 13 Sep 2016
 22:46:14 -0700 (PDT)
X-Received: by 10.46.33.219 with SMTP id h88mr121706lji.5.1473831974015;
        Tue, 13 Sep 2016 22:46:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y7si1821294wmd.0.2016.09.13.22.46.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:46:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="193054515"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:46:13 +0200
Date: Wed, 14 Sep 2016 07:46:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: xgifb: remove unnecessary
 parentheses
In-Reply-To: <02a0ec389a5db28823bcd41829bc83b346df13dc.1473809551.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609140744530.3395@hadrien>
References: <cover.1473809550.git.gs051095@gmail.com> <02a0ec389a5db28823bcd41829bc83b346df13dc.1473809551.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 14 Sep 2016, Gargi Sharma wrote:

> Removing parentheses that are not required to make the code more
> readable.

Use the imperative.  Removing -> Remove.  Also, you could give some
information about why the change is OK.  "! has higher priority than && or
||, so remove parentheses around ! expressions to make the code more
readable."

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 316209f..af3f4d0 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -214,7 +214,7 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  		if (!(pVBInfo->VBInfo & TVSetPAL) &&
>  		    (modeflag & NoSupportSimuTV) &&
>  		    (pVBInfo->VBInfo & SetInSlaveMode) &&
> -		    (!(pVBInfo->VBInfo & SetNotSimuMode)))
> +		    !(pVBInfo->VBInfo & SetNotSimuMode))
>  			return 0;
>  	}
>
> @@ -1655,7 +1655,7 @@ static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
>  	modeflag = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag;
>
>  	if ((pVBInfo->SetFlag & ProgrammingCRT2) &&
> -	    (!(pVBInfo->LCDInfo & EnableScalingLCD))) { /* {LCDA/LCDB} */
> +	    !(pVBInfo->LCDInfo & EnableScalingLCD)) { /* {LCDA/LCDB} */
>  		index = XGI_GetLCDCapPtr(pVBInfo);
>  		tempal = pVBInfo->LCDCapList[index].LCD_VCLK;
>
> @@ -1716,7 +1716,7 @@ static void XGI_GetVCLKLen(unsigned char tempal, unsigned char *di_0,
>  {
>  	if (pVBInfo->VBType & (VB_SIS301 | VB_SIS301B | VB_SIS302B
>  			| VB_SIS301LV | VB_SIS302LV | VB_XGI301C)) {
> -		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
> +		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
>  		    (pVBInfo->SetFlag & ProgrammingCRT2)) {
>  			*di_0 = XGI_VBVCLKData[tempal].Part4_A;
>  			*di_1 = XGI_VBVCLKData[tempal].Part4_B;
> @@ -1741,8 +1741,8 @@ static void XGI_SetCRT2ECLK(unsigned short ModeIdIndex,
>  	for (i = 0; i < 4; i++) {
>  		xgifb_reg_and_or(pVBInfo->P3d4, 0x31, ~0x30,
>  				(unsigned short) (0x10 * i));
> -		if ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
> -				(!(pVBInfo->VBInfo & SetInSlaveMode))) {
> +		if (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
> +				!(pVBInfo->VBInfo & SetInSlaveMode)) {
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2e, di_0);
>  			xgifb_reg_set(pVBInfo->P3c4, 0x2f, di_1);
>  		} else {
> @@ -1986,7 +1986,7 @@ static void XGI_GetVBInfo(unsigned short ModeIdIndex,
>  	}
>
>  	if (!(tempbx & DisableCRT2Display)) {
> -		if ((!(tempbx & DriverMode)) || (!(modeflag & CRT2Mode))) {
> +		if (!(tempbx & DriverMode) || !(modeflag & CRT2Mode)) {
>  			if (!(tempbx & XGI_SetCRT2ToLCDA))
>  				tempbx |= (SetInSlaveMode | SetSimuScanMode);
>  		}
> @@ -2132,7 +2132,7 @@ static unsigned char XGI_GetLCDInfo(unsigned short ModeIdIndex,
>
>  	if ((pVBInfo->LCDResInfo == Panel_1400x1050) &&
>  	    (pVBInfo->VBInfo & SetCRT2ToLCD) && (resinfo == 9) &&
> -	    (!(tempbx & EnableScalingLCD)))
> +	    !(tempbx & EnableScalingLCD))
>  		/*
>  		 * set to center in 1280x1024 LCDB
>  		 * for Panel_1400x1050
> @@ -3922,7 +3922,7 @@ static void XGI_SetTap4Regs(struct vb_device_info *pVBInfo)
>  		xgifb_reg_set(pVBInfo->Part2Port, i, Tap4TimingPtr->Reg[j]);
>
>  	if ((pVBInfo->VBInfo & SetCRT2ToTV) &&
> -	    (!(pVBInfo->VBInfo & SetCRT2ToHiVision))) {
> +	    !(pVBInfo->VBInfo & SetCRT2ToHiVision)) {
>  		/* Set Vertical Scaling */
>  		Tap4TimingPtr = XGI_GetTap4Ptr(1, pVBInfo);
>  		for (i = 0xC0, j = 0; i < 0xFF; i++, j++)
> @@ -3932,7 +3932,7 @@ static void XGI_SetTap4Regs(struct vb_device_info *pVBInfo)
>  	}
>
>  	if ((pVBInfo->VBInfo & SetCRT2ToTV) &&
> -	    (!(pVBInfo->VBInfo & SetCRT2ToHiVision)))
> +	    !(pVBInfo->VBInfo & SetCRT2ToHiVision))
>  		/* Enable V.Scaling */
>  		xgifb_reg_and_or(pVBInfo->Part2Port, 0x4E, ~0x14, 0x04);
>  	else
> @@ -4142,8 +4142,8 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
>  					| TVSetHiVision))) {
>  				temp |= 0x0001;
>  				if ((pVBInfo->VBInfo & SetInSlaveMode) &&
> -						(!(pVBInfo->TVInfo
> -								& TVSimuMode)))
> +						!(pVBInfo->TVInfo
> +								& TVSimuMode))
>  					temp &= (~0x0001);
>  			}
>  		}
> @@ -4476,7 +4476,7 @@ static void XGI_DisableBridge(struct xgifb_video_info *xgifb_info,
>
>  		if ((pVBInfo->VBInfo &
>  			(DisableCRT2Display | SetSimuScanMode)) ||
> -		    ((!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA)) &&
> +		    (!(pVBInfo->VBInfo & XGI_SetCRT2ToLCDA) &&
>  		    (pVBInfo->VBInfo &
>  			(SetCRT2ToRAMDAC | SetCRT2ToLCD | SetCRT2ToTV))))
>  			xgifb_reg_or(pVBInfo->Part1Port, 0x00, 0x80);
> @@ -4587,7 +4587,7 @@ static void XGI_GetTVPtrIndex2(unsigned short *tempbx, unsigned char *tempcl,
>
>  	if (pVBInfo->VBType & (VB_SIS301B | VB_SIS302B | VB_SIS301LV
>  			| VB_SIS302LV | VB_XGI301C)) {
> -		if ((!(pVBInfo->VBInfo & SetInSlaveMode)) || (pVBInfo->TVInfo
> +		if (!(pVBInfo->VBInfo & SetInSlaveMode) || (pVBInfo->TVInfo
>  				& TVSimuMode)) {
>  			*tempbx += 8;
>  			*tempcl += 1;
> @@ -4988,8 +4988,8 @@ reg_and_or:
>  	if (pVBInfo->VBInfo & (SetCRT2ToRAMDAC | SetCRT2ToTV | SetCRT2ToLCD
>  			| XGI_SetCRT2ToLCDA)) {
>  		tempah &= (~0x08);
> -		if ((pVBInfo->ModeType == ModeVGA) && (!(pVBInfo->VBInfo
> -				& SetInSlaveMode))) {
> +		if ((pVBInfo->ModeType == ModeVGA) && !(pVBInfo->VBInfo
> +				& SetInSlaveMode)) {
>  			tempah |= 0x010;
>  		}
>  		tempah |= 0x080;
> @@ -5486,7 +5486,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  		XGI_DisableBridge(xgifb_info, HwDeviceExtension, pVBInfo);
>
>  		if (pVBInfo->VBInfo & (SetSimuScanMode | XGI_SetCRT2ToLCDA) ||
> -			(!(pVBInfo->VBInfo & SwitchCRT2))) {
> +			!(pVBInfo->VBInfo & SwitchCRT2)) {
>  			XGI_SetCRT1Group(xgifb_info, HwDeviceExtension, ModeNo,
>  					ModeIdIndex, pVBInfo);
>
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/02a0ec389a5db28823bcd41829bc83b346df13dc.1473809551.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

