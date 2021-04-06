X-GM-THRID: 6946280249577439232
X-Received: by 2002:a19:380a:: with SMTP id f10mr21480034lfa.294.1617739956649;
        Tue, 06 Apr 2021 13:12:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls1255055lff.3.gmail; Tue, 06
 Apr 2021 13:12:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxrjKKMd5vbLqW3JsYeInz1YqiGemuMrw7AXTvmRInTN4yumIkUvsqqxNjWXoH3tUGiQsw0
X-Received: by 2002:ac2:53a3:: with SMTP id j3mr21405586lfh.92.1617739955030;
        Tue, 06 Apr 2021 13:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617739955; cv=none;
        d=google.com; s=arc-20160816;
        b=xMH+CVIuEJaLVv/DO7QSp9JynnkgwdVTM/A1hrQQzFi2xHoGi+FvBBCQUbOV/ECskc
         0aJAelsz/+MkOUWEIC7WfGducll3XlQ/6z+FNDCfCg7ZtcRTXpI7eOX8bJoZU10XotRH
         otTLL3RsuYxRTTGTzpj2U1xK5R548AUk2ZKsd2EI5LBwlgxMU4yM3wrG2/HJClVUFf98
         NrgCwLjhh+2sAKA46vYpaQ5EVBJ+pkpSchFmRQ0bsrxrei/po+UJIveFuhgMiS8x6ZSY
         KTlDGPFRfSlmmoij7+H2xiDzzfpwKiapZ6GGVgeMaMB8By9xywpz8gYx/AS5H3V/zDcD
         eXiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uSk5LLkjyneeHdTYSr/KpbjFbr3l55wAk/Hm2oDaLtU=;
        b=yujsC7V7gM+JC6+yQ005RUDC35I+d19R780jasGM2aGHJqb+zT30ZSwnmG5VEqt5YQ
         5F//USZQ6yiFc5ZApl1YT16Z2H+FCbXhqV0JQWD2IzlJmU9e909gPbryeonDle3fSir/
         qETi30tEVB81rh6cVVXNUDWeXYJdII+KjtLcjY7VYLm1uJ7aU7WoEcoEODdcI8ouH3XS
         HJtJY5sjvhxGKdUGUh2u+6Uy4XoKka85xDOVFB1KM2B6q/XFn0wbbqX+BIHqVY7pVjmS
         RKEhYIcN6bDxaij5AKwfaHAGblirf1gRkMovgzVqnvxHoYvrROwc40xI6htiIOwXAOQC
         5R4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n0Skk+Tv;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id b12si1311990lfb.3.2021.04.06.13.12.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 13:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n0Skk+Tv;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id x15so6311052wrq.3
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 13:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=uSk5LLkjyneeHdTYSr/KpbjFbr3l55wAk/Hm2oDaLtU=;
        b=n0Skk+TvZuKP5ODn1L/FhPkppv1VHaSNBzevhhwhjRj3FYDlWKWNszRL7ZD5mWQgZ1
         eGj00y/mGidx6f/3Aw6Bpea1n/3g6a7l6r3kLz+zMb16qWS+0jJcf+TsBF9GzJ+NH4+B
         hn8aHlwQykOUdbmCyOzi8JsvKnviYM7bwPbc0oC7+vezeepiZdLhpc266s7dEKq8ODkG
         UnJt6Hjk9SH0pub/dN9DhHrW368zxCgc9dFvx/qLWg+yNggz7rEXa7qtqFhp/Lvo3c9Z
         uZ+WURJO4fRq/GdsOd0p61vqWTir0LMl6HM7dZgJBHVbonbEqeexexq7JpF6XiBJqKYG
         3DWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=uSk5LLkjyneeHdTYSr/KpbjFbr3l55wAk/Hm2oDaLtU=;
        b=i8/g15CKIeCsp5eTsjRpyQIUqsFxtFHUQyDoYZjVdJqiMw70h95vTaDpNDpKVRkkNn
         Gwm6JLagQQ8yBcezVRUqgzQ2WkkWH6kmSq/qnvX8U6kbn50shF8B23DK0KNIc4exTwIf
         jkhqbDEilWS8Ynd9ZsEgRMWr6ZS/Kv/+UcsoEfhYq91ZNytcP4iR4orvzVvuMPqeU+Il
         ECRB4AGXOmWewNbBn/at1/6/U0ioz6u0U1XF7n4LumfQEVvxTbywOyuYPiaSzYeQIAET
         SY2tpEKEBWWRKZ0ErjTgqIa6ogYvsgTBGa0OLUPUgutrrUihtFsuJHBSCE1uc0fzAPfL
         ai3g==
X-Gm-Message-State: AOAM533wma4OTOQC6lkIJ6Acz+cRV2luaIV8CksCpQVgcMbQuaxARsfm
	csdhY9/Ip7vZl7e1MIGQTeI=
X-Received: by 2002:adf:8b45:: with SMTP id v5mr36594981wra.398.1617739954848;
        Tue, 06 Apr 2021 13:12:34 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:ef5c:3f2a:a646:d6ec? ([2001:818:de85:7e00:ef5c:3f2a:a646:d6ec])
        by smtp.gmail.com with ESMTPSA id k7sm24620902wrd.24.2021.04.06.13.12.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 13:12:34 -0700 (PDT)
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: emxx_udc: Ending line
 with argument
To: Matthew Wilcox <willy@infradead.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <20210406195621.GU2531743@casper.infradead.org>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <07ae6975-d4a0-dfec-8030-7ddbd90eedd5@gmail.com>
Date: Tue, 6 Apr 2021 21:12:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210406195621.GU2531743@casper.infradead.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Em 06/04/21 20:56, Matthew Wilcox escreveu:
> On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
>> Cleans up check of "Lines should not end with a '('"
>> with argument present in next line in file emxx_udc.c
> I appreciate that you've removed the checkpatch warning, but this is
> still harder to read than the original used to be.
Thank you for your review.
>> -				_nbu2ss_writel(
>> -					&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
>> -					p_buf_32->dw);
>> +				_nbu2ss_writel(&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
>> +					       p_buf_32->dw);
>> -		length = _nbu2ss_readl(
>> -			&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
>> +		length = _nbu2ss_readl(&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
>> -			regdata = _nbu2ss_readl(
>> -				&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
>> +			regdata = _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
> The real problem with this driver is that their abstraction layer is
> wrong.  For example:
>
>          /* Interrupt Status */
>          status = _nbu2ss_readl(&udc->p_regs->EP_REGS[num].EP_STATUS);
>
>          /* Interrupt Clear */
>          _nbu2ss_writel(&udc->p_regs->EP_REGS[num].EP_STATUS, ~status);
>
> If instead this were:
>
> 	status = nbu2ss_read_ep_status(udc, num);
> 	nbu2ss_write_ep_status(udc, num, ~status);
>
> that would be a lot shorter and clearer.  Cleanups along these lines
> would be a lot more useful, and would fix the 80 column warning.

I can see what you mean and makes sense. Thank you.

Beatriz Martins de Carvalho


