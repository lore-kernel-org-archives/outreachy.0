Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.51
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792722604;
	b=HQ3QBqUIs2ij6Q52V6uJBRlL9y/YbPpHeVTMojn2bppxgIEMpVm44cRFhHRHcljAgZL1
	 /KhGLl6pKQDVFk6cH41u7D/YHR/tnvXY77VV6nwhR57nAilgA1eWwMT3gNHY6ChC027Gl
	 ckfWg2bDJpNiTjKydV8ENfhOex0IylH2+Dv1BsuzLex0Jc/3M1zWlqtLHA1Hlhu6dFvhJ
	 z2EOP6MipfrCsLWozRx8Bv7MU9cd3SZLC6nNCwd5dhAL3uNZQt2Rt/WhgYpt7hdtNiqNw
	 jU30gqtnJrEOH8MgtiopJ8wyF3BGD3k8maviSB46W3PfxfQgQTxGxq+YDoXX7AQlsSg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792722604;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:From:
	 Content-Language:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	bh=PdL9lRrDABEAZ0rJfjxtsf4RmpFyqkToBsIy06Xtq1c=;
	b=UXQakZw7AAGQwTauCfYXKUwOTmjYK5ykoc9KHp59Q4KQj3NsuAeSPh+yXCEq5MmTisWA
	 E5uvCRxEI1PkbolW88n/DFPhYA8bvkGrw8K/hejTlCubv+LpWJZEqytYRpsQXBR6IeZox
	 JWI3/zhaADMKro8PHslewjGFbGMuY3Hvj4O9bQnBljTDCHsvVI0PVTKOWA03GgSGYw6aX
	 SQvQU3JOChRHw+j4DIb/pQtox2W6Zb7BKayZxrY112fvvO/X4WQDE2TFcs/OL0lG9Kynf
	 brNHvvvuVAxtM5g7A+OWV+kUdJSFDY4FI5szT5imqMZwG5Tudl92C9+7BZilEw8eHxg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=linaro.org;
	spf=pass smtp.mailfrom=linaro.org;
	dkim=pass header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=b5KhIckr;
	arc=none smtp.remote-ip=209.85.128.51
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B340606A319
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 02:30:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0B340606A319
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=b5KhIckr
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4a2072b9832so6935335e9.1
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 19:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792722602; x=1793327402; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=PdL9lRrDABEAZ0rJfjxtsf4RmpFyqkToBsIy06Xtq1c=;
        b=b5KhIckrpYa0gotRpbo75CQRla2FN6dXY6DlxL1XqRh2XaD+euYVCksMmk11DJkWzf
         ohc3PaXVv4tZxU6J1hNh9O0RHD8iiFqeGxstrR96QC8V9fjCg5cjzEBESK4D+XCIieII
         gGj5MVVLRH3FOyR/z4ngyd1KnKzp+c0C8/ZbZmSiULBBqI3WiSVONd4NItt84hgjWAad
         EpR/fuQVEcsqbNyKEPOQieS7zWnOvMLCgxqK6EW8zL6UMvZwpXhz3pZEf3a00HxYGu8l
         wANsJ9bBiVJm4+1YM+eEGDJOj3P/zCgyZeGZ97DSXqoa7AiNkoliuTq0LC+aU8Cjkmtj
         +T4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792722602; x=1793327402;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PdL9lRrDABEAZ0rJfjxtsf4RmpFyqkToBsIy06Xtq1c=;
        b=geWMOhm+yuc/o3QFnJ0kJ5ph8hPM/VEaMILuAo9/QV+i3YqJMMqlCWnHH4gPedNw8I
         KzvIQ83E95N890ffR1nVZcKRIKKiroDRIPnBOtSfXJAHAJic3dFRRNPZ8OXegFunBXjp
         nC7sPshx21z4jP0kJ/q9agbnUI8wJTYXPAmPADhXqyZGaKEGVbNKWh1HS9jI/BftGHH0
         UX43h21soxFw0Gqi+a+p82jQpePNTlNsmfqOR6OuTfwPFKRo4e/rPcZ7jGNwU0idTpEk
         wNwBAuadC4HGoPs3r0Hvo8lYg3bDLnn4DxLdzC4CprMzarFsDwgPeCmsQih1g473amU5
         Xk2g==
