Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6EF10E4
	for <outreachy@lists.linux.dev>; Thu, 12 Sep 2024 00:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726100129; cv=none; b=neWgOGvhswRsta9WUBYJL/HZrcHSiy3ogMhWIfBSkpMwkyH2VPlWhc2gY6uIuY57T3RBAoSGSlxCo0TBy8A2A2SgLEZVFgXq+1fB1kekQD4r7onQi5svPdxYlAW6g6Jog/zymM+PrOjp9O8DD1rUHCd2kZURshWL5DgWHcYVWTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726100129; c=relaxed/simple;
	bh=S3C7v9YnDNRcBILJMpX+FpkSyOuupZ7xt5mGvvS11Ng=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bO5aX1x/zJg6mnHKaGc55scUnYbLhXvlgt3X6sEdKhIvD9GN6tmdmGYHJm4b+6R7lLek854Gs5GMM8JyzI30+52Wa+oN6vR0aRGd5ymbstu5HLwXM+xNITqC5rzQnZPsPp9iebUvxwJCQz+fBDoN24v4AXxLVOZtIq7TLgm5p7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W34eIzre; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W34eIzre"
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-207397d1000so12002825ad.0
        for <outreachy@lists.linux.dev>; Wed, 11 Sep 2024 17:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726100128; x=1726704928; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tB3E/T7YAvjvqVbBXzUkuOGhb4WX8ydsVz+TdkUG8B0=;
        b=W34eIzreqZQmrcJmfbSmeDGQvfrdj932cBTvlJl9Vd7lv19AH6SkykFp7o6PRPPLB/
         oZpiPwIkmV41uSN6WQiZRFTAB2wE+vXskGS/b74nzCfovUh7l70Wq4Yo81sKRhhIumd8
         X51oVnlueoEN/dsHVk0RgsTVS0Vh+QgSklRFuQFgclIdru0i9zObajAb3FgK2kSCdpox
         AttKhER1mBaNrG2OAPIWGuBOCVKFwadgeEGq9dC/zUCqrIRy9ryhEWTVfo++3HV0+0h0
         OPbjXeVfh8ihrztB872YMA54BCNfECEaiP/XJypSNmLBRtYZIk9r0HqUw4XSiZqCm6sG
         O+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726100128; x=1726704928;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tB3E/T7YAvjvqVbBXzUkuOGhb4WX8ydsVz+TdkUG8B0=;
        b=Jlncc3Xf+5KtpdF3HfyQueCygk9i+y2ugL2ZfMc7Rq5MgeromIKkl9+ZMnefaqKbkb
         jnZBDJqlzBu87dnwXVObbhghSnrDaMcYEYna2sbj0BElNCI/k3YT+l3E/xT2CZAc18D1
         p0LZ3B7nZ7f/ELYzLm1wwl4C1xLUbWcSM1MfUpGwpQjlc6vXKJps8ZKNFQxVfM1KT3WF
         a6YiQFSK51mQ/d3Ep4jOvKuGZE87agVDA+pjsfA0fS55NpJoiZ4WhEP2XyqenRFnfZ7b
         ZEpoA7qUpx7X6UiMBpc/H34aqC/BtJMIMYMXKH/WYwLYzvBdlevxCeq3gFNxU35nvMz/
         j+aw==
X-Gm-Message-State: AOJu0Yx+dj9f0ykN8bDN3fzupyCHMbMkNrrsTT/Q4zUVHymJihkM9HvW
	4ER83dy6F7eFkqj7PDMFi+fj1RKsnvFwAYyZTmf/WrnQE3M+ijCZ
X-Google-Smtp-Source: AGHT+IEy1ADhaFtrJIE8didZWkzouq2MGonBNdxcWKaj66hgINbNzZc29epaW0S6YvQE0rABqiBItQ==
X-Received: by 2002:a17:902:d4ce:b0:1fd:96c7:24f5 with SMTP id d9443c01a7336-2074c5d2351mr86441445ad.5.1726100127410;
        Wed, 11 Sep 2024 17:15:27 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076af278aasm4761075ad.28.2024.09.11.17.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 17:15:26 -0700 (PDT)
