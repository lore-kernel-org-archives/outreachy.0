X-GM-THRID: 6746399399110246400
X-Received: by 2002:adf:fad1:: with SMTP id a17mr12264793wrs.148.1570773922687;
        Thu, 10 Oct 2019 23:05:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:99d7:: with SMTP id b206ls2355902wme.2.canary-gmail;
 Thu, 10 Oct 2019 23:05:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcuud9ZXKzskUeJ+3SktWQQq27nErxGLXySrggi2/Wp0EfYPG7PgNGpGP4np1HHkcaq1RQ
X-Received: by 2002:a1c:a4c6:: with SMTP id n189mr1664958wme.111.1570773921761;
        Thu, 10 Oct 2019 23:05:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570773921; cv=none;
        d=google.com; s=arc-20160816;
        b=NHmhcoOKL3Q7ZkNMWfEBkKQLiJSCcK8cOr8XsUHqMTLztxhEYLFXWGJiP3uM6/cI1Q
         pWQ53UnGtN/H5SRE7BlKfgCdSAA9cC72mxd7VzKsbsB4Fix4PmXJuDXjkky3nfA7+yBt
         9A58yB9fQjadufkZmTp9GUTJIaY/qpjL36WTzKLU4WeEpZ4M2EDWEYwb82j+G3bWUczV
         +sgnsE8GdcSvrCLrT8OcRI/fu8Z5PzQs9qzgIPO0nF8PMU96zW9gtUb48lHOpAdooGDi
         +uDfsEWfEZVHlCjDuzc94xd7hErO5N49688gj1DN6IJEmDht6wxnJqAckkjegO6SPym6
         GWbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=CaJmxIuXDGKOiKXwNWAUJVuNQV1YXiM2GyjfZu7sqDA=;
        b=mc2CFpXZ44wwP4UX7n/E/GkEJrTiHS/l3oqC1AJx5xxwhFNSzEIE4T3DuJ52HNHxEu
         EcZ4HRzKx9Im5rg4sm2XZMxZN+WxCMy3Tev5UyTNFt4lF1tSpC5ksuZdvYQLX0ClZGJz
         jcImYzS0tblSQhet14jS0ij1e0OBYFsZdzwfyge8R0OjllPcJYVTBjzvrcg4vWtH/VZ1
         6yWHedDAINWIHgmw4Ols0qbCTq647ZEtzzoce0hvSXDWnlAFapPdm11G4T+DC7r5SLtW
         mKkzL7g0qGPJZoEiRtmsXspiIcybAVR/jj0DSqAeQveHcBGJjkB+lfosfKw/rqLS2l6x
         0Lxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n16si522068wrs.4.2019.10.10.23.05.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Oct 2019 23:05:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,283,1566856800"; 
   d="scan'208";a="405696795"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2019 08:05:21 +0200
Date: Fri, 11 Oct 2019 08:05:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8723bs: Fix function
 call format
In-Reply-To: <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com>
Message-ID: <alpine.DEB.2.21.1910110804200.2662@hadrien>
References: <cover.1570768179.git.jarias.linux@gmail.com> <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 10 Oct 2019, Javier F. Arias wrote:

> Fix function call format by following the coding style guidelines
> for argument wrapping in function calls.
> Issue found by checkpatch.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_security.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
> index 08570e78d5e2..a809521da53d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_security.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_security.c
> @@ -1625,15 +1625,14 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
>  	payload_index = hdrlen + 8; /*  8 is for extiv */
>
>  	for (i = 0; i < num_blocks; i++) {
> -		construct_ctr_preload(
> -				ctr_preload,
> -				a4_exists,
> -				qc_exists,
> -				pframe,
> -				pn_vector,
> -				i+1,
> -				frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
> -			);
> +		construct_ctr_preload(ctr_preload,
> +				      a4_exists,
> +				      qc_exists,
> +				      pframe,
> +				      pn_vector,
> +				      i+1,
> +				      frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
> +

It could be more readable with more arguments on one line.

Also, the i+1 seems like it should have been fixed in a previous patch in
the series?

julia

>
>  			aes128k128d(key, ctr_preload, aes_out);
>  			bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux%40gmail.com.
>

