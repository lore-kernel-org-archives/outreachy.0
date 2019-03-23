X-GM-THRID: 6671642851007266816
X-Received: by 2002:aa7:d294:: with SMTP id w20mr10579362edq.253.1553364395605;
        Sat, 23 Mar 2019 11:06:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f4d8:: with SMTP id v24ls701479edm.0.gmail; Sat, 23 Mar
 2019 11:06:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyylWRNYGzG+1J3jORTlffstGUlmes22fk/Z6h88cTGDZ5gNbXP7jhpJztpu4CdKj9BBcID
X-Received: by 2002:a05:6402:28f:: with SMTP id l15mr10715638edv.10.1553364394839;
        Sat, 23 Mar 2019 11:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553364394; cv=none;
        d=google.com; s=arc-20160816;
        b=Or92dBipjTXVJvlKqIxusBWwsxXZUmJeZBMAr9MFMYpY3cl0qkpNA8wcfyM8z3DS1t
         QV/ycB6/9mguLNmZI50S9ZkI1QWQHaVFd1OScpHdZyvtxrQCBKDirCSK99+LCDX4wj92
         leNczPv/XALHmI2wzrfOg9SowdCPrGakd2IpNh5VSsxJD/5T44aKENUqyjcY7T5L9zB8
         6TvJPf2VBNS5nB+VjOOjohoyBjD22F/DKFGRVhWCeQk2UR7miFvh2uVv6JMQytmFra8U
         w5rP9DZfoohkO//aab31qxEvq6OSgY8MJL+c8f3wn5Hqj/46lgTcreDjjlsavNnr0sUA
         Jb7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8UfTctiCKGew+vNf7eqFrbT+pM58EKP/E7CPeuoO0js=;
        b=yYJYsAZMzUYZpWZ+MHRA8LmZjOX52csm00keiUyBP8BSKdpzIZt5Das3THTLaPgPNJ
         Vv//Qa6CN1tudkmY02RZLC9xshY304Va0FYwULT5JSJa/Wy7jPgMCDhD50q6QSUfzewk
         qh1vqC/gA00OWWdrFtzLifzm1gSzVq0OcT5S7ZMVrzKHMv/spsLoKRKltWafTlxH/Zt3
         hPgTBsk3E4maI1vQPvcddikB56l+ThQUKM4LLqNZ0fjryXnf6qcRsGjFk9HAcc0oULsK
         ldQ+AZa5ZkfIq+aU/tfW/TE+d22Vnb5uCjg3XqaaCaYEQaV8Ate7M0yPjHlca7IWruWy
         VRQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p25si604954eju.1.2019.03.23.11.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 11:06:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300492994"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 19:06:34 +0100
Date: Sat, 23 Mar 2019 19:06:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: rtl8723bs: include:
 Eliminate p
In-Reply-To: <20190323174121.5857-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903231905310.5660@hadrien>
References: <20190323174121.5857-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Vatsala Narang wrote:

> Getting rid of p's from pointer's name
>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> changes in v2:
> -added this patch to patchset
>
>  drivers/staging/rtl8723bs/include/rtw_mp.h   | 2 +-
>  drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
>  drivers/staging/rtl8723bs/include/rtw_xmit.h | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
> index bb3970d58573..a2fe98153297 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mp.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
> @@ -44,7 +44,7 @@ struct mp_tx
>  	/* struct tx_desc desc; */
>  	/* u8 resvdtx[7]; */
>  	u8 desc[TXDESC_SIZE];
> -	u8 *pallocated_buf;
> +	u8 *allocated_buf;
>  	u8 *buf;
>  	u32 buf_size, write_size;
>  	void *PktTxThread;
> diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
> index 7d54cf211315..b4ac00e2ba43 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_recv.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
> @@ -305,7 +305,7 @@ struct recv_buf
>  	struct adapter *adapter;
>
>  	u8 *pbuf;

You missed one.

> -	u8 *pallocated_buf;
> +	u8 *allocated_buf;
>
>  	u32 len;
>  	u8 *phead;
> diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
> index 1b38b9182b31..6e4e047ad5cc 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
> @@ -252,7 +252,7 @@ struct xmit_buf
>
>  	struct adapter *padapter;
>
> -	u8 *pallocated_buf;
> +	u8 *allocated_buf;
>
>  	u8 *pbuf;

And another one.

These are all structure fields.  Are they never used?  Did you compile the
driver?

julia


>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323174121.5857-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

