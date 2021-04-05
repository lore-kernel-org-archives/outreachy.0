X-GM-THRID: 6946280249577439232
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr26090888wma.94.1617631676543;
        Mon, 05 Apr 2021 07:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6204:: with SMTP id w4ls1720427wmb.2.gmail; Mon, 05 Apr
 2021 07:07:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytNaBRH3WRWzzj2wpSM8+/ErOMu/fpdAsQdT9eJj/bhBrnonxZSU5+fKb9u7MnFzl+qkAI
X-Received: by 2002:a7b:c5d2:: with SMTP id n18mr25141088wmk.53.1617631675223;
        Mon, 05 Apr 2021 07:07:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617631675; cv=none;
        d=google.com; s=arc-20160816;
        b=XYYh6JmnX5HPnySpeTl4xL4VC6hb7AywSJ1CDnfM1eA5ldhttBtU1q/PR3jcBiDgnA
         orA2q7t1OW2F9aeN+nZETo2kme9JrbgesQOsGaQbxnd5JcRByQyVUD8Kix11nopg4D/c
         Wp6LHl4MJ7/RGTeYw9kJdG+VG3XA+JzRre9v70Q5wa51hTITLlTZWsvWDfldXEjZMK9X
         YdL2GWJVFxaLUqI7Alr4NLpFPRe0oTxxVsFYECwsvaCMnC+p/F/P5yRU4yQnZUevrVsp
         B8cF8o5muFIQfO5iud1fIshluISzpIm8gGj386WgSYeZYrzdh8GTjutkl55mnrzkPUU5
         z3qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JlbOqM+HKUif9ACJOM3T2e04ay7sz/FxW5cMBM8jD4k=;
        b=aFkuBFlrvwMnzQbfAHwN8dlUeLz6kdToAHhcQYbPky+5pQUdVfVoo+uXZd2L9I6k2V
         /MYD6we3eUFm6E5JB1lAVCtwRiVhsiHsXOxMD0Gci0ULA28H3OUIXdtLWjilR9iGVv8T
         5GuJ8AhETaajpWlvYjGsT4UU8UMKEH9RKDCsIWIl2ba4BnYWv8wTNTRf35j6ety+2/2x
         ItyKXRz+b8pkx6RLRgeTFnTPE3yLhBH0xix83wTEfO7VsJKw+BmrY6Bjs6IRSdKLEZel
         ZP60eWSPSFNZkcMPqVDieG6UslxVPagI2JMkOBeMxLb8E6wrg7s9h8uOTLCLitky4lts
         S49w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGVLjSk8;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id i8si647876wrv.2.2021.04.05.07.07.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 07:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZGVLjSk8;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id q26so5340638wrz.9
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 07:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=JlbOqM+HKUif9ACJOM3T2e04ay7sz/FxW5cMBM8jD4k=;
        b=ZGVLjSk84lCWVnojhyYzP1r+QhKbwr6wuQt/Rkasuop9Srm7CQuoFEZMqk+8qGevQj
         7Ob6/BT8Pm4wa1+xWRbOsr2Rl2QHIIc1j5bTuEejSTCejh1jQPe76rT9Dx1rG7AhTWLp
         FoDtUGCcd+FaQseLEcXBm36umL4cpJPmc47JnyI74lf/xZNAqKllEYiYpTxwCqTZ5CfK
         68idM1b2kHu5lHEYp+v5kZ5EJPDJATfo9DleD+DaAZMZH9DA13WnUt30j+Qvc9LGlLha
         vXwllPbh7shxYIdcLAphO4OBxA4LYw5ipPCZ1tOgnPw1pYUYnMX4nQ4/zYKwgQE1OB6q
         7vyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=JlbOqM+HKUif9ACJOM3T2e04ay7sz/FxW5cMBM8jD4k=;
        b=jj6AdGgkCyinvKxPk5nCXMIjMg+b0gEujvaxjrDVZF4Bwo+IspHdXmAkvAOY6jWC0l
         zUR9bMcwULcRT4lDBBlIwhoP81gh9OcaM8jQycELxiiAKu6jiZfxKpvnXHNUrQn0400+
         B7cEQ+8SzD7oQOLBGv78PZIgRt0v/OeHcZe9dMphQpTlTXZlJalv0QgFkRhHtphvbzgz
         2aZdqA2rr7HK6QHYm7GLjACtLGtRoOMPw7+zggFqcRj4zMwBLSCybOgIChHYsll2NcgG
         yOz/NobLokAY64Hw67M7HPjDpQFQbj/Gzj3urhLAPf16om95RgB1Y9FYWDRevLolpqL8
         /lTQ==
