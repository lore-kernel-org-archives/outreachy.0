Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792510915;
	b=U9T9yPaDVSw3pJiQT/AYsFYPdgYP3W/i+qRmvq0eeP0gZCQIV0HKSET23nRiJzj2HVcf
	 gauS6vA+cg6rcZXOg8nuXHHlPat/+j6wDViw/3gI8e9ydxCh7JRO8NAlsOsFgBd1/rHPa
	 e+VLQ9XQ4Gqw0v8arhpE9R17zeJOuO0mEYQoGpwIAVv1uWXO3MjZhofxja+xARmYdaw2M
	 GzToG8l7yYl7+Jzh1rOGsDrJHZ90YLFEmKTBhM0ttnUz5wH1DxFLDmCztKN/WCnCpDuPW
	 tLln5JjXG/hjne9nbBBOr7ybZvFyzpvhmuZGj213pjoT34XGYDxOcs8UioOIm7NjsMg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792510915;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=OBYiHwgIBS5v/Omj8VoRqqRhhqFMxkEFOvedrOWQXyc=;
	b=qYaoJY6pmcGOMWZPu9lzTesE0BNUA66r5YDbt5Y05LLLiZbyv9kTbf2Whc/iJ0zTlgso
	 kJ0dPOL0ZUc82VmK2gXiTD8jpJjdAtSvSmAuvl6rh56hv6SrnJLL87oSSfnYk9LYz6cTa
	 CPJR77rG0ny0O3BADfwqOY5/7RJ+nLI3Ucw8QRgCiZFn5NLvmz8ApUOolqBLB5XnnxA4j
	 VDNPshiMnEjmtNhb1Pc9W2oG08JIeCG0j1RqxX0rkNdHb/l9o1NckP4GtO4GehxQBX1DD
	 Ey3q4+ukoJjlcYt8coxDkb7vNp/p/qPmKJkU1WLlc5LyCLV2Lof3s/CrMArlC9Q7n2g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Ov7ayh0V;
	arc=none smtp.remote-ip=209.85.221.53
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2F606A31F
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 15:41:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 11C2F606A31F
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Ov7ayh0V
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-487049569b6so1913291f8f.1
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 08:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792510913; x=1793115713; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OBYiHwgIBS5v/Omj8VoRqqRhhqFMxkEFOvedrOWQXyc=;
        b=Ov7ayh0VRfZAU2w8fReeQfe62ydERGGItGolAkI8IllMwG3+9m5Y2q3YE6rSC/3l/T
         OrXhoMEQ2GKVB4Q4WjqhvDd3Vt4ZCBVvmoZXFAvm6l1pZplzLPVQa4LyAD/GGGEZ7HpA
         Q3tFcrkOvZ0r75XGCdWHRbw2oCC+zjqzwXi99FIzvUJwV+BNdsV8SuvdVrSKkxp4lnbh
         lwACTTQjk5Tggi5Y7HIJCAbzxOUV3XkRRHcPahVsJasZz9SfRpO0TEF1V8lsGlBqfkCQ
         S1RDGxPA/+45CY5TbjvCg4YHornj4Yww+nhmXC5ixna1aEleCWWr5eY5z1iDKTn4y84D
         Kg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792510913; x=1793115713;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OBYiHwgIBS5v/Omj8VoRqqRhhqFMxkEFOvedrOWQXyc=;
        b=O4tktSdWemjna0sgSp/9VGhnJ6jj2Wbd0shA9kEGid2Wvjz1Z2jeMPYyKsZ/c+fi6h
         3E4PN0BW+2d0aVxvBEb+yajKBcnR8pFiH1cPxEMYaJ/q2sw/sIPoHyHfX4Tl2Ysmz8m0
         1p7n9F67C8OfgQ4qTgWf17wJ6nJ2QLP9gi/o/C0nd7SqJo516RHQB+C74trQYeSu84JH
         le16WmVfVE5NuYGrpR24UVwtDV7PzB9TVYmpJ8NJMs0RQM6NE4GeGNrMv7XBMKXis4IY
         PtQehCLVJcBcTcxl8HN5WBH8WKQxFdsUNmqb8Rkj9ZZjaqUok/RHSZ3jBvjDHTgln55a
         r35g==
