X-GM-THRID: 6399195765741191168
X-Received: by 10.129.55.9 with SMTP id e9mr4742308ywa.142.1490012914696;
        Mon, 20 Mar 2017 05:28:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls14007731otb.26.gmail; Mon, 20 Mar
 2017 05:28:34 -0700 (PDT)
X-Received: by 10.129.158.213 with SMTP id v204mr15306251ywg.70.1490012914233;
        Mon, 20 Mar 2017 05:28:34 -0700 (PDT)
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id a3si2683736pfb.2.2017.03.20.05.28.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:28:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v2KCSURM010332
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 20 Mar 2017 12:28:31 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v2KCSTOV003072
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Mon, 20 Mar 2017 12:28:30 GMT
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by aserv0121.oracle.com (8.13.8/8.13.8) with ESMTP id v2KCSRdW003865;
	Mon, 20 Mar 2017 12:28:28 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 20 Mar 2017 05:28:26 -0700
Date: Mon, 20 Mar 2017 15:28:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: sudipm.mukherjee@gmail.com, devel@driverdev.osuosl.org,
        linux-fbdev@vger.kernel.org, Teddy Wang <teddy.wang@siliconmotion.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] staging: sm750fb: Code readability is improved
Message-ID: <20170320122817.GG4395@mwanda>
References: <20170319154920.GA12736@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170319154920.GA12736@arushi-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Sun, Mar 19, 2017 at 09:19:20PM +0530, Arushi Singhal wrote:
> New variables are added to make the code more readable.
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  changes in v4
>  -try to make the code much more readable.
>  - defined the variable at the top of a block.
> ---
>  drivers/staging/sm750fb/ddk750_mode.c | 57 +++++++++++++++++++----------------
>  1 file changed, 31 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
> index eea5aef2956f..6517e770e0a7 100644
> --- a/drivers/staging/sm750fb/ddk750_mode.c
> +++ b/drivers/staging/sm750fb/ddk750_mode.c
> @@ -76,38 +76,43 @@ static int programModeRegisters(mode_parameter_t *pModeParam, struct pll_value *
>  {
>  	int ret = 0;
>  	int cnt = 0;
> -	unsigned int tmp, reg;
> +	unsigned int tmp, reg, temp;

Let's not have "tmp" and "temp" both.  Generally "tmp" is better because
you can't confuse it with temperature.

>  
>  	if (pll->clockType == SECONDARY_PLL) {
>  		/* programe secondary pixel clock */
>  		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
> -		poke32(CRT_HORIZONTAL_TOTAL,
> -		       (((pModeParam->horizontal_total - 1) <<
> -			 CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
> -			CRT_HORIZONTAL_TOTAL_TOTAL_MASK) |
> -		       ((pModeParam->horizontal_display_end - 1) &
> -			CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK));
> -
> -		poke32(CRT_HORIZONTAL_SYNC,
> -		       ((pModeParam->horizontal_sync_width <<
> -			 CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
> -			CRT_HORIZONTAL_SYNC_WIDTH_MASK) |
> -		       ((pModeParam->horizontal_sync_start - 1) &
> -			CRT_HORIZONTAL_SYNC_START_MASK));
>  
> -		poke32(CRT_VERTICAL_TOTAL,
> -		       (((pModeParam->vertical_total - 1) <<
> -			 CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
> -			CRT_VERTICAL_TOTAL_TOTAL_MASK) |
> -		       ((pModeParam->vertical_display_end - 1) &
> -			CRT_VERTICAL_TOTAL_DISPLAY_END_MASK));
> +		temp = (pModeParam->horizontal_total - 1) <<
> +				CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT;
> +		temp = temp & CRT_HORIZONTAL_TOTAL_TOTAL_MASK;


These two lines are really part of the same thing and they should be
done together.

		tmp = ((pModeParam->horizontal_total - 1) <<
		       CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
		      CRT_HORIZONTAL_TOTAL_TOTAL_MASK;

> +		temp = temp | ((pModeParam->horizontal_display_end - 1) &
> +				CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK);

		tmp |= (pModeParam->horizontal_display_end - 1) &
		       CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;

Use |=.  Remove the extra parenthesis.

regards,
dan carpenter


