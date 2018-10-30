X-GM-THRID: 6618035235223240704
X-Received: by 2002:a1c:84cd:: with SMTP id g196-v6mr2605629wmd.3.1540885582708;
        Tue, 30 Oct 2018 00:46:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c12:: with SMTP id 18-v6ls1023241wmm.18.canary-gmail;
 Tue, 30 Oct 2018 00:46:21 -0700 (PDT)
X-Google-Smtp-Source: AJdET5ehEnqyxj0Rf6hftLP1FrQxWFWhYoLkO4SK9eZb85+q87zNAd7xDgsGGaMvbKZl/9jn3hnP
X-Received: by 2002:a1c:730c:: with SMTP id d12-v6mr2583620wmb.10.1540885581674;
        Tue, 30 Oct 2018 00:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540885581; cv=none;
        d=google.com; s=arc-20160816;
        b=MGoN1cNw3wppWHVn/1wdJT8HN2Wx9wyFZhCsnMntThSdSE3icCoqjOq+gM7uohKhUM
         PmckeAkMawCnsQ71MCV8149VT5IDGZKN7Mhfm3obuLJm6unsVowcJJgfBQl1kW/4fmc5
         grn/MS/TTjkXCjW1RN2KUAFfXwluMa+5ZISqZa6gUPQbykHMnvI61TUHMIwhpF5zT91p
         xm9yLjAqcBAt/7RNdekUMeb4OfI2k2VNtj4hlyC7taH55RLu9f1YJGdIVYD0uCPpqKv0
         KuMaHjDOUzVgGkHlaD4nyKVJRzfs+GVtmVhQbqKWpqcxTNNG9NPs0YpwMusK99FJ1701
         bfOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wxNNiSnteKcBf/ZxmedkLJIkF1zuY4dDSPlxSpCtgg4=;
        b=UTgAOhSGyJr3iUaDhPv+CpXEqRz7ptNss1PRkTaaKdklVJX8DUcM+NBHixbeHcF0E9
         hsxSbToUZ27oWERQQlvUmNkqVstTWqhU9WRVOf+5YndmEeN8VrmO74YQXXVI/PbIqfLn
         8tx012HO2NrkbtVsen1Ng/lTU0/9ThCwb8Zvk8iMtnKf0cTw7va5l77dqydWsPbH1NHB
         jidB7e/NSYwPGWgFwn6Au42Ik2DF7l+BGYQuO9U2gARJfXWdKChafmY8LdSnXHHr48Ag
         tcD6VE95FSuJsCrlIo1geXbrajjR6QMpL9jtFIRYOiUWsNAuc4AEgHR3V09pSO25dBl3
         Al5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h74-v6si613577wmd.4.2018.10.30.00.46.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 00:46:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,443,1534802400"; 
   d="scan'208";a="353413113"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2018 08:46:21 +0100
Date: Tue, 30 Oct 2018 08:46:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 conditions
In-Reply-To: <20181030063636.GA5098@k-vBox>
Message-ID: <alpine.DEB.2.21.1810300845370.2443@hadrien>
References: <20181030063636.GA5098@k-vBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 29 Oct 2018, Maya Nakamura wrote:

> Remove conditions with no effect at four different sections. Issues found
> by Coccinelle's semantic patch results for cond_no_effect.cocci. Edit two
> statements to keep expressions on one line--one from Julia's feedback.
> Eliminate checkpatch result, a line should not end with a parenthesis.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_debug.c   | 35 +++++++------------
>  drivers/staging/rtlwifi/phydm/phydm_dig.c     |  9 ++---
>  .../staging/rtlwifi/phydm/phydm_hwconfig.c    |  6 ++--
>  drivers/staging/rtlwifi/phydm/phydm_psd.c     |  7 +---
>  4 files changed, 17 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> index b5b69d5f1a41..91f2c054d83b 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> @@ -140,26 +140,17 @@ static inline void phydm_print_csi(struct phy_dm_struct *dm, u32 used,
>  		dword_h = odm_get_bb_reg(dm, 0xF74, MASKDWORD);
>  		dword_l = odm_get_bb_reg(dm, 0xF5C, MASKDWORD);
>
> -		if (index % 2 == 0)
> -			PHYDM_SNPRINTF(
> -				output + used, out_len - used,
> -				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
> -				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
> -				(dword_l & MASKBYTE2) >> 16,
> -				(dword_l & MASKBYTE3) >> 24,
> -				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
> -				(dword_h & MASKBYTE2) >> 16,
> -				(dword_h & MASKBYTE3) >> 24);
> -		else
> -			PHYDM_SNPRINTF(
> -				output + used, out_len - used,
> -				"%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
> -				dword_l & MASKBYTE0, (dword_l & MASKBYTE1) >> 8,
> -				(dword_l & MASKBYTE2) >> 16,
> -				(dword_l & MASKBYTE3) >> 24,
> -				dword_h & MASKBYTE0, (dword_h & MASKBYTE1) >> 8,
> -				(dword_h & MASKBYTE2) >> 16,
> -				(dword_h & MASKBYTE3) >> 24);
> +		PHYDM_SNPRINTF(output + used,
> +			       out_len - used,
> +			       "%02x  %02x  %02x  %02x  %02x  %02x  %02x  %02x\n",
> +			       dword_l & MASKBYTE0,
> +			       (dword_l & MASKBYTE1) >> 8,
> +			       (dword_l & MASKBYTE2) >> 16,
> +			       (dword_l & MASKBYTE3) >> 24,
> +			       dword_h & MASKBYTE0,
> +			       (dword_h & MASKBYTE1) >> 8,
> +			       (dword_h & MASKBYTE2) >> 16,
> +			       (dword_h & MASKBYTE3) >> 24);
>  	}
>  }
>
> @@ -168,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
>  	dm->debug_level = ODM_DBG_TRACE;
>
>  	dm->fw_debug_components = 0;
> -	dm->debug_components =
> -
> -		0;
> +	dm->debug_components = 0;


