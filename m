X-GM-THRID: 6812465234894127104
X-Received: by 2002:a92:8993:: with SMTP id w19mr22040252ilk.192.1586183010935;
        Mon, 06 Apr 2020 07:23:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:608:: with SMTP id t8ls8491817ils.11.gmail; Mon, 06
 Apr 2020 07:23:29 -0700 (PDT)
X-Google-Smtp-Source: APiQypIPiqTcRVwGbrJpKN4XUtXlmZA1x4fkXayXK3W2q5kuMlvxNqpRanNEjYxU1R3swfhCQjJO
X-Received: by 2002:a92:89c7:: with SMTP id w68mr22023654ilk.233.1586183009519;
        Mon, 06 Apr 2020 07:23:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586183009; cv=none;
        d=google.com; s=arc-20160816;
        b=aDqLC/zw/2182gZxu9z3DsiPdmQM5ak4vebDEfmQvjlSAeTL+V+Rd312Us49/0b3UT
         T/qO0I6565FDHiPq0fscGyvO+io+LICDVZrJBG3/YQSN6FCEg4t+BW//SzqkcAgsSu0x
         4fIDGb2AUAG8ghAhQQdEWtytaOtJ774efC/zHKm5V3ugNPJsePHaFy8n05s41R+mqlH1
         N6pZznIMT4CF0qVtaztmQi7J5olBwnAlmQzShlc2+xSbBC+4AxYtvmAQZ/eQj9FTMQes
         9mdtB3qkvN37vMVVSoXuNX+L5tYeeVjwTHvLeeYLunrlULLrfJRckL5ztKNnElcE4gpZ
         o56g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dvRZP/yHq4Pz/Ax1/YSueHK2NEt63T5FqC0V5ZphOF8=;
        b=igKLyR/1B6eTnV4+3aiQGgxMxQpcz5xh7GWVq9E+2wqpQj7TlIliFzlH2i4BH8etXq
         wzpp+MEdR9JK3oXwO7vPi4TckvH0xQA6FNgkbyC0dRQKu8t0MZIKHoTpD6+45HOYn/6b
         fHF21E2KsohqBi1c6MQEdB1S1gM5pBzwz5bheB+CbQEYSzCYnUaBQS+Lp37Dq8yqxntR
         A5Sy0/0/INoNS1q/+WgC2DAke2rCMDGCYZolLPsVMwTgk55Ap82oxNIylkMel85FyYky
         LjFtnWsEQHkFg7WrqoI38oifRxkrgFVfx+u64ru7K9B5d9F8dDPQx8ItkyNv2wHclcVp
         ussQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EPnI8n4s;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u6si1185342ili.3.2020.04.06.07.23.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 07:23:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EPnI8n4s;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6674723D3C;
	Mon,  6 Apr 2020 14:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1586183008;
	bh=7Xki1hgyaBdXzvx6qP25WR8YLgqdaygL0PbOJ2KLVoA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EPnI8n4s8oKejHa5acEIcO0WNVmz1431g3eZf11Re62LGuH318wICrVEHDF46TIAK
	 3FiQZotqRLFXp1O2Gtc+9uEZo48cNGQsTBJ4ymUzn24BNTYU2Hfn0DjjYdMNG0yEBI
	 WDJau0UuThEU3HSRSnIduzeBoHucq/N/4yhRDwA0=
Date: Mon, 6 Apr 2020 16:23:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH 1/4] staging: rtl8723bs: include: Correct misspelt
 symbolic name
Message-ID: <20200406142326.GB48581@kroah.com>
References: <cover.1586150254.git.vkor@vkten.in>
 <afb86e01fcf9c7722bd46be6c89e5246389970fe.1586150254.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afb86e01fcf9c7722bd46be6c89e5246389970fe.1586150254.git.vkor@vkten.in>

On Mon, Apr 06, 2020 at 10:54:11AM +0530, R Veera Kumar wrote:
> Correct misspelt symbolic name.
> Misspelling found using checkpatch.pl on the dependent file.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/rtl8723bs/include/hal_data.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/hal_data.h b/drivers/staging/rtl8723bs/include/hal_data.h
> index e5e667df6154..fa5d70016f05 100644
> --- a/drivers/staging/rtl8723bs/include/hal_data.h
> +++ b/drivers/staging/rtl8723bs/include/hal_data.h
> @@ -56,9 +56,9 @@ enum RT_AMPDU_BURST {
>  /*  Tx Power Limit Table Size */
>  #define MAX_REGULATION_NUM			4
>  #define MAX_RF_PATH_NUM_IN_POWER_LIMIT_TABLE	4
> -#define MAX_2_4G_BANDWITH_NUM			4
> +#define MAX_2_4G_BANDWIDTH_NUM			4
>  #define MAX_RATE_SECTION_NUM			10
> -#define MAX_5G_BANDWITH_NUM			4
> +#define MAX_5G_BANDWIDTH_NUM			4
>  
>  #define MAX_BASE_NUM_IN_PHY_REG_PG_2_4G		10 /*   CCK:1, OFDM:1, HT:4, VHT:4 */
>  #define MAX_BASE_NUM_IN_PHY_REG_PG_5G		9 /*  OFDM:1, HT:4, VHT:4 */
> @@ -280,14 +280,14 @@ struct hal_com_data {
>  
>  	/*  Power Limit Table for 2.4G */
>  	s8	TxPwrLimit_2_4G[MAX_REGULATION_NUM]
> -						[MAX_2_4G_BANDWITH_NUM]
> +						[MAX_2_4G_BANDWIDTH_NUM]
>  	                                [MAX_RATE_SECTION_NUM]
>  	                                [CHANNEL_MAX_NUMBER_2G]
>  						[MAX_RF_PATH_NUM];
>  
>  	/*  Power Limit Table for 5G */
>  	s8	TxPwrLimit_5G[MAX_REGULATION_NUM]
> -						[MAX_5G_BANDWITH_NUM]
> +						[MAX_5G_BANDWIDTH_NUM]
>  						[MAX_RATE_SECTION_NUM]
>  						[CHANNEL_MAX_NUMBER_5G]
>  						[MAX_RF_PATH_NUM];
> -- 
> 2.20.1
> 

This patch breaks the build, and as such, I can not apply it :(

Please fix this series up to never break the build, or add any new
warnings, at every step of the way.

thanks,

greg k-h