X-Forwarded-Encrypted: i=1; AKwUvBzC428d2WT7h2dTin0hmT3H/LD2rIenbYk9+Hnj3gK0ycyYN6+yYhrLxSu/hEpljNvqpPiZnFfm+BM=@lists.linux.dev
X-Gm-Message-State: AFq9FYJZEYmnnMCpVhcDFWhZOE0+qkfe1KzJL85dtm6W3NDsDeL/JmcI
	lodaKWeRqg+6waIndd+pD1g39F3Eu/BB2Wu5BcMHzK1GzlD/xNnvXLqkjTTNY48GKuA=
X-Gm-Gg: AYBFou1d7VTCyJJLUwWnMGKcYR4P+czb0oPaRC2rZjhI9kChFjks6Gq6pa+y06rx9Bn
	OY6oO7Chh5lqJtckK4aaQxERa9q/hKPb0ZRk3V/n3IDMkMeMTS0a/ri5bwx3BbVkoKoW54lndbH
	UEfZWd2c/TfgTlxe86fc1B/Bmrn/moR1Uy4KkqMpz6GH7DQp0ZC+BiDUKuxeXil1SAZ9CM4x6K+
	qTQ+a8TmSnVfJbES56kY0bb7WcUnaUPwt2IpHCrZufYScMFFHJg39wnXthv7Ytx6q6jxORiQl1j
	sc82WsqFm83HTvxnijEV7DgO/WArgg78g5cjRKVYTNdGjBnX5mh33HUFSZGqHv79DtCFOUMxUK/
	6o3uGewF88ZoGzHhghkz5S2GjsiE0v3+1dbg6QUBDr+Pl96XIIwRcbwyLSHVIqiKU5R6XUDE75R
	ninjpxR69tHGUKwcT/LSOMGAAfVZtPqv+m0EbVxi9/pZDW5gGyutH658HQyRl81qTJigzSTHljR
	bWjOegLEjw4zcFi4GjrXl0Z6eQL0Z/TnRq9a9rmiMz1NFDunjNzS48Sp44YhdnvyxPQ0Y0qubRd
	Mx/2gxBznA4C
X-Received: by 2002:a05:600c:3542:b0:4a2:b73:d15c with SMTP id 5b1f17b1804b1-4a211c51a9bmr12422005e9.3.1792722602389;
        Thu, 22 Oct 2026 19:30:02 -0700 (PDT)
Received: from [192.168.0.167] ([51.37.82.204])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a211bba03esm20901525e9.9.2026.10.22.19.30.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 19:30:01 -0700 (PDT)
Message-ID: <237b20f5-3354-49d7-add8-71170d450306@linaro.org>
Date: Fri, 23 Oct 2026 03:30:00 +0100
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
To: Johan Hovold <johan@kernel.org>, Julia Lawall <julia.lawall@inria.fr>
Cc: Alex Elder <elder@ieee.org>, pavankumaryalagada@gmail.com,
 greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 outreachy@lists.linux.dev, elder@kernel.org, gregkh@linuxfoundation.org,
 vaibhav.sr@gmail.com, mgreer@animalcreek.com, vireshk@kernel.org,
 rmfrfs@gmail.com, dtwlin@gmail.com, linux-kernel@vger.kernel.org
References: <20261021163437.280930-1-pavankumaryalagada@gmail.com>
 <3433f922-bffb-4f1c-8e06-a7a87f5dbcaf@ieee.org>
 <d0a4a257-1ec9-7096-11db-5ff4b3244bac@inria.fr>
 <4c393ce3-41ae-4f4e-9af0-4eb7cf1c425a@ieee.org>
 <6b5a87f-3ca-ddc4-1ea8-f3ee7f45d83@inria.fr>
 <atoVKX09VDnak7EZ@hovoldconsulting.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <atoVKX09VDnak7EZ@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/10/2026 14:52, Johan Hovold wrote:
> On Thu, Oct 22, 2026 at 09:45:51AM -0400, Julia Lawall wrote:
>> On Thu, 22 Oct 2026, Alex Elder wrote:
>>> On 10/22/26 8:35 AM, Julia Lawall wrote:
>>>> Does anyone on the greybus list know anything about this person:
>>>>
>>>> Bryan O'Donoghue <pure.logic@nexus-software.ie>
>>>>
>>>> The email address is not valid, which is somewhat tiresome...
>>>
>>> Bryan was on the Greybus kernel team.  Remove that address from
>>> the list.  I'll let him know that e-mail is bouncing so he can
>>> add himself back.
>>
>> Actually, the email comes from the MAINTAINERS file.
> 
> Hmm. I haven't seen any such bounces (and I CC:ed that address a couple
> of hours ago).
> 
> Bryan, is your nexus-software address still valid?
> 
> Johan

Not at all.

20261023022913.3763777-1-bod@kernel.org

---
bod
