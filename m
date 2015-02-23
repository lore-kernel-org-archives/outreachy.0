X-GM-THRID: 2832175464448
X-Received: by 10.68.192.10 with SMTP id hc10mr13215531pbc.4.1424719540031;
        Mon, 23 Feb 2015 11:25:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.12 with SMTP id n12ls1510940ion.95.gmail; Mon, 23 Feb
 2015 11:25:39 -0800 (PST)
X-Received: by 10.68.237.8 with SMTP id uy8mr13171605pbc.7.1424719539823;
        Mon, 23 Feb 2015 11:25:39 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x233.google.com (mail-qc0-x233.google.com. [2607:f8b0:400d:c01::233])
        by gmr-mx.google.com with ESMTPS id q2si6432785qcn.2.2015.02.23.11.25.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:25:39 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::233 as permitted sender) client-ip=2607:f8b0:400d:c01::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::233 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x233.google.com with SMTP id b13so12801483qcw.6
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=ObgUqFVz4kfV3zi8GvGtjTlbh0XtDTLdFRmMJOhTCKs=;
        b=iWA84k7vbjzRnGwQIQvaPo0JcFaO7pxAGCcxrxijA6Og59GBmSs2V0pyuUQ793myTS
         yZiPdbI+PJkB2egeKpFSYwwjT8jHMsXWhYYkd61NpyfG6HOUkiahhT+TMc167CtxXewa
         tawqTmv2D/CIS2K2SrqVIWEogKQH3uNEtlCpuTKop1kAd/BsXmPj6Gr7R3WaYwJQfHuW
         bKmIWXts8dwH4lIZBUMeLQojuR+pZQ5beHdBSpUDsGfrgFTj6R0B4K+0HTgEihmnxLgK
         rFV6h09eF1dreaJT2yX+9YF5wzvI2AYafGQK5ujqFotOelnE5D+xn9FWra2G54VmCaqk
         QgNw==
X-Received: by 10.140.38.197 with SMTP id t63mr26594099qgt.61.1424719539701;
        Mon, 23 Feb 2015 11:25:39 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id v65sm28028354qgd.20.2015.02.23.11.25.38
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:25:39 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB7EB2.9050908@gmail.com>
Date: Mon, 23 Feb 2015 14:25:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove redundant
 if conditions
References: <20150223150647.GA12403@gmail.com>
In-Reply-To: <20150223150647.GA12403@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 10:06, Vatika Harlalka wrote:
> The if branches are redundant as is2t is declared false
> and is not modified before the if statements.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 20 ++------------------
>  1 file changed, 2 insertions(+), 18 deletions(-)

This one is perfect!

Jes


> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index e005150..e7ede44 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -471,7 +471,8 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
>  	u32 i = 0, j = 0;
>  	bool is2t = false;
>  
> -	u8 ofdm_min_index = 6, rf; /* OFDM BB Swing should be less than +3.0dB */
> +	u8 ofdm_min_index = 6;
> +	u8  rf = 1; /* OFDM BB Swing should be less than +3.0dB */
>  	u8 indexforchannel = 0;
>  	s8 ofdm_index_mapping[2][index_mapping_NUM_88E] = {
>  		/* 2.4G, decrease power */
> @@ -496,12 +497,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
>  
>  	thermal_val = (u8)phy_query_rf_reg(adapt, RF_PATH_A,
>  					   RF_T_METER_88E, 0xfc00);
> -
> -	if (is2t)
> -		rf = 2;
> -	else
> -		rf = 1;
> -
>  	if (thermal_val) {
>  		/* Query OFDM path A default setting */
>  		ele_d = phy_query_bb_reg(adapt, rOFDM0_XATxIQImbalance, bMaskDWord)&bMaskOFDM_D;
> @@ -513,17 +508,6 @@ void rtl88eu_dm_txpower_tracking_callback_thermalmeter(struct adapter *adapt)
>  			}
>  		}
>  
> -		/* Query OFDM path B default setting */
> -		if (is2t) {
> -			ele_d = phy_query_bb_reg(adapt, rOFDM0_XBTxIQImbalance, bMaskDWord)&bMaskOFDM_D;
> -			for (i = 0; i < OFDM_TABLE_SIZE_92D; i++) {
> -				if (ele_d == (OFDMSwingTable[i]&bMaskOFDM_D)) {
> -					ofdm_index_old[1] = (u8)i;
> -					break;
> -				}
> -			}
> -		}
> -
>  		/* Query CCK default setting From 0xa24 */
>  		temp_cck = dm_odm->RFCalibrateInfo.RegA24;
>  
> 


