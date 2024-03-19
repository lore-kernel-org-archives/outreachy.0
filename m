Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFAA7D09C
	for <outreachy@lists.linux.dev>; Tue, 19 Mar 2024 05:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710827657; cv=none; b=fN4YL7CxED3uv5FfLul3RkzxYILInjOXVq8cqnwNqoAO1UKbXoKYotPdeRYFaQxgAGh4VC1dMxaeEIbEIH9o7K1ZN3wPm9V95Tr0kehjhmS00Z+K8wW+k/ULPTQKaVj46VS+qEEsnyb+OgsHjwIyrLFxgg9mPp0LKnvBNsg5KFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710827657; c=relaxed/simple;
	bh=1hih6VSpKV8xqGVxi4o4YhgWg8A3pPntjmOFpkgpVZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nFEVLZJcXd54RyL2B/bpy41ToSJLsW9YeVJT9FVDhYcjG4MYqv43HBMcKQ4A6/AWHqVy2NNvan5UnkvSkMMLpTISbrnODvMA9umLYyNnHULOTwAtxSBw3OQKHtgSFFDsT4X7b7ZCI9VC5ycqMtzrxJ+rbuDW0yUKN+k7wBkinQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LvWF4hui; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LvWF4hui"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41412411672so11480815e9.3
        for <outreachy@lists.linux.dev>; Mon, 18 Mar 2024 22:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710827654; x=1711432454; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vl6AA9br/anlnpNsGMnkWOpzBxrWrKpWnKKq2r224oo=;
        b=LvWF4huiKEzryCqg3DvlOvgtkRXaFuhiP9I+og2DIIBOVXlrr8EEXuCZL/IA1Io/64
         qPXhbuXz5DQUxuHFMSM+KzBhZVNaqVEe9qn/7c4ZUavQnPHV0JqZ+ShLLwGDWgrE4cWU
         4THJ4OY41bn3nFenaWw7tkS5t4U8CP9jxlV3xZikDCEZNmTXhN3gvrfYQH+d86aU6UdH
         L3uFH4RIjmAOHC76ZKByq9v1c3DGjDsnGi/yFBb67XpKMZDNNNZFvg45OXatMV3On1PS
         YqZzLsAzbHubrp+tgocLcOICADOZwP6QRXihW4di1lxc7mYWnZoxPCexfPjlMSC32HbE
         zLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710827654; x=1711432454;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vl6AA9br/anlnpNsGMnkWOpzBxrWrKpWnKKq2r224oo=;
        b=NUcmuWoZD29YqkfPptwFcojxGg2r9CSl7/pZGn4SbY0a2pZ+bQbgg2Z5XsAED1+eBX
         bUhAwJE6hLnQlWS7oHnojON8vMUOwCsUYcUYU/4/OqoIK4KbGX2gCJTlqv39/1/f4wFA
         uo6Gk0lhrdOgo6WU4FyZQhik3y7IXqUePmoiJdpPNqHq4hnv4Uci67vs7+zdqJch/rsx
         g2M7x0SUvtT96vNY5ou/81puKr3XJIKFIH+rYXdhGtHBFIio+fS/nWlSFjqc9CqTHRCw
         d6etxNQ3IwvO7QEcXDX594I/Zd5KcAuwOd1F7uIqYkPdE4B9qjTxR6arzvvZAYLngK+a
         unmw==
X-Forwarded-Encrypted: i=1; AJvYcCXoCq7cqcRicNaz/PVtyaHI+qHpq6cAnTIfDVnA8rVhFGOY2NBMruZA+5zIhvMOdMkd6aALO5tbz4jkeeUL5TqJ2mSz3ysNAZUQ
X-Gm-Message-State: AOJu0YwLHrv0LLNIbYQTX/BP8NUgQIhosg6E26BoFX5L6Ds/2cQH9oS7
	RuDMdF+7sonl/ZWd9+/JeM4WDA5VCXCDdpcBF/fGZHDx6CBydOvHIB8klKshM84=
X-Google-Smtp-Source: AGHT+IElLSQLz49jl6r3n4FmIzslQwWn+SuuJwo5rV6apuyC+62iDEgiFx46QapPIPE18jQwDqHimQ==
X-Received: by 2002:adf:a494:0:b0:33e:6a17:3e63 with SMTP id g20-20020adfa494000000b0033e6a173e63mr7815867wrb.47.1710827653420;
        Mon, 18 Mar 2024 22:54:13 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d44c5000000b0033b87c2725csm11418889wrr.104.2024.03.18.22.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 22:54:12 -0700 (PDT)
Date: Tue, 19 Mar 2024 08:54:00 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ayush Tiwari <ayushtiw0110@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] staging: rtl8712: Fix line length exceeding 100
 columns
Message-ID: <51060bc1-7d1c-4687-ae20-864e65068858@moroto.mountain>
References: <ZfiNNvks6v0JGhRA@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfiNNvks6v0JGhRA@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>

On Tue, Mar 19, 2024 at 12:21:34AM +0530, Ayush Tiwari wrote:
> Split the argument list of the kthread_run function call across two
> lines to address the checkpatch warning "line length exceeds 100
> columns".
> 
> Signed-off-by: Ayush Tiwari <ayushtiw0110@gmail.com>
> 
> ---
> change in v2: Fixed the alignment to address checkpatch.pl warning

You've created this patch to be applied on top of the v1 patch that we
are not going to apply.  You need to restart based on a clean repo.

https://staticthinking.wordpress.com/2022/07/27/how-to-send-a-v2-patch/

regards,
dan carpenter

