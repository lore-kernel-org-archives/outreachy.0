Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.222.179
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792675006;
	b=1RkgKtZu9njk5xlkXr80eSE+uHZEihuPdoQbrgHN7FjPPFcUgECFNlH8yX+zXdyRi26C
	 3WC84GQDT41lag15hIv269Sb075Kc4Z2KgSPNohJnS5+qb2m79dXt8mrQ+Jl5Tnswi5Ez
	 EwB/Eu9+M3rcy5corZ4YBTBdpNci55VJWrHkM2GyqhPWwCATFlg3tZKKDy0Gy6JhoivV1
	 84iTfLc8/z+Eh5/J756sZIEn5EmG2OMGcrcU1mMqs0/5L9XtYbc8NRd6Z7OylC1QvQGNL
	 1UBZOAq+tnpwJPk0W1Gq1QPfUQ9tzNB2ckre91LsRKAuR8hz8CGU5RM+ja6X4dKRt3Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792675006;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=qndGYIabhOTOnIxX+m/6QHAEddG4IB6/QCy41KbLtAc=;
	b=ZiEPqwxhLC+XzPsDVuxBdIuCvOTWSoJ/GM1R7rzSkpuWahAj4XCeGcrQyP6Lh2thrCQm
	 u18YkW4ZaxZ9a27lcZAYvDYJTzqHpyouGgaZNE4sN7tBVErppEsB1b1K8okm/PYTXY+Z9
	 vEKW1cb8MUjt/kqzpcYfGTUlw5LBhSnaLnYo0g6JS6/UVAJ1Zn0qBhFqPjeYCPGElYPxW
	 grNkHbx+osuERUVb4K3p3eYyyKdysTywed429wsUoG5KbJuO1yflCP+CHGipGx5JPmrFD
	 kNdqbG8TEVCqb51K+YBikxC5yB32dDxOgSmMiVQPNJu1o+fcwQm3WgsU+aaSUPMZH4A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=ieee.org;
	spf=pass smtp.mailfrom=ieee.org;
	dkim=pass header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=WdcALzU9;
	arc=none smtp.remote-ip=209.85.222.179
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C010606A319
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 13:16:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6C010606A319
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=WdcALzU9
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-93e4c00d71aso200021385a.3
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 06:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792675003; x=1793279803; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qndGYIabhOTOnIxX+m/6QHAEddG4IB6/QCy41KbLtAc=;
        b=WdcALzU9inTYP3VunAnr0nk/n2brxtJ5cKc1kXJi0fgVigahRb2bNWW3yDkwgtZG1U
         iKJu++qRGFbn/iv6PbD8v+WoruXQT8X09jgh7gI9gV4kCa85bqByE4xaHHI34tQOpUT4
         ChQYu2HojM6P71B00yFs5fUlYH6KJXyANO6f0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792675003; x=1793279803;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qndGYIabhOTOnIxX+m/6QHAEddG4IB6/QCy41KbLtAc=;
        b=hP6Pi99SMyJf039PIUoqYiFC60bpr4452LvSh6luDZHVuQ1o4tQZ1aCaW0m/hg+pVb
         V614MTeseKLZhvS1Mje8bCYX4v7JoaFmHAaL1yV7/XgggAxh9uKWUJVIHqI2QiPBjQy9
         r/sP/nuyfkmKFNCUVYhsAojdqlexuM6OiM3l4xV40x/Q0A4rG2T6z/Tp23WfUohZ3n8J
         KKO/JMbxoFZM7sPENEdoS7k1xpdlWcXKX2vtMr0yd61Yb2+esTNqi7gY5mWzhU1qNywI
         5xcMc6BTRvtpaiyfDAo7FuxkDmcCfV+RPsqidxZrHIlKlfdqJ+FVuE6K/kjVa9PPOuiS
         OpmA==
X-Forwarded-Encrypted: i=1; AKwUvBxXS2O8bT0XhjjkPEozungFwFBoEqF9vTMR8rY+lbl90vs4h6emCOxue/BSIt8+XkC4fOfXCwS4L8o=@lists.linux.dev
X-Gm-Message-State: AFq9FYKyUalf2FMpckzTSKf7a16uXDiE0mXMSSoZnV/6leCkpLljJaxY
	kMkukrl3iXP4VJVuVkuMkBOwBy6Kl+dzFQfEz5wgFARtL05gyc+248TOFOf4dVWJOw==
X-Gm-Gg: AYBFou0TDaPjeuAg7mDO9uBieekxLOwDjkdvxknkVUPOgyW91ghc1gkvR0+2PzoByoN
	m2ZcQdr+Ar4qHdaabTymPuTYNyFdt5EPKS2JzCNvolZ9JWc2xhIjLWMaSRhh4rjrxZIeWOzTEyC
	SzdpDG9WOIzukibWh60SmaetO0P0etcZ6cwJqG9Tq9THkfih42Mvztso8vfYEl9pVyNkUIF4sNN
	cQvfkkKjHP2dwFPph+UHiVdK44zYkB2m9h1Dv7QPoBl1pjefJ7nC3grAUY9VcAh+ku6WDxNA+vb
	y/GxV3Fu2v2WSt2+gLybnQGOj3UMe4e2stQcNUfOtGA74GRZtOx0yicZ6IdXEXrtwDBLMg6v4w8
	f7uVKOnnDvZy86gFk0/gbfS2zKlEgTD1Qt4qj91otih/5Y0cmp+gnOTA1j8ucc7qTo0K1otTySi
	8+Fniiyuk0a2Rorzizr4ayxg04OKd2/va3qLZiHMVlM2PmG5Sk/OZ46iDZ+3sPM4tg1J6uhS0xm
	npnT0Rud2Ve30/GRbkmXlJ5LQsQvLRn3vzfwoXZxpiX2qRyhXk=
