Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793882929;
	b=WoggmkFfDn1JR6OkmnBvO5o9wJjjfMaUbodUQbnp4K6cnJRLbQc5Awjjkh5572fSugiW
	 eOy64QB17BNG5B2m9HG6NIftdp8SKb7u63gE4iAeARvEtw87eOcCHgS7PCY2Yc42FfVqC
	 zoz7rS/RkHMOi/KbOLIyBXlxH6/0E5+0fyUsYdwt3N6EHN5OguQsQPxAOVTQdt8rNoPcc
	 OPUM/QUMjMbs3ihhQRZpPETCmGw2q37uRLEvcULXKLCfCJU5JQwyG2aJo6Etzb2NmvWzF
	 j1iOkMyiNnHWM31OR76IYh07IRmZf/t0KlucqADHjhfZ3FWwDAwd5nleIeyTsTwJxwg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793882929;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=FpsCnQXulO1zACpv3lZ/XLdDu6HqgPswy6BO1ThvjQA=;
	b=O5sHdDAtqZbg7kVqp+VVYDWSeVBGmdAms7Y/uKh5R/CNRAcu1OqAznm1L/gp0G8qYWIT
	 ZHK4aZoFiKR7bMkFnMBwcC9XAetuZdv0c1ByZRItjmfZtf4wWaCrA5GsuPWhNkYeKnO1I
	 U9kWd1Cfeh1lMwS/gm4YdMLHh2rHgNqDpNmCl2kkEnfRC/0CkotI/CIx4/ZKJHebuAElm
	 NcplKS0sLI+84Adp3R3geCZ+RqinbwDdrVO9KKPJARK9DCzFmf3Gf8oOTvQtMlrZkW3Uf
	 Sn7+yW9t01+SgGlXB82QlgxJIPtb+qSx/x+RVMWCA6PkrMdjKZYA5sc3k7IVeyT0zlw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="AqLQ/f+m";
	arc=none smtp.remote-ip=209.85.221.44
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7683606A326
	for <outreachy@lists.linux.dev>; Thu,  5 Nov 2026 12:48:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org C7683606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=AqLQ/f+m
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-490f38e9688so547675f8f.0
        for <outreachy@lists.linux.dev>; Thu, 05 Nov 2026 04:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793882927; x=1794487727; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FpsCnQXulO1zACpv3lZ/XLdDu6HqgPswy6BO1ThvjQA=;
        b=AqLQ/f+mo9ExufnEpWuhFXyEzVszB4kv7hfYh0ATEM4iGk2MwHy6ET0kC15cPSgaIW
         LzeLmvYNm+q/TnMm2gSrtfG3J7bLGf1SF1NXRKqZ5aIeTQB0FbtDQ7+Fm2m189XSC98b
         EiPm5csIGtN3xteFQesm58wGBZxaYjQu9QAphTT3cPN8Pvv7Kp7VjukNLInbvNy57SY5
         gVt+5BtD/XJkrsbSvHms5iI2FntXtnCrUytoBe9mXN4RCcMhZmGOZsPZMM4PAeXj/QkD
         dOXK8aW1EmUME84oaZqT5lxHQddISNxvo3lOk0SoxnU9tA4TqW9UJlBUoXR0MZsOL6MX
         P3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793882927; x=1794487727;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FpsCnQXulO1zACpv3lZ/XLdDu6HqgPswy6BO1ThvjQA=;
        b=mlsxDpfXb4RYEicZV0owsDGCfmcv49jfHkmsHZvHxuNWAVEArl/csPypZ3z5G0bgod
         /ZPzV6CxQkGVGfTLX1e2Rwqhmo5iFAZM0U3lI1RiB7zkb6vwDg8fGz+TqVXaiSnSq9Ev
         9Nh7+C9x7NTocSokCwm8m81vJskfjjpAiXmPgCHu22mcinUGl4N8q9pOxDivJi3YAw/c
         Jjw+inYiYskt7PTrYnKGhoP2FVFSwzSeb9zrHWATST4f+6mT652cK5fAS2RwN2W1jcB8
         12lXwFS0kPMRo+fw6sOJFtzYtmsTXMPR7R3TLSyuvpwSY2JyvCGRb70IMwLko0gXDTb5
         J9kQ==