X-Forwarded-Encrypted: i=1; AKwUvBzR0aiOLPSGHCG5WYzFljlLsndt2mC0hDqzMZztmw2hTMD0ebBob+9XzadcZ8XT9Nlt38tk6MGJg54=@lists.linux.dev
X-Gm-Message-State: AFq9FYK3lkF4t+oBP0TkAp6sFOingtMlYI7x1loWxeT319kaUCRwCEO1
	qgUTaIMpOGcY2HWhZYPV0cPpmBrrK3FpwbJ+k52EWe/Q8BwZFvLcmnvg
X-Gm-Gg: AYBFou049TtPKEAh8UAzbUaUNJXgpXUl14rkCrIqXnZ3g4IooNKpi1zcNbDl0MJUD1d
	cdtHv646kTY4I7okMYK8GopmqsZTYNEPeArBVfdjm8yFvMxZFeNOVzcgPwaJ9XIvEtSZ7TR7JV3
	zKSLUtqyn9pHeFVLa6byRLAWrOyRG7euyE/SlGqDEG7/QFbO96o5KVQyUXT8tuR0GpCLiEjtu+D
	TNeuWzAuyxXwLuFaQvOKQDdlgoSMFKnLfwDFoB/G+jkRlIp71bYGEqqIJ1K1UuEPGfuOCEDUNZK
	eCCqi7TBoaWCGnx9NIRRfEJXJD+Ug7uKPslW9wBoNL1sVfFO/DOF1VOs+1VRlxFydTm9iRqDxrF
	w81UwLbtQ7xONwtuwwFXWXVO7RlqGcaEgm4WcBSXMjLC3KSjomgVy+gxT/RgfgbO7HUFE3Hejp0
	Zm+3GVVasze43NuQszD//lH3PSvcpeGyvpaDQMC8IwaqUyeuh6hq/wN9C7dGCg6TRbl1odMGwkS
	2fR+JiQKYckyXpcjK9pXZ38sl9g57qc22v7iqQ=
X-Received: by 2002:a05:6000:46dc:b0:48d:ee59:3a30 with SMTP id ffacd0b85a97d-48e07f9d2damr16530082f8f.22.1792510913111;
        Tue, 20 Oct 2026 08:41:53 -0700 (PDT)
Received: from [10.5.0.2] ([187.14.227.39])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e1d80fdbbsm7488238f8f.17.2026.10.20.08.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 08:41:52 -0700 (PDT)
Message-ID: <f8b282fc-34b5-4ffe-806a-fcf525012064@gmail.com>
Date: Tue, 20 Oct 2026 09:41:48 -0600
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] staging: greybus: remove unnecessary goto
To: Haasham Khan <haasham93@gmail.com>, pure.logic@nexus-software.ie,
 johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org
Cc: greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
References: <20261020131913.5171-1-haasham93@gmail.com>
Content-Language: en-US
From: Jeremy Dean Clifton <gservice341@gmail.com>
In-Reply-To: <20261020131913.5171-1-haasham93@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/26 7:19 AM, Haasham Khan wrote:
> Signed-off-by: Haasham Khan<haasham93@gmail.com>
> ---
>   drivers/staging/greybus/loopback.c | 4 ----
>   1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index efc69c10cffe..284935fded12 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -609,10 +609,6 @@ static int gb_loopback_async_transfer(struct gb_loopback *gb, u32 len)
>   					     request, len + sizeof(*request),
>   					     len + response_len,
>   					     gb_loopback_async_transfer_complete);
> -	if (retval)
> -		goto gb_error;
> -
> -gb_error:
>   	kfree(request);
>   	return retval;
>   }
> -- 2.53.0

A few things here:

You don't have a commit message explaining anything. You need something 
there explaining what your changing and why.

Also, it looks like you're starting a series ("1/1"). That is not needed.

I'm not sure the why you have a series here, but the big thing missing 
here is your commit message.

Jeremy Dean Clifton
