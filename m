X-GM-THRID: 6950399749246681088
X-Received: by 2002:a17:906:2512:: with SMTP id i18mr18890080ejb.86.1618328306697;
        Tue, 13 Apr 2021 08:38:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:515:: with SMTP id m21ls4508820edv.1.gmail; Tue, 13
 Apr 2021 08:38:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrXHkdimboB/WJKEm8BcloDOkKTg7kQPc3TOa4wsLuSas/f/fk85vgcF92UA1ozrjeGanH
X-Received: by 2002:a05:6402:150e:: with SMTP id f14mr35819116edw.63.1618328305141;
        Tue, 13 Apr 2021 08:38:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618328305; cv=none;
        d=google.com; s=arc-20160816;
        b=EdNmhrYFeyHx3tGLVEr6KYQEuRBtIPcpt0Fk4v0fwUqUoLafeRRrlbYYAEPnJkqc3w
         GthEOoVB1oI+Fz2FypMbkofYsMxIAKVtWvjyx7GwsbR5RkRb+j3UUl5UXtr2EESCc6c3
         o0KgTwvVZEBqhL+k945qJFwg9H9GmSCW9wZKlWHslUAc98r0WQrU1OrTB5Rvzxzxh7xV
         6lwLSt2hg91oSoOvF3WVWke//heHVNHFKEpQR6z4SfcxI7Ha8tCOf1EczhiAoBaiLbSy
         0qdVEF1PQq2iFu2av2EVx+YGI7c8nKcCB6pVVsHJPJ94L2K2YHZ0b8IXVFkNslNht/6M
         jXZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=I2Pi+AA8vr5LU0zvSSCJ5cMqw3IuOTFXbdjCIrYFyZ8=;
        b=qwq1+Fm0ZROd65W40THQKHu8h4LLxUNxRbuzyzq4mm07RI9TUTtIlVKLHNlwXT5U9D
         bkGV8C0QJwlL4r7CNAVUfnDQ6qqRpsMfSLF447T6jAe0xrn0C1+lCqhVqoQ7oYwOA/Fb
         AiGFs2dTJ6aM7E8wl7+YYWYaerNz4LqByREFPgvwy8eyTl/r6qjvLI1xd9NreeTsvwDJ
         n8VXADZ1XNQN+frLJs/b05dw8u666IzKbK2kcTIuprxb1hzFVJDnY3EY9PiBfWMjHORW
         9b15Z5Ipel32jN9njntFzj8ZxgoZbnr8gr04b5j3R/pKg/XOa/zWejR2hewxXPs9kEN0
         swSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=vc913lXN;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id r21si1130293ejo.0.2021.04.13.08.38.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:38:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=vc913lXN;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id WL7NlFw9oMxedWL7QljGrc; Tue, 13 Apr 2021 17:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618328305; bh=I2Pi+AA8vr5LU0zvSSCJ5cMqw3IuOTFXbdjCIrYFyZ8=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=vc913lXNhjf1Vxi/wnDqAgKGhxPX5EZ/N0bva41qeboByyCSXYbNvhCLtZC6f7kWC
	 bY0az1cdj8qyjzgxlXfH47uOIM6mP1jmK3snP4ccLQxUFrkLtjKp5ZNAPZmyhvwpHZ
	 LJ1n6pQK4A22VHYM+QIxC59L6NRQWOO1xrmmuIoR3BVnp+PB8o/owVVPGeTs2Udsqm
	 7uGHxjnlBhXFlzrgYH43yhEdEO61XaqzKCQSPZBR9mrCMxnHMvWKgEFY2xSo+tEZTu
	 /hsXIyVaOKSdg1m4822/fNN1dUsr7mVfKoSEbZQbCZvzngDlw6CC6zybfUQZp6Prf7
	 gMvIdthihPHXQ==