X-Gm-Message-State: APuU4Z/YLtArd5OD3NdL8JeZDFempVq46YQmf8iGcx4OzERa6hlqzpgj
	7QFJ1zRbqZSL070YiSaVd4/xwZFHSEbdF2dbASEwCMjqUSHLaht0WvoB
X-Gm-Gg: AYBFou0NjS7z2w3SrcKYol4S95j7JZIYGKgOf3erkIf+itSBn4xpPun+LzVsPV7F5hP
	yo1HJ6OtGbuuxEF9IP3p51tlSZBac3yXCiw+zz4buDF3p9AZF679VRf0brBOgVPXF8Ym55uQjKn
	1IhE5UqOqMlzNzOaAtrf6I4H/RPB9yzdgOTqZdFpudB0soAkACX2mnWrqPVs86Cn8Krlj3hCSrQ
	Mmg1fEo0UE1J2iE2yNwVjCJkMeEHxupE7rVOs8lmU7yxaWS0hfC3P/ff8fmgevlFlQyFthjb1fh
	vDKsi2EGOxLKDWAiVHwgUW/LSc5DhrFr+l7VsBsP407A/oHBH7FfAkGOmbSxZDYQqYzJfZRzWxx
	JcDO7kCOqYdvwvgGdXfePm+vGC/EkBkhD4f3M6YNSa8RNZJuM6AouSwK+r5DNuXadTdAs0auca6
	weKCu1vTW7EC6tD+pCX8BM2KUT2qhqSQ+ynH6/tzIgdI4CyBfSMExhra1y7OHa4L9AzDRDHwT1e
	IhLyn3egKf+GNVny4mUGb+3YR6ejF4NHIBO5+3HJcg3xaAQtluT1ZCWAlhmkvJ8E7gjv3J75eLP
	9QU59c52ucBx2i0trsy9rHsNNpy7MkhJrqx2PTY3Ihvho3WRNxerkLAa1ppAolWcBh5IEbVBJrx
	fW9JCFTn0iqVJhauAOdxDBYpRupXaGlQbvyRpr4Bw/FoDJkChgYwVLhQ3954OusPDxGg=
X-Received: by 2002:a05:6000:1847:b0:491:e477:6820 with SMTP id ffacd0b85a97d-491e4776b1emr2280105f8f.20.1793882926933;
        Thu, 05 Nov 2026 04:48:46 -0800 (PST)
Received: from localhost ([2c0f:3d00:6be:8900:ce5e:9212:ea4b:f30])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48fed45d2bbsm10342778f8f.33.2026.11.05.04.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 04:48:46 -0800 (PST)
Date: Thu, 5 Nov 2026 15:48:42 +0300
From: Dan Carpenter <error27@gmail.com>
To: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
Cc: outreachy@lists.linux.dev, parthiban.veerasooran@microchip.com,
	christian.gromm@microchip.com, gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: most: video: document lock fields
Message-ID: <aux7KmnRHloDL8dj@stanley.mountain>
References: <20261105101222.5478-1-husainsitamuwala21@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261105101222.5478-1-husainsitamuwala21@gmail.com>

On Thu, Nov 05, 2026 at 10:12:22AM +0000, Hussain Sitamouwala wrote:
> Fix checkpatch.pl checks:
> 
> CHECK: spinlock_t definition without comment
> CHECK: struct mutex definition without comment
> 
> Add a comment to each lock in struct most_video_dev describing what it
> protects. No functional change.
> 
> Signed-off-by: Hussain Sitamouwala <husainsitamuwala21@gmail.com>
> ---
>  drivers/staging/most/video/video.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
> index 3a0445ff62f4..d60be8a741ed 100644
> --- a/drivers/staging/most/video/video.c
> +++ b/drivers/staging/most/video/video.c
> @@ -33,14 +33,14 @@ struct most_video_dev {
>  	bool mute;
>  
>  	struct list_head pending_mbos;
> -	spinlock_t list_lock;
> +	spinlock_t list_lock; /* protects pending_mbos */

What I want here is an audit of the locking.  I imagine that the result
of the audit will be more than a two word summary.

regards,
dan carpenter

