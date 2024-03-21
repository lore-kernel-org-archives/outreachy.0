Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D93250249
	for <outreachy@lists.linux.dev>; Thu, 21 Mar 2024 07:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711005624; cv=none; b=I1ZT1PbS6Zst7YAXIR1wtccFA3x+3h42i6OuuRKUiJNeNUKOdiAYoBHsceROu4yAqaY1giaOeMafcH7I0ZVN9HEWGW/0wU634KTWWUopnZfPYxHmxYZBbfqJj/6LtScbJYLFrIcodH9/3sJ+Uk3SNyEAboTKrAL7glbPj4Gks40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711005624; c=relaxed/simple;
	bh=M/pE1qtuba0xAb4ithnVVZnIuFnsFrNwP1v7PJ5rEqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nLj3Tj77d+IuCdHsCgAU+ABHiW8L89t8BwlAFr5eS/5xLeyqexbt5lxQvPWeMJfcbPt2KkN9i+T1cVAUDVgKugO2fmWcHLD7snR3gd/bVDXiTfBREMJLu/lvrqf8L54zVNLPNGgy4jY/PHabf1XTRS//PQQIY8M/ImcOIFoZBzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AqVGDI6J; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AqVGDI6J"
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5101cd91017so757055e87.2
        for <outreachy@lists.linux.dev>; Thu, 21 Mar 2024 00:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711005621; x=1711610421; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yhN50euko1HcLlbzreWy4UyMhBRrqu5b6P2NFYTbhuE=;
        b=AqVGDI6J+zuiIandIvlAHwHQ04sRVvjpT3bTR8ovHkLe3EvNoJqrE8WLpemiAHmmg/
         xpSl3+4AXHJsejIsB+/fmfTUkuPGUGnggCHjPpBI4eVjoM9gE8jj3LCvg1Hv/vmjC2gD
         G00WIomj8IL0xImiqHjMFLMlcFUJfLSkqXX831wJDrhynywL0pM3uh445Xni4CffNGv8
         IkcZ50eqfl2f22m65hjKcFTRbS7fll/QyMLzClzlhKosCiK0VIWTsAC8R5PZb2Yu5R8F
         ot0lyL2d2zH+BHCbNL6ax/PUcRdY0ERoPI7BMystfHf3xL+530YIwhWo01s0Ijfa0K9Q
         QwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711005621; x=1711610421;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhN50euko1HcLlbzreWy4UyMhBRrqu5b6P2NFYTbhuE=;
        b=wY9AkYObGvAizrfNRpLdgw8yLqm0E90+hvglBajktw0NnS853lnT9FcEYQj72qcLVk
         XJtZtOmZfaqQ1iWAxNQzQYZ/rf+qC2ffEEjp4dQ+Kr0c5YzsivQkAPXofznlzseb3BkU
         yH0j5ZeRHW6ReZjlob0x0OL1Hren6FALmSXfJkcfN9vSHVQoqiWiU2789kebPmhdcU4P
         9ACe8TwcuqY17h9016FeTZN42BkcnHRh0T/AjAnLomO5SO8CgQ/oKilih1sH0ODvSHyo
         O/CkIJ4u5e6eVoflVOvEJe85lIB9vNDu+J+iybyOZaFWIiuXrS/BaRac8O/oCevtVzla
         4VzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTHfCKwpFjQL7GWSjs97u5BBAFhKmwx88zWYZOYV9qXe7JZOsjw8AzjG28Ubq/G+fWb0JOGJkYm9xcIYZ4AhF++28R16Xwl2re
X-Gm-Message-State: AOJu0YznGY+ScKyFNrrfq7Ue0P9RQ1i/8tsxyO9lrJf/J9x8LiNoi2Nd
	17xvslQzJjTkrKdaQPc/dru8QqKDtwSVNqrvt3uB2n9OKDQmdEUwuxfK8bM/rGw=
X-Google-Smtp-Source: AGHT+IHTGPQhf3H6O7uDwt2LrjWYhTXQdcE9UvrgcJNxEE8My4b+onTtxcBz4scNfQjOEmaFcuPkPg==
X-Received: by 2002:a19:ee14:0:b0:513:39a0:1fec with SMTP id g20-20020a19ee14000000b0051339a01fecmr12178552lfb.66.1711005620894;
        Thu, 21 Mar 2024 00:20:20 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id bg38-20020a05600c3ca600b004146e631a81sm3616918wmb.5.2024.03.21.00.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 00:20:20 -0700 (PDT)
Date: Thu, 21 Mar 2024 10:20:15 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Ayush Tiwari <ayushtiw0110@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev
Subject: Re: [PATCH v3] staging: rtl8712: Fix line length exceeding 100
 columns
Message-ID: <1f355628-87d0-4d54-a1ed-64da9da784c9@moroto.mountain>
References: <ZfvaZd92bnoZ9M1m@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfvaZd92bnoZ9M1m@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>

On Thu, Mar 21, 2024 at 12:27:41PM +0530, Ayush Tiwari wrote:
> Split the argument list of the kthread_run function call across two
> lines to address the checkpatch warning "line length exceeds 100
> columns".
> 
> Signed-off-by: Ayush Tiwari <ayushtiw0110@gmail.com>
> 
> ---
> 
> Changes in v3: fixed the issue in v2, created the patch against
> a clean staging tree.
> 
> Changes in v2: Fixed the alignment to address checkpatch.pl
> warning.

Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>

regards,
dan carpenter

