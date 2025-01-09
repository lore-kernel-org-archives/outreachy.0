Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEFDA2D
	for <outreachy@lists.linux.dev>; Thu,  9 Jan 2025 07:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736408758; cv=none; b=m84cbkzNJC6MNpBQvYc2LmOijTnWL3vckZ2yYVcNp92/q7mG48qmdDxGMoBIyZbcNiu93zLntoORJK5RcGRWXPujvigV3W5V+uXCdNQtZ0zbcj4oSpuuUMrtGLEu0Q6RnGukd8c2+jESnCkFeaKDFte2TGt8/LpUheG4RhDH1zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736408758; c=relaxed/simple;
	bh=wJLBLVJw1KkjAyK32dUglrjiyJ1EAVE+CqnalBZuC5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f8otlE7Heihhm1j7vqeqrkWreL83pMnQmJMnCxCueug4lDmn3cJcPissrlXsxJKZujvzfCkpbErMOROHh0Y+5rNtGLj1hPhs2Hkm0755UMO+mhE3ZcWVrV1i4FE4VV0DyCIaSMOzrHRJiI7ZH+72874Z/eRaWpLzdq+eqyinzN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IRnLmlAN; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IRnLmlAN"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385e27c75f4so419489f8f.2
        for <outreachy@lists.linux.dev>; Wed, 08 Jan 2025 23:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736408754; x=1737013554; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wDPDfFPx9ymk/j+yrQwmFxxKqrVHqKkdkC69CbeqD5s=;
        b=IRnLmlANhVQBk+d2eIkF7OMGbXvfJokydSM7eUw89CP7luClwEuEn3GB9R07/nwY88
         D/WAERDTwd8Bbyyc9lm7+MqZOEitRI+27KwhdQX3bVdiYM7hi3JEVpVJC2kJZfmQ/P3L
         rfrK9g6Eoca0iFwI95w1J3L/ElQsY66O9qgrffN+CqdvP7d9eVWu+RNLoxi2kCwb4ioe
         NFFjmTTStM8USNHeZAep4L6rr88u5qdzn2YFQDru2SkyuOFF8Bqp+nGkpSh1mFsHoF1b
         l7aCL8107YYZSkokC+gyBD70lI9osILBZBM6u8j0tHWMbBKRpQzbFefDxYOq+B2Z5iZp
         0/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736408754; x=1737013554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wDPDfFPx9ymk/j+yrQwmFxxKqrVHqKkdkC69CbeqD5s=;
        b=fUkxmKwnrEiXBbHalxaKK3XuWxx6JoB+PYvsVu71NnMIqRY45r/rb9LhmvxnEAyseM
         j48ZShSxNjOmpn88SXhs8uFt28aIO5Iz9CfKfUOWQpIDTHKdhYNjrVA1c1L0mdcPjCZL
         H/ujWRpAK5rr8RLQ8WjKL+JP9z+LLgDf7nMwjp5rBTpAu3D6SzVc4PbVOu2/hOfSUsjF
         xbatesZiYEWIndS6rbWV02nm1bcCIReQ0etja6Du+rfRtQOoZLBsUvquDJAJYqVp2wc8
         WMdUuUDhJlnZGkNV/7C+Nr8d23TvQ94wFjfPpYTmI+pOr1z6h1Df9OstPi7OkJrnKS9U
         OgyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcf1CMOyKktjNwf4QokKSDweH4Ja9v7zPlOl7tJL9mWQrISgzybDSwlU/cOKBg9iW8Ilt9PrzCgwE=@lists.linux.dev
X-Gm-Message-State: AOJu0YzTBfKpuM2JEqedGjbOFEUOH3LYlbLJ3Hg+D4mObvY4yWLBufJE
	CCX/ORTvXDtOwyfeI+ym2F6Oq7u6TOxfHGeHi5TuocinAlF8MEdBRcAWX9hipNs=
X-Gm-Gg: ASbGncuVUbYXN3zbFXpFJUOnewUzmMhJcTo4NQZzGiBe/8M1G0b9OzTZoZbXzAR8NmL
	s1y2bbx0PG9dHxXOQbIocfBwNhtBROqI09LMR6b80mX/RlLA1BFRM53PPMAjUEYnSanqXbc5yp6
	kzxqe1OoSQ16dtqWBnQETxIrbbAni8J+fG76W2v/iLgjcnKG6c65aEvojPDBCsvqhYz/zkmyxoi
	Q0blVIGtDcoDb9pP3c4jS7vXlIFKHPE6mtuXYHBkvGuXQJR+Zpe5Mi7eeBbXA==
X-Google-Smtp-Source: AGHT+IEo1TDze8qDTS+/8umRS35r51lCZq582badmEBI2lk5GEiWcjyQ1m1M0MbTn8XadxGeH7MivQ==
X-Received: by 2002:a5d:5f82:0:b0:386:3262:28c6 with SMTP id ffacd0b85a97d-38a872fc0famr4878299f8f.5.1736408754580;
        Wed, 08 Jan 2025 23:45:54 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c1dc6sm1015700f8f.96.2025.01.08.23.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 23:45:53 -0800 (PST)
Date: Thu, 9 Jan 2025 10:45:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alex Elder <elder@ieee.org>
Cc: Will Walsh <iron.will.walsh@gmail.com>,
	Vaibhav Agarwal <vaibhav.sr@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: greybus: remove unnecessary parentheses
Message-ID: <dcf6ec9f-39f2-4729-9250-14eb4d8d2adb@stanley.mountain>
References: <20250109003624.37323-1-iron.will.walsh@gmail.com>
 <ed70a5d5-8e85-495b-9e56-eae472ba3046@ieee.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed70a5d5-8e85-495b-9e56-eae472ba3046@ieee.org>

On Wed, Jan 08, 2025 at 08:56:50PM -0600, Alex Elder wrote:
> On 1/8/25 6:36 PM, Will Walsh wrote:
> > Unnecessary parentheses in boolean comparisons make it harder to read.
> > 
> > Removed the extra parentheses on line 305 for code readability.
> > 
> > Signed-off-by: Will Walsh <iron.will.walsh@gmail.com>
> 
> I'm not sure this makes a big difference in readability but I
> personally avoid extra parentheses unless adding them makes a
> compiler warning go away.

It's not a compiler warning, it checkpatch.

regards,
dan carpenter

