X-GM-THRID: 6616097415299596288
X-Received: by 2002:a2e:80d4:: with SMTP id r20-v6mr178313ljg.15.1540477802116;
        Thu, 25 Oct 2018 07:30:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5e16:: with SMTP id s22-v6ls372037lfb.8.gmail; Thu, 25
 Oct 2018 07:30:01 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dQFxnz4mHRoS9qQhtjgHgEJK0Owp+YCTtRpRjTzlQKJngzNke55WHXusL0QPolbRM7Cls5
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr159721lfl.2.1540477801287;
        Thu, 25 Oct 2018 07:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540477801; cv=none;
        d=google.com; s=arc-20160816;
        b=lyANSltc9hcq8YeykRVWviH0krW0ksECPnRwE43ebenbiRDNb52wqIxJmTw4Mhi/aQ
         4zfueqv6/ut5A2/HOd7pY/1504KNrZJWsNYQJUGOqTR+YXdep4+pPogM3UwBawheAICz
         j5TPNCy1Cpgam71e8Yzx3iOAEynewo+o8EkarGKpDbrAXwpClpZQzyfiSGSnxw1b+sJX
         imtnTE3q4GWYihg1m6JV6OPfvgrDuZns7CugEEiWOIopdlHjiOkSyHaS+99mn+grhBHS
         ZbL1flB2nb2ROD4y6NYTs8nuHRjY3Q4jjZ2MBKjj2M+OqLUIOJ8Xd2W6bv92NO6MK14B
         SvXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=yPnHKZE1TRxS3mU7aMYfjizFoVuZX4BQjN7TSYws7SE=;
        b=QQ0CT3VLW/WEyd1g0bY+DOeIVLk5GBdLgJt+IFxrb1oPPJSWQ/8W5WhBo/pZqh1Cpy
         X2KdQDxiub4bzPi1XLkyy3r9oNKhH0sE+7XqGsM/qnszAwViii81s8fQT5pCKTGjv1iz
         y6B5nW7cmWD5LXoSUq57pAFsOyolg69b/Zh5MyvNoyEpxUdPdz4wwipq1OVt08KEGL+3
         UlAQa9JTPJ6xMfKoWUKmjSqO9LGKBQnGX9YfnWnVFc7LtpGudeeKZlkWMT0hKpAOcbZc
         KeJ3QUsslnzFytdSMq69aaJlVWpjRRBQsjSxpErPNEPAAjZ76x5isMQ4lAdmCY1A+lKZ
         nbZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r79-v6si326436ljr.3.2018.10.25.07.30.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 07:30:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,424,1534802400"; 
   d="scan'208";a="283330026"
Received: from unknown (HELO hadrien) ([167.98.65.38])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Oct 2018 16:30:00 +0200
Date: Thu, 25 Oct 2018 15:29:59 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtlwifi: Remove function
 that only returns the second argument
In-Reply-To: <0140568914059cf5d16dfd298964983ab3ca1f28.1540428705.git.m.maya.nakamura@gmail.com>
Message-ID: <alpine.DEB.2.21.1810251528220.2363@hadrien>
References: <cover.1540428705.git.m.maya.nakamura@gmail.com> <0140568914059cf5d16dfd298964983ab3ca1f28.1540428705.git.m.maya.nakamura@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 24 Oct 2018, Maya Nakamura wrote:

> Because the odm_signal_scale_mapping function is only called to return the
> second argument, remove the unnecessary function and change five
> statements that call it.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
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

pwdb_all was already a u8 value.  The original code was taking a u8 value,
casting it to s32 and then casting it back to u8.  It would be good to
explain whether this can have an impact.  The comment on the
signal_strength structure field says that the value should be between 0
and 100.

julia

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
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0140568914059cf5d16dfd298964983ab3ca1f28.1540428705.git.m.maya.nakamura%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

