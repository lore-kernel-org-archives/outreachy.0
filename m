Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.216.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792764929;
	b=GfmxJNxDOo82uFoDnwuKdgfs44zb4WfvxVg5sn29kYA+UnLxGxzxrwReOgXjnuR9OJL1
	 bnijfikVA7lEcdOu1FUQoCDlrggRKORY+MIRHAo+VfwY0+1r8ivQJXUXv8EZy4P3cjm6D
	 a1MgjBX4/+knRiBYKA8d8rBRIyqZDMs4GikCDorVnoV5nvZdpFB9OUZ7Bieu13xXPjK/w
	 xScGiy0frBd7tWThQRqh4qnqcLmUxmK4qhsj/jbgMkhEr7ZWwzCcfBdeG2ovV5SG8pqDT
	 R7bEdRoXCmAYfJojdlluutaxHjaHTwiuZAQSMXYj7yzsGTzHMo3DvWH0BWdUoxcYHfg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792764929;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=Tm/cpYxqrKZTkvEJNBnPzr85AedjzKo9UBMwFMFE+xU=;
	b=3Z8AW0COssPl9cZb85+I+w/NhG86R3keiJc1PFAigl19eTuekEC+NoA0U3oaWWR9RZpe
	 e5sB6RH2y9F4D8UkT9EYPDN1akfmtMJ0sI5+QvoZiwowgQCsa/YF5OGB6y7B+nhtn1cns
	 zNP+3K6x+AMluRE840Z7P8EWhsAcUsZnLkc3zW5UcgDLz9IFpLY0hQgM9RLO+5G34KyeR
	 URljTEP3v04blgNQu6L6P6bLTtvyHan4SbELX313D3XCHC40filQ/gp2/jwt2Dq4kHe2Y
	 LTRqi86XOLuo+jprEU0ZnRuQFLioNGDGkX1saY4xecDjuyCm8LJ5KTySsbXke6H0gkA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=EF23W7wN;
	arc=none smtp.remote-ip=209.85.216.44
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A160A260D
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 14:15:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 1B7A160A260D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=EF23W7wN
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3adac5b29ebso581473a91.2
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 07:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792764928; x=1793369728; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Tm/cpYxqrKZTkvEJNBnPzr85AedjzKo9UBMwFMFE+xU=;
        b=EF23W7wNl1FWecDOBqACRo1K+JJBAWkC3PdB4rnURNZL0UApk3040AYJPZ9yatSJBe
         Dy7oZD5FrqNhOcIVdfK+M9ZZbTlPkZxrQ9ShqyfnqZF+9bH9UqDJ5liaENX6GCzd45B7
         Rl6RXYEChVMmWmrdk4NtdJH7lL4nY9d0UDB2lKFtgZ0Fa8hZ4uu7Te9zYdXkVqp3OA/V
         i+c+GBhd5af/kkRZqkFUP2MzeUNNnqb0orUhLve2b2YKss5MRQNIwBAf+033mvUIy6oQ
         UOMmI6JwnEsSJ4ZD5k22ZDPXE7heTPHcMNubSIp4DVhSkGIhUcVgwX2QHj1OHN6dwdHT
         DvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792764928; x=1793369728;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tm/cpYxqrKZTkvEJNBnPzr85AedjzKo9UBMwFMFE+xU=;
        b=iuarTvPi5LLi8HNhpqHHu6MIBsB3xo9AT57JrAvFK0HclNz5lY+z4pKmK+3h4QJ/t3
         eM0XlKwN9BuOBiM2uD7iJhZLQ7QH8r7MfK08r7jN8Q0XuPvRc07TNJxkfq38mz7trsz7
         F6JNdryPIexgFOLozHQKTrqGiOJYrjeenyAUbHfcqS8RqFpWXyaFG9hsKPPQdlELSXQ/
         EK1iVh8PtsB/Oa1+0GbWiPa3mOU5AW+xQFvXY118g0jXVRFHEPIrIyqLFp71vLGq47ia
         YRiFeifaoMCfVz9ZN0YWWcmnbUe+aWp4RfvE8PYNvgHV47UTk33DF2eugsPxvs1u9Mh0
         06Zw==
X-Forwarded-Encrypted: i=1; AKwUvBzPRKXmHlsruNOSKUQGWSBBGseSE/NdAq58pYl5gZGqG/h9LkZZlHkS7Snk5fng0FY0M6GHgT9WPEc=@lists.linux.dev
X-Gm-Message-State: AFq9FYKOrPb5yBsHiLaCrfvsl0dZTdyaaeCqkXViVRfh5PQCNMiMZQIc
	wAjo5VRUzsBSWkxfbIJz4AKVTLvFeJMvLXbme6URTRxf6IQim/YmRGP9
