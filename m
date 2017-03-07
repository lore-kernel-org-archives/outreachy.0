X-GM-THRID: 6394882267556085760
X-Received: by 10.25.216.154 with SMTP id r26mr465107lfi.7.1488924931165;
        Tue, 07 Mar 2017 14:15:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.67 with SMTP id 3ls192836ljw.43.gmail; Tue, 07 Mar 2017
 14:15:30 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr594580ljb.11.1488924930583;
        Tue, 07 Mar 2017 14:15:30 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si191617wmg.3.2017.03.07.14.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:15:30 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,260,1486422000"; 
   d="scan'208";a="215940200"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 23:15:29 +0100
Date: Tue, 7 Mar 2017 23:15:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: coreconfiguration
 Removed camel case
In-Reply-To: <20170307220910.5225-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703072314320.2292@hadrien>
References: <20170307220910.5225-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Tamara Diaconita wrote:

> Change the name of some variables to fix the checkpath.pl issue:
> CHECK: Avoid CamelCase
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

I think that someome already proposed this change, but Greg didn't take it
because he wanted the occurrences of length to be moved up to the previous
line.

julia

>  #endif
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307220910.5225-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

