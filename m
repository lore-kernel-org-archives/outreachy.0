Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.54
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792776312;
	b=0HE7bPthf68FT3vIMEm9wgJLW3ddWCIECJOttfx4dkIpv0u8O4MYyby58NOHZwXR8SN3
	 QbcXJSfaqw/pcv9z7Y2sPrzBy5uyTM06aeL+ZrM/EvqfuRgAAbX/R1uXcTW2/nR+n9Kn2
	 zHU5Gu5lmzuZuV3VZh0ECRC5qKZXz56qZ5zMBQ5bCWE36EtAhAWR8Nd2BF7ZIDx1AM+K9
	 yVhSzonzCm/zKEWJWW5mHbjVdy3vUiS6GF4ATwW8JGkzCkRguDH4V7YZWPo8Mlp8TpwnB
	 Uslf1q11QFCv/JhOaROMP22HcQd0xP6Fl8Q0OxK0WIQj77hBhmlCJDb43KrSryNSImg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792776312;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=RO+LOoJIbW5iZ7RHeBPtINL9e1shP4vPoVIK7G9kRv0=;
	b=u+Yz70c8yUjhR++s8Fc50ShQ0rUYtEOKvu0AV5vTzI5mkEkteJ40io2C+L4S6EtqIRaw
	 1dveT+eTqTiJ0YcVcGYnecZ3f+UYj3Lt4vgycUSl6ddhIdQ+gAIbhzXRfpMYuNubSq/DE
	 F3a+O0+2pxJ2nW1SROJk2rKApX49F8YooYSOsGn125BOnW+H1jah7FvZ/1+12Q1pQulbu
	 qqjmaf/klr6qIeIFmwCXfGvRm6AFdS/g6wtqoxIu3nDTqitGNH6DfqFjAoOAg5flUWmxp
	 7FkhLshsq/S71muBf7+kN3eYFunogtSeWX1EGAiMPJJMCSGBCZAWof7OboBqBa7VQ2w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=hKfTJFsY;
	arc=none smtp.remote-ip=74.125.82.54
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9059606A31D
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 17:25:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org C9059606A31D
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=hKfTJFsY
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-14fd9dafb0dso291562c88.0
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 10:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792776311; x=1793381111; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=RO+LOoJIbW5iZ7RHeBPtINL9e1shP4vPoVIK7G9kRv0=;
        b=hKfTJFsYWbOJDFSe0TdCWYG+QxFNpGp+pf60PixUgnRaJIjH1KhtQ/3nj+98FwRXhx
         AJKBCowOoGUeH7YsBSZ1zWjughhaLQIA60ssJhoC+ckVzF3Nb9QfMXoxk8yBfM55HoZ5
         2hw8iLz/isGXMWKjOlWJUxLGSRg7zVLqQRHrHjf9w0+KdnuHjMZJbMRvmQYjDoha3Rx9
         MM54Hq4vPNocVUDOl7EupOHqZG9IVhn7sw3VUoxd4ijVpPdQMVvDv3V+6nHRom7DLTot
         QNA8YSd2NUKDsrDO5VQ4NWITU9QjaoK+WnTk7CYZJkx5oFattmw5y5dEhb1WC83J2FYn
         FAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792776311; x=1793381111;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RO+LOoJIbW5iZ7RHeBPtINL9e1shP4vPoVIK7G9kRv0=;
        b=aGzI0ZUICtpm9ZiJwn5K82gG1qRYY4q649bzpk6Uxjis5COH1lJHlVRyUwQ6sZmhAA
         qALzRSajBNR2c2u/XHSVBfYzHkcXGnWgEPnNIYl/RmSSqKRuaV1YwCrAG3r3r+58CCVG
         vywA7/BQ4vM38OEd54T87m8Yb+3kEcqDGaYpjIjvy4LyRORgUbR/2phJMsC/nZFQcEoy
         7Ha1AypD/kPzRb0XO/pFLyDV9bEJfUVvKjRENbSv5hCrcxp+wo9zjrkG1PNjgvzh9bLB
         7S/FZuzIbpLrLJs2Z/oxpEjtfCRYku7vk40VHJtsutJqQl2BGJ9PHn+jX/9KSRzfybWw
         f1pA==
