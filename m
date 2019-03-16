X-GM-THRID: 6669057124685840384
X-Received: by 2002:a17:906:1850:: with SMTP id w16mr1017728eje.7.1552762049931;
        Sat, 16 Mar 2019 11:47:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9e41:: with SMTP id z59ls3257648ede.8.gmail; Sat, 16 Mar
 2019 11:47:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywcMABERA/TQ53Mp7InjVlOoOEP68E9fu21msfUyWcllhiEPfC+1cgr1xz/DBNOgEff1WG
X-Received: by 2002:a50:ba2b:: with SMTP id g40mr1122846edc.1.1552762049169;
        Sat, 16 Mar 2019 11:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552762049; cv=none;
        d=google.com; s=arc-20160816;
        b=CgcbFYdGVoNIZ9Zo9pBhiipe8gf8/yNK8/4gFqsqpt/MI16W8I7rsq9VsSBmAI3q36
         SgceWcOUO+H5hg/OVIjDW2o/BgrHu7H2H9Q7wrX5/i02amg080y/UDM5XEJqQ6tvHnpv
         ermg2LzS6BHGsOf1Vw9Yrpc3p8+oZfz64QZCzxDFtQTKtpn+gkOsYBHhbZq/4dvej+Ns
         qs4nm5M2sp0jCnLalSDrTbTG/K1EfU/XCSuNeO9TA3s3G+PdzjYV08NPFFzEdFeMBOi8
         cHAQooUv9zf9NZ3WwRtd+VgHYdnmI6xH2L+B12RzEoUMnm0WCRMtB5UhjAfCXzkIqtFj
         DKvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cKYL+QjrdHEiwBlsrhsmYZTUkdNY7B0Zzts4029VLZ0=;
        b=nPKUDWrYaRW2xnkx+sRf3H16T6U6w68bC44AAdrmMVjHJ2oZzc7N/AHJq1sH/M1M8p
         MRkPnFKhR9O5rwAydDPiK8RSVowzGFnP8zRO2mvP+M+K38CUiKQ4niKH+eKLksWw/i0/
         EmlnzQ/JI0yIIjHbkpPBD+f9LdkaBM6bJ+Gxr/YdHyB8hbbGLqLjRFNEZbi4GUfiYqhf
         aL6IuztftVyrZJZkOHLHbICKBlLq4ZdkEItk0AxHJxL6xJ8yfr83Q4gLTeLajwLmpWa8
         TQJrGoSrVJHB0/FqfLURZr3ex2h2grcIvNkKifYGc8hwof2RsjBTFR/nPPzSZiHrzzJh
         oCJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i16si254463ede.0.2019.03.16.11.47.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:47:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="374089078"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 19:47:05 +0100
Date: Sat, 16 Mar 2019 19:47:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 5/9] staging: rtl8723bs: hal: Modify
 comparisons in rtl8723bs_xmit.c
In-Reply-To: <20190316174543.36254-6-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161945220.2487@hadrien>
References: <20190316174543.36254-1-himadri18.07@gmail.com> <20190316174543.36254-6-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Himadri Pandya wrote:

> - Remove comparison to NULL in file rtl8723bs_xmit.c. Suggested by Coccinelle.
> - Modify comparison to true in order to follow kernel coding style of
> keeping constant to the right side.

These are different things.  They don't affect the same code, so they
shouldn't be in the same patch.

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Change subject line
>
> Changes in V3:
> 	- Break changes into changes per file
> 	- Include modification to comparision to true
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> index 69c4db5b5b0c..7b06aab04ee6 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> @@ -58,12 +58,12 @@ static s32 rtl8723_dequeue_writeport(struct adapter *padapter)
>
>  	ret = ret || check_fwstate(pmlmepriv, _FW_UNDER_SURVEY);
>
> -	if (true == ret)
> +	if (ret == true)
>  		pxmitbuf = dequeue_pending_xmitbuf_under_survey(pxmitpriv);
>  	else
>  		pxmitbuf = dequeue_pending_xmitbuf(pxmitpriv);
>
> -	if (pxmitbuf == NULL)
> +	if (!pxmitbuf)
>  		return true;
>
>  	deviceId = ffaddr2deviceId(pdvobjpriv, pxmitbuf->ff_hwaddr);
> @@ -283,8 +283,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
>
>  				/*  check xmit_buf size enough or not */
>  				txlen = txdesc_size + rtw_wlan_pkt_size(pxmitframe);
> -				if (
> -					(NULL == pxmitbuf) ||
> +				if(	!pxmitbuf ||
>  					((_RND(pxmitbuf->len, 8) + txlen) > max_xmit_len) ||
>  					(k >= (rtw_hal_sdio_max_txoqt_free_space(padapter)-1))
>  				) {
> @@ -307,7 +306,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
>  					}
>
>  					pxmitbuf = rtw_alloc_xmitbuf(pxmitpriv);
> -					if (pxmitbuf == NULL) {
> +					if (!pxmitbuf) {
>  #ifdef DBG_XMIT_BUF
>  						DBG_871X_LEVEL(_drv_err_, "%s: xmit_buf is not enough!\n", __func__);
>  #endif
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316174543.36254-6-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

