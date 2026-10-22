Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.160.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792676495;
	b=COYQk6GtE6sshtldDCA8G6a1l+esvRfGs9GY5P/e0B9Q6DEOQDTXg6TkZK0pbuNIVxGC
	 YLhQqraqiNJWmaf3fAaJ61BKUIHx7ir8Gb1n5jjKn7RkdydrgAFbg84ZLSlCyJ231uMXP
	 7sjzOQQRZJ5j/OK1PwvWs8a55LJ33apfM4FJwMEnnUGqK7vXkrasjjVkKvn0pftoEa1LE
	 a1AqBhhVNKTobeNkbTqfqhPjwtUvfWwr3fqj/tZogaqAFn8pQf72WuFIAFNTpW2bpM6t7
	 98ZFefWl49aOulF5Wkn6czohk/I1LCRflig2eFZS6CdTa/yneOOSALLlgxfszBeNFFw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792676495;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=gehmgppZeEU7bmBwwBNEsm7rSVlUxWbD/W3/fn7p9JQ=;
	b=Vs6cFw8uqBnQa0GGsbWJaTOjkx7456NTRB7kKxpO0L/lAY+9Js9+oOxevpBSKrxyTPoM
	 9ejvkc2addBEHTJHD00zW2v8u31v0xmATPp+Q65KJD90zPhSAZZAM5xtERO8lADJ1FqXv
	 MemR98gZTLtxdyRSgqDl/BkMzyaIqWp0+i5q8esDzpr21Uv3podaFMJw6D/OlNHxew56z
	 RDUusUfwHDzeudj/TPsK5pxmnsCUV55WmAJ2vNtPw8o9VKNzpbM7Cw9n6pnp/z2bUvXEx
	 cdYjVBLYAmxJrUgpomXSYG/oE8O/5pJzyt7C+xkJu/Q86SOXUsahEr74zJH0puJEcGQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=ieee.org;
	spf=pass smtp.mailfrom=ieee.org;
	dkim=pass header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=K1fju1dH;
	arc=none smtp.remote-ip=209.85.160.53
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C99606A31A
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 13:41:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 20C99606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=ieee.org header.i=@ieee.org header.a=rsa-sha256 header.s=google header.b=K1fju1dH
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-49ddddefadbso821578fac.1
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 06:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792676492; x=1793281292; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gehmgppZeEU7bmBwwBNEsm7rSVlUxWbD/W3/fn7p9JQ=;
        b=K1fju1dHpDUGfQ3cdoWESOhbcI9wu643IqdWzMa4WTpu7ESs445vKgjQmLJDWGq9BQ
         BUhvJaDb2bSi3p+10C5A0AOAGSB7r+zF6iWOJ19EOshJq+7HbiPSa2mjzr420XnChLBn
         KxsfBKj8Go617skuFLXKVqSF9XbkhtEPZc8QA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792676492; x=1793281292;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gehmgppZeEU7bmBwwBNEsm7rSVlUxWbD/W3/fn7p9JQ=;
        b=EGVW2iWnMN6A3MFbRxGec7RmkKDSfHfXYis4SKyQbexwFM41UC3cF8rVas4lP1UQ0O
         U3Mp4mvKy+FseSAzmnXWQrIWhdOfJsKUg5FsvN5WcfLUjeu5XrTu1biZM0Kj49fEX5hg
         LV6wPHTW9M5NPWipPXniYHGUd9YivGPL20xAZpJnM3BjY3wD4UMHf+/UfBvHZMRLW+QQ
         lzSY8bv0TZQUIZ5oANt6+1gHN8R3fLs1mab2cZnARXuKgY7R3OC8umLgEpUDStOx1pAe
         LqSKKHsr1tkCGVPWHks4fJSDFTcpAYF3xO4FOQWIF/kc1R6fFyjNwmNYy02bJJDImDak
         mnJg==
