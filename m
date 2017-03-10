X-GM-THRID: 6395630061335085056
X-Received: by 10.25.33.67 with SMTP id h64mr2266193lfh.22.1489137491500;
        Fri, 10 Mar 2017 01:18:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls954282ljd.25.gmail; Fri, 10 Mar
 2017 01:18:10 -0800 (PST)
X-Received: by 10.25.26.80 with SMTP id a77mr2384360lfa.18.1489137490902;
        Fri, 10 Mar 2017 01:18:10 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si241299wmd.0.2017.03.10.01.18.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 01:18:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,140,1486422000"; 
   d="scan'208";a="263986550"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 10:18:09 +0100
Date: Fri, 10 Mar 2017 10:18:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wilc1000: Enhance code
 formatting
In-Reply-To: <20170310091221.7109-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101016560.2169@hadrien>
References: <20170310091221.7109-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Tamara Diaconita wrote:

> This trims line size at 80 characters by shortening the names of
> variables.
>
> It makes code easier to read.
>
> Problem found with checkpatch.pl
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
> Changes since v2:
> *Shorten variables name.
> *Separate the patch from a patch set.
>
> Changes since v1:
> *Put the pacth in a set.
>
>  drivers/staging/wilc1000/coreconfigurator.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 10101f8..45563b9 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -123,7 +123,7 @@ struct disconnect_info {
>  s32 wilc_parse_network_info(u8 *msg_buffer,
>  			    struct network_info **ret_network_info);
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
> -			       struct connect_resp_info **ret_connect_resp_info);
> +			       struct resp_info **ret_resp_info);

I don't think you can change the name of a type in only one place.  You
would have to change the declaration of the type and all of the other
uses.  Did you compile any file that includes this code?  Changing a
header file is tricky, because you can't compile it directly.  You have to
find a .c file that contains it.

julia

>  void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
>  				 u32 u32Length);
>  void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310091221.7109-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

