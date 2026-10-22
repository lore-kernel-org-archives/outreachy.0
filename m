Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.161.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792697373;
	b=pMvfcGffoDGPV2fVtsgGG4JAVLpvaStakHaX8p0Vx3ppI9Fu4k3EWk8tAsSELY8YJL3r
	 jqjufsTWYfzqoNzGJpTRoN3D5EGxQDvBW0MJqp+DUKJRFyLuSuKncoSHbIjEQtABV+M7O
	 830GClByHJm2DTGwIKVUy16gpQwTl78e9HOaY4U/UbtGsZI3wns95HzupiVg1ARGUMS4R
	 5JZw2VE5WKlHG/ipcd+JsTv8ZNvqZdYF5MaCbRy4H2asxm5VyoGfjbhEmnpWh6x7FZguN
	 YLvvde6mwUIG5o/xFgqLfxb1BsWAPSJ0Tkur2vmdhs5nOdiM6LIq88dy2qpllPmCCbg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792697373;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=dtIDxskl9CL4u3HCClPUlqLnyLEWtYjRFUBbhD8dpoA=;
	b=v0gB6oighZRFzSQLJ6vSdXB4ogt2xW+EGcmiYdG/hG+BQ2sao4dB3jEDsoMjF7xbGN+m
	 QDWPSau11UQpk80/SZwqWwE3qGJ1FkfBQxrFtq0JSIXfVxLFo0rDiWPyRb3obE+LH8RTg
	 VJTod++juC6pugdp9b9iscMApZVyen5P1asDJOxNPpIzG2JuAvV8IIXfhyHYo+HUFvf9m
	 nm0YQAbvbnqbchRGgJd2I8FPkovXIUqpvheilAZtiCPzX6JyYgWR/IDYHL0QmoaLopcab
	 TKWiv6OUTCI/lPk5Yxlwyb0587lpzZIreo0w0M4ewOF/iCOU93KrqDBa7KlUeocBmKQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=riscstar.com;
	spf=pass smtp.mailfrom=riscstar.com;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=KP9t27Jk;
	arc=none smtp.remote-ip=209.85.161.50
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C04606A31A
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 19:29:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B7C04606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=KP9t27Jk
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-6b19e291cc6so115383eaf.2
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 12:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1792697371; x=1793302171; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dtIDxskl9CL4u3HCClPUlqLnyLEWtYjRFUBbhD8dpoA=;
        b=KP9t27JkAG99PBb2YVhqZ28WkcJX0oIwPkDG+rIgi+K5uSs6m+v8u42qmwrQ9temnw
         lx6jjbVpntShY8ibt9k5q933B+BixD4mqFmTBX5n1MVVCtrHd5b/nEmzCtYlBbSGQDI/
         B4BaLyTvhIyVMGmhrGR6v5D4YwCUy7uZCE7HUpzDi9SKd+38c9wbBUyakXOljsesUT0Y
         B/ZkPSQxDbMuc3EOUiDXexGvAJfAL/Dz0UrXx546ur7ZJSkLNAZGZ6DXHSUFx50rs/gL
         BnO58FtygIQT10ZlQB/yCf3V84Z1hpWcTT81RRGtqkAcH2YdvuMLvsrNUCBqJo9TqmaZ
         7YEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792697371; x=1793302171;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dtIDxskl9CL4u3HCClPUlqLnyLEWtYjRFUBbhD8dpoA=;
        b=pP3/WCoAPXJxu4pUPakXrg5vrRmopeyMyFVbXB2z8N3pXrkB+bpMxemtsgw4ljAfB8
         /oDbSyvvdGPFLi+DaB3qEl7Y/rFRY7ODXoFbtEg8SfllZ/+Q2BaetRm0RJjcYy8n0093
         mlwOedQwWPJNnA4y6mXcfo3/zEVyU8r1BWMwE8Lq966bFB4F1WGG+ZR6RHaePM7216Qs
         Gf2wMbSL6FYDekWJ0pffjN7AwenxG9Av+WCHxjfPQBOPmwNhRb87EreD6ykEEBj3oW9+
         8hDIrQo819M2gB6zuJnW0zkLdggkd1kvfIB0PFvY4U34v3yP1DngcldwYKLEPiXef3x9
         rWCQ==
X-Forwarded-Encrypted: i=1; AKwUvBxeKTmlxVwYsKOwVTC3i88LgXSynhT41QwB6uQOE7gSKT1XcJANoPh9tLo+0BSSvB3fW1W57/+Nt0c=@lists.linux.dev
X-Gm-Message-State: AFq9FYKX1aMlnrXUvVdhIAtIb+1uEYLpiLMZDveOTIvCBIiB02Aoi95D
	qlu2tirB1/r1higAM4xP81DEAr2DNkZ1KI4bQZStRmj9d6FUt2kPutG6OzQn/h8TeEM=
X-Gm-Gg: AYBFou0FasKCb0QzAsN89UbET4u25laNTvdBV6j7ghPTIAigGM2PaTZfWZdJg/Vh+Xe
	O1a1fWHjgejrvkAyfOkVWzLRuySSW7SXLguVGi3IvEYmC92yuAdLQ+h/pT8UA26QF11rLWQ09ih
	cIItGVI+OkHnqTqZJtSxf9ug8fQVY3G0V2Ty5eAGYaRrhNQsZtjrmy29IzWN/WbLq64ycuWwXSg
	sz2lEh+mG5xNmZ8E47TmYiT/1sa4oZC/PvUP3gL4MTFm69iwwo89r1H/3CWFLsV5ivOgYp5yWcv
	Te8TzjFVPx2xyCsuWwFnTqRyFbDbwTGhptIzLXGBHOsKVrtvzAiUTrtUy+I9kr7Oy0sPwRx30/z
	2BBho5Byh9NanSfQfWas2pAoOczblwG7bxfzvsJcZSrMfcp22Hy6QeGiKNqb3wSVRjwmm5hzffk
	jLkcXCJC+9e0UPSvJ/DM4k+p32XPtVqZHdoL5TnfUJm1K9bqygi7xpDCdL7RHB8kOalVxudkHhx
	h0RjWwjqPMwrR5zhvM1SUhsKCIZp3ZKo9EYPxRDMi/eoewTv4bTlXjR
