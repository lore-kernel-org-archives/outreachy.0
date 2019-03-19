X-GM-THRID: 6670193586677481472
X-Received: by 2002:a1c:6c12:: with SMTP id h18mr482209wmc.18.1553026308480;
        Tue, 19 Mar 2019 13:11:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b458:: with SMTP id v24ls4347327wrd.2.gmail; Tue, 19 Mar
 2019 13:11:47 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVB0xfi81Mq8rOwXgiScDeSBgZvJgifbOIQrD0XUeZIaU2z9P+ES9AMBs4R5qLRoUcvG/6
X-Received: by 2002:adf:fb91:: with SMTP id a17mr1320594wrr.1.1553026307833;
        Tue, 19 Mar 2019 13:11:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553026307; cv=none;
        d=google.com; s=arc-20160816;
        b=zlqd6cbH2ZSrCkDsR6bQB+ZWJ/fVUO9AenIb1f/im74z8p+d3vGGfInOpus+x1QVOL
         mATUyUAFGu5+HRcWxACdBtrMfHeOSfcI5lKFI8ZS07E/gox0pwWHBRRnBHeH/lnvbhdx
         U0FRWatIYx/A/AOYanIYdC26zp2kB0smqx+5wfHOvWtCHg31cKqQ8KvfAQAoTlBjcQ4i
         tnx73/GV0jnQ2CDQIE5kSjvA2yzaZhKA7MDiKrfnm9BijmSWHq8QCLF3C+XEbwZI+G6P
         CBm6xAKWwfQ3N9zAnfFSy/EJwHdnljlM30h1BpXPAMlewtej90amW195ogJyLuaD/Ja+
         fg6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0EGHfse8OZPeIqdIz+Zw9E93pIiq+PGDg63DVdyUIEk=;
        b=WG5nFg/qKksnWu97mDLIxWu881Cup796P/JN1qMyWqklx8LGoHQPYEHEmWI+c9hGhg
         xDwRa0vZ7IB5O9nt64taWySkZEZrw5PPMzOTGZ5jC0dUG09/pZyIRUokaoZYbzcDIX9L
         HgoJcsvq8OTtIUw2qjfYxt6UcxC91KGRySjVY99qUEjkDEKFRKMzxVcmqJsXzEYhhRT+
         zWkW2sdlIQ31ceg4Nh3VukDy5iAzBpNcEw+UjD3Xp6LvlWVZHkW8QA4jBQBEtvFnhYp0
         OljOB04sILinx4KxDkMuFZ7Iv4vOvj7DE/7VOHusXgARYDq+v1lSKKaRBucZS+zysAcO
         nwdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y192si1671wmd.1.2019.03.19.13.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:11:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300009840"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:11:47 +0100
Date: Tue, 19 Mar 2019 21:11:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ajay.kathat@microchip.com, adham.abozaeid@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: wilc1000: Remove return
 variable
In-Reply-To: <7ee75b6e103796fc5c536be85aa5763c691b885c.1553025265.git.nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192111040.2460@hadrien>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com> <7ee75b6e103796fc5c536be85aa5763c691b885c.1553025265.git.nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable. Issue found with Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 56d8ed29fff9..cd4d9bd789fd 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1365,10 +1365,8 @@ int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				      wilc_get_vif_idx(vif));

The last argument should be lined up with the (.  But you can check if it
would now fit on the previous line.

julia

> -
> -	return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7ee75b6e103796fc5c536be85aa5763c691b885c.1553025265.git.nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

