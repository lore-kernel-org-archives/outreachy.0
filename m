Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.167.171
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792675706;
	b=RLSC4BxcxusVZ6WuwJNVbOxmJMilO9pxT+6lUnqRxo/p+wOIsplsG4khCut/GzWWRMOo
	 LbBso+x0URwp6w7qjDJEhpqM3XU7oW3O2Dxtkv/ieZNAcbjnbC0FB7ggssZoVLDCaWUCH
	 03IHz6e1CPOE1z3F2jLKitd+xf9HY0Om+1wm/gYUOmiECKiSF0huWx7ULpb5HGZgfSxYd
	 cWJk4FDAfTVlW05s04iQweTYMlZY3nnqu5oN8T9Di4kb6FUX6vHc9y8Mf1RNXuvdB9htF
	 Dfm1nSs/HIX7MiWgyE1g34st97E6JJKFidUZ2t5QQ7camO58Y24ZxToFVMXS4KMi+3Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792675706;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=LcT+KP9K464dUVVNerb9of+gGfIt5gtSXv2jKmAZWX0=;
	b=wh3VO7LKGBTYkTZp6CslD6y6zH58U7AFsgzfNMrqe265XLjDNGJyYAHCYvOOLA7PChMa
	 gqGpIir+e4Bv3nWTQ7/K5jpvqAIyV0b+O3MDG7A84d3C+ZaX2Appf6yRdeU1eUD3FYdbK
	 i3zVj02XJlsCh/Ro9S1lRWesrwi+06lO3N7oYYejDH6gU4IzzuF/yWSFg4EsAYXLyU3Gq
	 oxzNiZozHrEavtYgLEYpDvZ5hHXDijdzRMEbPHNIhlc2bZl2nfqL12FvLkP5bJ1P6yqJN
	 8+e/oc60giOJxtd/mEfaMghr0OI+7WT8pgZaH86lZftJ7zCuF6VkhKjZoxzrYyQuMBQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=riscstar.com;
	spf=pass smtp.mailfrom=riscstar.com;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=FKT2Mclp;
	arc=none smtp.remote-ip=209.85.167.171
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E48A60A260D
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 13:28:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 2E48A60A260D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=FKT2Mclp
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-4af7283bf83so779249b6e.3
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 06:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1792675705; x=1793280505; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LcT+KP9K464dUVVNerb9of+gGfIt5gtSXv2jKmAZWX0=;
        b=FKT2Mclpg6W7397D+V56QCmGK6J7KTYU72kyXswNFUffgImhhW6If5Zz9nBhzT4n9w
         kFHIUR3cs9RGim2Pq/PnYeI7wOUUAXm9c8y89yWHV0HJ5n9JyO62DgnQcHPN5W7kIRl4
         XrD+wV84dV6QGlm2dKJcUxV96G+VDWgPSN2KF0zBdJVzepn/KMt/sVRl3HSPLSyph13T
         Nihbjtt+p1l4VmVhWr4CA6cTGHFJ94th+WY6QBuDftk8qR9ij7DZcfYKpsNFW09vEHaM
         e7ddXLHqZlSxEJZZHpEN4BpQBizsMgVA/kDnGM0Jhe4V+X+82fYCFnRxDiFyjdkmmAP3
         Sisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792675705; x=1793280505;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LcT+KP9K464dUVVNerb9of+gGfIt5gtSXv2jKmAZWX0=;
        b=ieLGA70wBSUZqqy5cPPACjuFSH0QN54qzLDfSmphnysbLkkqX4MH8otlVIqTPIYY4U
         jjEgCd1bXvgV3lvbQDzTyNUL0kYh66PYC1/C2zEt2s18S8jo8UP7RoFVAcqAjQ+jNvcy
         SHIdeNgRduuyzU0ZDXEnCA3KP50NAAcNNlpUnAYwBNAns7gOgXlX90RaqNHKEy49w0di
         0BIhjq4iQdRbdSH/ew7Y0Phy3HLliGUzWT3aFogRPUGxXPIVakHHAJMw3ifme4Rp3AbE
         qtScpHq6BE8S7gzjfRJ6KFnlMA4EpfcUqLW1GAosmX4DhwUr4jaxYLLmGj74iygMoKhH
         GKlg==
