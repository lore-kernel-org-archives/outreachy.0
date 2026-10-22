Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.44
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792696472;
	b=wbHiGHRWsIW9gnDGVXMQeSWo6GlMZhc4BhLsnmr4uCSwyZe5q2aX8/8fDDNz7+45dTuL
	 IWa2hNWagZaCiak7BJJwaABjkwga2Ij/DeEqrv+dPkjCY+fwAS+Z/SGaZgRqT+0ICgqz9
	 +p7doLX9yyQV3EIkHoqEZGD3aeK9TKrxZxLEHlOlrCDG6QlviO0VqKVSwSAaC8amePRC6
	 uPfKz/p7Y97MSWI96TjYjsK3FrOtqIp33So7zxgp8LT6tfAo07Z/Z8wawz1F1jN3bJoae
	 LUVqnO5kzKWKWHeiSYNdqUK2bqm0XQHmG4hLqjTbUxN3+/QDTt8nUSg/dCcLVANGoUQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792696472;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=u6kKdaF5AxgzpiROVhZ0qUCFn2LlsDmJ9V904EQhkRI=;
	b=lwXetD/RUSaX7w1/QjuLhCIBBUjZaVXJk7Nt+ExidmVS2ZGOma++RE6V6EJCphu5cVgZ
	 x/+Om0K5dX5r/OwR3lx6uOiZ8uT+XTxuqsoNB4EDJNOs5BU2BDqZc8ELhhBstkTuZ7/OV
	 LWqHxylRxtqGtizgBgvB5BmV/qgay4IZGuODjrunKZRV9dvPn+XJro3vax+ldeQhys893
	 5EbRIA1gnNEsAVAw9bJk4capU+2IsWbQqkSqMBhI8FA960En35JiWbrGN5C1UKQ0X2tfG
	 QEYPfjO0CDZY9bCbUVInN8zbhtklMzhpvhbMBYzKp0SiHPk6tgx04NM5D82lD8TM/IQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=sE+JTic8;
	arc=none smtp.remote-ip=74.125.82.44
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69C5606A31B
	for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 19:14:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B69C5606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=sE+JTic8
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1517bda04a0so129308c88.0
        for <outreachy@lists.linux.dev>; Thu, 22 Oct 2026 12:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792696471; x=1793301271; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=u6kKdaF5AxgzpiROVhZ0qUCFn2LlsDmJ9V904EQhkRI=;
        b=sE+JTic86YKkNJNBMlIOUOwQpOUlLawVLKkk62apCvrsmcWZnXynQWNj/EZFvGJmQI
         uXgwmtGgfBD3qrTd+DeBoOUQ8kjT66ZSHxAV6Z0SmleWskDxFBw7I9C7qru+8Xr0lpeG
         +jolhSvbTC56DoqvovfgGYmjokOBy0CCBr8rBc2UtKKMcE8GLU3r5DD51bDIpLDSFwiH
         yGD+NrkUCorIqz7c+p6BecB9/UeTskrd0biCRf7qh6+N3k0Dy8qj625pKmsbVscoX5uB
         Lx3/VZ2gKNZBOQnYwajPaXHPVJhFuB+TeWpj7hbAFwcnOSx9lToYZ9o38pxrLJjijBxL
         7QCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792696471; x=1793301271;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u6kKdaF5AxgzpiROVhZ0qUCFn2LlsDmJ9V904EQhkRI=;
        b=LjAePC2XHBn7L7pnkxUo/kxw+fnd999hZwZLslocDL6RGPp4z9qQ1IZ8yXQBeyl3UX
         qZI4hncsCmA6LiV65GjdwCYVoLCQIhDUF3EnHcKg6uYs+VStOSaFn6ltRuF4Dpc2h3eb
         wKsm+5iGrC9lzyF0jKM5lzP51S3XoenI5FYuT9LZxF9aiygpXji2QYujCFmSZX1YAwJq
         fz287ilPjN/w+PPtKyomsOTbBXfQ8zvm9/zMF1KMtisFFKDaixJi8mTf3HT0VsEpTvKj
         dXgriI6Z3kf5iNv8AZzgDf2Hu6HU8xCZDZoGJcvSUe9HYjhue5W1PwpVjzr0ZWaYn1T+
         uDnA==
X-Forwarded-Encrypted: i=1; AKwUvBylkK98rYymj9JPX7fJ3akEfvWCt2lccLcf1KfKK7g3CxCSdkH19Rif3Xcd0t8hyiMiEohG/tMH6Fg=@lists.linux.dev
X-Gm-Message-State: AFq9FYL6WugMBLznJ1DTJcb4Uf79cBC2XMn6Qe/dgzcs4IrugDNXNcgO
	R6/u4A2dv7Rpo5oqOOkaJdeZ+comPSJuOaA5jxE2QvAASQ1qLZZcOcR8
