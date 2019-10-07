X-GM-THRID: 6744906774126526464
X-Received: by 2002:adf:ed12:: with SMTP id a18mr4730881wro.270.1570480871749;
        Mon, 07 Oct 2019 13:41:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:db07:: with SMTP id s7ls308927wri.6.gmail; Mon, 07 Oct
 2019 13:41:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxoR9BSGY16mMaskn5mtmi6GYjxuxCrbj2AhAeOfZ+6b5HcQgvtEkpKElpHmwDeLApN99K/
X-Received: by 2002:adf:fb11:: with SMTP id c17mr25470311wrr.0.1570480870139;
        Mon, 07 Oct 2019 13:41:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570480870; cv=none;
        d=google.com; s=arc-20160816;
        b=PEsdGj0/IX0jLxDuvTGRpcJVNQyR6JgZHO01wfZkakokBIKQBA7lTE6s+UZn6r0HOl
         dMqsg4fM1liF6x2MLU490DdPhTajZLNYA03kh8ZqAWYzn/HAwVRXGAXmo8kZg46bNKeh
         81SERfWvIVs+GuhKIRKQGwoRZqWvmrnZNzb9oawlcZyldMqWr7g6N6IcD0v6/oYMDKXM
         rwKWvelDDjJruyDOAMjc6zGJ1UgVC32anAzCqqw9ofts0jJdYWaq4NRnDAq0bER8OTqH
         MfaCZLFYKYkRyUg3EGx96nMaMMp9yxFAWw0DneeGtt4weiYpOg0wgtPth+73KLdLWpWG
         jgGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GGniaPFmbies07NxcqXJDUlDFiTQNP2KXOFT25flb3o=;
        b=P8wIJqdMJ7Opb2+E0NCTV0FpdxNfU5nEh9H6CI8HSkYSOMfI/+PUwj8pWeTh0y5+NA
         GhnZqFXI+SNk0sAZclQaXhhbLxjgfbcg3qOsjxqaiYJLY4bP0WTh/UmIq9jZQtvVRVxl
         drQwncDLiOeH2aby1gtNrhI82pGlf3xR9/btMCaSJBfirs+dun9r3FS58qe2mBnuxfIL
         OoUMlCMrYlq4OnlNhKFBijgClWYAYGKxV0/RpP22DiTQorndfn0pJAEdfE3rkIacTGCV
         JS10TZZ+CfSDh7RVFFEx1ehOjCA/6P2UiMPM4mzWujzGTJyXnpXuJpWpirJy3Ht8w9Bw
         FxjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si866446wrs.1.2019.10.07.13.41.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:41:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; 
   d="scan'208";a="405126923"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 22:41:09 +0200
Date: Mon, 7 Oct 2019 22:41:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Replace string
 with identifier
In-Reply-To: <20191007144719.2zzlljlqymdqgom7@gmail.com>
Message-ID: <alpine.DEB.2.21.1910072240020.2578@hadrien>
References: <20191007144719.2zzlljlqymdqgom7@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 7 Oct 2019, Javier F. Arias wrote:

> Replace the hardcoded function name with it's predefined identifier.
> Issue found by checkpatch.
>
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index 6f7a63f53d4f..fef9f1f9ba2c 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
>
>  	if (!pxmitframe) {
>  		drop_cnt++;
> -		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
> +		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));

This is not really respecting the 80 column limit.Maybecheckpatch doesn't
complain because the overflow is in a string, but there could be a newline
after _drv_err_,

julia

>  		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
>  		return -1;
>  	}
> @@ -2318,7 +2318,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
>  	res = update_attrib(padapter, *ppkt, &pxmitframe->attrib);
>
>  	if (res == _FAIL) {
> -		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: update attrib fail\n"));
> +		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: update attrib fail\n", __func__));
>  		#ifdef DBG_TX_DROP_FRAME
>  		DBG_871X("DBG_TX_DROP_FRAME %s update attrib fail\n", __func__);
>  		#endif
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191007144719.2zzlljlqymdqgom7%40gmail.com.
>