X-Forwarded-Encrypted: i=1; AKwUvBwx2FIMqslliaPlsm25nvf27OonTRrcsSa0wW/zuClWumxtTKVaZfsqScifGEGKqPxa3Zk5QM09ZIU=@lists.linux.dev
X-Gm-Message-State: AFq9FYLxEwbKiuK2YDtRcmU3zyLtZ42FGu8DrWeJ7TJ1sO4AM5D9yhC6
	6AsReJe1Dj4Z/kAYg0m/RGh1eH3mFongIVXt6ESSbmRnt5pflogu5d/zC3E0uLuCWw==
X-Gm-Gg: AYBFou2J4u+WMJQLF5oOO/MJv75YrfZPVbWaqEo1Z+hVqQ6pweU6LRGCWl2AcKlhHGW
	xB0affuolH7QrEoOK8UcWLayVRFOiiDCxrKI4fIQO3tRJo6WyqQJ3DEYfd3myqKv1vhNkWQfs40
	jy9whtzRA51u4XDfX27sMkuV6L7XGWLWvdd45SMrfIS+dppL3OGcO8JLYbns9xjTW06NBb35Br5
	XHp4HTZSClZzl3PkQmyYCAaexfg3Q6a9UHX+1/cu7JebaYNT4UVW9ntp1QsVMb0y5cyPS58IzAg
	aq3+nUl/W6ACJ7MTjLP5D8edx9fOpDLxeaVa8Kp+tuGS7ucHj4kmgk26dzOsrMJUrEEFHNxCnSk
	QgEoNo9P8XGTGEZMRYcYcGTgkyaS0NcdWsTi+6e0ntjDtwlpwKgGOqpseGCIbJfS1GZqCfpeAZK
	qHPv+AzG6zSeKUZ4h6D3ylexKxdPF+Gt6q3sihJmNAHmRmEB6JcCkWWqLKXBF8sOY5vXzNzl8ys
	qoyZOVguKR8owmEgR6EzWOlY74LyeztpYPmR1Hhd/1bUhke3Qc=
X-Received: by 2002:a05:6870:9a8f:b0:4a2:4dcb:fa75 with SMTP id 586e51a60fabf-4a7dbf5c94cmr3318921fac.2.1792676491930;
        Thu, 22 Oct 2026 06:41:31 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id 586e51a60fabf-4a7d5eb8fc0sm4501140fac.1.2026.10.22.06.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 06:41:31 -0700 (PDT)
Message-ID: <4c393ce3-41ae-4f4e-9af0-4eb7cf1c425a@ieee.org>
Date: Thu, 22 Oct 2026 08:41:29 -0500
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
To: Julia Lawall <julia.lawall@inria.fr>
Cc: pavankumaryalagada@gmail.com, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, outreachy@lists.linux.dev, johan@kernel.org,
 elder@kernel.org, gregkh@linuxfoundation.org, vaibhav.sr@gmail.com,
 mgreer@animalcreek.com, vireshk@kernel.org, rmfrfs@gmail.com,
 dtwlin@gmail.com, linux-kernel@vger.kernel.org
References: <20261021163437.280930-1-pavankumaryalagada@gmail.com>
 <3433f922-bffb-4f1c-8e06-a7a87f5dbcaf@ieee.org>
 <d0a4a257-1ec9-7096-11db-5ff4b3244bac@inria.fr>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <d0a4a257-1ec9-7096-11db-5ff4b3244bac@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/26 8:35 AM, Julia Lawall wrote:
> Does anyone on the greybus list know anything about this person:
> 
> Bryan O'Donoghue <pure.logic@nexus-software.ie>
> 
> The email address is not valid, which is somewhat tiresome...

Bryan was on the Greybus kernel team.  Remove that address from
the list.  I'll let him know that e-mail is bouncing so he can
add himself back.

					-Alex

