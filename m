X-GM-THRID: 6207450266150633472
X-Received: by 10.67.21.136 with SMTP id hk8mr10891399pad.14.1445762164612;
        Sun, 25 Oct 2015 01:36:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.35 with SMTP id n32ls2885547qge.78.gmail; Sun, 25 Oct
 2015 01:36:04 -0700 (PDT)
X-Received: by 10.13.215.214 with SMTP id z205mr24246693ywd.23.1445762164068;
        Sun, 25 Oct 2015 01:36:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id vy6si2995120pbc.1.2015.10.25.01.36.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4B59D67;
	Sun, 25 Oct 2015 08:36:03 +0000 (UTC)
Date: Sat, 24 Oct 2015 19:41:21 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] staging: r8723au: use kernel
 preferred style for commenting
Message-ID: <20151025024121.GB16589@kroah.com>
References: <cover.1445402009.git.amsfield22@gmail.com>
 <2759bb6566b8295027e88324efb338b1e471a970.1445402009.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2759bb6566b8295027e88324efb338b1e471a970.1445402009.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 20, 2015 at 11:10:41PM -0700, Alison Schofield wrote:
> Reworked comments per kernel coding style to improve readability.
> 
> Addresses checkpatch.pl:
> 	WARNING: Block comments use * on subsequent lines
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_cmd.c | 159 ++++++++++++++++---------------
>  1 file changed, 80 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> index 6330933..4db4dfe 100644
> --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> @@ -102,83 +102,76 @@ static struct cmd_hdl wlancmds[] = {
>  			     tdls_hdl23a)
>  };
>  
> -struct _cmd_callback	rtw_cmd_callback[] = {
> -	{GEN_CMD_CODE(_Read_MACREG), NULL}, /*0*/
> +struct _cmd_callback rtw_cmd_callback[] = {
> +	{GEN_CMD_CODE(_Read_MACREG), NULL},				/*0*/
>  	{GEN_CMD_CODE(_Write_MACREG), NULL},
>  	{GEN_CMD_CODE(_Read_BBREG), &rtw_getbbrfreg_cmdrsp_callback23a},
>  	{GEN_CMD_CODE(_Write_BBREG), NULL},
>  	{GEN_CMD_CODE(_Read_RFREG), &rtw_getbbrfreg_cmdrsp_callback23a},
> -	{GEN_CMD_CODE(_Write_RFREG), NULL}, /*5*/
> +	{GEN_CMD_CODE(_Write_RFREG), NULL},
>  	{GEN_CMD_CODE(_Read_EEPROM), NULL},
>  	{GEN_CMD_CODE(_Write_EEPROM), NULL},
>  	{GEN_CMD_CODE(_Read_EFUSE), NULL},
>  	{GEN_CMD_CODE(_Write_EFUSE), NULL},
> -
> -	{GEN_CMD_CODE(_Read_CAM),	NULL},	/*10*/
> -	{GEN_CMD_CODE(_Write_CAM),	 NULL},
> +	{GEN_CMD_CODE(_Read_CAM), NULL},				/*10*/
> +	{GEN_CMD_CODE(_Write_CAM), NULL},
>  	{GEN_CMD_CODE(_setBCNITV), NULL},
>  	{GEN_CMD_CODE(_setMBIDCFG), NULL},
> -	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},  /*14*/
> -	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback}, /*15*/
> +	{GEN_CMD_CODE(_JoinBss), &rtw_joinbss_cmd23a_callback},
> +	{GEN_CMD_CODE(_DisConnect), &rtw_disassoc_cmd23a_callback},

Why delete the comments?


