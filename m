X-GM-THRID: 6668378512224681984
X-Received: by 2002:a1c:a741:: with SMTP id q62mr90797wme.7.1552632659587;
        Thu, 14 Mar 2019 23:50:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:ce19:: with SMTP id m25ls810967wmc.5.gmail; Thu, 14 Mar
 2019 23:50:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVH2yS2vKvtJ3VA7x/J4ViU75cxSmCZcEl2F3xA+fQo++5Mw8rQj8Y5qAO4w01NC2Au3mw
X-Received: by 2002:a7b:cf0f:: with SMTP id l15mr91668wmg.7.1552632658654;
        Thu, 14 Mar 2019 23:50:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552632658; cv=none;
        d=google.com; s=arc-20160816;
        b=iTjBuTu3oYpI6akM+3EyA2DQlqUqDr5wI6xNezNo1soJU8VrPEG8fN3Pb4OD3SRwHZ
         YPx2uidc6/3XbeA8rqS8nI2jYSJJl757dRFxzupmgBc+Tn3/1XgIjflISSslmGc0o+BF
         VuZMFk0XJngH2zzeXNl+jo2nVt0K+fXQTnh+Wyo0KBICS4kjNCSRId/9f0wtjrV15UAN
         j7FRMigEZitw1KJzX3+3ywI0VOjFpbdJF7RhRhk+ngojPraCtsV+gLkh4yzjT7LspzRM
         LEclgKY69mV6klE2V2rtjSHJ0jtj5FEidE4oLNb8RBlPjPxkgKLd3N9W66jXK4DtCDne
         G9dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WMfH+jTmbYWTWrDL7+KfUhd1ljdoBzDhw322kEDXwyM=;
        b=jaOZyx6DfXCJ1FXimUzGei7qs6MMpfBEGrCHV9xbc6y7srwbfKvMXYBLSi8HpRqo9E
         G4qN0ZfuPKe+5n5zB0eQSufyY8oGEHOoXZmt04iMmZJubV+IurQZffUFQ/ZwOeR9Olqa
         x2mV1RUGAz6CprReIID67rjOoQZTR3ZH3gNBRjYjsxbYzpCwRe22fBH/2ETomy2LGe4J
         MzET/Q2BbcEQAgN16b9zSXk3ki22JbSCV97DSdIByqHSxtHgOYnzAdlvmRLz0zijBrIX
         vtklBRdRAes413TLOcW6ELLMoHxj6LN32e0UiXa8X2nq5qOJjjdGFyhombtD1Hct7tc4
         +VJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p4si56997wmh.0.2019.03.14.23.50.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 23:50:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,481,1544482800"; 
   d="scan'208";a="299325676"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2019 07:50:57 +0100
Date: Fri, 15 Mar 2019 07:50:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove functions
 and replace return types
In-Reply-To: <20190314223416.3994-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903150731241.2670@hadrien>
References: <20190314223416.3994-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Mar 2019, Madhumitha Prabakaran wrote:

> - Remove functions rtw_init_cmd_priv and rtw_init_evt_priv, as its only
> purpose is to call the other functions _rtw_init_cmd_priv and
> _rtw_init_evt_priv, respectively.
> - Rename functions from _rtw_init_cmd_priv and _rtw_init_evt_priv, to
> rtw_init_cmd_priv and rtw_init_evt_priv.
> - Replace return types from sint to u32
> - Replace local variable 'res' data type from sint to u32 in both the
> functions.
> Issue suggested by Coccinelle using ret.cocci.

OK, this is a really good first step, with a nice log message as well.
However, looking a bit further, there is more to do.

We can observe that you changed the return type from signed to unsigned,
and it is a little bit surprising that this is ok.

Looking at the definitions of these functions it seems that they return
error codes, _SUCCESS and _FAIL.  Often in the Linux kernel, success is
indicated by 0 and failure is indicated by a negative number, so one may
still be surprised by the change of type.

But this driver actually returns 1 for success and 0 for failure, so the
code remains correctly functioning with the change of type.

Still, these are not really ideal error values.  To be compatible with the
rest of the kernel, success should be 0 and failure should be -ENOMEM,
because these are memory allocating functions.  In that case the return
type of these functions should be int, rather than u32.

Finally, _rtw_init_evt_priv actually never returns _FAIL.  The memory
allocation in this function bottoms out at kmalloc, which can fail, so
there needs to be a check for this, and to return an -ENOMEM value.

Checking on all of that leads to:

void *_rtw_malloc(u32 sz)
{
	return kmalloc(sz, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
}

which is incorrect.  Each call site needs to be checked to determine
whether it is in atomic context (accessible from an interrupt handler or
with a lock held) and to use GFP_ATOMIC if that is the case and GFP_KERNEL
otherwise.

I would suggest to clean up everything up to the paragraph starting with
"Finally" in a single series.  Then, if you want to work more on this
driver, you can look for other uses of _SUCCESS and _FAIL and convert them
to more appropriate return values, and convert calls to rtw_malloc to
calls to kmalloc with the correct flag argument.  There is also a function
rtw_zalloc that should be kzalloc with the same issues.  Actually, the
file osdep_service.c hasa good set of unsuitable definitions that should
be cleaned up.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 24 ++++--------------------
>  1 file changed, 4 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 91520ca3bbad..d8c362947dd4 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -162,9 +162,9 @@ Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
>  No irqsave is necessary.
>  */
>
> -sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
> +u32 rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  {
> -	sint res = _SUCCESS;
> +	u32 res = _SUCCESS;
>
>  	init_completion(&pcmdpriv->cmd_queue_comp);
>  	init_completion(&pcmdpriv->terminate_cmdthread_comp);
> @@ -201,9 +201,9 @@ sint	_rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
>  }
>
>  static void c2h_wk_callback(_workitem *work);
> -sint _rtw_init_evt_priv(struct evt_priv *pevtpriv)
> +u32 rtw_init_evt_priv(struct evt_priv *pevtpriv)
>  {
> -	sint res = _SUCCESS;
> +	u32 res = _SUCCESS;
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190314223416.3994-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

