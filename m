X-GM-THRID: 6390824128052461568
X-Received: by 10.25.18.219 with SMTP id 88mr878363lfs.29.1488004281523;
        Fri, 24 Feb 2017 22:31:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.83 with SMTP id 19ls263854ljv.49.gmail; Fri, 24 Feb 2017
 22:31:20 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr718595ljv.0.1488004280186;
        Fri, 24 Feb 2017 22:31:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si267387wmh.1.2017.02.24.22.31.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 22:31:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,202,1484002800"; 
   d="scan'208";a="262024706"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 07:31:10 +0100
Date: Sat, 25 Feb 2017 07:31:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: correct the multiple
 line dereference
In-Reply-To: <20170224234130.GA608@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702250729120.2088@hadrien>
References: <20170224234130.GA608@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 25 Feb 2017, Arushi Singhal wrote:

> Error was reported by checkpatch.pl as
> WARNING: Avoid multiple line dereference...
> And If there is boolean operator then it is fixed by Splitting line at
> boolean operator.This is a coding style error.

There is strange spacing and capitalization in the above two lines.  Only
the first word in a sentence should be capitalized.  There should be at
least one space after a period.

> The changes are made such that the other errors does not generate
> beacause of this change like line exceeding 80 characters length.

This doesn't say anything about what you did.

> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v2
>  - changes done such that no other errors can generate.
> ---

You don't need --- here.  Only the one just below the Signed off by.

julia

>  drivers/staging/xgifb/XGI_main_26.c | 21 +++++++++------------
>  drivers/staging/xgifb/vb_setmode.c  | 14 +++++++-------
>  2 files changed, 16 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 6930f7eb741b..651987398d42 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -878,30 +878,27 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
>  			}
>
>  			if ((filter >= 0) && (filter <= 7)) {
> +				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
> +
>  				pr_debug("FilterTable[%d]-%d: %*ph\n",
>  					 filter_tb, filter,
> -					 4, XGI_TV_filter[filter_tb].
> -						   filter[filter]);
> +					 4, f);
>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x35,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][0]));
> -				xgifb_reg_set(
> +					(f[0]));
> +			        xgifb_reg_set(
>  					XGIPART2,
>  					0x36,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][1]));
> -				xgifb_reg_set(
> +					(f[1]));
> +			        xgifb_reg_set(
>  					XGIPART2,
>  					0x37,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][2]));
> +					(f[2]));
>  				xgifb_reg_set(
>  					XGIPART2,
>  					0x38,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][3]));
> +					(f[3]));
>  			}
>  		}
>  	}
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 7c7c8c8f1df3..1220d0cea87d 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -221,8 +221,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>
>  	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>  	       tempbx; (*i)--) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		infoflag =
> +		XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
>  		if (infoflag & tempax)
>  			return 1;
>
> @@ -231,8 +231,8 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  	}
>
>  	for ((*i) = 0;; (*i)++) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		infoflag =
> +		XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
>  		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
>  				!= tempbx) {
>  			return 0;
> @@ -5092,8 +5092,8 @@ unsigned short XGI_GetRatePtrCRT2(struct xgi_hw_device_info *pXGIHWDE,
>
>  	i = 0;
>  	do {
> -		if (XGI330_RefIndex[RefreshRateTableIndex + i].
> -			ModeID != ModeNo)
> +		if (XGI330_RefIndex[RefreshRateTableIndex + i].ModeID
> +				!= ModeNo)
>  			break;
>  		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
>  		temp &= ModeTypeMask;
> @@ -5484,7 +5484,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  				return 0;
>
>  		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
> -						Ext_ModeFlag & ModeTypeMask;
> +				Ext_ModeFlag & ModeTypeMask;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170224234130.GA608%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