X-Forwarded-Encrypted: i=1; AKwUvBziCou1l/tHEaUqHOPXY4SNwXT8tD9bZrDfaWSTyrVWTBLkqpBQb/N+nhHd+11wBa2V1TXXTy8IaQM=@lists.linux.dev
X-Gm-Message-State: AFq9FYJ1Oy90gkPpHfSr/CP8RR2oS6Ryv4GNykc9Eru2g9+aI7ZqCjS2
	kW5twR0QjiR8s4sLGtskCOSq7YtVU4Sra4RdrroXTZ8RddbXcKX5YWS7
X-Gm-Gg: AYBFou25geGlIDHSsGW32RSO7m4PCz7zgmN/hhA0GDFJS6dUScSYs2y8lJ/8LEVLD4G
	IUUd/JO+CEFD28DQACwuSmBBLOvWf4IstDGMxQ+hGuTv/3NEeFMNhWWwUBozWkUYOrrBS0clnfP
	fqtotnt4fst+YsFiN7j/qlqKD2VJMlmnPY64K8ChYWtOJShX3Fn5cPuWYam7/7ezD++8aGRcQiD
	YCt/hLy3fSxrZR2RFYUCHTP4/04MceaJuQ1bnDFdtv87/sZaOe3stYz70IWDi8P3QuigHjEdm4G
	+mmk8aFD2qmx4Sxo6ySwWiXPDCg8tasiCBkHfw99CTg4BqUBJw6iJF+4aGOg53g0DW9UvNrlRKE
	3j848T3SIPYDBNP24mJFBlxGU8+ZkvdjSUDVxeLsRCW7Cht2FYPu+t1C2PGO+rYqGCNmaO7k9Ob
	q6aQ74ogy313ZVtFqwO8AUwA8UQ9R3M9+O491135+LFDnZU7FG749lYTHaVYfEvdPEUjf7EiZ9v
	ScnOMTfW4SPJUgoTJhibil2q/J9mmIg3o9Gc7WDcUJTnjou/P2pBG9QYOT8Lw==
X-Received: by 2002:a05:7022:6606:b0:185:6b47:dcf with SMTP id a92af1059eb24-195a074d885mr4595312c88.36.1792776310587;
        Fri, 23 Oct 2026 10:25:10 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:4145:da00:43b2:a151])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e6dadb7dsm1039145eec.6.2026.10.23.10.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 10:25:09 -0700 (PDT)
Date: Fri, 23 Oct 2026 22:54:42 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Alex Elder <elder@ieee.org>, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, outreachy@lists.linux.dev,
	johan@kernel.org, elder@kernel.org, gregkh@linuxfoundation.org,
	vaibhav.sr@gmail.com, mgreer@animalcreek.com, vireshk@kernel.org,
	rmfrfs@gmail.com, dtwlin@gmail.com, pure.logic@nexus-software.ie,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: greybus: Replace format specifiers
Message-ID: <atuYWuWeqvEG6j4B@user>
References: <20261021163437.280930-1-pavankumaryalagada@gmail.com>
 <3433f922-bffb-4f1c-8e06-a7a87f5dbcaf@ieee.org>
 <77adf02-43a9-7621-a94-9da41f8c5a56@inria.fr>
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
In-Reply-To: <77adf02-43a9-7621-a94-9da41f8c5a56@inria.fr>

On Thu, Oct 22, 2026 at 09:30:26AM -0400, Julia Lawall wrote:
> 
> 
> On Thu, 22 Oct 2026, Alex Elder wrote:
> 
> > On 10/21/26 11:34 AM, pavankumaryalagada@gmail.com wrote:
> > > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > >
> > > Unsigned variables are printed using %d.
> > > Replace them with %u to match their types.
> > >
> > > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> >
> > I have reviewed every one of these and they look good.  Quite a few
> > of them--because the size of the value being formatted is less than
> > 32 bits--would print correctly no matter what their value.  But I
> > think it at least does no harm to convert the format specifier to
> > unsigned in all of these cases.
> 
> I was suprised the compiler doesn't complain about this.  It seems to
> complain a lot about type-related format specifiers.  Yalagada maybe it
> could be worth adding something clearly invalid in one of the argument
> lists to see if the code is actually getting compiled, or if you need to
> set some config option to make that happen.

