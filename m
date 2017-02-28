X-GM-THRID: 6390824128052461568
X-Received: by 10.99.175.78 with SMTP id s14mr200219pgo.22.1488261112428;
        Mon, 27 Feb 2017 21:51:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls299225ots.19.gmail; Mon, 27 Feb
 2017 21:51:52 -0800 (PST)
X-Received: by 10.200.38.215 with SMTP id 23mr174014qtp.6.1488261112025;
        Mon, 27 Feb 2017 21:51:52 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si131825pfa.4.2017.02.27.21.51.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 21:51:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 66B8E941;
	Tue, 28 Feb 2017 05:51:51 +0000 (UTC)
Date: Tue, 28 Feb 2017 06:51:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: arnaud.patard@rtp-net.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v6] staging: xgifb: correct the multiple line dereference
Message-ID: <20170228055141.GB25790@kroah.com>
References: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170228050530.GA13332@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Feb 28, 2017 at 10:35:30AM +0530, Arushi Singhal wrote:
> Error reported by checkpatch.pl as "avoid multiple line dereference".
> Addition of new variables to make the code more readable and also to
> correct about mentioned error as by itroducing new variables line is
> not exceeding 80 characters.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v6
>   - changes done such that no other errors can generate.
>   - Improve the coding style.
>   - Introduced new variables.
>   - type of the variable is changed.
> 
>  drivers/staging/xgifb/XGI_main_26.c | 29 ++++++-----------------------
>  drivers/staging/xgifb/vb_setmode.c  | 17 +++++++++++------
>  2 files changed, 17 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/staging/xgifb/XGI_main_26.c b/drivers/staging/xgifb/XGI_main_26.c
> index 69ed137337ce..9870ea3b76b4 100644
> --- a/drivers/staging/xgifb/XGI_main_26.c
> +++ b/drivers/staging/xgifb/XGI_main_26.c
> @@ -878,30 +878,13 @@ static void XGIfb_post_setmode(struct xgifb_video_info *xgifb_info)
>  			}
>  
>  			if ((filter >= 0) && (filter <= 7)) {
> +				const u8 *f = XGI_TV_filter[filter_tb].filter[filter];
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
> +				xgifb_reg_set(XGIPART2, 0x36, f[1]);
> +				xgifb_reg_set(XGIPART2, 0x37, f[2]);
> +				xgifb_reg_set(XGIPART2, 0x38, f[3]);
>  			}
>  		}
>  	}
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index 7c7c8c8f1df3..249a32804c06 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -221,8 +221,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  
>  	for (; XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID ==
>  	       tempbx; (*i)--) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		unsigned short j;
> +
> +		j = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
> +		infoflag = j;
> +
>  		if (infoflag & tempax)
>  			return 1;


Why are you using a temporary variable 'j' here?  It's not needed at
all, and just is confusing to read the code now, don't you agree?

> @@ -231,8 +234,11 @@ static unsigned char XGI_AjustCRT2Rate(unsigned short ModeIdIndex,
>  	}
>  
>  	for ((*i) = 0;; (*i)++) {
> -		infoflag = XGI330_RefIndex[RefreshRateTableIndex + (*i)].
> -				Ext_InfoFlag;
> +		unsigned short m;
> +
> +		m = XGI330_RefIndex[RefreshRateTableIndex + (*i)].Ext_InfoFlag;
> +		infoflag = m;
> +
>  		if (XGI330_RefIndex[RefreshRateTableIndex + (*i)].ModeID
>  				!= tempbx) {
>  			return 0;

Same here, why add a new variable that isn't used more than once?  You
are trying to work around something that doesn't make sense to work
around.

Remember, coding style cleanups are to be done to make the code easier
to understand and follow.  Not to blindly follow a perl script that
can not think.  Sometimes it is not right...

thanks,

greg k-h