Date: Wed, 11 Sep 2024 18:15:24 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: outreachy@lists.linux.dev, gnoack@google.com, paul@paul-moore.com,
	jmorris@namei.org, serge@hallyn.com,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com, jannh@google.com, netdev@vger.kernel.org
Subject: Re: [PATCH v4 0/6] landlock: Signal scoping support
Message-ID: <ZuIynFIRt475uBP5@tahera-OptiPlex-5000>
References: <cover.1725657727.git.fahimitahera@gmail.com>
 <20240911.BieLu8DooJiw@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911.BieLu8DooJiw@digikod.net>

On Wed, Sep 11, 2024 at 08:17:04PM +0200, Mickaël Salaün wrote:
> We should also have the same tests as for scoped_vs_unscoped variants.
Hi, 

Thanks for the review, I will add them soon.
> I renamed them from the abstract unix socket patch series, please take a
> look:
> https://git.kernel.org/pub/scm/linux/kernel/git/mic/linux.git/log/?h=next
Wonderful! Thank you :)

> I'll send more reviews tomorrow and I'll fix most of them in my -next
> branch (WIP), except for the hook_file_send_sigiotask tests and these
> scoped_vs_unscoped variants that you should resolve.
I will keep an eye on reviews. What parts of hook_file_send_sigiotask
would need changes?

> On Fri, Sep 06, 2024 at 03:30:02PM -0600, Tahera Fahimi wrote:
> > This patch series adds scoping mechanism for signals.
> > Closes: https://github.com/landlock-lsm/linux/issues/8
> > 
> > Problem
> > =======
> > 
> > A sandboxed process is currently not restricted from sending signals
> > (e.g. SIGKILL) to processes outside the sandbox since Landlock has no
> > restriction on signals(see more details in [1]).
> > 
> > A simple way to apply this restriction would be to scope signals the
> > same way abstract unix sockets are restricted.
> > 
> > [1]https://lore.kernel.org/all/20231023.ahphah4Wii4v@digikod.net/
> > 
> > Solution
> > ========
> > 
> > To solve this issue, we extend the "scoped" field in the Landlock
> > ruleset attribute structure by introducing "LANDLOCK_SCOPED_SIGNAL"
> > field to specify that a ruleset will deny sending any signals from
> > within the sandbox domain to its parent(i.e. any parent sandbox or
> > non-sandbox processes).
> > 
> > Example
> > =======
> > 
> > Create a sansboxed shell and pass the character "s" to LL_SCOPED:
> > LL_FD_RO=/ LL_FS_RW=. LL_SCOPED="s" ./sandboxer /bin/bash
> > Try to send a signal(like SIGTRAP) to a process ID <PID> through:
> > kill -SIGTRAP <PID>
> > The sandboxed process should not be able to send the signal.
> > 
> > Previous Versions
> > =================
> > v3:https://lore.kernel.org/all/cover.1723680305.git.fahimitahera@gmail.com/
> > v2:https://lore.kernel.org/all/cover.1722966592.git.fahimitahera@gmail.com/
> > v1:https://lore.kernel.org/all/cover.1720203255.git.fahimitahera@gmail.com/
> > 
> > Tahera Fahimi (6):
> >   landlock: Add signal scoping control
> >   selftest/landlock: Signal restriction tests
> >   selftest/landlock: Add signal_scoping_threads test
> >   selftest/landlock: Test file_send_sigiotask by sending out-of-bound
> >     message
> >   sample/landlock: Support sample for signal scoping restriction
> >   landlock: Document LANDLOCK_SCOPED_SIGNAL
> > 
> >  Documentation/userspace-api/landlock.rst      |  22 +-
> >  include/uapi/linux/landlock.h                 |   3 +
> >  samples/landlock/sandboxer.c                  |  17 +-
> >  security/landlock/fs.c                        |  17 +
> >  security/landlock/fs.h                        |   6 +
> >  security/landlock/limits.h                    |   2 +-
> >  security/landlock/task.c                      |  59 +++
> >  .../selftests/landlock/scoped_signal_test.c   | 371 ++++++++++++++++++
> >  .../testing/selftests/landlock/scoped_test.c  |   2 +-
> >  9 files changed, 486 insertions(+), 13 deletions(-)
> >  create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c
> > 
> > -- 
> > 2.34.1
> > 

