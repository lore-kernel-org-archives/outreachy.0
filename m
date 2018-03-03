X-GM-THRID: 6528799857356832768
X-Received: by 10.25.80.68 with SMTP id z4mr732460lfj.31.1520110364673;
        Sat, 03 Mar 2018 12:52:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls1372151lfa.11.gmail; Sat, 03 Mar
 2018 12:52:43 -0800 (PST)
X-Google-Smtp-Source: AG47ELtsy9MhCVU+wWOzE/36saWjInG2LkemOptyIlomZjmGDwpdw32FegkotCis3Op3HjuTd1cI
X-Received: by 10.25.235.140 with SMTP id f12mr741005lfk.19.1520110362982;
        Sat, 03 Mar 2018 12:52:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520110362; cv=none;
        d=google.com; s=arc-20160816;
        b=TPJras8ZLYA+72J+jOQtnRsiw4ht2QjX838AyGUaQdMIvKuDDU3RmlOwZ0pXEQe+PS
         c1WrPU+j9tPTRGN8kelT+1AQZvaG0NVmi7lQPhIT8LQRoTeMjMm/BD6QDt0wQugcdz2+
         WEz6pi6k0bdkcNfOqIIh6EB9ejjlPpZuOvNNMIDBKHzbnxNC6OdN8371zLakwCN+DmTf
         MSQBwSxDEQ0x7ZtxEWTpbISCT1r5gcUqZpUUY7bDUlrRTRRDsokFk9rDkLX/ZLCASpL5
         VtnlJDtpDiBzUKGiR+8W482uuRLW2UIFdqUNZOteP6rPbd7BcPpJRCpAqy+UXDLcXWJh
         LShQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=zdmsXkYGCHB8/db6iyjow5zIFnkKdzuTERHdjEKliPE=;
        b=X7T/YlQ7j4xRK9qOgkV5TFNGsUjRRYF1PScjXg0GhoXuZ0BNwpbM+95/6YIm4DuFl3
         e3akeYCunH4doCUnwylSbjH5tEW66H2ev9jMYahDw9e+d1InRechWLCR9LyIe81YjHYn
         sVFnx8VfImg1zz3av0rsyrDLStTBv+aK320xHop4dcgNpRMV2nhDno3AGu05P7l0Jvb0
         +3XwPuG+FIzUV4byYfVzmeho0S5pNaJRwo8hLPbxy5BPZvvxgyvvsOs3TI6413ub9WjO
         8v66gcI7exhwY1n3uiInAWL012sNG4kASvgx1YVuRxotTJQYNpHZmcXmEUaOoH1ijKoB
         2spw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si405581lja.1.2018.03.03.12.52.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 12:52:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,419,1515452400"; 
   d="scan'208";a="316240577"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 21:52:42 +0100
Date: Sat, 3 Mar 2018 21:52:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary
 semicolon.
In-Reply-To: <20180303191726.GA4986@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803032152260.9544@hadrien>
References: <20180303191726.GA4986@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Arushi Singhal wrote:

> Remove unnecessary semicolon using semicolon.cocci Coccinelle script.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/core/rtw_recv.c       | 2 +-
>  drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> index 9c7c3be..86f995b 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> @@ -1785,7 +1785,7 @@ static union recv_frame *recvframe_defrag(struct adapter *adapter,
>  		pfhdr->attrib.icv_len = pnfhdr->attrib.icv_len;
>  		plist = get_next(plist);
>
> -	};
> +	}
>
>  	/* free the defrag_q queue and return the prframe */
>  	rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
> index a71b552..f6aeb26 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c
> @@ -163,7 +163,7 @@ static int phy_RF6052_Config_ParaFile(struct adapter *Adapter)
>  			break;
>  		}
>
> -		/*----Restore RFENV control type----*/;
> +		/*----Restore RFENV control type----*/
>  		switch (eRFPath) {
>  		case RF_PATH_A:
>  		case RF_PATH_C:
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303191726.GA4986%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

