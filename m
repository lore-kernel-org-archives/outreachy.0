Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.161.48
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792761488;
	b=KPE25KY6K6b3AkkMdhVnC4g3cqZzKgxujW/IIWB4U4+YqQcc4vrvge/ahjo0fK1cd89y
	 sptZdMAxFoyT6sJzo5IQXPwT5X6wHfsWTBkoTrGGmUMMvd+lvzKS6bXtCNm47VDDHQ1kW
	 pAdrxAJoo6whJdvNOfo2vZrlP+CRm1G45hZlr7WfoZoQR1jQMgREfZHE1mHTGIicIgnYz
	 dZDDM/O1jH2YT44+0ZjVn+YUJPoOHqvagQaUj/8AidoA0J25TOiJh2hglQ1Ov/lbaxTVY
	 weqGU4Z96dUVr4WZTwnNht1Odv5wyfX/fRYody7DX9tL3b6A0IOPb/CnP0DzdKi5m2g==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792761488;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=ZO18/VDYKQ9K6+z12qbV2AuMLMhBQkemvCDskvO0ydg=;
	b=3fowDg6j7X0CTqMHAS8PPxaDqTTw8mxNzPz70dcD4XBbWalxzTdzmrpjex+YExfboC+7
	 XwL3OGm1XGK4kmyXHbFRntJ3sQd7r5Vlq7oZcNi9KKGFTLM6wnRN7QYPWsXYQEb7Pf0g0
	 5flnQqtHpqWed14gbpdv4KMkt/XM/rKdKUVMQR2xVNzJurIZXl69p7aTdaZai+jYZ6cFq
	 swXBb/Mr2ueyDM45cRzh/+hCI/tqrBkMb/GsXb2uSs5NYSsUVHRjeLZkDJFB8uFngrtTX
	 PoQHOVZJ4egfAFL1hpKxkbs8WdwBa67S8yhy2V8etG4LUuI63TdvsJWq8yusAaBF16Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=riscstar.com;
	spf=pass smtp.mailfrom=riscstar.com;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b="Pevn/TIr";
	arc=none smtp.remote-ip=209.85.161.48
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0017606A31D
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 13:18:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B0017606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=Pevn/TIr
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-705cb6ceebaso578282eaf.3
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 06:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1792761486; x=1793366286; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZO18/VDYKQ9K6+z12qbV2AuMLMhBQkemvCDskvO0ydg=;
        b=Pevn/TIrB3fCqRotdqi0I0Ti33oWdV0r+TmOSUnQLSuhF2/iAkP1XYCelgIct8DVe6
         yJdK5NVRlBQW/YlNoCoiVOwMt1eVkltrnAqUTzjqLLLi+HXNYL2PtYA0OF18lXO4keFf
         q2VP626PfPcmsnJjWSOzCg6DyEzNQEC+Lj5bYhXrl3HqujPwua+CztuPuMZXLbINERQ7
         tceFELRexV08OaWIeMwaMUwxtVngAgaYZWvVykGRlmTSlPP4XF+sBV1x0zsAXQyPQRP3
         YtjxuVX42ayldA6B5pJBEgd9hVreY/CQqlFv+uwqArZfXhqhENQPu8IQxATtqwkHIa10
         f0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792761486; x=1793366286;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZO18/VDYKQ9K6+z12qbV2AuMLMhBQkemvCDskvO0ydg=;
        b=dkO3M1wMqvvSs6gDXzH9tV9lW/LvTohY4XxHAbYTG+eRlco+5O39c51nu3AFWCfzXQ
         3iTh61kPZeZNtw+f4+rPqSLIkaSphvVBHWnYKcZZtGw4sMTkKNBD4FAQF+AAW2OEP7+T
         wmKyvfsoXYZn9+3zL961uAeDoP03KDbKsghLubN45HQy/JgW2QIHhH/amMyOAw3a+H6u
         hAf8n5R3zBwkxkwK4+KDuP24AOmNSW1dwGq9b2ZkEUe6bfHh/Jw320EZOiZIktjX16FF
         Px9V/lw0BD0r4vYCyaTqdUJrAjsha7AnysFMVnTmriAqNScfyGolJOHwvnX7JCcFyDvj
         7cSQ==
X-Forwarded-Encrypted: i=1; AKwUvBzYooPD0FHJoH6An2Lf1krXICBd2swv0bKR4yl0VpUBIzCTjKmBl+l7YfwG/4Z8hkMWkmg4WcS7bBk=@lists.linux.dev
X-Gm-Message-State: AFq9FYKKCqQewIFPaKlRuXCPPLzCIbn8tIwCmlq/qUbZ2ce+ohJPUmH5
	NjLjEhHN3FJEfVICxnWVr/fnR8L6c203tD21ee7TYIZrmUCKGAe6C9wH8nj45hkc7Aw=
