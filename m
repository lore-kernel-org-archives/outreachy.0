X-GM-THRID: 6394973559619321856
X-Received: by 10.25.202.67 with SMTP id h3mr754295lfj.30.1488964518818;
        Wed, 08 Mar 2017 01:15:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls296144ljv.35.gmail; Wed, 08 Mar 2017
 01:15:17 -0800 (PST)
X-Received: by 10.46.82.157 with SMTP id n29mr939745lje.29.1488964517725;
        Wed, 08 Mar 2017 01:15:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si571638wmh.1.2017.03.08.01.15.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 01:15:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="215984843"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 10:15:16 +0100
Date: Wed, 8 Mar 2017 10:15:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: removes redundant
 'continue' in while loop conditional blocks
In-Reply-To: <20170308040328.GA24535@coolbox>
Message-ID: <alpine.DEB.2.20.1703081014500.3156@hadrien>
References: <20170308040328.GA24535@coolbox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 7 Mar 2017, Tahia Khan wrote:

> Removing 6 continue statements from a while loop. The
> continue statements are redundant here since control
> already returns to the beginning of the loop upon exit
> of any of the conditional blocks.

Good observation.  How did you find it?

julia

>
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 2429c85..fdd902f 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -3890,7 +3890,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
>  					pNewJoinBssParam->supp_rates[i + 1] = pu8IEs[index + i];
>
>  				index += suppRatesNo;
> -				continue;
>  			} else if (pu8IEs[index] == EXT_SUPP_RATES_IE) {
>  				extSuppRatesNo = pu8IEs[index + 1];
>  				if (extSuppRatesNo > (MAX_RATES_SUPPORTED - suppRatesNo))
> @@ -3902,11 +3901,9 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
>  					pNewJoinBssParam->supp_rates[suppRatesNo + i + 1] = pu8IEs[index + i];
>
>  				index += extSuppRatesNo;
> -				continue;
>  			} else if (pu8IEs[index] == HT_CAPABILITY_IE) {
>  				pNewJoinBssParam->ht_capable = true;
>  				index += pu8IEs[index + 1] + 2;
> -				continue;
>  			} else if ((pu8IEs[index] == WMM_IE) &&
>  				   (pu8IEs[index + 2] == 0x00) && (pu8IEs[index + 3] == 0x50) &&
>  				   (pu8IEs[index + 4] == 0xF2) &&
> @@ -3918,7 +3915,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
>  				if (pu8IEs[index + 8] & BIT(7))
>  					pNewJoinBssParam->uapsd_cap = true;
>  				index += pu8IEs[index + 1] + 2;
> -				continue;
>  			} else if ((pu8IEs[index] == P2P_IE) &&
>  				 (pu8IEs[index + 2] == 0x50) && (pu8IEs[index + 3] == 0x6f) &&
>  				 (pu8IEs[index + 4] == 0x9a) &&
> @@ -3948,8 +3944,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
>  				memcpy(pNewJoinBssParam->start_time, pu8IEs + u16P2P_count, 4);
>
>  				index += pu8IEs[index + 1] + 2;
> -				continue;
> -
>  			} else if ((pu8IEs[index] == RSN_IE) ||
>  				 ((pu8IEs[index] == WPA_IE) && (pu8IEs[index + 2] == 0x00) &&
>  				  (pu8IEs[index + 3] == 0x50) && (pu8IEs[index + 4] == 0xF2) &&
> @@ -3995,7 +3989,6 @@ static void *host_int_ParseJoinBssParam(struct network_info *ptstrNetworkInfo)
>  				}
>  				pNewJoinBssParam->rsn_found = true;
>  				index += pu8IEs[index + 1] + 2;
> -				continue;
>  			} else {
>  				index += pu8IEs[index + 1] + 2;
>  			}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308040328.GA24535%40coolbox.
> For more options, visit https://groups.google.com/d/optout.
>

