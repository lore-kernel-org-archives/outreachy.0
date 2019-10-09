X-GM-THRID: 6745898329157140480
X-Received: by 2002:a05:600c:2549:: with SMTP id e9mr4023261wma.64.1570654125393;
        Wed, 09 Oct 2019 13:48:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9e01:: with SMTP id u1ls580482wre.15.gmail; Wed, 09 Oct
 2019 13:48:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzsN9foz/JnoZDDNBTHDpGQWrqj9SIfNW/EQ5DC+Pv2v8lbk5DFeJ6wWXCwvSn+7KrTh9Uw
X-Received: by 2002:adf:f011:: with SMTP id j17mr4754563wro.334.1570654124531;
        Wed, 09 Oct 2019 13:48:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570654124; cv=none;
        d=google.com; s=arc-20160816;
        b=f6QH/4E0tWTlVjP91thc71Q3sEDZ1WLM15MUYYc7AKwTq2TqVfmNiADgQvsS8JAaov
         HtEBiRi8iMOlrj4wTB162qum0AGCKWP8X9LYkm/0kHHPMo8AN4MKzpYTPN6cmTKZRYNq
         eAWnv1qnDpmS7rucPqp9uItjYQVaJ6kPhWcgAEQiZuXiRxN2qAKD3+lfUyEAvSSWZ5Y5
         01IcX+SdOhVAr7U/uCQ96e36xj+e0jvbS8Ev5pGJKBVt4QLfGgOBfHwYM2MsKFzFUQ1b
         /XpMEbcVdu/y7G/eSEq93/9O60MgCh/0zqcaSsj3t6m8Cg3D9O29IzS/8sxJuwi1nlWM
         MzzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Cc3TbQJlqICM+4Zri4TWuERo0fWUiJeUGKIYX5p8gBg=;
        b=ZuO0hhtOy/FhobII18GEOiUMCqu/2ScqpxmUByVpSMOOA5xuHwSdMV6BrPr+T/ZVuQ
         Ror4YoY6MWBDSyhkVzUmX2UF7J/1Te9DftdWK3W3sQVe7w6fMShNC8VTkEd9FbnKcBd7
         CPzp1rh48FL8biZccTPcOIrc7xTROgLMHkFEqLmmorCFEs0qljHW0rXayu0pZtys52YK
         8Sj7/NKV+5IQg6wVfAaRkcD3WWy/B7N0O4wd57wdWe7jKYQa9cIvPdAWc6W0EuepUYic
         66IVhdRCUt5Rn3ZvxQT6/Vm8n4seydjbuOjI3cGnrYH0EJ79EYtSb0iYogogxMadcqGT
         OO6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p5si142588wmg.0.2019.10.09.13.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:48:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,277,1566856800"; 
   d="scan'208";a="405491148"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Oct 2019 22:48:44 +0200
Date: Wed, 9 Oct 2019 22:48:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    GR-Linux-NIC-Dev@marvell.com, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple assignments
 warning by splitting the assignement into two each
In-Reply-To: <20191009204311.7988-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910092248170.2570@hadrien>
References: <20191009204311.7988-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 9 Oct 2019, Jules Irenge wrote:

> Fix multiple assignments warning " check
>  issued by checkpatch.pl tool:
> "CHECK: multiple assignments should be avoided".
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 086f067fd899..69bd4710c5ec 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>  	u32 *direct_ptr, temp;
>  	u32 *indirect_ptr;
>
> -	xfi_direct_valid = xfi_indirect_valid = 0;
> -	xaui_direct_valid = xaui_indirect_valid = 1;
> +	xfi_indirect_valid = 0;
> +	xfi_direct_valid = xfi_indirect_valid;
> +	xaui_indirect_valid = 1;
> +	xaui_direct_valid = xaui_indirect_valid

Despite checkpatch, I think that the original code was easier to
understand.

julia

>
>  	/* The XAUI needs to be read out per port */
>  	status = ql_read_other_func_serdes_reg(qdev,
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191009204311.7988-1-jbi.octave%40gmail.com.
>