X-Gm-Gg: AYBFou1KIy8orkTTBsRVAGD85N3N9HrlGwLVbxlMzMQ44MyDFdWfbPVrWUnTl03OAhJ
	hbzvCNiElOP6rXLJRexlHoftdOw1xPij8XMB05ZT4KsLW4lMW0C4KhyUQ+0Dptbwefl2v0ti86L
	JjHvUVtXYDf1ddH183/WuMS1n2h/J17JHM+6SknRu1V4tzgn+RBMU36pQ58k4aRn/eh8Hk3blRx
	bmUO6XXQ1oorCXhpr3gVxIWhde3vzhRlPIHR1MORlSL2ubblWGCh/H7jOWnlUecElrnufymuJzE
	3oeycvHMNMHcRilw0imlS9rIjIAAbrI++6eDpPbzomWe/HrrogKv6ONtMc8uiSCDmxPJ8k1p2ox
	uSPO9b+2u1tCxDwzJQm9kv7tU5btsqCgDSgwHV2cfEHwJtgL6OsILCOHRcgF5wZFlPU1/AW09p9
	TsWHk0EVWoNtXR/ygvv8jisES5yv+wDEOgit6TDF5huAbnl8BHnZkpvlqK2yG37M/5P6s1jUViK
	DmCSUP/wBWHLHWS83x6zQpsGucSpNpwEv8AUSk8SOV+hONCn05xL6A7
X-Received: by 2002:a05:6820:498e:b0:700:da68:7398 with SMTP id 006d021491bc7-70b88a4894dmr1285740eaf.43.1792761486541;
        Fri, 23 Oct 2026 06:18:06 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b9ae63d9asm8548eaf.8.2026.10.23.06.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 06:18:06 -0700 (PDT)
Message-ID: <fc3a1fb9-181d-4994-9bf2-45272dafc86e@riscstar.com>
Date: Fri, 23 Oct 2026 08:18:04 -0500
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
Subject: Re: [PATCH v2] staging: greybus: loopback: Use fsleep() for delay
To: Greg KH <gregkh@linuxfoundation.org>
Cc: pavankumaryalagada@gmail.com, greybus-dev@lists.linaro.org,
 outreachy@lists.linux.dev, pure.logic@nexus-software.ie, johan@kernel.org,
 elder@kernel.org, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20261022202455.104142-1-pavankumaryalagada@gmail.com>
 <a411ee0e-22c4-4797-9fdc-3ac11fa20d60@riscstar.com>
 <2026102338-rack-garland-2a29@gregkh>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <2026102338-rack-garland-2a29@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/23/26 8:04 AM, Greg KH wrote:
> On Fri, Oct 23, 2026 at 07:48:54AM -0500, Alex Elder wrote:
>> On 10/22/26 3:24 PM, pavankumaryalagada@gmail.com wrote:
>>> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>>>
>>> In the loopback function, usleep_range() is used for short delays
>>> and msleep() for longer delays. This requires choosing the delay
>>> function based on the requested time and converting microseconds
>>> to milliseconds when using msleep().
>>>
>>> Replace both functions with fsleep(), which chooses a delay
>>> delay method based on the requested time. For short delays,
>>
>> s/delay delay/delay/
>>
>> I think "checkpatch.pl" would have caught this.
>>
>> Maybe Greg can fix this up.
> 
> Nope, not for staging patches, this is for "learning" :)

Sounds good.

Please provide version 3.  And given that, I'll add one more
suggestion.

You don't provide the *reason* for making this change in your
description.  You say that fsleep() does roughly the same thing
as the existing code.  But... why make the change?

The answer is roughly that fsleep() is a common or "standard"
function, and it's better to use those where available.  I can
think of at least three reasons:
- It's better to use a well-known common function where available,
   because reviewers will already be familiar with what it does
- A common function might get optimizations and improvements that
   your code would otherwise not benefit from
- It might (slightly) reduce code size

I am not suggesting you include all that, but you should
understand it.  My point is that you should be clear on
the reason for the suggested change in your patch header.

Even something like:
   Replace this block of code with a simple call to fsleep(),
   which does the same thing.
is enough to explain *why*.

Also, before sending *any* patch for review, please *always*
re-run checkpatch.pl so it can find trivial problems for you.

					-Alex

> 
> thanks.
> 
> greg k-h