X-Forwarded-Encrypted: i=1; AKwUvByACdKIU9dZh2Oxg/Q9hhbAqElGLDDvS2ctablATCyvX/uK8UeJe7h1AeKi7AMmOLZxL6ugHanAjpA=@lists.linux.dev
X-Gm-Message-State: AFq9FYJI8nJ/1vu6s7CTinVHMlhEpyIWj310FeUvjnGNdJGZ7fEU2Y7N
	NRHOcdlAVDtfdyX+LRVXGw39g0v7C/d6Ohfit6+V7odyM47aM3vvmREs5uIN3XMm0Us=
X-Gm-Gg: AYBFou0XBoLsJbjqeb853ADl9tq4AYoJXG9Dom41sEi+FdjERYJi5xfOPUyPuRqzPrN
	rra/rQjzmiMDEe0oIIbCp2fC0z51Au6fPBpxtnSy9y3rT9y06+98k1TMpC7VbjhazNqEtYsolKE
	GfHAc2+JRiT/z+SZffMlvmN7zfJIJkjt30nZJuYzNH9MSu0TajCutwtA+fHVEPXPFCpos3Qs5cQ
	aYP0dIbYgc4Pfy/hGTw2sByjGD9C9tCBQhWPLxROKQx2UlaABy3jyQ+Uv0N1tz1TIFNzxjktf6d
	3gbkjlmB5CvRcVWzGpIQZwNh7XtUzKGDxGtem4Zojth4MT4SroQ2oZsE/COZF8W6NkYNoGKy+/Z
	T4Zu0EV3O0VHDBQU347xK6h3XvqzqkpcApw5nhHVSB5236Lysw32zd2RgSqJamMTMpXYr+FsKDa
	qp8k86Qr0ujZX+KlXrZBP9KgKglRsRlRP+JjEOQDuWtMkei5Pi7KNCeqebyl4+dLgMMOMNBkOT3
	IYsMNGj85zmK9teD28jfvYzp2RRZHMXUSblOKaB04RYOki7JcN0PVuR
X-Received: by 2002:a05:6808:4482:b0:4d3:9029:5ab3 with SMTP id 5614622812f47-553585760c1mr3346235b6e.35.1792675705007;
        Thu, 22 Oct 2026 06:28:25 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-552b745f968sm4259064b6e.14.2026.10.22.06.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 06:28:24 -0700 (PDT)
Message-ID: <6d683673-39de-4986-a593-68a5a495e764@riscstar.com>
Date: Thu, 22 Oct 2026 08:28:23 -0500
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
Subject: Re: [PATCH] staging: greybus: Use fsleep() for delay
To: pavankumaryalagada@gmail.com, greybus-dev@lists.linaro.org,
 outreachy@lists.linux.dev
Cc: pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20261022110238.38824-1-pavankumaryalagada@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20261022110238.38824-1-pavankumaryalagada@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/26 6:02 AM, pavankumaryalagada@gmail.com wrote:
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> In the loopback function, usleep_range() is used for short delays
> and msleep() for longer delays. This requires choosing the delay
> function based on the requested time and converting microseconds
> to milliseconds when using msleep().
> 
> Replace both functions with fsleep(), which selects a suitable
> delay method based on the requested time. This avoids the need
> to choose the delay function and convert the time manually.
> 
> Suggested-by: Alex Elder <elder@riscstar.com>
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Your description above is pretty good, but I agree with
Johan's comment.  In fact, you should think about and
understand exactly how that behavior changes with the
switch to using fsleep().
- When would the delay be different from before?
- When it differs--by how much does it differ?
- Is this amount significant?
And the third question gets at exactly what Johan was
saying should be included in the patch description.

We want to know not just the mechanics of the change,
but at a higher level, what is its effect?

You don't need to provide a super high level of detail
in this particular change, but you should demonstrate
somehow that you've thought about these things.

Please submit a new version of the patch and reword
the description a bit to concisely capture why it
makes sense to make the change, and why you believe
that the change in behavior is likely harmless.

Thanks.

					-Alex

> ---
>   drivers/staging/greybus/loopback.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index efc69c10cffe..2fe845eaef29 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -898,12 +898,8 @@ static int gb_loopback_fn(void *data)
>   		gb->send_count++;
>   		mutex_unlock(&gb->mutex);
>   
> -		if (us_wait) {
> -			if (us_wait < 20000)
> -				usleep_range(us_wait, us_wait + 100);
> -			else
> -				msleep(us_wait / 1000);
> -		}
> +		if (us_wait)
> +			fsleep(us_wait);
>   	}
>   
>   	gb_pm_runtime_put_autosuspend(bundle);

