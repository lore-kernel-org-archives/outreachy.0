X-GM-THRID: 6390544093665034240
X-Received: by 10.25.150.212 with SMTP id y203mr144366lfd.30.1487918426567;
        Thu, 23 Feb 2017 22:40:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.201 with SMTP id 192ls112883ljf.43.gmail; Thu, 23 Feb
 2017 22:40:25 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr139843lfe.18.1487918425785;
        Thu, 23 Feb 2017 22:40:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si52306wmg.3.2017.02.23.22.40.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 22:40:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,200,1484002800"; 
   d="scan'208";a="261884567"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 07:40:15 +0100
Date: Fri, 24 Feb 2017 07:40:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 2/3] staging: wilc1000: Rename
 tstrRSSI members and change type of u8Full to bool
In-Reply-To: <e4e0e4da09635d0cb7ef43223022490b6de739a8.1487912400.git.tahia.khan@gmail.com>
Message-ID: <alpine.DEB.2.20.1702240739260.2095@hadrien>
References: <cover.1487912400.git.tahia.khan@gmail.com> <e4e0e4da09635d0cb7ef43223022490b6de739a8.1487912400.git.tahia.khan@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Tahia Khan wrote:

> Remove Hungarian notation and camel casing from all tstrRSSI members' names.
> Additionally, change type of u8Full to bool since it only takes values 1 or 0.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Maybe the second line of the commit message is a little too long.  It is
under 80 characters, but they come out a bit indented in the git log, so a
little shorter is better.

julia

>
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h       |  6 +++---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 14 +++++++-------
>  2 files changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 1c77529..9712d89 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -71,9 +71,9 @@ enum connect_status {
>  };
>
>  struct rssi_history_buffer {
> -	u8 u8Full;
> -	u8 u8Index;
> -	s8 as8RSSI[NUM_RSSI];
> +	bool full;
> +	u8 index;
> +	s8 samples[NUM_RSSI];
>  };
>
>  struct network_info {
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index f7ce47c..9601ab8 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -205,11 +205,11 @@ static u32 get_rssi_avg(struct network_info *network_info)
>  {
>  	u8 i;
>  	int rssi_v = 0;
> -	u8 num_rssi = (network_info->str_rssi.u8Full) ?
> -		       NUM_RSSI : (network_info->str_rssi.u8Index);
> +	u8 num_rssi = (network_info->str_rssi.full) ?
> +		       NUM_RSSI : (network_info->str_rssi.index);
>
>  	for (i = 0; i < num_rssi; i++)
> -		rssi_v += network_info->str_rssi.as8RSSI[i];
> +		rssi_v += network_info->str_rssi.samples[i];
>
>  	rssi_v /= num_rssi;
>  	return rssi_v;
> @@ -346,13 +346,13 @@ static void add_network_to_shadow(struct network_info *pstrNetworkInfo,
>  	} else {
>  		ap_index = ap_found;
>  	}
> -	rssi_index = last_scanned_shadow[ap_index].str_rssi.u8Index;
> -	last_scanned_shadow[ap_index].str_rssi.as8RSSI[rssi_index++] = pstrNetworkInfo->rssi;
> +	rssi_index = last_scanned_shadow[ap_index].str_rssi.index;
> +	last_scanned_shadow[ap_index].str_rssi.samples[rssi_index++] = pstrNetworkInfo->rssi;
>  	if (rssi_index == NUM_RSSI) {
>  		rssi_index = 0;
> -		last_scanned_shadow[ap_index].str_rssi.u8Full = 1;
> +		last_scanned_shadow[ap_index].str_rssi.full = true;
>  	}
> -	last_scanned_shadow[ap_index].str_rssi.u8Index = rssi_index;
> +	last_scanned_shadow[ap_index].str_rssi.index = rssi_index;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e4e0e4da09635d0cb7ef43223022490b6de739a8.1487912400.git.tahia.khan%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