X-Gm-Message-State: AOAM533nEtNjbNCo5Rz22v7U1V9pmKFGQRktL/Y35ozXKzpIA/J/CsUo
	QF1h7cA8eQpj77bxa7ktDe2ioNOWWKn5jg==
X-Received: by 2002:a5d:4884:: with SMTP id g4mr29215748wrq.191.1617631674693;
        Mon, 05 Apr 2021 07:07:54 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from ?IPv6:2001:818:de85:7e00:9a5b:98e6:2174:bf29? ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id 61sm17381191wrn.25.2021.04.05.07.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 07:07:53 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Ending line with
 argument
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com>
 <alpine.DEB.2.22.394.2104012314480.2908@hadrien>
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Message-ID: <82580331-13dc-ed79-72e7-3984fd2f75f9@gmail.com>
Date: Mon, 5 Apr 2021 15:07:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2104012314480.2908@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Em 01/04/21 22:16, Julia Lawall escreveu:
>
> On Thu, 1 Apr 2021, Beatriz Martins de Carvalho wrote:
>
>> Cleans up check of "Lines should not end with a '('"
>> with argument present in next line in file emxx_udc.c
> The coding style documentation encourages remaining within 80 characters.
> I'm not sure that the ( warning is worth increading the excess beyond 80
> characters (or introducing it in the last case).
>
> julia
Thanks, prof Julia, how the checkpath now warning only if line length of 
100 characters, I used it for reference.

I will take the suggestions of checkpatch with more attention.

Beatriz

>> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
>> ---
>>   drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
>>   1 file changed, 4 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
>> index 741147a4f0fe..20f53cf6e20f 100644
>> --- a/drivers/staging/emxx_udc/emxx_udc.c
>> +++ b/drivers/staging/emxx_udc/emxx_udc.c
>> @@ -1073,9 +1073,8 @@ static int _nbu2ss_epn_in_pio(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep,
>>   		i_word_length = length / sizeof(u32);
>>   		if (i_word_length > 0) {
>>   			for (i = 0; i < i_word_length; i++) {
>> -				_nbu2ss_writel(
>> -					&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
>> -					p_buf_32->dw);
>> +				_nbu2ss_writel(&preg->EP_REGS[ep->epnum - 1].EP_WRITE,
>> +					       p_buf_32->dw);
>>
>>   				p_buf_32++;
>>   			}
>> @@ -1225,8 +1224,7 @@ static void _nbu2ss_restert_transfer(struct nbu2ss_ep *ep)
>>   		return;
>>
>>   	if (ep->epnum > 0) {
>> -		length = _nbu2ss_readl(
>> -			&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
>> +		length = _nbu2ss_readl(&ep->udc->p_regs->EP_REGS[ep->epnum - 1].EP_LEN_DCNT);
>>
>>   		length &= EPN_LDATA;
>>   		if (length < ep->ep.maxpacket)
>> @@ -1462,8 +1460,7 @@ static void _nbu2ss_epn_set_stall(struct nbu2ss_udc *udc,
>>   		for (limit_cnt = 0
>>   			; limit_cnt < IN_DATA_EMPTY_COUNT
>>   			; limit_cnt++) {
>> -			regdata = _nbu2ss_readl(
>> -				&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
>> +			regdata = _nbu2ss_readl(&preg->EP_REGS[ep->epnum - 1].EP_STATUS);
>>
>>   			if ((regdata & EPN_IN_DATA) == 0)
>>   				break;
>> --
>> 2.25.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210401195457.24512-1-martinsdecarvalhobeatriz%40gmail.com.
>>

