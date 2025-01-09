Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA41621C179
	for <outreachy@lists.linux.dev>; Thu,  9 Jan 2025 14:54:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736434480; cv=none; b=d6PStT+khiqPiwKccWswp5ZrJbs2fG3Q8wniCk/zr8CHRM+2ngP+n8h5S5vhwWyoUBmgCSXCqQahmo5uCiCz9KJvL2wP2eHUSN1X3KcsdL/2iAp/Am7bvaeYYzHz6wUwc0UzeXQO6+UdjoGvmw/P7duN2r6p1gddlW4hq4hgMnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736434480; c=relaxed/simple;
	bh=wOsesOoGMFQwvrii1vVjREg0VcRWtZbQQYagw76DDMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I3MRi3QSxo9SfKV2FHo8Dl+C8FuUK9Gfnm0OlwUzJGfx+8ZN+3TEza40OaLH4hKM1OgH9aLgP932ZJWMY5ym4nuwPzIsKkVE2QmplVsApMUTus3f3NaiaQtVUD8GtJpPnk9xtnBHoerQm1/ba5ggsbqwGJj4p3P9RzVCqW9wvqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=UPvwU8NZ; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="UPvwU8NZ"
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5f4cc48ab37so333140eaf.1
        for <outreachy@lists.linux.dev>; Thu, 09 Jan 2025 06:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1736434476; x=1737039276; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5VULE0UjHIqRlagW/OYJxPj5F0JvqA3RxB6BIakMShg=;
        b=UPvwU8NZu+H1me/9nIfBc3kiaL3GNwO31E/m5vwExgndLTYYvzPQKI/RZtgfNiJDB2
         VMJlwJNgkx2UVgPfTlfq7iXyHvFvdRgI8J5662p9rTgsBKVD/z6wt1BR3d13fx8cOdB2
         kXZJFMqduKt2CdwP3k+gb2N2FaYhVswIIQNx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736434476; x=1737039276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5VULE0UjHIqRlagW/OYJxPj5F0JvqA3RxB6BIakMShg=;
        b=cqdzzP4CLtYVKFBOZoVElN9p7XxL5IYmh+M2eDAHtkcXHoEKCWerkJw8YfnH8zIGDg
         l52xKVXd5Xsr6Req/sC222M7kzxw0wyDe3dSnMz2nFqosvycp+QR+NlsWdgZDAelIGFj
         ehc3c8wYr0dY5TBwlcJsUb5gWx4EFDY+ASy6vB6m6xAEH/7ZgRJA51UFI1VzwRFwOwTr
         Y1+SbIdqcK8FD5bKVMVNRiSc8hQGfF9yGxfl1JklokQK85V1ysF3HCAoXNby9Lr9TIFT
         o0ucqPql3s+/L73u/Z2YfAKQy1/cYEZLb3eMHlwh0X1ttbF/RU8t0CVjVGlJtccJKAxl
         L1xg==
X-Forwarded-Encrypted: i=1; AJvYcCWjT/oTJTyYBY3ymjuTKz4A0vaohHe+y8dwBV1wDh2/owOvrwuAqZ1OBdSRZm4TPJAOCv6FuVKjFTY=@lists.linux.dev
X-Gm-Message-State: AOJu0Yyx4w0isowT3OnWVAuRRQToy4C0a3szQlLeO1peVXTv7llTBZh9
	ObnRhXKuPZe2sSZ6UFo97FZKeu2uGLDyYQXevF3/ko4FW0oWnBCvwVvKM7Qm9g==
X-Gm-Gg: ASbGncuDXdUTg7ATVq0NWo525rWmUpFgNQOLubxQiB80+I2en3MJes3xwFIqjg8/WYx
	r9r+yBsAtqE1G49Jw2kbGBTNJ1qOVZlHuW9oaBRxe/OECdfrHEq7+9G+VLRc8YM73QInLPfQXxw
	1QHUq0bZkXc22RLWzIuaVY2F7RgzpErYFKPijnRroeXxP/tLy/81c0nUbi/h+jfeasBmk+DQYh2
	Tx9YX/vrMvW4pspgarlGr/Rpv+flnE1WYj8Tn60cIWVxbwXMhgxlD/wKeYpQJMDqJZve3IfbEzO
	l/M+B7E1Yp6rCuc=
X-Google-Smtp-Source: AGHT+IGX2grguxXy8gLo4Q2N5Rw0zTtUivQW6kIzq7+qZBHhu/OTKNSPcrnL7pgVNEyxcTF+JDsc/Q==
X-Received: by 2002:a05:6870:b9c7:b0:29e:69d9:8834 with SMTP id 586e51a60fabf-2aa0609b208mr3769848fac.0.1736434474369;
        Thu, 09 Jan 2025 06:54:34 -0800 (PST)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.googlemail.com with ESMTPSA id 586e51a60fabf-2ad8059e39esm350832fac.31.2025.01.09.06.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:54:33 -0800 (PST)
Message-ID: <46653b18-42b1-4511-afad-4f5a15e2fceb@ieee.org>
Date: Thu, 9 Jan 2025 08:54:30 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: remove unnecessary parentheses
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Will Walsh <iron.will.walsh@gmail.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
References: <20250109003624.37323-1-iron.will.walsh@gmail.com>
 <ed70a5d5-8e85-495b-9e56-eae472ba3046@ieee.org>
 <dcf6ec9f-39f2-4729-9250-14eb4d8d2adb@stanley.mountain>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <dcf6ec9f-39f2-4729-9250-14eb4d8d2adb@stanley.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/9/25 1:45 AM, Dan Carpenter wrote:
> On Wed, Jan 08, 2025 at 08:56:50PM -0600, Alex Elder wrote:
>> On 1/8/25 6:36 PM, Will Walsh wrote:
>>> Unnecessary parentheses in boolean comparisons make it harder to read.
>>>
>>> Removed the extra parentheses on line 305 for code readability.
>>>
>>> Signed-off-by: Will Walsh <iron.will.walsh@gmail.com>
>>
>> I'm not sure this makes a big difference in readability but I
>> personally avoid extra parentheses unless adding them makes a
>> compiler warning go away.
> 
> It's not a compiler warning, it checkpatch.

I meant compiler "-Wparentheses" warnings, like "suggest
parentheses around ‘+’ inside ‘<<’".

But anyway, I have no problem with this being rejected,
it doesn't really add value, and to some, it subtracts.

					-Alex

> 
> regards,
> dan carpenter
> 

