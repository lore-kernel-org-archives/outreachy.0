Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2F936B11
	for <outreachy@lists.linux.dev>; Mon, 18 Mar 2024 11:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710762116; cv=none; b=KPyrtPqauXfqLIU6B3tZA+ZgAQQcWhwKLgGDS2+ySRLG74AIgljQ6MZs6YWshMwtG2UMMbKKT+OpMbd3wedcKeP76OQo7qFDoh3htGrZKrnqNMunVq2lhvl40to05JmOWrbNbNkPiLLoaNKHiJWbHx7SaGaBNEanVszZnl/yu6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710762116; c=relaxed/simple;
	bh=j6O6ID3Rj15O6O8rpeSNfdBHFxphzxAuZ5HBqHzfMks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EcCw6v3wS9sUBHt2DjvP0GvVzzsHqylj43sg4TMzBZSo1WnZBef0Qfn2eRZf3vSDkjSBaHIbI4ye7OmabYR7KpGkEM7oIdY3a0slflWG+Pqr37PVBoQghkf3WoUdr2cCiWewfqMydYV3GAoARwGy44X6EP84pBRtB1n9Sw7lCbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=etXv9H73; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="etXv9H73"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-56a2bb1d84eso1225571a12.1
        for <outreachy@lists.linux.dev>; Mon, 18 Mar 2024 04:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710762113; x=1711366913; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cDRLb3XZp9ClHF0aRxyzi8pso/dctUr94dSSzzpjIuE=;
        b=etXv9H73nnQMnfbxoV7SZhn36Ucb+MPjG8HgIewfBKzbegEu4blTPdyucehWWC06hF
         3cZldhHkBU9k5JEuzt5hT5f4/8Urq5wi8Udu7zICmVoXDzdAoLyEXfJGXrkNz79XWzs4
         uFdF5ArvOc1KTHD8C0Hgaw9J8/DVj6YSZQ8jlK4BmFRJzdDTZhl3Oam0pDLeI67jlyTq
         1FzdnLTcLG14h0hGDqGnTxzwH4TyAW/NjI5AklVSkddCe/+CeYceozq7rCMpO1LUxjZ9
         UZvXbplodiKmGt71MeHmZGgNCe3Nza8aNhKPltxtbtPj2KUKFDSdah3mj6Cm4tiwddH5
         q0TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710762113; x=1711366913;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDRLb3XZp9ClHF0aRxyzi8pso/dctUr94dSSzzpjIuE=;
        b=lpYiW5ERTmSYmXiHI5lN3XzQGM2fSwm8lr4BNxOWSra6GFQRHWXba7r/wGxradptBS
         gd3hHNRRPhetdnTW1fHKeTXyj4vqdcKLb4cljgB1vx1LdeN7EToxc9DHUEVz4N6t5giX
         WbzasguKfAF4Q+Ok6JgD0Slrmho5kaqGkqQ8CnfvaP2AXriiusDDk3Jy3qvHz8K4b/d4
         Wj3dTXvXKc6VnumoMhXdfr1wR2ct+COgh6LJ5Ya/gDN4/1bNXiCTRu47cfqBf3nmVjf3
         52GwS1zhQDEgprocpq4lkhC88dPprHMBuaERh4JDIb4onhQo2UVi2ANtXvNoj3zc4gLs
         wKaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq7F/chURi1X6NrXLGPSO/xRAy6xPblqZNsz3mw7U0klgwt99pMIB5LmZjj+OEjISzjbbjP4kxSzzQ6hGVwfoI5/yBq3ArAvs6
X-Gm-Message-State: AOJu0YwCGpYQpNp30KOCMupDYbIQJAxPVyn1VcNZlz+OTFYg9z+Kg21x
	03Dy+PTbWiVORjB4xilHcAic3dTvaFxcoYd0jZjdD6pWdHcTFhROdu50Wfqi618=
X-Google-Smtp-Source: AGHT+IHEYVvNNUCi2FKbqSni2+f2EpctLaMDb4sX/Yfy3QJOHIIwsNs5Y8Ec2dXPZsFALz8gefT5cw==
X-Received: by 2002:a50:cc89:0:b0:566:d083:df68 with SMTP id q9-20020a50cc89000000b00566d083df68mr13974727edi.21.1710762113213;
        Mon, 18 Mar 2024 04:41:53 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id co24-20020a0564020c1800b00568c613570dsm2103665edb.79.2024.03.18.04.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 04:41:52 -0700 (PDT)
