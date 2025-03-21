Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2074078F51
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 14:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566491; cv=none; b=BwOCKtIQTEreQu72J02DoGaMQMRihGeIn1O6i36StypFiYVRns4AL9TXagcnH+cIjppZrvJjpSh3uyvXbXvb9o9r5AVq6lsY1b3iYoKBVkmCBWhqNc1LSlpwXSh/ImOfRvYFBb/+pCJyE4e22PlnmTJPFNYo6h87ZDBPaguFPtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566491; c=relaxed/simple;
	bh=y+FLQhrEzaYM8D0JtN8Az276b0i+rEP5XnlDlVs/pnA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V7WiAGUjkUdh63TWNGm76tg+Ir5vvC4kwpZzJXZ575QS10PHq81O6MgIaOph229t2msuvs2EZePsXRMYKbFw375U7y672+j/tytOD3lwValNN7jckLow0Jy30dV6ohyjBoLiyPMMDe6NC4K4XAlPrdlhhiPgt6wM9Mw5LkWavDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=UD74474S; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="UD74474S"
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c5675dec99so233400285a.0
        for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1742566487; x=1743171287; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9exEh3HjSKqcTsxFRqa5eN4Zk07lWBlI5tYJFrmxJok=;
        b=UD74474SIstLYG0R8AtdGIk5wq/hiFQ59zR3o4jirdIAOnmzP5Tojit+euIOCGDPTy
         x0LiGU2E3HD6gv9DsU9TGQU+u3HvHC4XqfZ4ofoBFpUHUkK8B75PBcbl/81VafA9sDVp
         ers+EHZtkLjZrrmD91/l9E20cUPdX67JH1+Ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566487; x=1743171287;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9exEh3HjSKqcTsxFRqa5eN4Zk07lWBlI5tYJFrmxJok=;
        b=PS0s5Eqt9NUJDU7q9TAWSqkT4rCRxcDbR30WNI9lTZ3zFSJQHBEaNQvWK2IHCLivSU
         QIgvcOfDNaGtr6L4SJwXfEhZITcf+suppVEP5T1H1UuiNX7SFMylwECItvG1NHW++Hbi
         eqGlu8ubyVazN1gb06l1H9EOQurG6ZIQNsUpQpv6p/b5DIZkki8tMwPQPBMN6YO0NBHZ
         KtJisF8wEmc3Q8mSs4G8uq6dh9/96Lp4sPQ8UFmE23hWK6iX1eAZgzQDkH3OrTP1jFcJ
         DfghKfvUrPmUOdpuN9F4j5/dyQKI0Cyw8tHRg+XOF91qA3cm95lR1A2uB0u1nSQWEsmO
         0crA==
X-Forwarded-Encrypted: i=1; AJvYcCVcFvm+tNYrHmoMmAoZa8YvvyMPEP1FHjOtLrecmdRNp1sohi9+aQSqkNmRazZF7wfo3TZiaClGIMo=@lists.linux.dev
X-Gm-Message-State: AOJu0YzlaEJGw2YyOyYOHblUnVmBPka0snqTdd3NZLt4jzCIQMJ1fJg/
	pC5UnfVeeRU6YpLtihVlZUtFv3URXUthVF9ymytG2IeZeK4ZIToXahmHj52tIA==
X-Gm-Gg: ASbGncsYtTizMWyqwPhlRohJ1TG3QeVf1jn3EB1HJAWeJyQfQ9mXdeh2OXKwyH+Bx+b
	wJYsXc49YEjngM3TKbRTrn7PlxaOUAVuPgT+dmt8KMD10cEaymQLiOB58BPcsReXl4RjwpBwdfE
	uopYaoqmbc0pDvQPvDor/iIcYaRLVJuPWDDgp5vIsIXRL3TJtYK0HIFOM3+VcJufXQbuMQNFg0H
	pUaibYyjJ1O1XAdGrX2WBQbZyldIBwPeYcq3+WOGAdidCG4qGKqYY6zeoPyfI8XaMfbonJxV7GU
	frAXz3nNUaKsd5yIudITLKh40DmWzDKeGVpD2yn6xDdLS6Lmo+LKVf9Q7gCX6EKAeOfYAsN9aJ9
	/q7YXQ9ef1rY6AAH92ipjsw0=
X-Google-Smtp-Source: AGHT+IEAlcWkAnwmrnQqtFTWuwfNBTAEVhK3IQoOiYeHqUDv1MVsDaGZ5Aw/RjXX/sF8QL3K1Ct2sw==
X-Received: by 2002:a05:620a:390a:b0:7c5:5d4b:e621 with SMTP id af79cd13be357-7c5ba1e3f3amr432552285a.37.1742566486918;
        Fri, 21 Mar 2025 07:14:46 -0700 (PDT)
Received: from [10.211.55.5] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c5b935772fsm134988485a.91.2025.03.21.07.14.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 07:14:46 -0700 (PDT)
Message-ID: <24b17317-a153-404c-af67-79967bf49968@ieee.org>
Date: Fri, 21 Mar 2025 09:14:43 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: fix line length issue
To: ErickKaranja <karanja99erick@gmail.com>, hvaibhav.linux@gmail.com,
 johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
 outreachy@lists.linux.dev
Cc: greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250321115545.24468-1-karanja99erick@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20250321115545.24468-1-karanja99erick@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/21/25 6:55 AM, ErickKaranja wrote:
> Fix line length exceeding 100 columns in arche-platform.c. The code now
> follows Linux kernel coding style guidelines by keeping lines under the
> maximum allowed length of 100 characters.
> 
> Reported by checkpatch:
> 
> CHECK: line length of 101 exceeds 100 columns
> 
> Signed-off-by: ErickKaranja <karanja99erick@gmail.com>

Sometimes a good strategy for reducing long lines (which, as in this
case, is partially due to indentation) is to define a helper function
to isolate the code (and reduce the indentation level).

Another approach can be to define local variables so that the arguments
don't make the line too long.  Here though, the name of the function
(arche_platform_set_wake_detect_state()) is pretty wide.

Ultimately the goal is readability and comprehension.  It's not always
cut and dried the best way to improve things.

					-Alex


> ---
>   drivers/staging/greybus/arche-platform.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index d48464390f58..1a82a7a3991c 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -179,8 +179,8 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
>   				 */
>   				if (arche_pdata->wake_detect_state !=
>   						WD_STATE_COLDBOOT_START) {
> -					arche_platform_set_wake_detect_state(arche_pdata,
> -									     WD_STATE_COLDBOOT_TRIG);
> +					arche_platform_set_wake_detect_state
> +						(arche_pdata, WD_STATE_COLDBOOT_TRIG);
>   					spin_unlock_irqrestore(&arche_pdata->wake_lock,
>   							       flags);
>   					return IRQ_WAKE_THREAD;

