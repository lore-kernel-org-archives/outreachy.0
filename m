Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.43
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793779216;
	b=o5lqPF2rhHtc9/XcGIQAD0e/PcpYzoF/EaYX3NUilRHHhs+mDeOQ060yBno16UA0NM2L
	 +S/KI89ZEObHoJwkouYN+jPKBXdM2GK85Cl8aieixqC2534ZhMv1rz+7y/fijvpKaxSWX
	 V/4QVQejDiimCfkotOgGXwQh/xtoLqjcm0dsB/SfifPL0rVMuQH2AHyXBRrrTIJm8yI2w
	 78N5aTx/Rmg7c3OzOENI59YkbAyqMqx3P0IZqUJih+qEM+MvavIt3yd38LoycPzworf/t
	 JW37CR49HWIosD8zo16uaK+A2dmE3G/5O/1O63VuJWHZ0HmF8jDXpChQsbBfdH1S0gA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793779216;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:In-Reply-To:References:X-Mailer:MIME-Version:
	 Content-Type:Content-Transfer-Encoding;
	bh=3J5U2FAeFLLXR6CG2lJiwfFE52kTArm5g7+TkN7ZkP4=;
	b=YZyZL4Bz6QOsczwSExYdiqqTk90a4USuGnMuGZfLIf6NVCsD4EKYW6YK/tpDGkUy59eh
	 T+11H/4Hb7+X2Ns3mjegFipHzyBzqAg+RU6+uWAZhegkoINQEwj7iMubdVK21tzZ2+g2j
	 Ua/YiwPxZNPCByYX3719Sa0s/KmGHofmG8tU2MOU58mX7YB1fV/yjhLXzLyOdESzlZUbH
	 3kRRdqM0XdLeExTCA6lW81cAAlkpJhgD+XvNGkBo/2hf3X70Obel6pKMexewgVqORyisS
	 bKeKXP8QLzH2baO5sLMD7HF9kfxfV17a5YV4bUyE2PAehie9+xl/WhxL77fHa6n/jpw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="AG/+l2HD";
	arc=none smtp.remote-ip=209.85.221.43
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E1D606A32E
	for <outreachy@lists.linux.dev>; Wed,  4 Nov 2026 08:00:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 93E1D606A32E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=AG/+l2HD
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-48afcd7ba9bso202563f8f.3
        for <outreachy@lists.linux.dev>; Wed, 04 Nov 2026 00:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793779215; x=1794384015; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3J5U2FAeFLLXR6CG2lJiwfFE52kTArm5g7+TkN7ZkP4=;
        b=AG/+l2HDwypxub5LDzUF67dhgAkf2S4VOVliF56DZtSzXjnv+YY86o7cIIbhB9fkHP
         WaRHaZEMMDZqhfO/hLVzj0iD7TOH8Th+pqFwbK2x+xzv0AVsHRXF+yPlBqsLiAuicgWe
         IYMtH9fAM8Dcw9IlBwGw3B4tfHhPw0vzPncanoZ6okbfCrKFSGjWXKmAvkBSICMz+e9/
         Mv/NCGpm2arp+o6KstwmfrtHtu7TBF3G5p1En6gndRa4pRyTzXLu7Tf6pOBjEvM6JNOS
         tYWP4ubqCZ5ahihcBFnbFAWICUcC9+8Xu8i9SY6UoMGrd7vCd09qveaRj3F9yCwZoHXO
         uscA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793779215; x=1794384015;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3J5U2FAeFLLXR6CG2lJiwfFE52kTArm5g7+TkN7ZkP4=;
        b=oS2LfwQeoiZI9rD2mv1pZUfP1RETW+ZMM45dRaVGy6i+S+xxbPuTLv6fvm6xYfVeNn
         LqfpGUnmn74F2lbfhizRIAyryUTZS/GEXuSG8jSFxCprzcLhMWf/yg+XnuAxcCiEPL/e
         9OQi4U5CX0zpbv/Q+S/R4KQhMpTWOCZikPWpLafPRhs5h61zrnuCoeHlbHD75sHRO8Mb
         7EGZ90PsgU13jKbq6ZqYIb1ANxT0GrhdBbdee38UYBno+K1jbB/YeBQdWrQ90u/+mnRO
         KZDu0qtO+JlunZTuincXGwOARkTS9BZfF0GHcafXVUIcSY91i4afF7pWwNz9tdApUNHA
         z5gw==