X-Received: by 2002:a05:620a:7105:b0:93e:c12c:f12f with SMTP id af79cd13be357-93f5800dc62mr810116685a.74.1792675003270;
        Thu, 22 Oct 2026 06:16:43 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-93f56c70057sm513651785a.5.2026.10.22.06.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 06:16:42 -0700 (PDT)
Message-ID: <3433f922-bffb-4f1c-8e06-a7a87f5dbcaf@ieee.org>
Date: Thu, 22 Oct 2026 08:16:40 -0500
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
Subject: Re: [PATCH] staging: greybus: Replace format specifiers
To: pavankumaryalagada@gmail.com, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Cc: johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
 vaibhav.sr@gmail.com, mgreer@animalcreek.com, vireshk@kernel.org,
 rmfrfs@gmail.com, dtwlin@gmail.com, pure.logic@nexus-software.ie,
 linux-kernel@vger.kernel.org
References: <20261021163437.280930-1-pavankumaryalagada@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <20261021163437.280930-1-pavankumaryalagada@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/26 11:34 AM, pavankumaryalagada@gmail.com wrote:
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> Unsigned variables are printed using %d.
> Replace them with %u to match their types.
> 
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

I have reviewed every one of these and they look good.  Quite a few
of them--because the size of the value being formatted is less than
32 bits--would print correctly no matter what their value.  But I
think it at least does no harm to convert the format specifier to
unsigned in all of these cases.

I have highlighted below an existing bug that should be fixed.  It
gives an example of something to look for when you do this sort of
activity.  Please arrange to get that bug fixed.

I also pointed out one other observation for you to think about.

Thanks for sending this.  I didn't check to find any other instances
you might have missed, but you seem to have found quite a few.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
>   drivers/staging/greybus/audio_codec.c    | 20 ++++++++--------
>   drivers/staging/greybus/audio_topology.c | 30 ++++++++++++------------
>   drivers/staging/greybus/bootrom.c        |  2 +-
>   drivers/staging/greybus/fw-download.c    |  2 +-
>   drivers/staging/greybus/fw-management.c  |  2 +-
>   drivers/staging/greybus/gpio.c           |  2 +-
>   drivers/staging/greybus/light.c          |  2 +-
>   drivers/staging/greybus/log.c            |  4 ++--
>   drivers/staging/greybus/loopback.c       |  4 ++--
>   drivers/staging/greybus/power_supply.c   |  2 +-
>   drivers/staging/greybus/raw.c            |  2 +-
>   drivers/staging/greybus/sdio.c           |  4 ++--
>   drivers/staging/greybus/spilib.c         |  2 +-
>   drivers/staging/greybus/uart.c           |  4 ++--
>   14 files changed, 41 insertions(+), 41 deletions(-)
> 

. . .

> diff --git a/drivers/staging/greybus/bootrom.c b/drivers/staging/greybus/bootrom.c
> index 83921d90c322..fb1fbd3f7b99 100644
> --- a/drivers/staging/greybus/bootrom.c
> +++ b/drivers/staging/greybus/bootrom.c
> @@ -222,7 +222,7 @@ static int gb_bootrom_firmware_size_request(struct gb_operation *op)
>   	size_response = op->response->payload;
>   	size_response->size = cpu_to_le32(bootrom->fw->size);
>   
> -	dev_dbg(dev, "%s: firmware size %d bytes\n",
> +	dev_dbg(dev, "%s: firmware size %u bytes\n",
>   		__func__, size_response->size);

This line actually contains an error (and it was there before).

The type of gb_bootrom_firmware_size_response->size is __le32.
So the value being formatted needs to be converted into CPU
byte order before being used.  That could be done this way:
	le32_to_cpu(size_response->size)
or just use this, which is known from a few lines above to
have the proper value and byte order:
	bootrom->fw->size

Please add this to your list of things to fix, and submit it
as a separate patch.  This would be a bug fix, which would
also give you a little bit of a new experience.

>   
>   unlock:

. . .

> diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
> index 4f1b3f4db404..2314496a858a 100644
> --- a/drivers/staging/greybus/raw.c
> +++ b/drivers/staging/greybus/raw.c
> @@ -112,7 +112,7 @@ static int gb_raw_request_handler(struct gb_operation *op)
>   	receive = op->request->payload;
>   	len = le32_to_cpu(receive->len);
>   	if (len != (int)(op->request->payload_size - sizeof(__le32))) {
> -		dev_err(dev, "raw receive request wrong size %d vs %d\n", len,
> +		dev_err(dev, "raw receive request wrong size %u vs %d\n", len,
>   			(int)(op->request->payload_size - sizeof(__le32)));

The above size calculation was done somewhere else without the
(int) cast, and the format specifier was %zu in that case.
I don't think this needs to be changed necessarily, but it's
something inconsistent across the Greybus code.  Consistency
helps readability and maintainability.
  >   		return -EINVAL;
>   	}

. . .
