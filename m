Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749F4FC0E
	for <outreachy@lists.linux.dev>; Wed, 16 Apr 2025 13:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744810988; cv=none; b=UDFKpjfgV2iBigSjynMjQW2OeSKSBhjljStGOw6x31XNJIXWmue9q6yC+oQQzMhOyO1+8uA2WeJ42ZmNsUfvRL1ZzgqDQwM4ACUEdF4LJYwbE5JPBB1xlyeFF/vI0jYAdadxo91Pq1Y8Q2YNDdQfd/XwhqtKGDsGf78de3aCyus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744810988; c=relaxed/simple;
	bh=SgNW/vvh5b61ht92JsADJZKSKikWVs7QhnzVzAyVaA4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YN1vFHAlTrnvM7tTuZx5MgOvmgQ26vRVHYBwhxJ7x9H8POBgo4j2t0TOb/NokH+w8jz67n9VHTJj6Z647cfYfaJo1uwtaUTqbielrMUzrIfIrQrezKQ1k/wfEg0sXXdSz6Kawb9pwko5oU1i83gSOAU/aaLGjmZQPkSRYqOCAkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nVOkcUHz; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nVOkcUHz"
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2ff85fec403so726448a91.1
        for <outreachy@lists.linux.dev>; Wed, 16 Apr 2025 06:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744810987; x=1745415787; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9FMmsTxqI6R4LS4OuXpWt6I4p2kOrGqbZN4wMpdyEGk=;
        b=nVOkcUHzecFhavfjfto3wyovryp48XV0cQPg46eN3hiJTZpgwiDCZif27mjv5AYxGf
         y0crGIX32eUd2/zCZrUntHDQ1I5dNFdfa92jZeLZrjFBjCXBB2V5KHLsfplya2tgQwfP
         KALs+1j4UrgCYswyWBslq0r3vg18U9Cs1sFNGyXr4XAif5JvfMu0VqSq13Fgp/sH+xRR
         RU+tTp6nufkSlFJzAgVGjrjZbjlwSaOx9yKyRfdAiqmWrYj2euZJIP2IChRTg8c2t4Hi
         8UzaTX7Jji+AviDcPxXX2uxuTcm8aR3AsXHi5q2xoBnqIgn55ljjwn+RLwsoM0UVnpc+
         BBjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744810987; x=1745415787;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9FMmsTxqI6R4LS4OuXpWt6I4p2kOrGqbZN4wMpdyEGk=;
        b=SEclqf1H2vAwqRGyhx4jvTHEudd/hYiCVbZiph3aCY9vVP3bz6d4wrf+wYOGnPjpgd
         C9+R5crovd6OoNxdfeSSvl7jE1h79BuA8XeVYn51XwLbY5q2wmho6lJsfeMdNZ6YUgZa
         382d33H0eoewJgRJglpZ13ABRWXXG8cuOijDMLZH5LjCNl7ftqET0/rhE87PPUwd0vWe
         F4zvD3sqR0hUmXVintXsXom8iEXmVjJZu4/L6fWIMf9P0RvPAoCV/OrDY/tpzmcH1sOq
         JDk1oJ9fDUwgRg6LlJ9491AjAvxphV4l4aDDz7/8+Kb8MvAjOuoYtBhw8SefvMwb9aFC
         TnEA==
X-Forwarded-Encrypted: i=1; AJvYcCUcuCKcd4LBifs/yVTJZBMHZYwXwW9SXXig5gZjZxGYkaDHsQSIHebVGfRZNRGOq87juzxwqUyB15k=@lists.linux.dev
X-Gm-Message-State: AOJu0YwS4LzWSUl/5Mgp0/pTXGt3TkmKMCDqfb52LOaftmorqO2OG/el
	qiGPJUTSdv0qqWKP1eYBej+BDy5PeohMVGKwhwzcIaXu8F+fW34f
X-Gm-Gg: ASbGncvoI8JtEEyBVphPnjhf2onl7gTWU+Em6BIQB3NetZn31rGiAG6Z0DHc3knd+uw
	Yk/sF+hMDJVFZy+UsHTvAT44eOI8MujhIMlT9yXw9lZ0AAaFUf8t+3pMPT8n9W3I62pblGQ9DQl
	VG6yXbFvJlJZxz62kl0hmmeaivn+uZ5KscJXCheIG+R1NzYj1xLNULTUatSjWHdzsuZWzbkn4fW
	O4zo+RoEQ/3sjR1CqbC9mvQbsjzfkXsyQxMawvXr1Tg+qBo0wg7wpWVx+qnssQcr0NdDSg5D1iZ
	wBrCvRx5QpTTa5euP8h7MTw5tgv/IYa22OPOqQttXXjEwUJ8dNwx85EyMNRi8w==
