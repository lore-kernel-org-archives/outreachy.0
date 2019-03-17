X-GM-THRID: 6668974051336126464
X-Received: by 2002:adf:f011:: with SMTP id j17mr61160wro.8.1552859556922;
        Sun, 17 Mar 2019 14:52:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:67c4:: with SMTP id b187ls212430wmc.14.canary-gmail;
 Sun, 17 Mar 2019 14:52:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcjr95GbXuBGZX7gfgLpD9gpu83oCld5xq/YIfroSvhhWBXYYK8gY53OY25yFbq2kMDBkB
X-Received: by 2002:a1c:a406:: with SMTP id n6mr836960wme.24.1552859556150;
        Sun, 17 Mar 2019 14:52:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552859556; cv=none;
        d=google.com; s=arc-20160816;
        b=RBIDXJtJUAyMBFTPCpeHXO557LnF/pM55Zq9wd90k+oavA4QjF/GFfSjglnViUnoNe
         0O/4RONRlVt5BpwpVYPccr6flWUdCWWgeIiuB8+tA/RO4FwBCw3RcDuMm28csf7c49kC
         dNYBbO2B4Bcyu5NtxKjPqKSGtdr3nBPYtwkuKM4pNVkGLL8ZnIPbT5bxjhrRay2G3KXa
         sujHkh3S6EGGr+hlDgqjz4I74RBfgkfHc52M4H3UhGKCMVzsPboIlD7G+kdNYmv+4//B
         TReuiHm0t3ug/MK+1dzGopvN7eVImINcqwwjzEf/dNMrEl3B2UM1UkKnlMCDWA4JVjrY
         3RHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Y/G+IOhuf1kaW7RSVamrVAnXDN2rjs9aD8QH5H16v/k=;
        b=bYkRTIAy1GhGaYT9dYRV2UPpuGIhpkKa53jKgLAIA8sTbKnJsvC4oEsr9QPouwb+re
         h9pHE9oPpd1X7u+PDOZ5Dk6QqXgSWXBNLCcW3PR0Ql5pN0tJFkJJodGAUdBClt5njCEC
         oWn3zDvnZrdgUF/9LbLfyVUNSmuX2bh+PdHvBjZO+ZqUsU2HY2630/WIu+9BSzqIzDec
         cjoUSL8I3mH073P2SntgCqEEMOabsX/27P2d1jaelDqw0prHVc+CgLUxjJMux1LEnFWQ
         NsPIMetDC/h/XSsRKromCucQd72xWFIVLgu+6jr3+fZabMI0IVnxhhpkb+7CLAZFPUIr
         cRaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p4si368307wmh.0.2019.03.17.14.52.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 14:52:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,491,1544482800"; 
   d="scan'208";a="374416158"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 22:52:35 +0100
Date: Sun, 17 Mar 2019 22:52:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/5] Staging: rtl8723bs: Change
 type of variables and return type
In-Reply-To: <cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903172250420.2434@hadrien>
References: <cover.1552858206.git.madhumithabiw@gmail.com> <cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Madhumitha Prabakaran wrote:

> Change type of local variables 'res' and return type of functions
> 'rtw_init_cmd_pri' and 'rtw_init_evt_priv', as function's
> return types are defined for standard error codes _SUCCESS and _FAIL.

I'm not sure to undestand the reference to _SUCCESS and _FAIL.  sint is a
typedef for signed int, but kernel code typically uses just int rather
than signed int.  In any case, the change doesn't have any impact on the
types in the code.

julia

> Also, change return type of functions declarations corresponding to
> change made in function definitions.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c      | 8 ++++----
>  drivers/staging/rtl8723bs/include/cmd_osdep.h | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 793bc505fa9c..ab450f717f34 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
>  No irqsave is necessary.
>  */
>
> -sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  {
> -	sint res = _SUCCESS;
> +	int res = _SUCCESS;
>
>  	init_completion(&pcmdpriv->cmd_queue_comp);
>  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> @@ -201,9 +201,9 @@ sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  }
>
>  static void c2h_wk_callback(_workitem *work);
> -sint rtw_init_evt_priv(struct evt_priv *pevtpriv)
> +int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	sint res = _SUCCESS;
> +	int res = _SUCCESS;
>
>  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
>  	atomic_set(&pevtpriv->event_seq, 0);
> diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> index 8ed913726d5a..06ab48263757 100644
> --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> @@ -8,8 +8,8 @@
>  #define __CMD_OSDEP_H_
>
>
> -sint rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> -sint rtw_init_evt_priv(struct evt_priv *pevtpriv);
> +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv);
> +int rtw_init_evt_priv(struct evt_priv *pevtpriv);
>  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
>  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
>  extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cce081516153acd64194786cb1373150172d73cf.1552858206.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

