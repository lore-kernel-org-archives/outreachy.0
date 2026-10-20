Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.161.46
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792515929;
	b=SJhZqxu0zwqRQBwmpEXwzje4AKcEX48J/e2BRFSyR6uIM66xInzC+lnY7OqXfbQYqwej
	 v54q7/1QLtq7K+lbY5Vr4sr8tquI5+EFuDqWg5Y5vwTHTPsJiOWSx4ax0kT+28MJUQLuK
	 tDjbccIZCUOcLCjnuQdp2UcKjFPCKjvkXPC7NcO89SAq+pOITx/4RpykaFB1Qj+0zalai
	 V/0Sy947R2hL92BW7hfXuuMPDSKtoPj52VhixY5qLZiWgLk1wQcxvWLXcuYRNgxIq688H
	 jfZKuaZvMlt89ZMnkmq/i8fqqnNvKP00zZtve6+Ft18Frhc7zhhfrvpmocgNPfI3z7A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792515929;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=pb5RaWd5jwLfIYb5FACQb0INcelOdE+bJc7PDSGp4uA=;
	b=yx/nSJSMLj/CJU00uZChVbUc6eGHDEbKBvaBro+VQXvphj6HjhdQJPigjgqbnD8abBCu
	 LtwQ6+Nyxf/BsjTaXSLY7nyxnyoedHft/muKl8ct4JrYNPUqakgMGlHEKUpXDlTo67L4a
	 ZkbB5vIL2MdYYr0t8HTD5kMmZz/a479z5idrbMes3/zj1wnoermYSYYZfStIGH0M+8Lre
	 3Dfr18+NDP99ipJMX6emrwutLEtOPx/21snOfZyzeavSBagCOqcIRNO59Ugp8w/dAk/+Q
	 FebrHGt8QaG7J9cNxcTg5bNDDvRFB3YsHbWOdLVKA1MWIhRjC/RrosA/iO7IuvTSKAQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=ieee.org;
	spf=pass smtp.mailfrom=ieee.org;
	dkim=pass header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=CrOdBKd7;
	arc=none smtp.remote-ip=209.85.161.46
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B359B606A31A
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 17:05:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B359B606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=CrOdBKd7
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-6d00d120b28so2582406eaf.1
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 10:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792515927; x=1793120727; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pb5RaWd5jwLfIYb5FACQb0INcelOdE+bJc7PDSGp4uA=;
        b=CrOdBKd70wxL9I9nohfLlsFTgxx9tdy/VS3IcXQYVwDsVH7KUAuJ4C5icVS+1DKMnM
         wL4q6Sza118XD8tEvxjxx4A9KUZtrCe+skMn1d/6fIbECYN1eGU6IbAOrGbu1ATFwz6n
         j9DY06ONPxW7hcBPtdpGRgdXPdpcyqb5cdIFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792515927; x=1793120727;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pb5RaWd5jwLfIYb5FACQb0INcelOdE+bJc7PDSGp4uA=;
        b=lp568VrzA+kp4RFSN6u/tU2lnhYQgsSADTypfIHLqw/P7GOvO9ZXDf2e1PyrmGdYOb
         /55vHXDupwpUBcI4lvPQZndz7hTCFqqZmq/XbUytL/EJ6jgz6M0YWBVR52pAwqgfANzL
         R1ttHYVb9VnstZ7Q05qeGTOGznTyf5N5hK5m7gZpmVm9+FP8rNYYLwSwsJQ27zwa+0TA
         gWhApb1aXegRa+NPSY7dyXJNqfUDir8b8wEr0RCrb1TQCXHtMyKfxYpyUKH752alphv+
         z5TFiZE0hd3l0L/u5lc/Pl9w4B+5JKOyeao+67BWOJgwicgvUWLukWobQ0oD1YOIE9fG
         XXGg==
X-Forwarded-Encrypted: i=1; AKwUvBxAYT51+FbsVzY6VBdMyNeeCJX77wSSZ231/15a3TwZXxOHbrOXAWLUHu/gJLHzw/P3Mv7Ql75g8QQ=@lists.linux.dev
X-Gm-Message-State: AFq9FYKkcfxq8ejjVXlhXxDkZ/J8Y0JdkBqRa+2s4afK5g0sBSJ2RjZD
	gtN7y/G/fihU/a4Cfyg7yJUp6UHeP30HD3Mo3bKjXb3E41EjR55BeJjEWp3HZay59g==
X-Gm-Gg: AYBFou0Ugeffjqjd9+4vCZzezXfoQ5IupJ3FSLaBVNKtfG9uWMI++O4rgB0g6umnAro
	bAPkAEhPFznhT8twC1gJrQC7x5bLJ7YLJzSOfinDtZuUIcVt40savM9/KnpJV7UbPJJP7B2w/w5
	hGUOtBC9vVG8e5oK1rw5wgAQvvRN3h0RHlzTw4SjsGnXWFi4S1tCnQ0zxNZYtQQiNsQZjp4x5v9
	6xa4DLwaLIk6OMAEvJptRxSm6QgGZ/tsxH4Ccw/akbtlJwilrTHEwS9WX1pADiKp7qsm3M7UQ/8
	ATAJfShNOgSXmd+eBvln95eSForNzhciTrDLObz5lY/4dWJQLT/Gg2LaMb8WAU9Mf7q9nyBPi3q
	4G5y8J9lnbB+wm4TokYoJ/KQMFnmZQCfwXoqfv2v5xvZ0DWrZ809rk2vhSnltiXuugHecj72wWz
	9JQi3DhqS87m7ZTQ3kt8qf08XFH+KEf1cjhQbwwYumO9gqVwfm/HBDUbYcxq0bKzgEERJxHtdop
	Yd9
X-Received: by 2002:a05:6820:1c89:b0:6d9:3d73:6e7d with SMTP id 006d021491bc7-70355d88b04mr8635937eaf.26.1792515926257;
        Tue, 20 Oct 2026 10:05:26 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id 006d021491bc7-709036ccad0sm90614eaf.7.2026.10.20.10.05.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 10:05:25 -0700 (PDT)
Message-ID: <833ee0ba-9fa3-4732-997b-c1a655217cb5@ieee.org>
Date: Tue, 20 Oct 2026 12:05:24 -0500
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
Subject: Re: [PATCH v2] staging: greybus: remove unnecessary goto
To: Haasham Khan <haasham93@gmail.com>, pure.logic@nexus-software.ie,
 johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org
Cc: greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
References: <20261020163636.7629-1-haasham93@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261020163636.7629-1-haasham93@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/26 11:36 AM, Haasham Khan wrote:
> Remove the conditional jump to gb_error, as both success and error
> paths proceed to free the request and return the result.
> 
> This simplifies the control flow without changing the function's
> behavior.
> 
> Signed-off-by: Haasham Khan <haasham93@gmail.com>

Looks good.

Reviewed-by: Alex Elder <elder@riscstar.com>

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

