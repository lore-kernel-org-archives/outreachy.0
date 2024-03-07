Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5ED129A7F
	for <outreachy@lists.linux.dev>; Thu,  7 Mar 2024 12:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709815399; cv=none; b=r0u3WFyHqlgcYdAmZQZ6nB8/7Gco6npU4sbkwJwthX4SxaHu2bk1C3cUflbPM7+rbpyYf0mTiFAgVTK9+0/Q7GeX5AmZ9CQtHbHOhY+sLMp/BaQzw2aHXKfMqpgS/JG1cwW7EvHOWEh+YX2fpyKzsqtrJw+dCSMZmtHcht1mSt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709815399; c=relaxed/simple;
	bh=Nq6rlJscRwbYuzIEs80JzhPk09GirALumlZ4qyE2YDA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vFoAYOiz69BbFYyoNlOyG661ydtf+/giVcwPJ0TzdF1RaeBjc1zgS9R+lJ0tkycd5edl1Zn5deAcW95FDXhckwb0x2IVNgdbnDA+CSmkWNRBPek9uhmTLdxDz7ywQFCzHEPNKQUvwpoXqfE3Mmr5w29+OgKILXykorsc5QAnPJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J2fVh5K+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J2fVh5K+"
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-412fc5f5099so6703955e9.2
        for <outreachy@lists.linux.dev>; Thu, 07 Mar 2024 04:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709815395; x=1710420195; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pH+Ba2rXoORhIsjYnlbSIHHqmfMovlwsGb3WvWj3jeo=;
        b=J2fVh5K+dJvqi+Dr+te/SNS6oIZd7zzoh5n5vZuCdAUvHWoJCeM821pDNwirIpC2N3
         Nc39dIm/SVHtwjZUzxzMTiSlzFVlTuzpq5Zwr0rvyrX6u+CMxRxdPKS4kb11bCYmK5qi
         h3pnTZN65GZPodrzVrPWMgx/VsD9LKPu+6B+bTjserzD6eN70okRPP5Revt8p8QMpjc1
         6JFJNkOl9RlRHdbuHOWTRqqyGkWdOLOzpJ+19mKvhssoYxclJffS46y5kdFZmUBwiUBn
         IqDa7lXZcuutRGomYXqglX7ZbJVeG2bYdUHXZCVgIbH8/tY+ID0JmCtLwj4NorifrYUp
         abAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709815395; x=1710420195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pH+Ba2rXoORhIsjYnlbSIHHqmfMovlwsGb3WvWj3jeo=;
        b=A4sDbW/tNfaaBe5W0MCWi9BoJsqL9sptr5Mzl1wvf4gmA/x86C+hX5nyABOgNhXwpZ
         v5uHFDn3e2UBZiuqIVHXNJxVmDOhuzm2Y+A2+1HKw8iUxGyzLRZQcHBa1CSwKbIQA8Bt
         HspZtEZeg3sUinYf3WsTXhgDQ8VWS5I2AN0q0rO1YN5WEy1AVgGSY6brW0ZkFXt8kZ9r
         2DlfMiIVWctcBOl+oTzJymPJNi7ThxRUHaACr0u4ot++sb4a5rlngSqrby5XP/2hAca+
         TVAYy0NSzUcjW56Iwx81YAEIIvJ2WHqEJkaiM+WnYyv4+7NRLi7jgbxXJfddm/EJvkeM
         5jsA==
X-Forwarded-Encrypted: i=1; AJvYcCWRiJSXHvMU6a1z6f0AQaUcwmJNarVGG0fyXmMP1OIEPBOQVl8uEpBJj+tthVEuv5ESsHz4htnONbCSocetLOAJ2gzZSWcQ6lQF
X-Gm-Message-State: AOJu0YyoBSS5nPZu4Ma4AYALKh4SLjiC3il86YgsXZsBm6CJdpeYdX/E
	c13DgwopRJh0Fpg0lgawQmXAENIqD7exWONTH4EV9cpp8wqEABHyvkIssNA7h9ULHxsTmfNRXOt
	l
X-Google-Smtp-Source: AGHT+IEvE1c09KMlv3mWznPqH33pVQe6svgZkJSVxc+SAg3bd8zDWupckqNBitfjrnKPGyFdMzVUAw==
X-Received: by 2002:adf:fec2:0:b0:33e:6366:5f34 with SMTP id q2-20020adffec2000000b0033e63665f34mr1417057wrs.4.1709815395314;
        Thu, 07 Mar 2024 04:43:15 -0800 (PST)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id cc4-20020a5d5c04000000b0033e45e4f22bsm8551254wrb.73.2024.03.07.04.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 04:43:14 -0800 (PST)
Date: Thu, 7 Mar 2024 15:43:10 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dorine Tipo <dorine.a.tipo@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	outreachy@lists.linux.dev
Subject: Re: [PATCH v2 1/8] Staging: sm750fb: Rename variable
 sii164GetDeviceID
Message-ID: <82eda60e-5188-4a3e-8939-13a24d661579@moroto.mountain>
References: <20240306043611.98074-1-dorine.a.tipo@gmail.com>
 <20240306043611.98074-2-dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240306043611.98074-2-dorine.a.tipo@gmail.com>

On Wed, Mar 06, 2024 at 04:36:04AM +0000, Dorine Tipo wrote:
> Rename variable sii164GetDeviceID to sii164_get_device_id to silence
> checkpatch warning Avoid CamelCase
> 
> Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
> ---
> V2: Added the patch to a series.
>     Fixed erroers within the patch.
>     Compiled the kernel
> 
>  drivers/staging/sm750fb/ddk750_dvi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
> index 8b81e8642f9e..3fb14eff2de1 100644
> --- a/drivers/staging/sm750fb/ddk750_dvi.c
> +++ b/drivers/staging/sm750fb/ddk750_dvi.c
> @@ -16,7 +16,7 @@ static struct dvi_ctrl_device dcft_supported_dvi_controller[] = {
>  	{
>  		.init = sii164_init_chip,
>  		.get_vendor_id = sii164_get_vendor_id,
> -		.get_device_id = sii164GetDeviceID,
> +		.get_device_id = sii164_get_device_id,

You have to compile the kernel after every patch.  Like apply *just*
this patch, then rebuild.  It breaks.

regards,
dan carpenter