X-Gm-Gg: AYBFou3rvdH9XGzQWfc1fQQ8oVw6SIAwR43LiSTK62nEedzouOfhxXarnAE7mY3E2tt
	6ZlpdxNF9048I9rQcuI3llm96GKIMFXrRZxUriEVA659G9vdyeFgFQgb7reZkHGpnSWUDvQMJxs
	6wxd/BPlIKlkYHsPT7Uu9OlTrXNErIG2aqWs7U81xEhPWINLetAFT13V9vD8A5YYG0xryKu8ZVC
	SmQJJduPyuMFrheMT+ZcpdK3+DyDmvL4wgPJzv7Kq04H5N2iO5OAf17OlJZMXJxSmurbe2tRMaj
	ZYNEe4y8/7yuWZ5j0NzF3iiIRDebxKbSI1gAMwKwfXl7K5rakdn5/5SLKOJX8doc+tzDUd/LUkl
	GAjIXMlpmehz7dTa4EbnIJaXdKNmWfyqsvWVuAdaGkxRJoul8DlSIz+BoFQllRxhMQPkpaERfjl
	FX1SY9rTD1mQVbxCQrQf1pEUgt1F5XHHYibeTyIIwYuey14Faxdo22M4OKFuUI8PiXnuU0cvo+u
	29qLuCJKrc7e6JTEyn6OcVUM1ZdrPwhxj4zt06pGd7VEO3SY9jFXWHU4Lsw
X-Received: by 2002:a05:701b:42cc:10b0:14a:5284:1bf5 with SMTP id a92af1059eb24-195c4f4ef96mr212310c88.13.1792696470556;
        Thu, 22 Oct 2026 12:14:30 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:5e95:3be4:ff57:f0a5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d8f8eaf9sm220483eec.16.2026.10.22.12.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 12:14:29 -0700 (PDT)
Date: Fri, 23 Oct 2026 00:44:08 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Alex Elder <elder@riscstar.com>
Cc: greybus-dev@lists.linaro.org, outreachy@lists.linux.dev,
	pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: greybus: Use fsleep() for delay
Message-ID: <atpggBthwjZIFwXR@user>
References: <20261022110238.38824-1-pavankumaryalagada@gmail.com>
 <6d683673-39de-4986-a593-68a5a495e764@riscstar.com>
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
In-Reply-To: <6d683673-39de-4986-a593-68a5a495e764@riscstar.com>

On Thu, Oct 22, 2026 at 08:28:23AM -0500, Alex Elder wrote:
> On 10/22/26 6:02 AM, pavankumaryalagada@gmail.com wrote:
> > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > 
> > In the loopback function, usleep_range() is used for short delays
> > and msleep() for longer delays. This requires choosing the delay
> > function based on the requested time and converting microseconds
> > to milliseconds when using msleep().
> > 
> > Replace both functions with fsleep(), which selects a suitable
> > delay method based on the requested time. This avoids the need
> > to choose the delay function and convert the time manually.
> > 
> > Suggested-by: Alex Elder <elder@riscstar.com>
> > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> Your description above is pretty good, but I agree with
> Johan's comment.  In fact, you should think about and
> understand exactly how that behavior changes with the
> switch to using fsleep().
> - When would the delay be different from before?
> - When it differs--by how much does it differ?

The current code uses usleep_range() for delays below 20
milliseconds and msleep() for longer delays. When using
msleep(), it converts microseconds to milliseconds by
rounding down, which can make the delay shorter than
requested.

For example, a requested delay of 20,500 microseconds
becomes msleep(20), which requests a 20 millisecond
sleep.

With fsleep(), the kernel selects the delay method
based on the requested time. For a 1000 microsecond
delay, the current code allows 100 microseconds of
extra time, while fsleep() allows up to 250 microseconds.

> - Is this amount significant?
> And the third question gets at exactly what Johan was
> saying should be included in the patch description.
> 
> We want to know not just the mechanics of the change,
> but at a higher level, what is its effect?

The change may affect the time between loopback operations
and the reported performance. The code does not seem to
need an exact delay, so i think using fsleep() is reasonable.
However, testing is needed to confirm its actual effect.

I do not have Greybus hardware to test the driver at runtime,
so my assessment is based on reviewing the code and fsleep()
implementation.

If possible, could you please check the runtime behavior or
and let me know if you find any issues with this change?

Thanks,
Pavan

> 
> You don't need to provide a super high level of detail
> in this particular change, but you should demonstrate
> somehow that you've thought about these things.
> 
> Please submit a new version of the patch and reword
> the description a bit to concisely capture why it
> makes sense to make the change, and why you believe
> that the change in behavior is likely harmless.
> 
> Thanks.
> 
> 					-Alex
> 
> > ---
> >   drivers/staging/greybus/loopback.c | 8 ++------
> >   1 file changed, 2 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> > index efc69c10cffe..2fe845eaef29 100644
> > --- a/drivers/staging/greybus/loopback.c
> > +++ b/drivers/staging/greybus/loopback.c
> > @@ -898,12 +898,8 @@ static int gb_loopback_fn(void *data)
> >   		gb->send_count++;
> >   		mutex_unlock(&gb->mutex);
> > -		if (us_wait) {
> > -			if (us_wait < 20000)
> > -				usleep_range(us_wait, us_wait + 100);
> > -			else
> > -				msleep(us_wait / 1000);
> > -		}
> > +		if (us_wait)
> > +			fsleep(us_wait);
> >   	}
> >   	gb_pm_runtime_put_autosuspend(bundle);
> 