X-Gm-Message-State: APuU4Z+RoHgBUT5FB+SINbVzkuwBw/Dwma4E6SdUFnrClPF9I7N5leLo
	M4/Pkpj/VW3n15hkpEz3yywLWeFH/zufrxw8CKGYuYifEFPx3kwBkQG/
X-Gm-Gg: AYBFou3sr5aCc6MmZJx9NUWzNOk/55xtX7SeP2E8UM9N8gc2ZRtwMOhg/ZHzEOG0AXD
	3BVpWEt+FYWmB5qi0tshkQuhZHMHOrI+8QewMj5/FBL/VRnlVKj3HyUbnTuw4Ak0JJN6DzJuxae
	7sN8PGIyv6UZCotimZYewvzsQxNXRVVEnZvXXC/ZZA2BYQHAh6j3+UhxQSfddwL2RBFbZBNptm5
	hEH0y9qss0RaSwtS2NH/TBKNFYjrZFlFPc/Y9t//hUs6Di+ogwr7HtN7lFp3LPysY1dUb9sUgEx
	Qr6G5H2pTtDVlvQd0CltENRF3PyivmXv18z4LzknlUZa5QqJCF+2bJHe6TUNbD95lUK5zdHn3rD
	w78reFFGyQW36tUTAy+HeUcwd505AJlYm1WM62uI0hcRy/cegXWS+vq9ZKD2oAHnZWb8EQuKtlo
	7CVRdiUktS5FxrC6hlyGq0C+ZBgJk+xCibGmFrUDGgShH6u5yID23ST/yMdiK+oNJwIYNseTze+
	Iong/RRLziXOztGshOcLjJzqTE5YkaY444u+4Cx/vz9RwTdZA/IVFiukg74JI2RktSQFWdP3mLJ
	IqMSbBEUqMZp0D27e9zWN9flKSKPRL5XBf1gY43pn9eGVj8HRhVtim+wbiRSXazrGRHG/1Em+F7
	Hwea5eXXaDUjSF2mbBAUTZhnJvKtvbDc2ubG1f2EuhlCjn8sn2uSrZut7EBiLwRH4ZHIvWeiW+k
	ScrnvdmfuIrQkj3a11jFhQ6qgSraKO9wym7jX+HkmgIFp8kdHpRiKqSGsILCoRWnzsZHywwO6Sd
	gBrWNbPg/V6eIBnludMU4Q=
X-Received: by 2002:a5d:5f89:0:b0:490:2033:1477 with SMTP id ffacd0b85a97d-49020331482mr1365594f8f.56.1793779212966;
        Wed, 04 Nov 2026 00:00:12 -0800 (PST)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48fea18104bsm2588704f8f.6.2026.11.04.00.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 00:00:12 -0800 (PST)
Date: Wed, 4 Nov 2026 09:00:08 +0100
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Maria Sheikh <mariasheikh812@gmail.com>
Cc: outreachy@lists.linux.dev, nuno.sa@analog.com,
 Michael.Hennerich@analog.com, jic23@kernel.org, dlechner@baylibre.com,
 andy@kernel.org, gregkh@linuxfoundation.org, linux@analog.com,
 linux-iio@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: iio: addac: adt7316: return 0 in
 _adt7316_store_enabled
Message-ID: <20261104090008.00002b25@gmail.com>
In-Reply-To: <20261104041237.7978-1-mariasheikh812@gmail.com>
References: <20261104041237.7978-1-mariasheikh812@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  4 Nov 2026 09:10:45 +0500
Maria Sheikh <mariasheikh812@gmail.com> wrote:

> _adt7316_store_enabled() writes the config register and returns -EIO if
> the write fails. When execution reaches the final "return ret;", the
> write has succeeded, so ret is always 0. Return 0 directly to make the
> success path obvious.
> 
> Found with cppcheck (identicalConditionAfterEarlyExit). All callers
> either check for a negative return value or pass it through, so
> behavior does not change.
> 
> Compile-tested with W=1. The disassembly of adt7316.o is identical
> before and after this change.

I'd move the testing info below the ---, as it's only compile tested.
No need to resend however, this can be fixed up when applying.

Reviewed-by: Joshua Crofts <crofts@kernel.org>

-- 
Kind regards,
Joshua Crofts
