X-GM-THRID: 6390824128052461568
X-Received: by 10.28.142.83 with SMTP id q80mr33106wmd.16.1488127123489;
        Sun, 26 Feb 2017 08:38:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.77.141 with SMTP id a135ls668741lfb.3.gmail; Sun, 26 Feb
 2017 08:38:42 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr1330281ljv.0.1488127122289;
        Sun, 26 Feb 2017 08:38:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si632149wmf.0.2017.02.26.08.38.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 08:38:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,209,1484002800"; 
   d="scan'208";a="262134504"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 17:38:41 +0100
Date: Sun, 26 Feb 2017 17:38:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: arnaud.patard@rtp-net.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: xgifb: correct the multiple
 line dereference
In-Reply-To: <20170226162633.GA20191@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702261730350.2056@hadrien>
References: <20170226162633.GA20191@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 26 Feb 2017, Arushi Singhal wrote:

> Error was reported by checkpatch.pl as "Avoid multiple line
> dereference".And If there is boolean operator then it is
> fixed by Splitting line at boolean operator to satisfy coding
> style.

Please improve the commit message.  Capital letters should only appear at
the beginning of a sentence.  There should be a space after a period.

The current message also does not explain much about what you did.  The
key point in what you did would seem to be the addition of a new variable,
but that isn't mentioned at all.

>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v4
>   - changes done such that no other errors can generate.
>   - Improve the coding style.
>
>  drivers/staging/xgifb/XGI_main_26.c | 30 +++++++-----------------------
>  drivers/staging/xgifb/vb_setmode.c  | 14 +++++++-------
>  2 files changed, 14 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 6930f7eb741b..825f7dcd2f49 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -878,30 +878,14 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
>  			}
>
>  			if ((filter >= 0) && (filter <= 7)) {
> +				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
> +
>  				pr_debug("FilterTable[%d]-%d: %*ph\n",
> -					 filter_tb, filter,
> -					 4, XGI_TV_filter[filter_tb].
> -						   filter[filter]);
> -				xgifb_reg_set(
> -					XGIPART2,
> -					0x35,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][0]));
> -				xgifb_reg_set(
> -					XGIPART2,
> -					0x36,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][1]));
> -				xgifb_reg_set(
> -					XGIPART2,
> -					0x37,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][2]));
> -				xgifb_reg_set(
> -					XGIPART2,
> -					0x38,
> -					(XGI_TV_filter[filter_tb].
> -						filter[filter][3]));
> +					 filter_tb, filter, 4, f);
> +				xgifb_reg_set(XGIPART2, 0x35, f[0]);
> +			        xgifb_reg_set(XGIPART2, 0x36, f[1]);
> +			        xgifb_reg_set(XGIPART2, 0x37, f[2]);
> +				xgifb_reg_set(XGIPART2, 0x38, f[3]);

This part looks like it will now be much more readable.

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

Here the alignment is not very nice.  Maybe a new variable could also be
introduced.  But be careful with respect to the loop and the update on
(*i).

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

Can't you get != ModeNo int the line above?

>  			break;
>  		temp = XGI330_RefIndex[RefreshRateTableIndex + i].Ext_InfoFlag;
>  		temp &= ModeTypeMask;
> @@ -5484,7 +5484,7 @@ unsigned char XGISetModeNew(struct xgifb_video_info *xgifb_info,
>  				return 0;
>
>  		pVBInfo->ModeType = XGI330_EModeIDTable[ModeIdIndex].
> -						Ext_ModeFlag & ModeTypeMask;
> +				Ext_ModeFlag & ModeTypeMask;

This is not an improvement.  Try putting a newline after the =, and see if
the right hand side can all fit on one line that way.  The right hand side
of the assignment should be indented as compared to the left hand side,
though.

julia

>  		pVBInfo->SetFlag = 0;
>  		pVBInfo->VBInfo = DisableCRT2Display;
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170226162633.GA20191%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

