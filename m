X-GM-THRID: 6389791832562204672
X-Received: by 10.25.199.197 with SMTP id x188mr2745592lff.9.1487747973746;
        Tue, 21 Feb 2017 23:19:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.29.78 with SMTP id d75ls1930837wmd.16.canary-gmail; Tue, 21
 Feb 2017 23:19:32 -0800 (PST)
X-Received: by 10.28.10.66 with SMTP id 63mr31660wmk.15.1487747972897;
        Tue, 21 Feb 2017 23:19:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si91740wmg.3.2017.02.21.23.19.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 23:19:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,193,1484002800"; 
   d="scan'208";a="261565507"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 08:19:32 +0100
Date: Wed, 22 Feb 2017 08:19:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: renames struct
 tstrRSSI and its members u8Index, u8Full
In-Reply-To: <20170222045543.GA27847@coolbox>
Message-ID: <alpine.DEB.2.20.1702220818060.2080@hadrien>
References: <20170222045543.GA27847@coolbox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 21 Feb 2017, Tahia Khan wrote:

> Fixes multiple camel case checks on struct tstrRSSI from checkpatch.pl:
>
> Avoid CamelCase: <tstrRSSI>
> Avoid CamelCase: <u8Full>
> Avoid CamelCase: <u8Index>
>
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h       |  8 ++++----
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 10 +++++-----
>  2 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index cff1698..c9cf23b 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -70,9 +70,9 @@ enum connect_status {
>  	CONNECT_STS_FORCE_16_BIT = 0xFFFF
>  };
>
> -struct tstrRSSI {
> -	u8 u8Full;
> -	u8 u8Index;
> +struct tstr_RSSI {
> +	u8 u8_full;
> +	u8 u8_index;

The kernel doesn't use variable names that incorporate types.  These could
just be full and index.

julia

>  	s8 as8RSSI[NUM_RSSI];
>  };
>
> @@ -93,7 +93,7 @@ struct network_info {
>  	u8 *ies;
>  	u16 ies_len;
>  	void *join_params;
> -	struct tstrRSSI str_rssi;
> +	struct tstr_RSSI str_rssi;
>  	u64 tsf_hi;
>  };
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index f7ce47c..30285b9 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -205,8 +205,8 @@ static u32 get_rssi_avg(struct network_info *network_info)
>  {
>  	u8 i;
>  	int rssi_v = 0;
> -	u8 num_rssi = (network_info->str_rssi.u8Full) ?
> -		       NUM_RSSI : (network_info->str_rssi.u8Index);
> +	u8 num_rssi = (network_info->str_rssi.u8_full) ?
> +		       NUM_RSSI : (network_info->str_rssi.u8_index);
>
>  	for (i = 0; i < num_rssi; i++)
>  		rssi_v += network_info->str_rssi.as8RSSI[i];
> @@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
>  	} else {
>  		ap_index = ap_found;
>  	}
> -	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8Index;
> +	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8_index;
>  	last_scanned_shadow[ap_index].str_rssi.as8RSSI[rssi_index++] = pstrNetworkInfo->rssi;
>  	if (rssi_index == NUM_RSSI) {
>  		rssi_index = 0;
> -		last_scanned_shadow[ap_index].str_rssi.u8Full = 1;
> +		last_scanned_shadow[ap_index].str_rssi.u8_full = 1;
>  	}
> -	last_scanned_shadow[ap_index].str_rssi.u8Index = rssi_index;
> +	last_scanned_shadow[ap_index].str_rssi.u8_index = rssi_index;
>  	last_scanned_shadow[ap_index].rssi = pstrNetworkInfo->rssi;
>  	last_scanned_shadow[ap_index].cap_info = pstrNetworkInfo->cap_info;
>  	last_scanned_shadow[ap_index].ssid_len = pstrNetworkInfo->ssid_len;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170222045543.GA27847%40coolbox.
> For more options, visit https://groups.google.com/d/optout.
>

