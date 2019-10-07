X-GM-THRID: 6744906774126526464
X-Received: by 2002:a17:906:e0c2:: with SMTP id gl2mr22108090ejb.157.1570426337162;
        Sun, 06 Oct 2019 22:32:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:dd81:: with SMTP id g1ls3972708edv.15.gmail; Sun, 06 Oct
 2019 22:32:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJWaplnGjo9dFZDGCVYLRt3hy3mKIA6ttVobjPTop/NIZfDrxx4PVd+7I29DxdhitpvRGD
X-Received: by 2002:a50:9f42:: with SMTP id b60mr27720062edf.192.1570426336172;
        Sun, 06 Oct 2019 22:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570426336; cv=none;
        d=google.com; s=arc-20160816;
        b=QjytvK17Nq/P+Ei7e3oXy+O0yfPtzh4RAz4/rIgHvolA5Ja/4YZ4+qcyo7b5XyoniL
         BYLgWxBefsr5o3ppNGaaPaJXt2djrdJs0DfuWUKek7ospLDMN7d1YRXkf8zWGgRLCFcI
         Vg0A22i9+K0pPqK/HHtbs+v3VLvoCsBuxSBQjw586RjptAp3TkYvBpRCKktejHEZZHqo
         FpXLUR7EACiQvanLzgfnA8xRb2OLm1fvLQK29A8aNt1tHKbDN+6zPvr1tx4I/VDay9IM
         nOGV0v/u9t+grjIW+cDoPy8HdXghTUZwEtRfEV6DLF1/+0EbbMrsrUPkWoNng16beQxK
         ADvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HBu/CP/nBi91k3+jt5fXKCo1M0LDqywNGiORSR5zQuU=;
        b=kCUrKmli6Ur7HP6WtgUHCEsBQRliiMkUqcU6B61K+/mJsksy0rWfyNKo1+ngjZlKJu
         LxU9MVv+qvW4MHGApHtZDTgdOOLvg9754/1YC9cnCbcSrQTX4lJBx6R7wGaYpUblKGYL
         VZ8+2gGWB4PzFyaLGNIlY+LFBWmwJCEYJP7DVqZZ3aNNEEwpOIID9q7unZsd6AyeJXfl
         XFCGFXuhfe7DEHEacTxxXcFERDEPJ/Ge9RA7jtpGBuj8tdws2ZKgbeGdRTuCU4KVItVA
         qUnpHOXcz6C/P1yaxPn8xoR5Zo6xKEpbwdhENk9pxxIzXPlk5xPBnQ8RRO0itOkRHwEc
         Ocew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d14si1009716edb.4.2019.10.06.22.32.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 22:32:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,265,1566856800"; 
   d="scan'208";a="404969284"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 07:32:15 +0200
Date: Mon, 7 Oct 2019 07:32:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Javier F. Arias" <jarias.linux@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Replace string
 with identifier
In-Reply-To: <20191007040259.uoafr2taqolezves@gmail.com>
Message-ID: <alpine.DEB.2.21.1910070731410.2753@hadrien>
References: <20191007040259.uoafr2taqolezves@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 6 Oct 2019, Javier F. Arias wrote:

> Replace the hardcoded function name with the it's predefined identifier.

Perhaps you could send a v2 without the unnecessary "the".

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191007040259.uoafr2taqolezves%40gmail.com.
>

