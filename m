Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA8331E82B
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 01:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792027398; cv=none; b=oVEPj40OBCgjC9NOjrsBIyv4ZPH6oRZZvZTSmC6HNkmyMV1N7XzLXdnBEtyByw+LI+mXqGHEqZTyoyKMrOykmke6fD+n0k+E6adXIanZWIn1fWpbQP4rPUgIuUeeSLpu18jlGvheKp8XyG3SdvjZ455cvP9J1P2K0CLzYGT/Fb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792027398; c=relaxed/simple;
	bh=7ficzhK3Rhv6KNOjHabHwbT4xbc1BJMxfoyzCtkPbaI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qNHgnvvDW8vvHQiSATvvhHQpDGQFbm4pphnKaEAd2KqnaycCxt5huIUHwHzdVIl3vJb/2ce5LWbjBObGHM2BkKCTvPzn+uk5k/SfoS9kHyF+Vpeuer/KrtVEeM+zYChgH1gcCasDM2EzN1nJvL7YpxUQCXlQfHeXSfXlYwWnT5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org; spf=pass smtp.mailfrom=ieee.org; dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b=XIAVQtI8; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ieee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ieee.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ieee.org header.i=@ieee.org header.b="XIAVQtI8"
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-5356b6a7fe5so56260941cf.1
        for <outreachy@lists.linux.dev>; Wed, 14 Oct 2026 18:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1792027396; x=1792632196; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tDPLaKfb2lMm0cNVfzQxbfZzYs380EKo9PAZuk6Z0DE=;
        b=XIAVQtI8UCn91FeRnOwpDfAoIHsezTtPOHA/mVYrQi0sX7FnfNuVHn0cCZHh8+Dp8m
         D2pc3ilkSBG63G9D+nVrsE1IOF3lPOi/pkOYEQDw0pbgnid+sjypeFpBVm/yLcQsOQT5
         KUXqDr+XZbKnbSVubFXOPTpaSONr4uF76+njg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792027396; x=1792632196;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tDPLaKfb2lMm0cNVfzQxbfZzYs380EKo9PAZuk6Z0DE=;
        b=2l1OdBBhWVRTQoj0jK2ztv1lcoDF7NRq1E/V0xGCiOB4vfxHQagbsBfM0f5Hw9VUnx
         AFD5syDS1fD5Thi0xGXYzC1EDHHtwpojqAXA1Inzp2bzNlI+KBIJzl7eOs5FLPiFzX/i
         uD2wVXcDy6qvFIyKF9jiJrqyUxGDCS7X+N+wPCURfGo7qiOcUBZ56M2aisNqrbkxDb42
         VobHwSQb/1/i+4LFS12DhaetCzKtB32m8pXu3voGGsTwAIOizsHDPRXQpGkyRTvz5Fwx
         1rquTKhwlVgEe1VgPFs6cD9A8e3fnDtu47oes5/+3FUdSQd0S8K+xvonvZ/N5nhO2RGy
         p0nQ==
X-Forwarded-Encrypted: i=1; AKwUvBwtza+o6/mTj1VOZPKij4UcCXr2xrukzwH3ohnMSLKQqsJk6PNbDjNh7zTL8nzU+TOhGZJom43oqaY=@lists.linux.dev
X-Gm-Message-State: AFq9FYL6yLjbWXA1C553DsF2vNFU8Hb7JhnVyJ9HjgHSHdkICB60mr97
	TrM9X9iaFEInZzea4v2/XvAmNkLuMAQUVbB5w9eYvtkkh90DUUsbu7ROg34LarEK/g==
X-Gm-Gg: AYBFou3GZMTP8BBiznk0NrE9YWt+6824oToxNNwRgL/qD7P8C4gaoCJdrC7m+CZs45/
	1d0BovoLX4IxUitKl9t9uijsXVTqUeeWEgjV59TvP/ox+MBBV2FKf6NjQC1oNSpZw/XD1+vtnqr
	62qdnmPzeW+4y37GoKxyvmMKroINvc+OV2ZF/wYGjumOrZ3FCTNdo427BCqOPDFpCVbP97//a+3
	XAWyT/q134p09g4z5wEWup5BhzB3oe2kd1LRDuPA17k/Sz09RhyIwMA77ZBBvVIII0cPgQjbDS7
	P1gr/oI4pW910s4mo6nlHs5X+NkS7LJCCymKwd+Y7XOQykqGET/fP2av1wE3/s7ArSSzeEWAsJh
	/Gp0+GzsglpiIBzFhfflKBsrTrIBWiTsqbU38gapHhoJjCfq7PkYrGcDfJb6Vqj2znD5QgoYtwr
	sTtDsmbDu3/3OYzf7jUYxjkqAEekR3eMQvFGLbGwLBnIkX0aLFbYMSOcQI/EehKycyvg==
X-Received: by 2002:a05:622a:c14:b0:535:521:75aa with SMTP id d75a77b69052e-5359fba2477mr270509491cf.48.1792027395839;
        Wed, 14 Oct 2026 18:23:15 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-536128071c9sm12258771cf.21.2026.10.14.18.23.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2026 18:23:15 -0700 (PDT)
Message-ID: <80a12db6-8617-44f9-aac0-c4aa69de0a1c@ieee.org>
Date: Wed, 14 Oct 2026 20:23:13 -0500
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] staging: greybus: replace PTR_ERR() with %pe in error
 messages
To: Julia Lawall <julia.lawall@inria.fr>,
 Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Cc: johan@kernel.org, gregkh@linuxfoundation.org, vireshk@kernel.org,
 elder@kernel.org, greybus-dev@lists.linaro.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy@lists.linux.dev, gservice341@gmail.com
References: <20261013022402.6322-1-pavankumaryalagada@gmail.com>
 <2fd23f9b-7eab-4afd-aa77-93a5b9ff0c75@ieee.org> <as6mC7sZnpqIKxN6@user>
 <26a2a4af-5d27-4bd5-b284-3758fa7a67b2@ieee.org> <as-wgGhJAGgYBZ7-@user>
 <9f3e98b4-8c11-62bb-49e0-99873c6fea8@inria.fr>
Content-Language: en-US
From: Alex Elder <elder@ieee.org>
In-Reply-To: <9f3e98b4-8c11-62bb-49e0-99873c6fea8@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/26 2:14 PM, Julia Lawall wrote:
>>> And if updating everything is a task you're willing to do,
>>> then I think I would prefer you extend this change.
>> I am willing to make these additional changes. Since my original patch
>> is already in staging-next, should i send a v3 of the existing patch
>> or submit a new patch covering all the relevant cases?
> v3
> 
> julia

Yes, agreed.  Thanks Julia.	-Alex
