Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.167.179
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792504808;
	b=vd4NJbbr1G/b+0X2pZj98b7f/F3pfGD3x+lthGPwkq7WNWXIYk9dtmfHRNpMQL0u53tg
	 86z5Ej/bGHu8kKPWVzgWwhBWa9mzCfuF4171hUIXtdcH0Du+y2z82xTJGfloCwDfcRDWr
	 EkGkIVQl9yDOslbCtXrx0xqT17jFbH65zolntRtFqE1UhX8OHBhPPLRXxCvU8cMlEoBbX
	 yhqcj0Ln6as6YbKGwhtI5XeME6Q+wWYsgUEc/BdaqFHA3P1t1D1IsbIu2K5g8rIR1ZWhP
	 /kHPhqTdldGKybcXr/tlH7JsUcVxK5LL6B/3g1trzF1kGhFQZpJ0yqF7JfNwuQNgXlA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792504808;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=REF0is0/vKENL6ZoojOgV2yic3mbfdUjFSqvl0PsZXk=;
	b=lVrX+/29tGJUGQqw0HL3o759yobCbVJ01u24Zq/KWpuZg2akm/1CvCTEDWyhi3WRSXku
	 IAutuDROoEOHy/lst9egbGf6eZK4bMO8h4iXHCzICso+tVVxLQ81fqwoqJYhEgIsdtyxe
	 vKgCrl13dX+NWzJnwFHy4+/P27DFqbKc9imYKgFNUAQsY65uzHMn/yETwLdQoj9d6t1ca
	 fXV2aOoNl+s0/klYR2Rqv8pHLdDoCXEAc+sdPw48nl29J2Lr/7orQW6uLzDLSf30Zf+0A
	 2ivwc0lad26A0yLNTMp9zkUa+t72URZHjSRnFnn9FbnqHLtUamOz8uPvs1npntnwxcw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=ieee.org;
	spf=pass smtp.mailfrom=ieee.org;
	dkim=pass header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=fvy2sMG9;
	arc=none smtp.remote-ip=209.85.167.179
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5A960A260A
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 14:00:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org BB5A960A260A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=fvy2sMG9
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-4b21f71613fso1584407b6e.2
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 07:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792504806; x=1793109606; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=REF0is0/vKENL6ZoojOgV2yic3mbfdUjFSqvl0PsZXk=;
        b=fvy2sMG9v0VM4QcXHURPdbb8UPxTm6LOpB9nhF8UhfM8wnEzRtHKBCtuNFLBIPYfzK
         Kc2zTKhsUKKcHay1mdSV7fwKSoXy61kqbA6edCc+ZI3E5BOTW4uylMuKHN2uldn1czPE
         6t13Ar43YY//EkfxDg1oEj/gTWrRaJcGeGvNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792504806; x=1793109606;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=REF0is0/vKENL6ZoojOgV2yic3mbfdUjFSqvl0PsZXk=;
        b=DqZgJm2ewImjt56ui62QCnPpeh9Tk0I2grjf1WN6vWuyyc0s6MtIEUyeZfIUu8Z+k3
         SkH8t36oTLy0iKDIt49tpJWH6XleS4qrJLRiwTq7ilLqTrW5HHPJQztyghmC3a7uaD6N
         friCK+3DI6Wv2i3BsheaCCXFYNDuqUz3XI5JCCqsXYUJ3krhAq3S6qiPoDl1bK5VcHck
         1T9rueLdhlfmq0IRk0ObmQ8QtdZuM9LcYLj3CX8/7Xoumd127ExSsZSUTfv/3dZZOrkE
         UISbKN3by5D0MkHMG5rFeg7l4z6Dhpkt4Zwv2zXWjFOGMJaEtRl1Exe5cRD4HZfWhhR9
         nUSA==
X-Forwarded-Encrypted: i=1; AKwUvBwG1tWvVrHw+lMAf6b/3EWMF8Q7XKsvo62s9Q5gY/c7Sg0UB84/wqi055PYEYLlqLOQYiprrcL7C48=@lists.linux.dev
X-Gm-Message-State: AFq9FYJASuTvl2LNoYFySLU64WYjyccK76cL37Zlg5p8KPoOUVgOzdre
	NeNgItHF51VmzGv6MLO7mYD+y/knWP2TBOKzvSC1EQ2CJAAUwTfEBYhZO963WiYB1g==