Date: Mon, 18 Mar 2024 14:41:48 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Ayush Tiwari <ayushtiw0110@gmail.com>, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
	outreachy@lists.linux.dev
Subject: Re: [PATCH v5] staging: greybus: Constify gb_audio_module_type
Message-ID: <499006ee-f436-476f-a669-d1abfdb082db@moroto.mountain>
References: <ZfXj1WkJ3nrYh3qL@ayush-HP-Pavilion-Gaming-Laptop-15-ec0xxx>
 <ea44d965-e727-4fc4-86cd-b727e1e0d2be@moroto.mountain>
 <95d1caf9-aac4-9b10-a933-63874274464@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95d1caf9-aac4-9b10-a933-63874274464@inria.fr>

On Mon, Mar 18, 2024 at 12:25:55PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 18 Mar 2024, Dan Carpenter wrote:
> 
> > On Sat, Mar 16, 2024 at 11:54:21PM +0530, Ayush Tiwari wrote:
> > > Constify static struct kobj_type gb_audio_module_type to prevent
> > > modification of data shared across many instances(instances here
> > > refer to multiple kobject instances being created, since this same
> > > gb_audio_module_type structure is used as a template for all audio
> > > manager module kobjs, it is effectively 'shared' across all these
> > > instances), ensuring that the structure's usage is consistent and
> > > predictable throughout the driver and allowing the compiler to place
> > > it in read-only memory. The gb_audio_module_type structure is used
> > > when initializing and adding kobj instances to the kernel's object
> > > hierarchy. After adding const, any attempt to alter
> > > gb_audio_module_type in the code would raise a compile-time error.
> > > This enforcement ensures that the sysfs interface and operations for
> > > audio modules remain stable.
> > >
> >
> > Basically the patch is fine.  The only comments have been around the
> > commit message.  And all the reviewers have said correct things...  But
> > I'm still going to chime in as well.
> >
> > The commit message is too long for something very simple.
> >
> > Basically all kernel maintainers understand about constness.  There is
> > sometimes trickiness around constness but in this specific case there
> > isn't anything subtle or interesting.  You don't need to explain about
> > constness.  Maybe you can say the word "hardenning" as an explanation.
> >
> > Julia asked you to write what steps you had done to ensure that the
> > patch doesn't break anything.  And I was curious what she meant by that
> > because I had forgotten that it would be bad if there were a cast that
> > removed the const.  So the bit about "any attempt to alter
> > gb_audio_module_type in the code would raise a compile-time error." is
> > not true.
> >
> > Also we assume that you have compile tested everything so you never need
> > to write that.
> >
> > The information which is missing from this commit message is the
> > checkpatch warning.  I'm more familiar with checkpatch than a lot of
> > kernel maintainers and I had forgotten that this was a checkpatch
> > warning.  Please copy and paste the warning.
> >
> > Basically what I want in a commit message is this:
> >
> > "Checkpatch complains that "gb_audio_module_type" should be const as
> > part of kernel hardenning.  <Copy and paste relevant bits from
> > checkpatch>.  I have reviewed how this struct is used and it's never
> > modified anywhere so checkpatch is correct that it can safely be
> > declared as const.  Constify it."
> 
> I would still prefer to see that the structure is only passed to a certain
> function, and that function only uses the structure in a certain way (fill
> in the exact details).  In this case, one may just rely on the fact that
> the parameter that receives the value is also declared as const, or one
> could check that that const declaration is actually correct.  I think that
> is what Ayush was trying to do, although in a somewhat verbose way.  This
> case is a bit more complex than many others, because the structure isn't
> used locally, but is passed off to some other function.

Huh.  Yeah.  That's almost certainly how it was intended to be read.
I apologize.  Maybe something like the following:

    The "gb_audio_module_type" struct is only used in one place:

        err = kobject_init_and_add(&m->kobj, &gb_audio_module_type, NULL, ...

    so checkpatch is correct that it can be made const.

That kind of commit message wouldn't work if the struct was used a lot
but it works here.

regards,
dan carpenter

