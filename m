X-GM-THRID: 6671642851007266816
X-Received: by 2002:a1c:5f06:: with SMTP id t6mr8245125wmb.7.1553409325771;
        Sat, 23 Mar 2019 23:35:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:540a:: with SMTP id g10ls140017wrv.14.gmail; Sat, 23 Mar
 2019 23:35:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7fDBIugZLT9powhyATNYCWzk+qdM7Wtd6sc1U0FpEpB7oGMTASQ+lYifnttlr3x5hiqI8
X-Received: by 2002:a5d:4750:: with SMTP id o16mr11152519wrs.206.1553409324928;
        Sat, 23 Mar 2019 23:35:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553409324; cv=none;
        d=google.com; s=arc-20160816;
        b=Y69d4TPa7bBfHfM/oM2CUhLaOBomfiaPk+tsUvWvkM5SoW6UkE4o9IbPUbAmp1wnPw
         GOivnwFs4uAh547HQMyatbpuWTalMsgGl7fXGVCLzj5yI5/cdYizTe1klvhJNi0wOiw3
         AJJZL0PU+i3lWyods34Qdr8VUS5wqA0w9Fffiqsm730yPItS+t5a1ElsZRsZzIZgiXUf
         oiWo0HK5+YlihZ4Hkau8/v5fjilW2Hxhd2ge++XosfmrqzHveddvvt+RRzWAex3RBZb5
         NxkYCiicKEIMHpdm5d2SsT/M9M4nBGf6fPQu2BccXb2mMHbVONy4r1lePfRZn9A4sytD
         Qjpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kRVragLyQH47TzDhvOvJDhy/ZlfYDMUocUfVh1iAmJ0=;
        b=dQBRz09CqCZMU+BQQVgPC0yAuODS/URyoqJKJJu3DmFqwnU+SQMQS+4uOsHHYF26GE
         e0aBojog3/5/o9QgJee7cUcAwpx+RUHipZDcg7TJDb+hR5JpPc/N0myfOhTZT/XDCqge
         HjJmI4BmqbGx5QGBMpl9o6mBhfd0SCG67g9WgWC/7XG9+SaDuA1Q69cedryUGpMvuRZ4
         FJSraTA1wPa+Retdy6cspLt05St1t4RhJ9ebY8akszPUk4LtfN3ANr5rRkzQ/YXANLpv
         s7TyMs58lAKdQhOKqDewV8j78SD4QlWk5V7gZ6a2Fekzqp6co6BajL58kjNfqdncihP3
         TXGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a9si630582wrp.5.2019.03.23.23.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:35:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300510097"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 07:35:24 +0100
Date: Sun, 24 Mar 2019 07:35:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 2/3] staging: rtl8723bs: include:
 Eliminate p
In-Reply-To: <20190323220542.9331-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903240724560.2526@hadrien>
References: <20190323220542.9331-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, Vatsala Narang wrote:

> Getting rid of p's from pointer's name

Again, you are only changing the definitions of the structures, and not
their uses.  Doing grep for pallocated_buf shows four uses in
os_dep/xmit_linux.c.

On the other hand, all of them are in xmit_bufs.  There seem to be no uses
of the fields of the other types.  I looked into the use of the mp_tx type
a bit.  It seems to be only used in the definition of the mp_prive
structure in rtw_mp.h.  Grepping for mp_priv only shows uses in rtw_mp.h.
These are the definition, a function prototype in a comment, and as a
substring in the names of two functions init_mp_priv and free_mp_priv.

So it seems that all of this can be dropped:
- The entire mp_tx structure definition
- The entire mp_priv structure defintion
- The comment about the prototype of alloc_mp_xmitframe
- The prototype of init_mp_priv
- The prototype of free_mp_priv

It would be good to do a similar check on the recv_buf structure, to see
if it is ever used.

julia

>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> changes in v3:
>  -no change
>
> changes in v2:
>  -added this to patchset
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
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323220542.9331-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

