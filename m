X-GM-THRID: 6668974051336126464
X-Received: by 2002:adf:e551:: with SMTP id z17mr416172wrm.11.1552742357980;
        Sat, 16 Mar 2019 06:19:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:55c5:: with SMTP id j188ls1460882wmb.13.canary-gmail;
 Sat, 16 Mar 2019 06:19:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUs7LYtTRrR3gWyL/6L7lKaPmqysNvliBinNXZmj36o9YQP5Kr5wC+B2zt2Bc7r41KL4m9
X-Received: by 2002:a1c:e3d6:: with SMTP id a205mr484984wmh.19.1552742357227;
        Sat, 16 Mar 2019 06:19:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552742357; cv=none;
        d=google.com; s=arc-20160816;
        b=quST7Ui71cmbHtkHJBW26xzH6aI5iKdzHH4uIHxivPGWD8+hHKfmJk6jI8Tq2XuJMu
         9OovJjQSUwjETZ2wo3qc8mR0rsZiTfgfep21TZ482ywVOzr8Vhgq3m5mJCB0WD5ta9i2
         fpq6NB2zvn34FBXGjiWJDL7gGtEsMEhE8w48NH/NBMF9KEP/a7GkPlly8LbxaKXTJl9O
         3F9eYMu1At5yosGz5+fxajYaSAqoHnsHOhfi0yl+c+3fxXf3c2NbZjWaiWL1BGWCvR3j
         +iuhDxm4d27rffaYZQY6oDJ2kMT0FPDP3RnpIvQKqpKhSStZztpEmgVvOr6Al2GId+x3
         a8Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XiqhF77htw9EKeEexjIhFdxZ8Kjm3bSqg44aqWLi/NU=;
        b=FQpDS6qPbdVrXALtBXrKSGYQ8Kj83BFcBJ8tppoTLfX5y3RsGHCjs3vgByKluv1Stv
         YjUlCjKqlYDX92tSf+M1vzjVlvinhKuQvS0S6JeAYyRtbF0XeN64xrswfyb0h9qerX2Z
         Wt3NKjUqOW9A8LmzsqxUL1z4/2lgrAuFcRp/oLI7kyEZ0dzmp4kM4Rcsa4W4UpuG7vt/
         20hlTbdcHHS410XiNoilWDeWMOw952yBXedaSy23a1vKPN1Ra5A+l4slGWs3LiBLRAiH
         u+wk+RJ8u5bkjagY+7jKOKhkr7XO4Iz8Vu/AmzcjgBb7ezRnbVS2koryXPGmFlll3u57
         Lf8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si150637wmd.1.2019.03.16.06.19.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:19:17 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="374007378"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 14:19:16 +0100
Date: Sat, 16 Mar 2019 14:19:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8723bs: Remove
 functions and replace return types
In-Reply-To: <9e058ab3c889d2d59b0e7c7e0296e8640a513d23.1552740889.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161417180.2487@hadrien>
References: <cover.1552740889.git.madhumithabiw@gmail.com> <9e058ab3c889d2d59b0e7c7e0296e8640a513d23.1552740889.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> - Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
> purpose is to call the other functions _rtw_init_cmd_priv and
> _rtw_init_evt_priv, respectively.
> - Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
> rtw_init_cmd_priv and rtw_init_evt_priv.
> - Replace return types from sint to int
> - Replace local variable 'res' data type from sint to int in both the
> functions.
>
> Issue suggested by Coccinelle using ret.cocci.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
>
> Change in v2-
> - Changed the commit log
> - Modified the return types from sint to int.
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
>  1 file changed, 4 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 91520ca3bbad..ab450f717f34 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
>  No irqsave is necessary.
>  */
>
> -sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> +int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  {
> -	sint res = _SUCCESS;
> +	int res = _SUCCESS;

This looks ok, but a better solution would be to replace _SUCCESS by 0 and
_FAIL by -ENOMEM and fix up the call sites accordingly.

Also currently one of the functions never returns _FAIL.  It should be
updated to check for failure and return -ENOMEM in this case.  You should
look at how the allocated value is used, and explain why it is correct to
fail in this case.

julia

>
>  	init_completion(&pcmdpriv->cmd_queue_comp);
>  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> @@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  }
>
>  static void c2h_wk_callback(_workitem *work);
> -sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
> +int rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	sint res = _SUCCESS;
> +	int res = _SUCCESS;
>
>  	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
>  	atomic_set(&pevtpriv->event_seq, 0);
> @@ -295,22 +295,6 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
>  	return obj;
>  }
>
> -u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> -{
> -	u32 res;
> -
> -	res = _rtw_init_cmd_priv(pcmdpriv);
> -	return res;
> -}
> -
> -u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> -{
> -	int	res;
> -
> -	res = _rtw_init_evt_priv(pevtpriv);
> -	return res;
> -}
> -
>  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
>  {
>  	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9e058ab3c889d2d59b0e7c7e0296e8640a513d23.1552740889.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

