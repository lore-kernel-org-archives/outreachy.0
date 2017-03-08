X-GM-THRID: 6394973559619321856
X-Received: by 10.46.71.15 with SMTP id u15mr1256345lja.9.1488986560257;
        Wed, 08 Mar 2017 07:22:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.18 with SMTP id 18ls404472ljj.4.gmail; Wed, 08 Mar 2017
 07:22:38 -0800 (PST)
X-Received: by 10.46.9.141 with SMTP id 135mr1277725ljj.19.1488986558510;
        Wed, 08 Mar 2017 07:22:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si380023wmg.0.2017.03.08.07.22.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 07:22:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,264,1486422000"; 
   d="scan'208";a="216039799"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 16:22:37 +0100
Date: Wed, 8 Mar 2017 16:22:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: removes redundant
 'continue' in while loop conditional blocks
In-Reply-To: <20170308151943.GA28915@coolbox>
Message-ID: <alpine.DEB.2.20.1703081621410.3004@hadrien>
References: <20170308151943.GA28915@coolbox>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Wed, 8 Mar 2017, Tahia Khan wrote:

> Removing 6 continue statements from a while loop. The
> continue statements are redundant here since control
> already returns to the beginning of the loop upon exit
> of any of the conditional blocks. Found using Coccinelle.
>
> Changes since v1: Updating commit message to credit
>  Coccinelle.

Thanks for adding the credit, but the "Changes since v1" goes under the
---.  It's only meaningful for people who have seen v1, which is not the
case of people looking through the git logs.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308151943.GA28915%40coolbox.
> For more options, visit https://groups.google.com/d/optout.
>

