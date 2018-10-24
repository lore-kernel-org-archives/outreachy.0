X-GM-THRID: 6615692944071458816
X-Received: by 2002:a02:5187:: with SMTP id s129-v6mr906746jaa.16.1540357258759;
        Tue, 23 Oct 2018 22:00:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:6605:: with SMTP id k5-v6ls1010967jac.0.gmail; Tue, 23
 Oct 2018 22:00:57 -0700 (PDT)
X-Google-Smtp-Source: AJdET5du4TlWtEIMB1SO12cGGJ4/hjsjRdLgI0ySRVXFCeZpFgZukTFuC0TgluhuVL21wCJLn9bm
X-Received: by 2002:a02:7426:: with SMTP id o38-v6mr917008jac.1.1540357257921;
        Tue, 23 Oct 2018 22:00:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540357257; cv=none;
        d=google.com; s=arc-20160816;
        b=vR5jcXCDiGh60/Wkoo1OB5wy46MOVCgj3I3CEkAcB9AOVkUAlxDom8hTpHgtHIlXX/
         YGlY3FT2rK2u5jFh0E8S75Chbz8sfRguJLuntB/zPd+27LkyXq9a/5xDqPME7aAoPYBY
         nUWWKMZatQDapmRnMF7gH9iyzuPQLzMqhu9kdQJP19SWfXND/uwdre63yYGvwQtEb4Bv
         tbesrJN0UJENyFJJUyPJ6dKSrot+CVVVdGJ0AmNx9cLqkrZf8Gy59sXTLJYdwux42WKq
         2Bfhwas5CkVixGvDigEPvSV3f4CDyZ0ZUoa6/3pKR22ApaIqdD58v65DMgBdTHiMZdLK
         JdIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=S5SrXxu4CJAa2D9CYFsjSZLPZyzHmXrluPB2Eg0KGnE=;
        b=nmABcUtH3WRe1wwz5u/TSYZgTOzOSnJROSCALk3BvnoTkT71mFG+tkXfBhJg1IPPsO
         Rl8f0Yqq+D/+MXq5icTGI3fgUMxrvMdWaae9asyqf5BPfF4GNYb26Yd+Ai+vIIvQ1Zny
         h7mufibZrHl9NQYwnLvtqAJYmMRNGOtqySZRnyrRDxQkqYXRQm3zn3pUimWv0xsd0YaG
         xCBTXwOEKgBIkF9Kvo7qFPFc4dYvYH8FoKVCLW3gypiswSWNh/6ksvaLjL7K7Jp+vQPF
         wpV4HlJR87wvM54w+bHK6UQZLi5AsNssyV3ppB2VTUeGDPKUiWGy01jRBW9zeFeOWWma
         EnAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTOwabtY;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n199-v6si1168777itn.1.2018.10.23.22.00.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 22:00:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTOwabtY;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r64-v6so1798238pfb.13
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 22:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=S5SrXxu4CJAa2D9CYFsjSZLPZyzHmXrluPB2Eg0KGnE=;
        b=BTOwabtYqmP0OFHxti5uBWjuwOlJLorXeFZGEaRw/e8qqOASC//aWS+Lrp4wguB8KP
         eP3ZwYK0dQ2SDLOc369ii8uyprn5ibgVNkEPEUMQZJiHP8QjT+YCeIg28hweNuCPkNeg
         jD9mWUqZhU2NNtr2UGKjrDKqPqX3iI3ga4KPsz7eKB0dIbk1P+l7zliZ+3E853aA19Cr
         86pGZHdx9gxiUZ6aQJVN0isCizy/3GirH3nJ4tGQM8OS67G0lxsW8aWHgL/Zf1PMIFek
         xgzcOCFH1+OA9yN4nUY43VVEM+IPSoARThQbdk6oofTDc63j3bQ61oFZw8c0YJR5FZZD
         7UUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=S5SrXxu4CJAa2D9CYFsjSZLPZyzHmXrluPB2Eg0KGnE=;
        b=p4Tb9kfZvTUNEk6dpINvWkB2NbRwd3yDioOhL1odvkivdHKnZB1JCyxd0ShwrAjHra
         vofCzGpGDcTeKa6EK6EXvIpHrAAQaFEqsTar/dyaWkDsYmzkCSNUgkjBx8SCtNUcJsAO
         r0/YlT1EYwh0nldKx0gPhnCrUJmztGJWCkLTk7JEWkp84zJXUATCAt6qpLE6JcMmy801
         NksIOaUSR/X5wv/fcYCAsIIWW/eMGpLro0CxqV87Fgj9rHG34Rap2hhsMRT44kHyCvjX
         oeMO3q0bLw0Rsnx+GmwuJh4vSo7Wo0IkNBqnS63f1cmFlaXpfsZMudOmM71IkyrFwOSN
         Q0Ng==
