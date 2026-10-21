Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.169
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792556418;
	b=1rr6teVKWmzuGnikaItRPq4CUA5Bb8GiB2a1lNytLnZ8X4K5IxcW3+KQnLzsSbSae4G6
	 5EAfgMuTIsjLtwO10dA52AhU625RJw+t/70Gi/m7IAyRkmkkNBwHAzlOEVShCiXIT28dD
	 Gt8mKZnid7ajzHVjYmooMRTEQaSQs137Te3R3/ZvOAL1YCwlKwQfYBHYTQyobNUbrIvD8
	 Xbs61hc8M4szm8TnwPbmt8uUTaNZ8uiW9BFEq2aBuuRztZVmtVnRomZ7OkZYgohNuk6jJ
	 JweY68C4toY55GYWgdfOBi5zTOeMfaLzJEDHy4FDzwlBlFV8yyRIGVMsudkHhzK+5jQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792556418;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=F6nqS7mcyLguqD1PJrlyheTLjJilKtOGHy8lXcshPXw=;
	b=wCi1+V31UDf4voN0gbEBt1YSrAhaJn2TT+4ZOyJ61VOaT8q8b5DkR/pcQ3szoxKJ1JYk
	 o2PKQICd4f2CYxRxCHeN9lCCbviAuRSOeemmw58sQzMijJPVUYsMzK8peHUd6yJca68Se
	 Cm717BGdrc3Rod2MyTD37haZ922NQOd8QQOg0HoxNxhhgjgFOm/QoessgzvD0WnqqmFiT
	 RhaWVytv39QzXnq82RSNM1de3s/TJYhWYiB/vDT2XjqcOdvYizKwx7oM8OSEetAzrplDV
	 0X4obge/CoKFIA6B2YB8FI9H49In2oAkSfV4Z5nLE9l3bItJuRzhUvo6fS5kk4j9pdw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=JYUMFB4I;
	arc=none smtp.remote-ip=74.125.82.169
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C3D606A31A
	for <outreachy@lists.linux.dev>; Wed, 21 Oct 2026 04:20:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 47C3D606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=JYUMFB4I
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-3535a54bed9so358883eec.1
        for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 21:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792556417; x=1793161217; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=F6nqS7mcyLguqD1PJrlyheTLjJilKtOGHy8lXcshPXw=;
        b=JYUMFB4ID9zEdHOwXmDIXu69mFaxLBRP9aT7AsgIxvyg2gFKASoovSDIgS8LPAM8HR
         RCxulgC23yAYOvBVT549fL4Z/Snm1h+2MWa0omclb4sbxVxuz/8+fnJZMdq21KicFrpf
         vl1Ydvn5H17V0jzRrM36Z+DTEa1xFEUaCCEq9brrevohwhH6jVohF6G85cW2oATx4cCM
         3dw2VX8dXVGtqVW4jZVjR4pbNnXGwigLgH+r5roZGWM8PjniD71648C/cmxaRTSXzA+7
         aa7cicmpwBXahHhGl7eXvuLCBoxl+CCPG5J6LWO9/UjNyS4jnGnYGzhss2M0jlZaNPGp
         we+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792556417; x=1793161217;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F6nqS7mcyLguqD1PJrlyheTLjJilKtOGHy8lXcshPXw=;
        b=Ua9ud2SZTps5DUC0SsVfo2DxxsyQI0CS/kq1PaFj4JX81r/xp1o4EbAfNjen8ygRW6
         m/MnxTnQj1Z1UUBd5gLPrGuKYdbI8VGkRbVqujLNQJCc1HdT9f8C50EIWlVenHPdL+lW
         xkZQM6SkS9TTYTTPOHbfEA1fLjRxpr8XovvIl+V1seD8tk6f2A8YdHoVcwE4xtT986nY
         n9HW0eo8HhL+VYpTiNFnZxrqK+WcTl40JWlVV7ngjEEJ582aien5UbGJ/WjaisLk380b
         YkOszz0G8bOpihF+BAXejDIa+5mckthPfnrlKMKCJP8nYQBJI6mc1q2oGFfOtcR+ITBt
         J6gA==
X-Forwarded-Encrypted: i=1; AKwUvBz3gqBIiLc+c3ZTK4ya5Tkmhwm6apMN4I5BuX4FbMICh7u6eBl6qM//DW5Y+ZkE1gNbUe31gJ/THaQ=@lists.linux.dev
X-Gm-Message-State: AFq9FYIQ9hKLKUD5HXBU1Sb97/cZR4NPAl+gyx72scg1xe6G0Y1jCdd8
	DAQDW2Nxtfi3mJFO1pIeMCdvboTuZ5anwG4iZx3oX7vLufbwaxiKxX5e