Does this belong here?  I don't see an if nearby.  You should make a
series if you want to do two different things on the same file.

julia

>
>  	dm->fw_buff_is_enpty = true;
>  	dm->pre_c2h_seq = 0;
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_dig.c b/drivers/staging/rtlwifi/phydm/phydm_dig.c
> index f10776fbe2d9..99c805cc380b 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_dig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_dig.c
> @@ -599,13 +599,8 @@ void odm_dig_init(void *dm_void)
>  		       (DM_DIG_MAX_PAUSE_TYPE + 1));
>  	dig_tab->pause_cckpd_level = 0;
>
> -	if (dm->board_type & (ODM_BOARD_EXT_PA | ODM_BOARD_EXT_LNA)) {
> -		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
> -		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
> -	} else {
> -		dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
> -		dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
> -	}
> +	dig_tab->rx_gain_range_max = DM_DIG_MAX_NIC;
> +	dig_tab->rx_gain_range_min = DM_DIG_MIN_NIC;
>
>  	dig_tab->enable_adjust_big_jump = 1;
>  	if (dm->support_ic_type & ODM_RTL8822B) {
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index e1544e38944b..2f4f273a0239 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -45,8 +45,8 @@ static u32 phydm_process_rssi_pwdb(struct phy_dm_struct *dm,
>  	u32 weighting = 0, undecorated_smoothed_pwdb;
>  	/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
>
> -	if (entry->rssi_stat.ofdm_pkt ==
> -	    64) { /* speed up when all packets are OFDM*/
> +	if (entry->rssi_stat.ofdm_pkt == 64) {
> +		/* speed up when all packets are OFDM*/
>  		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
>  		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
>  			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
> @@ -1719,8 +1719,6 @@ static void phydm_get_rx_phy_status_type2(struct phy_dm_struct *dm,
>  					  ODM_RTL8710B)) { /* JJ ADD 20161014 */
>  		if (rxsc == 3)
>  			bw = ODM_BW40M;
> -		else if ((rxsc == 1) || (rxsc == 2))
> -			bw = ODM_BW20M;
>  		else
>  			bw = ODM_BW20M;
>  	}
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_psd.c b/drivers/staging/rtlwifi/phydm/phydm_psd.c
> index badc514ac0be..c93d871f1eb6 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_psd.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_psd.c
> @@ -336,12 +336,7 @@ void phydm_psd_init(void *dm_void)
>  			2; /*2b'11: 20MHz, 2b'10: 40MHz, 2b'01: 80MHz */
>  	}
>
> -	if (dm->support_ic_type == ODM_RTL8812)
> -		dm_psd_table->psd_pwr_common_offset = 0;
> -	else if (dm->support_ic_type == ODM_RTL8821)
> -		dm_psd_table->psd_pwr_common_offset = 0;
> -	else
> -		dm_psd_table->psd_pwr_common_offset = 0;
> +	dm_psd_table->psd_pwr_common_offset = 0;
>
>  	phydm_psd_para_setting(dm, 1, 2, 3, 128, 0, 0, 7, 0);
>  	/*phydm_psd(dm, 0x3c, 0, 127);*/ /* target at -50dBm */
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181030063636.GA5098%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.
>

