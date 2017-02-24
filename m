X-GM-THRID: 6390544093665034240
X-Received: by 10.25.40.17 with SMTP id o17mr138151lfo.25.1487918349423;
        Thu, 23 Feb 2017 22:39:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.199.197 with SMTP id x188ls364573lff.46.gmail; Thu, 23 Feb
 2017 22:39:08 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr136298lfg.13.1487918348467;
        Thu, 23 Feb 2017 22:39:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p185si59735wme.1.2017.02.23.22.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 22:39:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,200,1484002800"; 
   d="scan'208";a="214554733"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 07:39:07 +0100
Date: Fri, 24 Feb 2017 07:39:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: wilc1000: Rename
 network_info member str_rssi to rssi_history
In-Reply-To: <6fd3f34baa31c00a77e2805d5d8a820b3ac7a43f.1487912400.git.tahia.khan@gmail.com>
Message-ID: <alpine.DEB.2.20.1702240738340.2095@hadrien>
References: <cover.1487912400.git.tahia.khan@gmail.com> <6fd3f34baa31c00a77e2805d5d8a820b3ac7a43f.1487912400.git.tahia.khan@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Tahia Khan wrote:

> Change name of str_rssi to rssi_history within the network_info struct for clarity.
>
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Good job at cutting up the patch in a meaningful way.

julia

> ---
>  drivers/staging/wilc1000/coreconfigurator.h       |  2 +-
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 14 +++++++-------
>  2 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 9712d89..10101f8 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -93,7 +93,7 @@ struct network_info {
>  	u8 *ies;
>  	u16 ies_len;
>  	void *join_params;
> -	struct rssi_history_buffer str_rssi;
> +	struct rssi_history_buffer rssi_history;
>  	u64 tsf_hi;
>  };
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 9601ab8..4a6fe90 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -205,11 +205,11 @@ static u32 get_rssi_avg(struct network_info *network_info)
>  {
>  	u8 i;
>  	int rssi_v = 0;
> -	u8 num_rssi = (network_info->str_rssi.full) ?
> -		       NUM_RSSI : (network_info->str_rssi.index);
> +	u8 num_rssi = (network_info->rssi_history.full) ?
> +		       NUM_RSSI : (network_info->rssi_history.index);
>
>  	for (i = 0; i < num_rssi; i++)
> -		rssi_v += network_info->str_rssi.samples[i];
> +		rssi_v += network_info->rssi_history.samples[i];
>
>  	rssi_v /= num_rssi;
>  	return rssi_v;
> @@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
>  	} else {
>  		ap_index = ap_found;
>  	}
> -	rssi_index = last_scanned_shadow[ap_index].str_rssi.index;
> -	last_scanned_shadow[ap_index].str_rssi.samples[rssi_index++] = pstrNetworkInfo->rssi;
> +	rssi_index = last_scanned_shadow[ap_index].rssi_history.index;
> +	last_scanned_shadow[ap_index].rssi_history.samples[rssi_index++] = pstrNetworkInfo->rssi;
>  	if (rssi_index == NUM_RSSI) {
>  		rssi_index = 0;
> -		last_scanned_shadow[ap_index].str_rssi.full = true;
> +		last_scanned_shadow[ap_index].rssi_history.full = true;
>  	}
> -	last_scanned_shadow[ap_index].str_rssi.index = rssi_index;
> +	last_scanned_shadow[ap_index].rssi_history.index = rssi_index;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6fd3f34baa31c00a77e2805d5d8a820b3ac7a43f.1487912400.git.tahia.khan%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