X-Gm-Gg: AYBFou3tedlk3YHpMFbzla6Wqlhx8KAyBPis+I6WgBHVmGZAP6voj+4gHTx8T9yL6Xm
	IXxcsQEe5JVO/YCOPwFNhHIHsgGtKIqYgBkxFKL2zi4i2AiJxNMP4F6Wm8rp5tDO7BZXGOu6D/T
	yFNRJONAi8bfC06UeYP8mS7BMSQ7lhU6aAy8JEwbFro/MdFKmMjkaoiKWgtyJ5I4fc1jyJ5NTFe
	toDrJmNb86O0VroyV+A0obvAivO9/ghxL8CcMqQTHcqVV5u3fABslITalw2y909r+RVPk043yoJ
	CCx9LQBM2yXW8ow3AvOLTxk2JpRuholhpdu2J/9WbqthlttTfA5g51tq7uaXSntsdtNowm5zgAr
	9cUPitazDZTgRBCj5RmHe/5sHXGPKSCNW6Zrz3TykWeJ3Dk3vQOcXFfERaLr7kJs4dkTt02q/R7
	w+Vv6W9v8ucgftskEiQFkaK5U2eU64f0a3EM3WRJfhNZrTeGhZp70gNm0EUjd+sBmA+qgXzAceF
	/LK
X-Received: by 2002:a05:6808:c226:b0:4d6:93c3:1af4 with SMTP id 5614622812f47-53cd561563fmr8452317b6e.63.1792504805444;
        Tue, 20 Oct 2026 07:00:05 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id 5614622812f47-5388a5572a9sm9566960b6e.4.2026.10.20.07.00.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 07:00:04 -0700 (PDT)
Message-ID: <7e71d57b-f3c7-48b7-bcdf-75254ee87cdd@ieee.org>
Date: Tue, 20 Oct 2026 09:00:03 -0500
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
Subject: Re: [PATCH v2] staging: greybus: Align function arguments
To: pavankumaryalagada@gmail.com, gregkh@linuxfoundation.org,
 outreachy@lists.linux.dev
Cc: pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
 rmfrfs@gmail.com, vireshk@kernel.org, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 ethantidmore06@gmail.com
References: <20261017084441.12123-1-pavankumaryalagada@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261017084441.12123-1-pavankumaryalagada@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/17/26 3:44 AM, pavankumaryalagada@gmail.com wrote:
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> Align the function arguments to follow the coding style and
> improve readability, addressing the alignment warning reported by
> checkpatch.pl
> 
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

This patch is OK, and it's a good kind of thing to do for
getting your feet wet with sending out patches for review.

But I encourage you to try to really *read* and understand
the code, and see if you can find anything you think is wrong,
or some bit of code or comments that you think could be more
clear.

I just scanned through "loopback.c" and one minor change (to
*code*) you could try is using fsleep() in one place that
uses other functions to delay.

Another thing you could look for is printf-style format
specifiers.  I see more than one place where an unsigned
value uses %d (which, for large values, produce misleading
results).

These suggestions aren't especially complex, but my hope
is they lead you further into understanding the code and
not relying heavily on checkpatch.pl to find things.

Anyway, this change looks fine to me.

Reviewed-by: Alex Elder <elder@riscstar.com>
> ---
> v2:
>   - Rebased onto staging-next.
> v1: https://lore.kernel.org/outreachy/C560A15E-6F28-4FC8-8BE2-277B503340AD@inria.fr/T/#t
> 
>   drivers/staging/greybus/loopback.c | 3 ++-
>   drivers/staging/greybus/spilib.c   | 3 ++-
>   2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index fe48a687377a..efc69c10cffe 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -652,7 +652,8 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
>   		}
>   
>   		if (!gb_operation_response_alloc(operation,
> -						 len + sizeof(*response), GFP_KERNEL)) {
> +						 len + sizeof(*response),
> +						 GFP_KERNEL)) {
>   			dev_err(dev, "error allocating response\n");
>   			return -ENOMEM;
>   		}
> diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
> index e4d1ae8308aa..c1982f3fb931 100644
> --- a/drivers/staging/greybus/spilib.c
> +++ b/drivers/staging/greybus/spilib.c
> @@ -160,7 +160,8 @@ static struct spi_transfer *get_next_xfer(struct spi_transfer *xfer,
>   
>   /* Routines to transfer data */
>   static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
> -		struct gb_connection *connection, struct spi_message *msg)
> +						    struct gb_connection *connection,
> +						    struct spi_message *msg)
>   {
>   	struct gb_spi_transfer_request *request;
>   	struct spi_device *dev = msg->spi;

