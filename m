Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D8215E1FF
	for <outreachy@lists.linux.dev>; Tue,  7 May 2024 13:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089362; cv=none; b=ZZXHLOuWYbElzk6ceGop3CUu1sMg0AqAqK/Hvy+7pHLT9mfzmI45aX3U8q0sHB8HIYg6Lmv/yjY8mF8yTNMKKul1VrXDqJzGCRK2S1SwEcqM4v0HqvyrMOdm7Q8DMRFYyUx1qnZjETd0J7+Hxl6BYqMop3WMeWhvRAvtSXIT3XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089362; c=relaxed/simple;
	bh=RNmcCGwn/9/Ko6Q/dYPFgq3QsYqQcfCFf9m2+RNV4HU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fmy1NqrnZHjOSiCvtYhf81qwZA81L9c+B4hZdCUCqSySFOZwZ5Ew+cqgfePSc23YAUUL4J9K9ED2YlIyj4YdyXmYAwt+d3LuYjDSgBWBOJp+tSAgEvCNySi5b/l6k1JIpkhZGMn+wOFGr/HAqbCehgHLoQv6IdEwcPzqa6ORg7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NUxQZR0f; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NUxQZR0f"
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51f12ccff5eso4105490e87.1
        for <outreachy@lists.linux.dev>; Tue, 07 May 2024 06:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715089359; x=1715694159; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ofLWh7+7lynH4ssD7W2H3GNyThDD7FYWFzKSbNNIGKY=;
        b=NUxQZR0fx6II9d2Zvj9zv9JEKCbgW0VRNjIFpjCGAjUUs41ryZoYTOyO/6U8k1X9Us
         yAWkrU/07TgY7zt8Eg0KjHf6SAV55iu3T3bTHGAB+FIOkLZ6qXF3UsT3sgQZMpbPYBq0
         pXKGMhEhBDqzvb8TjJfji8kwetXG9hZz1L+49bovvscwrS/fmyydBu4u7VbJTw5U3puY
         14LAU1D1AqMSxMaPpp/+ll3YIPWKR8oevr8QmgNr9K6bZiiq4fFh8pWkfkAK5JiD6gEj
         e+l2KkyQLmGqlX1EGqFP2UqdOg/v3kF61Nosy30s+9Inougvh+jUUxnsJpdKKOFLs0BU
         3E6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089359; x=1715694159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ofLWh7+7lynH4ssD7W2H3GNyThDD7FYWFzKSbNNIGKY=;
        b=ptPhgTYaMRwXxsBR/haDIMEg1Fl+Fo/lw4qQRYz7Gm5r3TLDQpS8Dp8ZPsAEqNZMKW
         fOrwl3/pKcwgCa9uiHHqobBBsNNeavpDRFg8jfYgV4+rvNk8yEu0qPM2oksEhKvLPPTU
         pcEutXbp8A35o5HaCC7xv8/N/pdDqoRmlXkSKKRYsFK6RsElxchBPWWrRCI2IIlSR2S7
         bk94gGuJpTusOC8I9KUqC2xxwMZxHFnS2BPuws/BX0lf0IKjSHzrBe4x1kOOHul3iwh1
         6f8/mSHRa95qWryKWHsMO0zfNX/SRA1lbcT1b175SSs1MMBXYJ+Yx10kiwmeqXXBBREw
         QqSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDu+3+YnrJw2bxYQ1SYsX82wpz8AGh6syG5e444/pIuE0h49ygDodlpOnzQRZvQT5EFmpMoO7WVRvgk7/MII0dSnTby6efFCZ8
X-Gm-Message-State: AOJu0YxLki5TCibKDaD4f1q7G+HI9uUYAukQRmtqQx4tvWqFTijTdoEr
	FDMyiqIG81yyTX+5Zxv2PpuZqPZeeQecK+f/u3l9iRVUDzLn3oSUz3gXf2IwwME=
X-Google-Smtp-Source: AGHT+IEcEQ1M88NR4vmUiqGMt8ZxsM659IZuZ4CO8gzi53YrJgC5MzydtewGy6QWY5cBxG7eM8j7VQ==
X-Received: by 2002:ac2:483a:0:b0:51e:11d5:bca3 with SMTP id 26-20020ac2483a000000b0051e11d5bca3mr8661395lft.18.1715089359358;
        Tue, 07 May 2024 06:42:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id j6-20020ac24546000000b0051da3abd6c8sm2109596lfm.150.2024.05.07.06.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:42:39 -0700 (PDT)
Date: Tue, 7 May 2024 16:42:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ashok Kumar <ashokemailat@yahoo.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [RFC] CamelCase can it be fixed per Checkpatch.pl script
Message-ID: <uewpqrf2hkczmxftsl5pb2lx4tylxcntxqn5cwmlcrx3w54mu5@bc7nta7chbkm>
References: <ZjmsAVlZmA5sje/Y.ref@c>
 <ZjmsAVlZmA5sje/Y@c>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZjmsAVlZmA5sje/Y@c>

On Mon, May 06, 2024 at 09:20:17PM -0700, Ashok Kumar wrote:
> Found some files in Staging Drivers for which checkpatch.pl throws a CHECK to
> +remove CamelCase.
> 
> For instance in program vt6655/card.c find the usage of CamelCase as
> i) Variable names eg: &priv->apTD0Rings[0]
> ii) Function names eg: void CARDvSafeResetRx(
> 
> Note: some of the functions are
> +static functions
> 
> Reviewed lore and seems in some instances removing CamelCase was allowed and in
> +some case removing them was disallowed.
> 
> Hence wanted comments if we should change them or not.

It's better to work with the corresponding driver maintainer. Generic
comment is that functions must be renamed, while variables / fields
naming usually depends on the maintainer's decision.

-- 
With best wishes
Dmitry