X-Google-Smtp-Source: AGHT+IGAF57xlY7daKKfqRRtAHwkl8kenWBXpKkqn7XNIBPG/hMwAVINPlWTUm60iHdirp3RHncuuQ==
X-Received: by 2002:a17:90b:520d:b0:2ff:4a8d:74f9 with SMTP id 98e67ed59e1d1-308642a329amr2862011a91.10.1744810986689;
        Wed, 16 Apr 2025 06:43:06 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-308613b370esm1720823a91.34.2025.04.16.06.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 06:43:06 -0700 (PDT)
Message-ID: <490ab216-982e-4707-abe4-a5b8d0444458@gmail.com>
Date: Wed, 16 Apr 2025 19:13:02 +0530
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [FIRST-PATCH] staging : greybus : gb-beagleplay.c : fixing the
 checks as first-patch
To: rujra <braker.noob.kernel@gmail.com>, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 outreachy@lists.linux.dev
Cc: linux-kernel@vger.kernel.org
References: <CAG+54DbvpWHyX8+ucEQpg2B6rNTJP11CRpYxcYVrKpKehzrK-A@mail.gmail.com>
Content-Language: en-US
From: Ayush Singh <ayushdevel1325@gmail.com>
In-Reply-To: <CAG+54DbvpWHyX8+ucEQpg2B6rNTJP11CRpYxcYVrKpKehzrK-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/16/25 17:47, rujra wrote:

> added comments on spinlocks for producer-consumer model, rearranged the
> lines on function calls where it should not end with "(" this bracket,
> also removed white-spaces and aligned the arguments of function calls.

Are these manual adjustments, or using clang-format?

I do not care about formatting being "readable". As long as it can be 
done by a tool like clang-format, that's fine with me.

Of course if you are fixing some checkpatch error, that is okay, but if 
now, please avoid formatting changes.

The comments are fine. Although you probably want to add a space between 
`//` and the sentence start.


>
> Signed-off-by: Rujra Bhatt <braker.noob.kernel@gmail.com>
>
>> 8------------------------------------------------------8<
>   drivers/greybus/gb-beagleplay.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/greybus/gb-beagleplay.c b/drivers/greybus/gb-beagleplay.c
> index 473ac3f2d382..fa1c3a40dd0b 100644
> --- a/drivers/greybus/gb-beagleplay.c
> +++ b/drivers/greybus/gb-beagleplay.c
> @@ -73,7 +73,9 @@ struct gb_beagleplay {
>          struct gb_host_device *gb_hd;
>
>          struct work_struct tx_work;
> +       //used to ensure that only one producer can access the shared
> resource at a time.
>          spinlock_t tx_producer_lock;
> +       //used to ensure that only one consumer can access the shared
> resource at a time.
>          spinlock_t tx_consumer_lock;
>          struct circ_buf tx_circ_buf;
>          u16 tx_crc;
> @@ -642,8 +644,8 @@ static int cc1352_bootloader_wait_for_ack(struct
> gb_beagleplay *bg)
>   {
>          int ret;
>
> -       ret = wait_for_completion_timeout(
> -               &bg->fwl_ack_com, msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
> +       ret = wait_for_completion_timeout(&bg->fwl_ack_com,
> +
> msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
>          if (ret < 0)
>                  return dev_err_probe(&bg->sd->dev, ret,
>                                       "Failed to acquire ack semaphore");
> @@ -680,9 +682,8 @@ static int cc1352_bootloader_get_status(struct
> gb_beagleplay *bg)
>          if (ret < 0)
>                  return ret;
>
> -       ret = wait_for_completion_timeout(
> -               &bg->fwl_cmd_response_com,
> -               msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
> +       ret = wait_for_completion_timeout(&bg->fwl_cmd_response_com,
> +
> msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
>          if (ret < 0)
>                  return dev_err_probe(&bg->sd->dev, ret,
>                                       "Failed to acquire last status semaphore");
> @@ -765,9 +766,8 @@ static int cc1352_bootloader_crc32(struct
> gb_beagleplay *bg, u32 *crc32)
>          if (ret < 0)
>                  return ret;
>
> -       ret = wait_for_completion_timeout(
> -               &bg->fwl_cmd_response_com,
> -               msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
> +       ret = wait_for_completion_timeout(&bg->fwl_cmd_response_com,
> +
> msecs_to_jiffies(CC1352_BOOTLOADER_TIMEOUT));
>          if (ret < 0)
>                  return dev_err_probe(&bg->sd->dev, ret,
>                                       "Failed to acquire last status semaphore");
> --
> 2.43.0


Best Regards,

Ayush Singh