X-Received: by 2002:a05:6820:5611:b0:6f6:b13f:5d2d with SMTP id 006d021491bc7-70b8884d3acmr221772eaf.12.1792697371436;
        Thu, 22 Oct 2026 12:29:31 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-70b8b266f0bsm19815eaf.6.2026.10.22.12.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 12:29:31 -0700 (PDT)
Message-ID: <c482704b-903e-413d-ba7b-5bf31c0a6104@riscstar.com>
Date: Thu, 22 Oct 2026 14:29:29 -0500
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
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Cc: greybus-dev@lists.linaro.org, outreachy@lists.linux.dev,
 pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20261022110238.38824-1-pavankumaryalagada@gmail.com>
 <6d683673-39de-4986-a593-68a5a495e764@riscstar.com> <atpggBthwjZIFwXR@user>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <atpggBthwjZIFwXR@user>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/26 2:14 PM, Yalagada Pavan Kumar wrote:
> On Thu, Oct 22, 2026 at 08:28:23AM -0500, Alex Elder wrote:
>> On 10/22/26 6:02 AM, pavankumaryalagada@gmail.com wrote:
>>> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>>>
>>> In the loopback function, usleep_range() is used for short delays
>>> and msleep() for longer delays. This requires choosing the delay
>>> function based on the requested time and converting microseconds
>>> to milliseconds when using msleep().
>>>
>>> Replace both functions with fsleep(), which selects a suitable
>>> delay method based on the requested time. This avoids the need
>>> to choose the delay function and convert the time manually.
>>>
>>> Suggested-by: Alex Elder <elder@riscstar.com>
>>> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>>
>> Your description above is pretty good, but I agree with
>> Johan's comment.  In fact, you should think about and
>> understand exactly how that behavior changes with the
>> switch to using fsleep().
>> - When would the delay be different from before?
>> - When it differs--by how much does it differ?

FYI, I was not really looking for a response here
(other than you sending a new version of the patch
that provides some additional information).  I was
simply suggesting the way you should approach
making a change like this.

> The current code uses usleep_range() for delays below 20
> milliseconds and msleep() for longer delays. When using
> msleep(), it converts microseconds to milliseconds by
> rounding down, which can make the delay shorter than
> requested.
> 
> For example, a requested delay of 20,500 microseconds
> becomes msleep(20), which requests a 20 millisecond
> sleep.
> 
> With fsleep(), the kernel selects the delay method
> based on the requested time. For a 1000 microsecond
> delay, the current code allows 100 microseconds of
> extra time, while fsleep() allows up to 250 microseconds.

Well it depends on the value of HZ, but I think it's
typically 1000.

>> - Is this amount significant?
>> And the third question gets at exactly what Johan was
>> saying should be included in the patch description.
>>
>> We want to know not just the mechanics of the change,
>> but at a higher level, what is its effect?
> 
> The change may affect the time between loopback operations
> and the reported performance. The code does not seem to
> need an exact delay, so i think using fsleep() is reasonable.
> However, testing is needed to confirm its actual effect.

This is technically right, but you have already shown
a little intuition about what the change does.  And
my point was that you should approach making changes
to the code with this kind of analysis in mind.

Simple fixups like this are great, but ideally they
should produce *zero* change in behavior.  In this
particular case, there *is* a change, and you should
make sure you understand it, and as Johan suggested,
make a comment on it.

> I do not have Greybus hardware to test the driver at runtime,
> so my assessment is based on reviewing the code and fsleep()
> implementation.
> 
> If possible, could you please check the runtime behavior or
> and let me know if you find any issues with this change?

I am not set up to do any testing like this either.
I don't think you strictly need to test this (other
than doing compile testing and things like checkpatch).
I'm just trying to suggest good practice for you to
follow when proposing changes.

					-Alex>
> Thanks,
> Pavan
> 
>>
>> You don't need to provide a super high level of detail
>> in this particular change, but you should demonstrate
>> somehow that you've thought about these things.
>>
>> Please submit a new version of the patch and reword
>> the description a bit to concisely capture why it
>> makes sense to make the change, and why you believe
>> that the change in behavior is likely harmless.
>>
>> Thanks.
>>
>> 					-Alex
>>
>>> ---
>>>    drivers/staging/greybus/loopback.c | 8 ++------
>>>    1 file changed, 2 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
>>> index efc69c10cffe..2fe845eaef29 100644
>>> --- a/drivers/staging/greybus/loopback.c
>>> +++ b/drivers/staging/greybus/loopback.c
>>> @@ -898,12 +898,8 @@ static int gb_loopback_fn(void *data)
>>>    		gb->send_count++;
>>>    		mutex_unlock(&gb->mutex);
>>> -		if (us_wait) {
>>> -			if (us_wait < 20000)
>>> -				usleep_range(us_wait, us_wait + 100);
>>> -			else
>>> -				msleep(us_wait / 1000);
>>> -		}
>>> +		if (us_wait)
>>> +			fsleep(us_wait);
>>>    	}
>>>    	gb_pm_runtime_put_autosuspend(bundle);
>>

