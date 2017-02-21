X-GM-THRID: 6389612389434654720
X-Received: by 10.25.216.74 with SMTP id p71mr3213175lfg.17.1487698858462;
        Tue, 21 Feb 2017 09:40:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.154.135 with SMTP id c129ls1734953wme.13.gmail; Tue, 21 Feb
 2017 09:40:57 -0800 (PST)
X-Received: by 10.28.47.67 with SMTP id v64mr1353868wmv.3.1487698857712;
        Tue, 21 Feb 2017 09:40:57 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si1145233wmn.2.2017.02.21.09.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:40:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="261505787"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 18:40:57 +0100
Date: Tue, 21 Feb 2017 18:40:51 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: xgifb: correct the multiple
 line dereference to fix coding stye errors
In-Reply-To: <20170221171920.GA18917@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702211840010.3448@hadrien>
References: <20170221171920.GA18917@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, Arushi Singhal wrote:

> Error was reported by checkpatch.pl as
> WARNING: Avoid multiple line dereference...
> if there is boolean operator then it is fixed by Splitting line at
> boolean operator.

This is massively execeeding the 80 character boundary, and not for
something trivial like a string.  Maybe the code can be reorganized in
some other way.

julia

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/xgifb/XGI_main_26.c | 15 +++++----------
>  drivers/staging/xgifb/vb_setmode.c  | 19 +++++++------------
>  2 files changed, 12 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 6930f7eb741b..4fd9bfafccc5 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -880,28 +880,23 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
>  			if ((filter >= 0) && (filter <= 7)) {
>  				pr_debug("FilterTable[%d]-%d: %*ph\n",
>  					 filter_tb, filter,
> -					 4, XGI_TV_filter[filter_tb].
> -						   filter[filter]);
> +					 4, XGI_TV_filter[filter_tb].filter[filter]);
>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x35,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][0]));
> +					(XGI_TV_filter[filter_tb].filter[filter][0]));
>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x36,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][1]));
> +					(XGI_TV_filter[filter_tb].filter[filter][1]));
>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x37,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][2]));
> +					(XGI_TV_filter[filter_tb].filter[filter][2]));
>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x38,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][3]));
> +					(XGI_TV_filter[filter_tb].filter[filter][3]));
>  			}
>  		}
>  	}
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 7c7c8c8f1df3..00f1ae3adcda 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -221,8 +221,7 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>
>  	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>  	       tempbx; (*i)--) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
>  		if (infoflag & tempax)
>  			return 1;
>
> @@ -231,8 +230,7 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  	}
>
>  	for ((*i) = 0;; (*i)++) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
>  		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
>  				!= tempbx) {
>  			return 0;
> @@ -654,8 +652,8 @@ static void XGI_UpdateXG21CRTC(unsigned short ModeNo,
>  	    (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
>  						      RES640x480x60))
>  		index = 12;
> -	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].
> -				Ext_CRT1CRTC == RES640x480x72))
> +	else if (ModeNo == 0x2E && (XGI330_RefIndex[RefreshRateTableIndex].Ext_CRT1CRTC ==
> +				RES640x480x72))
>  		index = 13;
>  	else if (ModeNo == 0x2F)
>  		index = 14;
> @@ -5092,8 +5090,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>
>  	i = 0;
>  	do {
> -		if (XGI330_RefIndex[RefreshRateTableIndex + i].
> -			ModeID != ModeNo)
> +		if (XGI330_RefIndex[RefreshRateTableIndex + i].ModeID != ModeNo)
>  			break;
>  		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
>  		temp &= ModeTypeMask;
> @@ -5105,8 +5102,7 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>  	} while (index != 0xFFFF);
>  	if (!(pVBInfo->VBInfo & SetCRT2ToRAMDAC)) {
>  		if (pVBInfo->VBInfo & SetInSlaveMode) {
> -			temp = XGI330_RefIndex[RefreshRateTableIndex + i - 1].
> -				Ext_InfoFlag;
> +			temp = XGI330_RefIndex[RefreshRateTableIndex + i - 1].Ext_InfoFlag;
>  			if (temp & InterlaceMode)
>  				i++;
>  		}
> @@ -5483,8 +5479,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  						   ModeIdIndex))
>  				return 0;
>
> -		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
> -						Ext_ModeFlag & ModeTypeMask;
> +		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].Ext_ModeFlag & ModeTypeMask;
>
>  		pVBInfo->SetFlag = 0;
>  		pVBInfo->VBInfo = DisableCRT2Display;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170221171920.GA18917%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

