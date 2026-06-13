Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71A73F6606
	for <outreachy@lists.linux.dev>; Sat, 13 Jun 2026 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.50
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781365120; cv=pass; b=hqW6KvHHJwAo/PKpLBIVuz3p6v/Jqm5puiR/x2ojjPxGcNRjx95MAQitAKDQue9rGBWDxPnlbrzj7SUc3W07/PiyXljWq/0R/8gI+yc/1ubcz0g6WwfET5v8TWb0A8s5ZseJn8nj+jbGNHlIaCnfP1krYPwu7Gv/wJfofFXgc8A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781365120; c=relaxed/simple;
	bh=VaQzUiho6R6X5BFdJKnwhM2JaGoPaixUC9YOjsiaI/o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NgEwLolDpZRvuVpzP+d3V8JZD3fV2cXaFC7slfj6dE42LLo6h5ooiWRrivOpeDzf0dS0MPClJWnmVvVrn+QwPxxbGO1vxAFTmCxcnBeNm+Ag2o8rjERAFUOQji77U73U8mFn+yn+bOyjDZEKX5SeZ+NzXa0yoyRZat2XJgfi9k8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VKKF9+Xj; arc=pass smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VKKF9+Xj"
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-bf046d4da1fso181285766b.3
        for <outreachy@lists.linux.dev>; Sat, 13 Jun 2026 08:38:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781365116; cv=none;
        d=google.com; s=arc-20240605;
        b=bmypGSivtAJfhaJyMmCxZFYK0gNWaEjlnOwdl1wNkzxQEu5z+Snk46lQVk/X/HDbUl
         7Xq8dNIhpA16jLrxb1WVRWl6hme0qpCrxs4VTzmHWEHD79HlOK3ogKaXwmfW+WkSp+JW
         Hw7J7UWpsE8fDt3+h8lPWtFVzCay5uF4rD4UAcLrEdJPdH3wA+JCYSnJkm/Oddu8bIH6
         jd0P8st/vj43fboyORcET1VpP7OBKFTR0oFYCtGsm+B1leqkdGh5yTMdNr9BuKpBl6VY
         tfpgFKCwlCHO8PYlpoO8GE5l1O12WWpgPsgZmbWLzZ3VXv5EouTmoMTY/BprXqvLuLmR
         bf6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uOWDGizk9369FTjRLh6NLGNPGfs8z28wb9Xl2vEAMls=;
        fh=nv95RBrYYZNbJooLSQJ9nzo7pQ/YBG4hqxofGl+xgrw=;
        b=G1mnQv6jziSpIShwhgzzTs3aQaC7uNkanqyVbrj2Uvhu053FWkhli6vUMc9wHKww3d
         6YTunkVz4wOsYKEpqN8LEajwihbqjwj4+NgV10zML2zAo2uvsg4LZ78skUAzLHdMvTok
         CNv2Nm7kmEID2tt4s/K1i1wZhuQaIadibUF9nIhjh8MpS1G83CWWNu4tb496XDSqtCbN
         Rf/xnppf9vMmzbNTg0tRK8EbFT3sptENa9imjDLWgGbSRnGPWEaIleH01gmw79JGE1UW
         ZfZiwfgD/q4G7CLVGtMT8Se1qkSdGKPEjFJovrs2gfm1jLzMxLju3NyyJVJsxcnW854w
         4Dcw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781365116; x=1781969916; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uOWDGizk9369FTjRLh6NLGNPGfs8z28wb9Xl2vEAMls=;
        b=VKKF9+Xj+VzDGdjWBhCsjiHMvCQGMSZEPSXNazkGNlTcgZDpe36Rig2EvZrMmY+KUv
         EocepDXfa8Q9asmG9gf4J2OUncODKWJJ4gHTKbGeSAXC5j0M6XYTR7QwZq1aFJmWsKwz
         L/ivheNvuEU+r1KlJ+JjuHKrIBhjJbKD5XhWRDMkHg6uaWaNiNn+03ric+xDoi+XrNKN
         hhKXV7ts4FCI1X5qUQ546lh7sVqDaZwV57w7jHEYCFQjzdZNavf0GK4IM95K2R3JUusR
         BpdAExxLEQufmllrmlfncqOR7LFcnKahy9lqpCWgspOT3S5T0eg1arNAMcyD1/Jpasu4
         RfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781365116; x=1781969916;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uOWDGizk9369FTjRLh6NLGNPGfs8z28wb9Xl2vEAMls=;
        b=KDTwNyi3f8Cw039pjQ3CkhS+nMtt7RGGzjThhDzv7HFTIW3Ix2VHwlfVcDVMYwEBv0
         sACPdU080R7BcsG3rtiUgP4bncnua26MJU3+BFX6EE5eQ6i1UlLBStjSKILui+tMFBeK
         jKhC/cvmRpHOwGL+dGeRPCGGFZL9F6e8TTnBTXz+7MJfYafEtgpDDjz+0mRPVosRbsFv
         k5ri08TWCyf3rW7QAD07BSBv+1LjGAL2uX0fBsfNvZE0MsmQAaA8MyWiyUp+CRBY7kCf
         nwm4Urc9uGuD05s4hYuUt4owEdFsQgU6mfik4qX3SAOkvb2sO6hDd67wtwNlZiVuzX+C
         hyvw==