The files compiled sucessfully with the normal build settings. I also
enabled -Wformat-signedness to check for format mismatchse, as this check
is not enabled by default. It revealed a few more issues, which i'll look
into as well.

Pavan

> 
> julia
> 
> >
> > I have highlighted below an existing bug that should be fixed.  It
> > gives an example of something to look for when you do this sort of
> > activity.  Please arrange to get that bug fixed.
> >
> > I also pointed out one other observation for you to think about.
> >
> > Thanks for sending this.  I didn't check to find any other instances
> > you might have missed, but you seem to have found quite a few.
> >
> > Reviewed-by: Alex Elder <elder@riscstar.com>
> >
> > > ---
> > >   drivers/staging/greybus/audio_codec.c    | 20 ++++++++--------
> > >   drivers/staging/greybus/audio_topology.c | 30 ++++++++++++------------
> > >   drivers/staging/greybus/bootrom.c        |  2 +-
> > >   drivers/staging/greybus/fw-download.c    |  2 +-
> > >   drivers/staging/greybus/fw-management.c  |  2 +-
> > >   drivers/staging/greybus/gpio.c           |  2 +-
> > >   drivers/staging/greybus/light.c          |  2 +-
> > >   drivers/staging/greybus/log.c            |  4 ++--
> > >   drivers/staging/greybus/loopback.c       |  4 ++--
> > >   drivers/staging/greybus/power_supply.c   |  2 +-
> > >   drivers/staging/greybus/raw.c            |  2 +-
> > >   drivers/staging/greybus/sdio.c           |  4 ++--
> > >   drivers/staging/greybus/spilib.c         |  2 +-
> > >   drivers/staging/greybus/uart.c           |  4 ++--
> > >   14 files changed, 41 insertions(+), 41 deletions(-)
> > >
> >
> > . . .
> >
> > > diff --git a/drivers/staging/greybus/bootrom.c
> > > b/drivers/staging/greybus/bootrom.c
> > > index 83921d90c322..fb1fbd3f7b99 100644
> > > --- a/drivers/staging/greybus/bootrom.c
> > > +++ b/drivers/staging/greybus/bootrom.c
> > > @@ -222,7 +222,7 @@ static int gb_bootrom_firmware_size_request(struct
> > > gb_operation *op)
> > >   	size_response = op->response->payload;
> > >   	size_response->size = cpu_to_le32(bootrom->fw->size);
> > >   -	dev_dbg(dev, "%s: firmware size %d bytes\n",
> > > +	dev_dbg(dev, "%s: firmware size %u bytes\n",
> > >   		__func__, size_response->size);
> >
> > This line actually contains an error (and it was there before).
> >
> > The type of gb_bootrom_firmware_size_response->size is __le32.
> > So the value being formatted needs to be converted into CPU
> > byte order before being used.  That could be done this way:
> > 	le32_to_cpu(size_response->size)
> > or just use this, which is known from a few lines above to
> > have the proper value and byte order:
> > 	bootrom->fw->size
> >
> > Please add this to your list of things to fix, and submit it
> > as a separate patch.  This would be a bug fix, which would
> > also give you a little bit of a new experience.
> >
> > >     unlock:
> >
> > . . .
> >
> > > diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
> > > index 4f1b3f4db404..2314496a858a 100644
> > > --- a/drivers/staging/greybus/raw.c
> > > +++ b/drivers/staging/greybus/raw.c
> > > @@ -112,7 +112,7 @@ static int gb_raw_request_handler(struct gb_operation
> > > *op)
> > >   	receive = op->request->payload;
> > >   	len = le32_to_cpu(receive->len);
> > >   	if (len != (int)(op->request->payload_size - sizeof(__le32))) {
> > > -		dev_err(dev, "raw receive request wrong size %d vs %d\n", len,
> > > +		dev_err(dev, "raw receive request wrong size %u vs %d\n", len,
> > >   			(int)(op->request->payload_size - sizeof(__le32)));
> >
> > The above size calculation was done somewhere else without the
> > (int) cast, and the format specifier was %zu in that case.
> > I don't think this needs to be changed necessarily, but it's
> > something inconsistent across the Greybus code.  Consistency
> > helps readability and maintainability.
> >  >   		return -EINVAL;
> > >   	}
> >
> > . . .
> >
> >
