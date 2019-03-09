X-GM-THRID: 6666325868481085440
X-Received: by 2002:a50:97a6:: with SMTP id e35mr6186953edb.4.1552138450783;
        Sat, 09 Mar 2019 05:34:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6a98:: with SMTP id p24ls2416652ejr.7.gmail; Sat, 09
 Mar 2019 05:34:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqyAYDiA5QLfZ1QwSdf+qfqUD+H+kxJ3nl//Asw3jy6FM7JoZVlQc1ZtjsnHWcmg9IA370Vk
X-Received: by 2002:a17:906:938b:: with SMTP id l11mr2736809ejx.8.1552138450078;
        Sat, 09 Mar 2019 05:34:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552138450; cv=none;
        d=google.com; s=arc-20160816;
        b=xs2HhviklrWD8lja/MR0Mu0X5Yc0o3hdugIDBGgN+0Ysa1Os25pbZJFCWGxiL/7qXA
         hazbJoY1AZAe96pxLfbhSzRVKRarX4qBdP9ztXT2lArO80WjdIaiPs/zHOaDKHQSDWTj
         ZyPzNAzEBIMMxYlNzs2WtpecTI1YRJhy5YktRjDkCQfpCc/LJh6nxC6of27K+zZ/0fz/
         7ZV5Q/1tUQ2+y9ovcEiNMckRbqeF/nyZ6AfeD7sjxEzHxV4/0bCRi/oyRT4Vcc2b4VSk
         1DgE3w3pR3Etn80qjSA92da1gFiHKdPAookG5eFhtx5KgLniWZEhV/zBloJ6dnw+r0y1
         /qUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=/YU8AmVgkWOlwSCibHDNpErPrWJzmdsLxb5hf8byhUk=;
        b=lfTN50gRWiTKUZ0O8Hb7/oXzWYmj6p9AdgYPLWKWtKnH1qV9Ck4lGY/5jfWVUnn8Pt
         cSZcfe3V84DBTJ1Km2S6t1B9oJ+TiLk/pL2jSWFKA6YsQkLsgHW1vN8ShIdEnf1vahWs
         um0Qd18Q4C/2sMGiZirg6+bZ278wo3rjQzaPEYXwP+YYRdBVGjZbFhnu4Kkkc21Ufmw4
         vgeIDsKlWgfKUkkF/tZxbjFtpAyhOxxCoPTjFTc3iiGSC0gPAZH0bn7wJvg/IzTJ2oWb
         5d3cdzldgFSJePkQUXgv9TU9k0wejIwCFZkb2ryjcf3SHjfFnLthKrIiyGTlBGWnn83F
         zQhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h5si533365ejq.0.2019.03.09.05.34.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 05:34:10 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,459,1544482800"; 
   d="scan'208";a="372631079"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 14:34:09 +0100
Date: Sat, 9 Mar 2019 14:34:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: adham.abozaeid@microchip.com, ajay.kathat@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: remove unnecessary
 variable result
In-Reply-To: <20190309101610.39595-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903091433360.2452@hadrien>
References: <20190309094840.38154-1-himadri18.07@gmail.com> <20190309101610.39595-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Himadri Pandya wrote:

> Remove unnecessary local variable "result" and its assignments from
> function wilc_set_pmkid_info. Suggested by Coccinelle.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Arrange the function arguments to the right of "(" in function
> call in the return statement
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..fa0e1bd9f836 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  {
>  	struct wid wid;
> -	int result;
>
>  	wid.id = WID_PMKID_INFO;
>  	wid.type = WID_STR;
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> -				      wilc_get_vif_idx(vif));
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +				    wilc_get_vif_idx(vif));
>
> -	return result;

The argument alignment looks fine.  But you have left an empty blank line
at the end of the function.

julia

>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> ---
>  drivers/staging/wilc1000/host_interface.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..fa0e1bd9f836 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  {
>  	struct wid wid;
> -	int result;
>
>  	wid.id = WID_PMKID_INFO;
>  	wid.type = WID_STR;
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> -				      wilc_get_vif_idx(vif));
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +				    wilc_get_vif_idx(vif));
>
> -	return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309101610.39595-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