Subject: Re: [PATCH] staging: media: tegra-vde: Align line break to match with
 the open parenthesis in file trace.h
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20210412222040.GA13659@focaruja>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <4e67a6e9-b400-7447-2cd7-6b60230882d0@xs4all.nl>
Date: Tue, 13 Apr 2021 17:38:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210412222040.GA13659@focaruja>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfPePyejaC0zuWH2WdNjSwxAhc5jU+KYRXJXBP1VRduUpBlWf03NtwQLHP2aG14kiKz2kJvxRRj2OzHPFc8TsUqKEwr2EyaFGtE98d8M64Pi6K9SAvj99
 304YLZBhJ+jlMefm9EN6hK51oW1kxrjMqjYKcaIO6tl19WwvWQxkpPEeq6kyhmUYJ/gO4VZ96Hw7nSOCw1kZczk0RJ4kwd3Buxplr8+KRxXHszzo53Jzykil
 oKCOWbn+4XzPGrsRaVVYvzR/AYX5ITWw8UcQvcgZDMj+00b/AkEMes/Osa+gWsLn9wwN8hyQpCsz4XgeSWuk7m/Hb8dbQaEUEtxyH8XY9IaCxkkjG0R8S1xZ
 IB7s7fqmfFaev73B1OtquEIAzNuo9bze2cLqVkfheOmyt1qR05AqDfrpLQQXAR9WdLGHeRXfEJ1EuMYM0GPh9AeQdrFiUZpzMvZBpYYZRWP8XgM/TgMNmMHF
 JcuRNKBiN50KUytFb0fUCehGz2Ysrnzugstz4WayNX4v/wRaojiV2ChCHbT21Zv6XRkz4dLegO/QOtB1

Hi Aline,

On 13/04/2021 00:20, Aline Santana Cordeiro wrote:
> Align line break to match with the open parenthesis.
> Issue detected by checkpatch.pl.
> It consequently solved a few end lines with a '(',
> issue also detected by checkpatch.pl

These trace headers are almost a language by themselves, and the
usual alignment rules do not apply. Look at other existing trace.h files
in the kernel and you'll see that they have their own coding style.

So I prefer not to apply this patch.

You couldn't have known that, so it's not your fault.

Regards,

	Hans

> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/trace.h | 111 ++++++++++++++------------------
>  1 file changed, 50 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/staging/media/tegra-vde/trace.h b/drivers/staging/media/tegra-vde/trace.h
> index e571410..1fcc573 100644
> --- a/drivers/staging/media/tegra-vde/trace.h
> +++ b/drivers/staging/media/tegra-vde/trace.h
> @@ -11,79 +11,68 @@
>  #include "vde.h"
>  
>  DECLARE_EVENT_CLASS(register_access,
> -	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> -		 u32 offset, u32 value),
> -	TP_ARGS(vde, base, offset, value),
> -	TP_STRUCT__entry(
> -		__string(hw_name, tegra_vde_reg_base_name(vde, base))
> -		__field(u32, offset)
> -		__field(u32, value)
> -	),
> -	TP_fast_assign(
> -		__assign_str(hw_name, tegra_vde_reg_base_name(vde, base));
> -		__entry->offset = offset;
> -		__entry->value = value;
> -	),
> -	TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
> -		  __entry->value)
> +		    TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> +			     u32 offset, u32 value),
> +		    TP_ARGS(vde, base, offset, value),
> +			    TP_STRUCT__entry(__string(hw_name, tegra_vde_reg_base_name(vde, base))
> +					     __field(u32, offset)
> +					     __field(u32, value)
> +			    ),
> +			    TP_fast_assign(__assign_str(hw_name,
> +							tegra_vde_reg_base_name(vde, base));
> +					   __entry->offset = offset;
> +					   __entry->value = value;
> +			    ),
> +			    TP_printk("%s:0x%03x 0x%08x", __get_str(hw_name), __entry->offset,
> +				      __entry->value)
>  );
>  
>  DEFINE_EVENT(register_access, vde_writel,
> -	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> -		 u32 offset, u32 value),
> -	TP_ARGS(vde, base, offset, value));
> +	     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> +		      u32 offset, u32 value),
> +	     TP_ARGS(vde, base, offset, value));
>  DEFINE_EVENT(register_access, vde_readl,
> -	TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> -		 u32 offset, u32 value),
> -	TP_ARGS(vde, base, offset, value));
> +	     TP_PROTO(struct tegra_vde *vde, void __iomem *base,
> +		      u32 offset, u32 value),
> +	     TP_ARGS(vde, base, offset, value));
>  
>  TRACE_EVENT(vde_setup_iram_entry,
> -	TP_PROTO(unsigned int table, unsigned int row, u32 value, u32 aux_addr),
> -	TP_ARGS(table, row, value, aux_addr),
> -	TP_STRUCT__entry(
> -		__field(unsigned int, table)
> -		__field(unsigned int, row)
> -		__field(u32, value)
> -		__field(u32, aux_addr)
> -	),
> -	TP_fast_assign(
> -		__entry->table = table;
> -		__entry->row = row;
> -		__entry->value = value;
> -		__entry->aux_addr = aux_addr;
> -	),
> -	TP_printk("[%u][%u] = { 0x%08x (flags = \"%s\", frame_num = %u); 0x%08x }",
> -		  __entry->table, __entry->row, __entry->value,
> -		  __print_flags(__entry->value, " ", { (1 << 25), "B" }),
> -		  __entry->value & 0x7FFFFF, __entry->aux_addr)
> +	    TP_PROTO(unsigned int table, unsigned int row, u32 value, u32 aux_addr),
> +	    TP_ARGS(table, row, value, aux_addr),
> +		    TP_STRUCT__entry(__field(unsigned int, table)
> +				     __field(unsigned int, row)
> +				     __field(u32, value)
> +				     __field(u32, aux_addr)
> +		    ),
> +		    TP_fast_assign(__entry->table = table;
> +				   __entry->row = row;
> +				   __entry->value = value;
> +				   __entry->aux_addr = aux_addr;
> +		    ),
> +		    TP_printk("[%u][%u] = { 0x%08x (flags = \"%s\", frame_num = %u); 0x%08x }",
> +			      __entry->table, __entry->row, __entry->value,
> +			      __print_flags(__entry->value, " ", { (1 << 25), "B" }),
> +			      __entry->value & 0x7FFFFF, __entry->aux_addr)
>  );
>  
>  TRACE_EVENT(vde_ref_l0,
> -	TP_PROTO(unsigned int frame_num),
> -	TP_ARGS(frame_num),
> -	TP_STRUCT__entry(
> -		__field(unsigned int, frame_num)
> -	),
> -	TP_fast_assign(
> -		__entry->frame_num = frame_num;
> -	),
> -	TP_printk("REF L0: DPB: Frame 0: frame_num = %u", __entry->frame_num)
> +	    TP_PROTO(unsigned int frame_num),
> +	    TP_ARGS(frame_num),
> +	    TP_STRUCT__entry(__field(unsigned int, frame_num)),
> +	    TP_fast_assign(__entry->frame_num = frame_num;),
> +	    TP_printk("REF L0: DPB: Frame 0: frame_num = %u", __entry->frame_num)
>  );
>  
>  TRACE_EVENT(vde_ref_l1,
> -	TP_PROTO(unsigned int with_later_poc_nb,
> -		 unsigned int with_earlier_poc_nb),
> -	TP_ARGS(with_later_poc_nb, with_earlier_poc_nb),
> -	TP_STRUCT__entry(
> -		__field(unsigned int, with_later_poc_nb)
> -		__field(unsigned int, with_earlier_poc_nb)
> -	),
> -	TP_fast_assign(
> -		__entry->with_later_poc_nb = with_later_poc_nb;
> -		__entry->with_earlier_poc_nb = with_earlier_poc_nb;
> -	),
> -	TP_printk("REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u",
> -		  __entry->with_later_poc_nb, __entry->with_earlier_poc_nb)
> +	    TP_PROTO(unsigned int with_later_poc_nb,
> +		     unsigned int with_earlier_poc_nb),
> +	    TP_ARGS(with_later_poc_nb, with_earlier_poc_nb),
> +		    TP_STRUCT__entry(__field(unsigned int, with_later_poc_nb)
> +				     __field(unsigned int, with_earlier_poc_nb)),
> +		    TP_fast_assign(__entry->with_later_poc_nb = with_later_poc_nb;
> +				   __entry->with_earlier_poc_nb = with_earlier_poc_nb;),
> +		    TP_printk("REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u",
> +			      __entry->with_later_poc_nb, __entry->with_earlier_poc_nb)
>  );
>  
>  #endif /* TEGRA_VDE_TRACE_H */
> 