X-Gm-Gg: AYBFou03AtAx7ZdO2nq1LHDXwDHZO3THFeVl5arv3sgt/6sEeCHd4fpz5ZieSk/CLFM
	M6Snx/sm9g+dEL74ukJ+QSNJpYXxgnm9EMVpy37XPkbJhjWAqYo72a+2iY4rrNUQCe9/evW3xNg
	w/oLuD7SZFkDkl5eiDEI1Mh+JJGJXr71IbrxcU3j35dlaQAGBfRZM61PGTNLG4+YKRf5xSGDwZJ
	3ZMva873S4SL/Sn2cdiuZVD7joJQu6MsSup37d9wdAqZNeAqUYBarcLtLPFG5l9b6TPTtzkaM/d
	tKsge8q+zfWJ5LBrq/4+uY5LNJDoZmE3dIw1/ayPXHooxGQQkxb5UPoLL4cOSPPeEP46WzVefvl
	Bork+9YN9U8wqR+IIKjO5MKzgcNvMIQjBQvU/Fw3M9s2kXYysdfFt234Z9zFfmpcrFyDvUD5Sgu
	+lyBPLtWxUemEekBXMBszj8ZIwoMB99ryzZS3F2uFAefy36Yzy8UZgcWZ0Km6SjGH6dVU4uJ8KT
	OH63ocAJEyLwsfDVIjJ/Y1AY+4J+yOqoR9KnOkXH79qW3iLhl2c4tQ5AAV9
X-Received: by 2002:a05:7301:db83:b0:35b:cb8a:8d0e with SMTP id 5a478bee46e88-3674cb387admr1757579eec.16.1792556417222;
        Tue, 20 Oct 2026 21:20:17 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:2b85:4f59:7505:fbbf])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-367405ed2absm3682269eec.5.2026.10.20.21.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 21:20:16 -0700 (PDT)
Date: Wed, 21 Oct 2026 09:49:51 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Alex Elder <elder@ieee.org>
Cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev,
	pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
	rmfrfs@gmail.com, vireshk@kernel.org, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	ethantidmore06@gmail.com
Subject: Re: [PATCH v2] staging: greybus: Align function arguments
Message-ID: <atg9Zwie6-Dva-Xb@user>
References: <20261017084441.12123-1-pavankumaryalagada@gmail.com>
 <7e71d57b-f3c7-48b7-bcdf-75254ee87cdd@ieee.org>
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
In-Reply-To: <7e71d57b-f3c7-48b7-bcdf-75254ee87cdd@ieee.org>

On Tue, Oct 20, 2026 at 09:00:03AM -0500, Alex Elder wrote:
> On 10/17/26 3:44 AM, pavankumaryalagada@gmail.com wrote:
> > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > 
> > Align the function arguments to follow the coding style and
> > improve readability, addressing the alignment warning reported by
> > checkpatch.pl
> > 
> > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> This patch is OK, and it's a good kind of thing to do for
> getting your feet wet with sending out patches for review.

Thank you for reviewing my patch.

> 
> But I encourage you to try to really *read* and understand
> the code, and see if you can find anything you think is wrong,
> or some bit of code or comments that you think could be more
> clear.
> 

I will try to understand the code better and look for ways to
improve it.

> I just scanned through "loopback.c" and one minor change (to
> *code*) you could try is using fsleep() in one place that
> uses other functions to delay.

I will look into this and work on it.

> 
> Another thing you could look for is printf-style format
> specifiers.  I see more than one place where an unsigned
> value uses %d (which, for large values, produce misleading
> results).

I will also check the format specifiers and make sure they
match the variable types.

> 
> These suggestions aren't especially complex, but my hope
> is they lead you further into understanding the code and
> not relying heavily on checkpatch.pl to find things.

I will keep these suggestions in mind when working on future
patches.

Thanks,
Pavan

> 
> Anyway, this change looks fine to me.
> 
> Reviewed-by: Alex Elder <elder@riscstar.com>
> > ---
> > v2:
> >   - Rebased onto staging-next.
> > v1: https://lore.kernel.org/outreachy/C560A15E-6F28-4FC8-8BE2-277B503340AD@inria.fr/T/#t
> > 
> >   drivers/staging/greybus/loopback.c | 3 ++-
> >   drivers/staging/greybus/spilib.c   | 3 ++-
> >   2 files changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> > index fe48a687377a..efc69c10cffe 100644
> > --- a/drivers/staging/greybus/loopback.c
> > +++ b/drivers/staging/greybus/loopback.c
> > @@ -652,7 +652,8 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
> >   		}
> >   		if (!gb_operation_response_alloc(operation,
> > -						 len + sizeof(*response), GFP_KERNEL)) {
> > +						 len + sizeof(*response),
> > +						 GFP_KERNEL)) {
> >   			dev_err(dev, "error allocating response\n");
> >   			return -ENOMEM;
> >   		}
> > diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
> > index e4d1ae8308aa..c1982f3fb931 100644
> > --- a/drivers/staging/greybus/spilib.c
> > +++ b/drivers/staging/greybus/spilib.c
> > @@ -160,7 +160,8 @@ static struct spi_transfer *get_next_xfer(struct spi_transfer *xfer,
> >   /* Routines to transfer data */
> >   static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
> > -		struct gb_connection *connection, struct spi_message *msg)
> > +						    struct gb_connection *connection,
> > +						    struct spi_message *msg)
> >   {
> >   	struct gb_spi_transfer_request *request;
> >   	struct spi_device *dev = msg->spi;
> 
