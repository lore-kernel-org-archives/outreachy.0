X-GM-THRID: 6668974051336126464
X-Received: by 2002:a7b:c449:: with SMTP id l9mr397718wmi.4.1552804944230;
        Sat, 16 Mar 2019 23:42:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7714:: with SMTP id t20ls403280wmi.3.gmail; Sat, 16 Mar
 2019 23:42:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzvZjA1jr3/pZmI3iYi6OaVB2lX+dyWDC+Ou6ayF3KlzW54UDfrdmuF4f8ceGR/X9A6ITay
X-Received: by 2002:a7b:cf23:: with SMTP id m3mr438617wmg.21.1552804943401;
        Sat, 16 Mar 2019 23:42:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552804943; cv=none;
        d=google.com; s=arc-20160816;
        b=lTJpQ180l5t7gB/sxdqiCJEsA9q2rudKnyJU+ZEiCKqjoK+rXcleW8eUbNZMkBoA7B
         EcANa0rsxNVEVnKzC0rdLypn2+aAi3GeYR/3yiJReyvu27DisbOKWa/98pwDcKaJ/AZ7
         NehtC3TrCURMDY1oxLZLBmQLO/CRbQkEpLfx6oR2J+YV7hjCE1z5QgPZphxDcRPVlqDi
         DrReLK3YIUwecaY2wJBNupbXmQIkZP6k4BHLKGhV9n4QkNMmAnnML4eYApqwrclilLJJ
         dewFt1cLaVo22oadV6ezQRPl3pJ2th74fPXgGCZCe/cnm/OYZV4b2yF+LU0AOKJcmp/Q
         VfxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ksLDIBiGRJOYJZ8YdRCa6BWiSI7m/yRYByYzHwhifcc=;
        b=bHdPqhBvEDiv/DXcU82uvr1nT7FIDgrfWBNuV6lHUJpajdg745LHw3iI4+ldp/fXwx
         scnRbV/sCgsuF2NBqLsEYcbRbkf+x8U6MDOO8h//XaVaHqv84hyoOMRrWpoHEhAgSRwb
         t6hfwNALDWY4Fh1FBZaEXlwur/6fiaUaRkIBO7xBDWxA4CFDZb8urMbBzKt30hwLIgf3
         7TRmjz4JIYGYhhV/rYQOIT3VhrUpM5wvwz10KI2DduNEmtJAYMBI4CraEsE8ow4N6bva
         UALt3kgNDiDyPhHSkHqeEX5Sm8Hq9AJ5opdtAGGQ5eeUIQpXZAw3G8sFprQ3wJKXG891
         30Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id g10si320845wmk.1.2019.03.16.23.42.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:42:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299665527"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:42:22 +0100
Date: Sun, 17 Mar 2019 07:42:22 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] Staging: rtl8723bs: Convert type
 of local variables and return types
In-Reply-To: <6fe78b33f085802256075bd94f5e02474cefacd5.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170738360.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com> <6fe78b33f085802256075bd94f5e02474cefacd5.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> Convert types from sint to int for local variable 'res' and return types
> of function 'rtw_init_cmd_pri' and 'rtw_init_evt_priv', as function's
> return types are defined for error codes _SUCCESS and _FAIL.

sint is a typedef for signed int, but ints are defined by default.  There
are very few occurrences of signed in in the kernel, and I don't see any
need to make the "s" explicit here.

In this patch you should change the return type in the prototype of these
functions as well.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
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
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6fe78b33f085802256075bd94f5e02474cefacd5.1552782299.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