X-Gm-Message-State: AGRZ1gIOcT5amjBstcya+TeSQOpUOR1jmcitnCzP9qoIW79jmAj7Fv/f
	aEmTKEl9+nvCp7l1qzEX8VlYLQQk
X-Received: by 2002:a63:1624:: with SMTP id w36-v6mr1094960pgl.409.1540357257122;
        Tue, 23 Oct 2018 22:00:57 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id s80-v6sm3910453pfa.114.2018.10.23.22.00.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 22:00:56 -0700 (PDT)
Date: Tue, 23 Oct 2018 22:00:53 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtlwifi: Remove unnecessary function
Message-ID: <20181024050052.GA13085@k-vBox>
References: <20181023230718.GA18724@k-vBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181023230718.GA18724@k-vBox>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 23, 2018 at 04:07:20PM -0700, Maya Nakamura wrote:
> Because the odm_signal_scale_mapping function is only called to return the
> second argument, remove the function and change five statements that call
> it.
> 
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
> Changes since v1:
>  - Remove a function's declaration, definition, and its comment.
>  - Change five statements that call the function.
> 
>  .../staging/rtlwifi/phydm/phydm_hwconfig.c    | 27 ++++---------------
>  .../staging/rtlwifi/phydm/phydm_hwconfig.h    |  2 --
>  2 files changed, 5 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index 4bf86e5a451f..fd208581d857 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -477,18 +477,6 @@ static u8 odm_query_rx_pwr_percentage(s8 ant_power)
>  		return 100 + ant_power;
>  }
>  
> -/*
> - * 2012/01/12 MH MOve some signal strength smooth method to MP HAL layer.
> - * IF other SW team do not support the feature, remove this section.??
> - */
> -
> -s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig)
> -{
> -	{
> -		return curr_sig;
> -	}
> -}
> -
>  static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
>  						  u8 is_cck_rate, u8 pwdb_all,
>  						  u8 path, u8 RSSI)
> @@ -749,13 +737,11 @@ static void odm_rx_phy_status92c_series_parsing(
>  	 */
>  	/* It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp(). */
>  	if (is_cck_rate) {
> -		phy_info->signal_strength = (u8)(
> -			odm_signal_scale_mapping(dm, pwdb_all)); /*pwdb_all;*/
> +		phy_info->signal_strength = (u8)pwdb_all;
>  	} else {
>  		if (rf_rx_num != 0) {
>  			phy_info->signal_strength =
> -				(u8)(odm_signal_scale_mapping(dm, total_rssi /=
> -								  rf_rx_num));
> +				(u8)(total_rssi /= rf_rx_num);
>  		}
>  	}
>  
> @@ -1051,8 +1037,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
>  	 */
>  	/*It is assigned to the BSS List in GetValueFromBeaconOrProbeRsp().*/
>  	if (is_cck_rate) {
> -		phy_info->signal_strength = (u8)(
> -			odm_signal_scale_mapping(dm, pwdb_all)); /*pwdb_all;*/
> +		phy_info->signal_strength = (u8)pwdb_all;
>  	} else {
>  		if (rf_rx_num != 0) {
>  			/* 2015/01 Sean, use the best two RSSI only,
> @@ -1062,8 +1047,7 @@ static void odm_rx_phy_status_jaguar_series_parsing(
>  				avg_rssi = best_rssi;
>  			else
>  				avg_rssi = (best_rssi + second_rssi) / 2;
> -			phy_info->signal_strength =
> -				(u8)(odm_signal_scale_mapping(dm, avg_rssi));
> +			phy_info->signal_strength = (u8)avg_rssi;
>  		}
>  	}
>  	dm->rx_pwdb_ave = dm->rx_pwdb_ave + phy_info->rx_pwdb_all;
> @@ -1874,8 +1858,7 @@ void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
>  	/* Update signal strength to UI, and phy_info->rx_pwdb_all is the
>  	 * maximum RSSI of all path
>  	 */
> -	phy_info->signal_strength =
> -		(u8)(odm_signal_scale_mapping(phydm, phy_info->rx_pwdb_all));
> +	phy_info->signal_strength = (u8)phy_info->rx_pwdb_all;
>  
>  	/* Calculate average RSSI and smoothed RSSI */
>  	phydm_process_rssi_for_dm_new_type(phydm, phy_info, pktinfo);
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
> index 6ad5e0292a97..c9833889688c 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
> @@ -216,8 +216,6 @@ odm_config_fw_with_header_file(struct phy_dm_struct *dm,
>  
>  u32 odm_get_hw_img_version(struct phy_dm_struct *dm);
>  
> -s32 odm_signal_scale_mapping(struct phy_dm_struct *dm, s32 curr_sig);
> -
>  /*For 8822B only!! need to move to FW finally */
>  /*==============================================*/
>  void phydm_rx_phy_status_new_type(struct phy_dm_struct *phydm, u8 *phy_status,
> -- 
> 2.17.1

Sorry! I will make this part of a patchset. Will you please ignore this
one? Thank you!

