Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE562571B1
	for <outreachy@lists.linux.dev>; Tue, 25 Mar 2025 12:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742904906; cv=none; b=N6fHPzaBDLU02hrtvP4BK9dBJaP46XiA75LX64f0YqTcIdVnrEO5vkUgcilJK2oTbS4Kcq6t0yX0pJS2SlzaxI5kXhex98BS68cm9YLf/fAsQiCM6e6/1h8dolYciHL++1ikR0QZIkuw1vTSNvnxGZjIL6IHWATLE43rh6gyzZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742904906; c=relaxed/simple;
	bh=UKbfjZ5E4QscHPOYkQaEa00cn5sNfmffGihktUEZ+l4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uGj8EmR8uHYwCJGFQsJ5BFUbz3QRdmsoklRnaMIa0IE5NP73v5N+obNeizrEj3W/VF5A3pdH3fwwhqQ0KTTJ3djelJY8Sz3EK87P8ocb8SSnwmwJpi/kOiIvTn3PGXR+HhZ3XG/d7a0zdPafpuc2B9h8yKtBmdMY4Y7/A0+bz2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rIfYFxPF; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rIfYFxPF"
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-72c14235af3so2256498a34.3
        for <outreachy@lists.linux.dev>; Tue, 25 Mar 2025 05:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742904904; x=1743509704; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wC3ijQaBf4K8OWU+SDgw4P+7cyUwlTWZLf3LU7lx7Xw=;
        b=rIfYFxPFfsBs903E3xU40mcG/bjdEFiA1iD3AZ362Lb3XpPNLjgJM9hSwee2NpGUbP
         vBy9dGzCcEXYjDh3L0Ua2A9kwHgi0pXjiuaPpfBeF7zUsEBS0z/sHQfJksMvg7mRDqzD
         FELwG0qBjmYxLaaMbE17DRvdMoszJSXZfQbibA6mVa9GHIe0GVkw3yMyFdrqrOZWSrLP
         XzI1FJzduWBFjSyVeTRfHVto+yJZ7fBvGGKfG+GI9It5P39A/MkOdBQ54ss3zcKZvLcT
         cONTvBgsH4RzDGB9/rVza5ln3+AdjY/IVYC9x0m2SNxF9DhTtvlvcxEg1XrwPDGAglMf
         VKyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742904904; x=1743509704;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wC3ijQaBf4K8OWU+SDgw4P+7cyUwlTWZLf3LU7lx7Xw=;
        b=Ck1urfrYVTPy5ZIdQ3bjhxAbKNBUZKuPp6uYi9U9IcnUDEEF93XcSu/WLPlw8iPGQb
         4NR8CmXvVzPC0Jdo5+fVnBo52lYKCP3xjlA5Vn4/xPlCM36QZhg5WnrBtGq1GCjR0lcs
         YKNoJECLNAuqcLKaazF1sjLYh8SvFA80/vpC5Xskom2X1MS/xaXrXaKknFQ/K6NjQjRh
         Zsf/Nfkv8otFaqqqRCtmMWKihDsD6aIZyfjcKiARPx7j7qWieXqZtfQ4gTHpGd1TNcBZ
         5X028EvSW7qPPzZUA7pbeUdL/WJwy+1+Cy+/OKmGk/Umgaquky3Av69W3BvokGSoueLv
         swnA==
X-Forwarded-Encrypted: i=1; AJvYcCXf8HRk/FZ/HEihnMcnjsth3KxhNxz2cbU4NaXMObImyI6L+9eyh/vzo0AqiY8iRiYHDZWFX6fMtWg=@lists.linux.dev
X-Gm-Message-State: AOJu0Yz9BvAMjgYnkAnVHeF9c8Z7o2iosRne60nAkdsVvieQ5RvqiIMN
	IRIuvWvezrC8YY0eQGPmFKF6vKbzcoo0fH7KLPWDUFEQB4//bUEQEwyT+c5vvCY=
X-Gm-Gg: ASbGncu3daxsoHZ5vRar74ZQ0Qe3nzWz/rfy1XB+SJtVqblWlqrXmJWxyGRQ1+dZWge
	5sVKen5hQrBR7XRAwyvwQrl4q3Lpc2KBqsrDYmJMVwwky7CZUlaP2RzNa2HvKRHUUq464KSy1AA
	mVgUKtWayTcOcugpqp4XHIFp/S12C2jH5WLLj+mGgVY2021Z7OPNg6tJDgzVnBmAyukF3b+CoyR
	KcYy0HulcE3kQdr1QQJ5+QCaDmhMd/G8R/5Cdm6nnfu5wnzbahBRekliZq4OqNJv1vRE/+JbJW6
	u11W7HZuJZkDcErsmrwleavJ0LbXYkMQg/GOwFh4vmB1b15Jd1GBBjQ7KiQbbu5xxj6X/yh69pp
	0F/GNz05o
X-Google-Smtp-Source: AGHT+IHZKE0q+q2yQSr22P7i6hKjZROug3Xpi7UzBNf6sOzdWBDPPxeLMvXTvddN7ZqquWTR4AKONQ==
X-Received: by 2002:a05:6808:384e:b0:3f9:a187:1f2e with SMTP id 5614622812f47-3febf7382a8mr10579611b6e.18.1742904903718;
        Tue, 25 Mar 2025 05:15:03 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3febf7927d5sm1974378b6e.31.2025.03.25.05.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 05:15:03 -0700 (PDT)
Message-ID: <a5477192-ee6f-4273-b7b4-1d9dbd7e7b50@riscstar.com>
Date: Tue, 25 Mar 2025 07:15:01 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] staging: greybus: Alignment warning
To: Erick Karanja <karanja99erick@gmail.com>, outreachy@lists.linux.dev,
 johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org
Cc: greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250322065800.21361-1-karanja99erick@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250322065800.21361-1-karanja99erick@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/22/25 1:58 AM, Erick Karanja wrote:
> Correct the alignment of the parameters to match the open parenthesis.
> 
> Reported by checkpatch:
> 
>      CHECK: Alignment should match open parenthesis

I think this change is OK.  However you'll notice that checkpatch.pl
has three categories of issues that get reported:  errors, warnings,
and checks.  These are in decreasing order of severity.

Alignment issues like this are just "checks", which means they are
minor nits that are often not considered a "real" problem.  In many
cases, white space variances like this are done intentionally, to
make the code more readable, or sometimes simply because the code
that surrounds it used a different convention for alignment (some
people simply align to an even number of tabs, for example).

In this case, the change doesn't make the "look" of the code any
worse, and doesn't reduce readability.  It furthermore gets rid
of spaces after a tab that do *not* lead to the suggested alignment.
It probably isn't a necessary change, but I think it's reasonable.

I write all this to explain that these sorts of changes are in many
cases rejected.

I'll leave it to Greg to accept this, or offer a second opinion.

Reviewed-by: Alex Elder <elder@riscstar.com>

> 
> Signed-off-by: Erick Karanja <karanja99erick@gmail.com>
> ---
>   drivers/staging/greybus/camera.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index 5d80ace41d8e..ec9fddfc0b14 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -1165,8 +1165,8 @@ static int gb_camera_debugfs_init(struct gb_camera *gcam)
>   		gcam->debugfs.buffers[i].length = 0;
>   
>   		debugfs_create_file_aux(entry->name, entry->mask,
> -				    gcam->debugfs.root, gcam, entry,
> -				    &gb_camera_debugfs_ops);
> +					gcam->debugfs.root, gcam, entry,
> +					&gb_camera_debugfs_ops);
>   	}
>   
>   	return 0;

