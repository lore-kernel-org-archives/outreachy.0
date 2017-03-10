X-GM-THRID: 6395629970137284608
X-Received: by 10.46.21.28 with SMTP id s28mr776184ljd.14.1489128245900;
        Thu, 09 Mar 2017 22:44:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.87 with SMTP id t23ls903218ljd.19.gmail; Thu, 09 Mar
 2017 22:44:05 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr2820535ljb.20.1489128245165;
        Thu, 09 Mar 2017 22:44:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si104086wmg.3.2017.03.09.22.44.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 22:44:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,139,1486422000"; 
   d="scan'208";a="216244474"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 07:44:04 +0100
Date: Fri, 10 Mar 2017 07:44:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: wilc1000: Remove camel
 case
In-Reply-To: <20170309223039.7303-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703100742580.2169@hadrien>
References: <20170309223039.7303-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Tamara Diaconita wrote:

> Change the name of variables to remove camel case.
>
> Fix the checkpatch.pl issue:
> CHECK: Remove CamelCase.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 10101f8..a2df5c7 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -124,10 +124,10 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
>  			    struct network_info **ret_network_info);
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
>  			       struct connect_resp_info **ret_connect_resp_info);
> -void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
> -				 u32 u32Length);
> -void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
> -				u32 u32Length);
> -void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
> -				   u32 u32Length);
> +void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> +				 u32 length);
> +void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
> +				u32 length);
> +void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer,
> +				   u32 length);

These changes were already made.

julia

>  #endif
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309223039.7303-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