X-Gm-Gg: AYBFou2NihRrzwTPCQQcbtm2vhTiA77bQX/zZ4mbyxUv2c257plm4s8DHCViUMNjC+2
	oIJBUM9CyyAeUgc3nBh2U7c+OxPEean/QM7UEXP7zXCDi6TvtuR6bfMe3lpThkDpndZPzKcMbKZ
	M7hbBBCoiErqNgThpVMbpkIIEFcFiZcFdP1c2cMiGuvC2BfA4RPmmtzABoFUh/cLD1/02GsH8Ke
	xpmqhzN1tJaPwQcq6OukKG52KM7rEc+hBfGPM0tWxx7sHeXkBGYguW8ZJrmukz1hCCJ1gqcd+kh
	x2BPYNI6s417DvYkYhyua8HFc9c00qAAPgJjaOIQuORWXqY6ju6UWnpjlcMhzB2SdqcExINarai
	zfDWMX2gW1/gJUyUByl3HckjYZBuMg1TjrRarc6qJ5vgiPfoCRyhnS9//S/f/4m8XvvJgAvBq1k
	Fb8AMBEkpapDx8dK1Nnpi468YHEV6cR9uGr09HgzMSgqtbRxXDzm3tOLsthRg+MTQx1+23lDYCx
	62bfaVaiCnKnJnh2CHi6jPHS9goS2kT8gU41FOGvefn5+LK6KjAKZfBYBfu
X-Received: by 2002:a17:90b:3c8b:b0:3a8:185:cf40 with SMTP id 98e67ed59e1d1-3adcdfaab13mr2265897a91.10.1792764928355;
        Fri, 23 Oct 2026 07:15:28 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:4145:da00:43b2:a151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3addeb56578sm360792a91.11.2026.10.23.07.15.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 07:15:27 -0700 (PDT)
Date: Fri, 23 Oct 2026 19:44:47 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Alex Elder <elder@riscstar.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, greybus-dev@lists.linaro.org,
	outreachy@lists.linux.dev, pure.logic@nexus-software.ie,
	johan@kernel.org, elder@kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: greybus: loopback: Use fsleep() for delay
Message-ID: <attr11CuxTty7rPn@user>
References: <20261022202455.104142-1-pavankumaryalagada@gmail.com>
 <a411ee0e-22c4-4797-9fdc-3ac11fa20d60@riscstar.com>
 <2026102338-rack-garland-2a29@gregkh>
 <fc3a1fb9-181d-4994-9bf2-45272dafc86e@riscstar.com>
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
In-Reply-To: <fc3a1fb9-181d-4994-9bf2-45272dafc86e@riscstar.com>

On Fri, Oct 23, 2026 at 08:18:04AM -0500, Alex Elder wrote:
> On 10/23/26 8:04 AM, Greg KH wrote:
> > On Fri, Oct 23, 2026 at 07:48:54AM -0500, Alex Elder wrote:
> > > On 10/22/26 3:24 PM, pavankumaryalagada@gmail.com wrote:
> > > > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > > > 
> > > > In the loopback function, usleep_range() is used for short delays
> > > > and msleep() for longer delays. This requires choosing the delay
> > > > function based on the requested time and converting microseconds
> > > > to milliseconds when using msleep().
> > > > 
> > > > Replace both functions with fsleep(), which chooses a delay
> > > > delay method based on the requested time. For short delays,
> > > 
> > > s/delay delay/delay/
> > > 
> > > I think "checkpatch.pl" would have caught this.
> > > 
> > > Maybe Greg can fix this up.
> > 
> > Nope, not for staging patches, this is for "learning" :)
> 
> Sounds good.
> 
> Please provide version 3.  And given that, I'll add one more
> suggestion.

Yes, sure. I will send version 3.

> 
> You don't provide the *reason* for making this change in your
> description.  You say that fsleep() does roughly the same thing
> as the existing code.  But... why make the change?

Understood, I will make the reason for this change clearer in the
commit message.

> 
> The answer is roughly that fsleep() is a common or "standard"
> function, and it's better to use those where available.  I can
> think of at least three reasons:
> - It's better to use a well-known common function where available,
>   because reviewers will already be familiar with what it does
> - A common function might get optimizations and improvements that
>   your code would otherwise not benefit from
> - It might (slightly) reduce code size
> 
> I am not suggesting you include all that, but you should
> understand it.  My point is that you should be clear on
> the reason for the suggested change in your patch header.
> 
> Even something like:
>   Replace this block of code with a simple call to fsleep(),
>   which does the same thing.
> is enough to explain *why*.

Yes, I understand.

Thank you for explaining the reasons behind this change.
I will update the commit message accordingly.

> 
> Also, before sending *any* patch for review, please *always*
> re-run checkpatch.pl so it can find trivial problems for you.

I did run checkpatch.pl before sending v2, but it didn't catch
the duplicate word. I should have checked the commit message
more carefully myself. I will be more careful with future
patches.

Thanks for your guidance.

Pavan

> 
> 					-Alex
> 
> > 
> > thanks.
> > 
> > greg k-h
> 
