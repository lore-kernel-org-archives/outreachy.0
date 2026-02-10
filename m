Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB9B34216C
	for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 10:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770720108; cv=none; b=CgBrf7MNa4eyjMI6sOfWAoVGs03Np5Xwo2iGksLAh58k+uPNrz41hfXFhZ0jv97x/1KKxJsqhhM0ukQyUwEPZllrOMilrMOlbqLSaca4iVJEGIhilxhemgvqd9ZyP5WAVoMACQ/OOwnCebfEcloulxNH0a1FiKL6MkHJAmL/n80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770720108; c=relaxed/simple;
	bh=5yguZTpHZAetzVT0m/G2atwSQgnI3L7bO5sDOgboRNA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CnFha4SDai6dYQb0EzNDS8c6karnXnfE4e1mGF3P81/+SBJRtjXyO7CPMB3mYRAWkx4v54fL2dD2rxocIUyCbvATSkQ9myuQczSNfQou5hyhPY3m9QKYNh0D37MsAAxnVDdigIhTdU9spY2PS6kEVEJ4J1dqEHhkHP8dbfufc2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M1FzcdRS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M1FzcdRS"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4806e0f6b69so41691075e9.3
        for <outreachy@lists.linux.dev>; Tue, 10 Feb 2026 02:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770720105; x=1771324905; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hh2KvuBEeO5STWbByn8Hf6YpIpJjnJYWqY4W33WuXkY=;
        b=M1FzcdRSffBsr3teVDWrXeeh+3iC0n/ja0JmgnVZJdxpA+W1apkj7aQpR1NaMElcrM
         wf5j8Hc1rcZ7sE4olUwOkD2BgVmcbqY4MbR/QtEmjtdzS+PGE6HDaUjfpD8789M7Yic0
         1wxNcsw0WO8iZ/C9NbB7JQ0UOpjsuVbeHmjf57yCkyCDzZiLS3OUKZ6RZHRJjGh4aCRQ
         zwvdO5vExINH4cMAGcd+rHk0XR6V+W+XeAfoXZbTdFhpwP6Dsv9iNBl8Fo0nSt/LGz1Y
         FJ02PzsFGbzgm83GFb4PNVf65EdWIqNmwI39lniIUYrkJHMRPPmcYAXDeqcisSaROLkW
         w+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770720105; x=1771324905;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hh2KvuBEeO5STWbByn8Hf6YpIpJjnJYWqY4W33WuXkY=;
        b=kyEVGtn1H1970LPAOhfrxG4BraEh/YRFyieuyORfTTNjCOzOyuITaot6ZlbAYIRE0L
         1N9AoTKgyWT/QBpB+ZDzTstJFn5yP1Pwl2akjGgFDI+AE0C1w6GeDo9jln8FxQuT2aJR
         9vM/rswUVNbGj7yQwvdGogXpwBgmNtBn1mrCIbHmesPRA1iM/bbG/gN8Rq7pT+p42hW9
         IR7MDLiQIIlHMkOZYNVTapae3WeqpmzxV6TvNjSy5kDore+uHkJleKAa65H6LDgUXuQ8
         xkxigf3AnaORXwkvvmaW7mI7kZg7VgfX8S+09BNjvznjpVYcQmkA2gytC5dOUrM0d+E9
         1E0g==
X-Forwarded-Encrypted: i=1; AJvYcCVoZaasI+/Y2TfdyoSjPRVGZGH98lBw5URvE8yhPd+xnaSGXmdrP16AgC/a+DIkg1jw3U7eKH8PDGA=@lists.linux.dev
X-Gm-Message-State: AOJu0Yw+BviUoKVtMbBFs+KkBtyHfmCvf+f6lVLMqWyg9JAmijmrf2S+
	IpEHPobsqQlZwnACDjTklkUvQkOIeZvtUCisYwGLX11AngfzUnGwxNcp5Leb55nq6qJi5LrI9D5
	SdMxS
X-Gm-Gg: AZuq6aLIu2wsXUg58JrpkSKka9kS6ruc7e/6aesr7MrZFXzGa0eBROvrHeM6szwAnNo
	N8Ct9tujftFgnLWFJM2opG93+H7EErONnZYIOxrW8RMeFDVpqV0qve9blPxcHz9unvMK91+c/2z
	IhauoKX1cN+ExrJbO8AyacrkPLVak3fhmsLXwoQbEAGVCs3Ep76vApeUjsGNgUHmpUVX8xa0GZt
	mP/XUMSkGWagtBnaCpUweUTAZEqUoSLjlkXcMV0G38cOXFVwZMgV0HUo6mPxyD4hi3e4yxQqE84
	HBFU3XDXlM6pNtU9NzTd+/YjPZ4rzRs3QvNt8j+1/dZsQYwzAnHpdSaWZp7pH4JRpeR6Eaccl+J
	BQKqQ5SnU2zNoczIZcmXSvBN0wITpX614alyF3wCCmNFbqLtCRFcPN9d1cdfZUlY/blDnYxjwUl
	Q0kC00SlcXYVvq20EgtwjB4k8Sra0q
X-Received: by 2002:a05:600c:8211:b0:477:9dc1:b706 with SMTP id 5b1f17b1804b1-4835081e92emr21363335e9.19.1770720105230;
        Tue, 10 Feb 2026 02:41:45 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8f2csm76512465e9.1.2026.02.10.02.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:41:44 -0800 (PST)
Date: Tue, 10 Feb 2026 13:41:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: David Laight <david.laight.linux@gmail.com>
Cc: Yoelvis Oliveros <yoelvisoliveros@gmail.com>,
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: octeon: type change from uint<bits>_t to u<bits>
Message-ID: <aYsLZcRhZ7kB7f51@stanley.mountain>
References: <aYq028TNyXQWZ_v5@home-pc>
 <20260210101952.631bf50c@pumpkin>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210101952.631bf50c@pumpkin>

On Tue, Feb 10, 2026 at 10:19:52AM +0000, David Laight wrote:
> As a separate issue, what is the purpose of all these bit-field structures?
> You can't portably use C bit-fields to map hardware registers or network
> packets.
> It isn't just byte-order, the 'bit order' can differ even for the same
> endianness.

Huh.  I didn't know that.  Can you give an example?

regards,
dan carpenter