X-Forwarded-Encrypted: i=1; AFNElJ+v607BjbO+qmSD+WGnZEPC8rYCLgLcbwQOyTfG92Snj1S+pC0ZrOdJqrZe39OWMrTAuxp7gp3/yPY=@lists.linux.dev
X-Gm-Message-State: AOJu0YzUyrO3vX66BOee02zZmu6DGo7txP9ebF5FyUqGNJckenTL/1Lm
	AS26RUQDDc79BtNZdC07zrC0K/VVc1HYUxpyr3fAEC5gE8JPRX39yqkLli2uXNYf58r80HH7v1M
	4NFESp9iPsX7iKvb6FKeYhifPN5uxORA=
X-Gm-Gg: Acq92OHt8k+CEF8+5qd5sjdfp8je5b7fcydZdS2IIU0x96CT/gx/NyCSpG+N5icqkle
	2+fcU3+72DJdd3YN2fu4m466f1uCSg3gdoicPySnFdV94IoE+v2zxglbzIMYOkQp/+XD/w6SL6w
	Xcv5UmEz3S0G6yeUcXfE4GzaCczGsbdKA2uwM0/h2kili58ZiLY4i+9kIlPv/jq9nN+gsWluxvR
	kGVYqvEOtVIyhWbmNjNlga95P3dYQewwDPMiwDkVdB6cTFTcaiDXveEYEFsJ7OvhLlRJTnu8Z5L
	Vvb6vVKT6DSGEYV1hCFjqWI=
X-Received: by 2002:a17:907:e895:b0:bed:d329:1ed9 with SMTP id
 a640c23a62f3a-bff4bdfcba1mr152037266b.33.1781365115721; Sat, 13 Jun 2026
 08:38:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20260613014905.48458-1-brockhaftner@gmail.com>
 <aiz1bMmAN-gQnm9x@stanley.mountain> <aiz14CLCduz7996E@stanley.mountain>
In-Reply-To: <aiz14CLCduz7996E@stanley.mountain>
From: Brock Haftner <brockhaftner@gmail.com>
Date: Sat, 13 Jun 2026 08:38:24 -0700
X-Gm-Features: AVVi8Cd5UbthRNShg8YEncP0KBxT_NGxx0mp2GrBPMxb4eVX4ZgEGIFccYFnCgs
Message-ID: <CAAYiRaP0ahm9NsmPBdEy1A_TiCPCfGt-nBC_xf1-tN_RiuvmSA@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: audio: add missing newline to
 sysfs_emit formats
To: Dan Carpenter <error27@gmail.com>
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>, 
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy@lists.linux.dev, 
	greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 13, 2026 at 09:17:08AM +0300, Dan Carpenter wrote:
> On Sat, Jun 13, 2026 at 09:15:08AM +0300, Dan Carpenter wrote:
> > On Fri, Jun 12, 2026 at 06:49:05PM -0700, Brock Haftner wrote:
> > > The sysfs_emit() function is used to format strings that are returned
> > > to userspace. According to the sysfs documentation, these outputs
> > > should include a newline character for visual clarity.
> > >
> > > Fix the checkpatch.pl warnings by adding the missing '\n' to the
> > > sysfs_emit() format strings inside several functions.
> > >
> > > Signed-off-by: Brock Haftner <brockhaftner@gmail.com>
> >
> > Please don't do this for existing code, only for new code.  There
> > is a risck that user space relies on the old behavior.
>
> We should delete this checkpatch warning really.  It could be a
> sashiko rule which only applies for patches which introduce new
> functions or something.

Thank you for the explanation, apologies for the mistake. I did not
consider user-space implications for adding the newline characters.
I will drop this patch, thank you for the reply.

Cheers,
Brock


On Fri, Jun 12, 2026 at 11:17=E2=80=AFPM Dan Carpenter <error27@gmail.com> =
wrote:
>
> On Sat, Jun 13, 2026 at 09:15:08AM +0300, Dan Carpenter wrote:
> > On Fri, Jun 12, 2026 at 06:49:05PM -0700, Brock Haftner wrote:
> > > The sysfs_emit() function is used to format strings that are returned
> > > to userspace. According to the sysfs documentation, these outputs
> > > should include a newline character for visual clarity.
> > >
> > > Fix the checkpatch.pl warnings by adding the missing '\n' to the
> > > sysfs_emit() format strings inside several functions.
> > >
> > > Signed-off-by: Brock Haftner <brockhaftner@gmail.com>
> >
> > Please don't do this for existing code, only for new code.  There
> > is a risck that user space relies on the old behavior.
>
> We should delete this checkpatch warning really.  It could be a
> sashiko rule which only applies for patches which introduce new
> functions or something.
>
> regards,
> dan carpenter
>