> 
> julia
> 
> 
> 
> On Thu, 22 Oct 2026, Alex Elder wrote:
> 
>> On 10/21/26 11:34 AM, pavankumaryalagada@gmail.com wrote:
>>> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>>>
>>> Unsigned variables are printed using %d.
>>> Replace them with %u to match their types.
>>>
>>> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>>
>> I have reviewed every one of these and they look good.  Quite a few
>> of them--because the size of the value being formatted is less than
>> 32 bits--would print correctly no matter what their value.  But I
>> think it at least does no harm to convert the format specifier to
>> unsigned in all of these cases.
>>
>> I have highlighted below an existing bug that should be fixed.  It
>> gives an example of something to look for when you do this sort of
>> activity.  Please arrange to get that bug fixed.
>>
>> I also pointed out one other observation for you to think about.
>>
>> Thanks for sending this.  I didn't check to find any other instances
>> you might have missed, but you seem to have found quite a few.
>>
>> Reviewed-by: Alex Elder <elder@riscstar.com>
>>
>>> ---
>>>    drivers/staging/greybus/audio_codec.c    | 20 ++++++++--------
>>>    drivers/staging/greybus/audio_topology.c | 30 ++++++++++++------------
>>>    drivers/staging/greybus/bootrom.c        |  2 +-
>>>    drivers/staging/greybus/fw-download.c    |  2 +-
>>>    drivers/staging/greybus/fw-management.c  |  2 +-
>>>    drivers/staging/greybus/gpio.c           |  2 +-
>>>    drivers/staging/greybus/light.c          |  2 +-
>>>    drivers/staging/greybus/log.c            |  4 ++--
>>>    drivers/staging/greybus/loopback.c       |  4 ++--
>>>    drivers/staging/greybus/power_supply.c   |  2 +-
>>>    drivers/staging/greybus/raw.c            |  2 +-
>>>    drivers/staging/greybus/sdio.c           |  4 ++--
>>>    drivers/staging/greybus/spilib.c         |  2 +-
>>>    drivers/staging/greybus/uart.c           |  4 ++--
>>>    14 files changed, 41 insertions(+), 41 deletions(-)
>>>
>>
>> . . .
>>
>>> diff --git a/drivers/staging/greybus/bootrom.c
>>> b/drivers/staging/greybus/bootrom.c
>>> index 83921d90c322..fb1fbd3f7b99 100644
>>> --- a/drivers/staging/greybus/bootrom.c
>>> +++ b/drivers/staging/greybus/bootrom.c
>>> @@ -222,7 +222,7 @@ static int gb_bootrom_firmware_size_request(struct
>>> gb_operation *op)
>>>    	size_response = op->response->payload;
>>>    	size_response->size = cpu_to_le32(bootrom->fw->size);
>>>    -	dev_dbg(dev, "%s: firmware size %d bytes\n",
>>> +	dev_dbg(dev, "%s: firmware size %u bytes\n",
>>>    		__func__, size_response->size);
>>
>> This line actually contains an error (and it was there before).
>>
>> The type of gb_bootrom_firmware_size_response->size is __le32.
>> So the value being formatted needs to be converted into CPU
>> byte order before being used.  That could be done this way:
>> 	le32_to_cpu(size_response->size)
>> or just use this, which is known from a few lines above to
>> have the proper value and byte order:
>> 	bootrom->fw->size
>>
>> Please add this to your list of things to fix, and submit it
>> as a separate patch.  This would be a bug fix, which would
>> also give you a little bit of a new experience.
>>
>>>      unlock:
>>
>> . . .
>>
>>> diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
>>> index 4f1b3f4db404..2314496a858a 100644
>>> --- a/drivers/staging/greybus/raw.c
>>> +++ b/drivers/staging/greybus/raw.c
>>> @@ -112,7 +112,7 @@ static int gb_raw_request_handler(struct gb_operation
>>> *op)
>>>    	receive = op->request->payload;
>>>    	len = le32_to_cpu(receive->len);
>>>    	if (len != (int)(op->request->payload_size - sizeof(__le32))) {
>>> -		dev_err(dev, "raw receive request wrong size %d vs %d\n", len,
>>> +		dev_err(dev, "raw receive request wrong size %u vs %d\n", len,
>>>    			(int)(op->request->payload_size - sizeof(__le32)));
>>
>> The above size calculation was done somewhere else without the
>> (int) cast, and the format specifier was %zu in that case.
>> I don't think this needs to be changed necessarily, but it's
>> something inconsistent across the Greybus code.  Consistency
>> helps readability and maintainability.
>>   >   		return -EINVAL;
>>>    	}
>>
>> . . .
>>
>>

