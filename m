Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B4C18DF8B
	for <outreachy@lists.linux.dev>; Tue, 30 Jul 2024 21:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722375681; cv=none; b=hCIebx3wgGBFFjad31uyEkFofa3Dwk4VLN9XU6hIDeZRgGip8UNwqYuuCxqgMAljRhIcxCdMdwjJ/3z13NnV/FMBmqbC4tBfhVzrRiVaBhWNcgyxb5JPySKSY4tAcIBuwH6idqwDYe9Wn4KvhIzxCnibLZ1SF1As6J7In6vfv18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722375681; c=relaxed/simple;
	bh=4pC6xzGT5WwjzhDI4qWpsh75dO6q2v+/sConbT8rVmI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RkgL4OHyhvCOFnP5EixPtCbKr7/oYfAaSMKMm19wGbhVDNlSiC4IxpITZIxvS/75rGRDvehkE9/SbpH1TrRkaN1RrH4M8Zw8l+TZgFEtlsd1hJnLIfAR+p66xYdilU3Omt5FbGt6kToeMHz45r9LvXjWWnCTWF2qwuKB4ATykhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GxYyteOl; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GxYyteOl"
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-70d1cbbeeaeso3630002b3a.0
        for <outreachy@lists.linux.dev>; Tue, 30 Jul 2024 14:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722375679; x=1722980479; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vDHDlQoT1LUK3kA0AHu9dgucFO36otH5SCr/Prge0+c=;
        b=GxYyteOlBcyxktmX3whohHqrPSIgsFW32tMXLoV2C5LWyuImAGM3R4SLDh8sNwfYso
         NsordY72LQnMUcQsvHeGt9+4Aov5XOI/5UhT6ZciHkP59v40Y/FFd+LOTmW0eL0fPuOf
         BBVZCIqo4cfucqu8rvNNYdwH7moHeNdXkJTwv/DiB6VxoW4SOBV7+3RVXDa41W65GdhI
         nA8JqpFaYEE8cgbe2LSQkTRiuyGld3SvO0abSMth7drE+q9jihtVnx1EhcaxPRTJlHDw
         /IUBqdVH8sgH8JtO9ickHOz1HjGurV1GBJ33xe4IsdqOF/HaaTYrBvGa1N1vlB+Y+Whx
         jHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722375679; x=1722980479;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vDHDlQoT1LUK3kA0AHu9dgucFO36otH5SCr/Prge0+c=;
        b=bQRsNdFer1M9tFuU0MWVfHTOqwmHtrZqd2hu+ciF8MEYuc+iyVy52BTD+SQS9YlqGb
         9IctKF27WxbMbOfIJKV7wcJWRsc2sZR8OHUUsXmavaCGMsMK9DixJ22Hx5PzpppTngxu
         7TstOnaiuhmEhGbuUS5aKAIp5zf3gjVejexCvIbIrBgkhlX+fcu3FlXGVwO5SzasGv1j
         +3GT4klFe7TkADW5DI5Jc8Xit3WGrAjs5vC1Qxu/2U9T4QVtMp03c6ZZE6l4OCEcd8OY
         fwtXYnkL+I/WJrlzXZc9xAWkZvIHUjtUXef3pUqB2G+7jpa14KTVA0H+aTkP775vcQVb
         9e3A==
X-Forwarded-Encrypted: i=1; AJvYcCUpPGW9QUB3upFJsQifWBE9yI8+y4GGG1y0r/brnGgfd5yMUZWIjtP4PpQ/HsI5TWonfyyKW+MJ60dbl2am9r7dIYLS7r2mrvCH
X-Gm-Message-State: AOJu0YzZUbIZ2k9KaWtAI2cbiYFfvGjZ6xxMiFEcT57tfJ5Zu9+z1f3c
	UL9sLALHV1C/CwlZmKda9Pw+4SfEG8Oq6IzxZzEg5hCQji5L7P+t
X-Google-Smtp-Source: AGHT+IGjRQKhxXwBH7xWRe2/ELl+5VxNoPQROhB+1zg6heUR4Gzti1+1Jxn13bXjj/tB6YlUvQ/Fug==
X-Received: by 2002:a05:6a20:6a10:b0:1c2:8d33:af69 with SMTP id adf61e73a8af0-1c4a13afd31mr11605130637.41.1722375678712;
        Tue, 30 Jul 2024 14:41:18 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead812316sm8883493b3a.101.2024.07.30.14.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 14:41:18 -0700 (PDT)
Date: Tue, 30 Jul 2024 15:41:15 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: gnoack@google.com, paul@paul-moore.com, jmorris@namei.org,
	serge@hallyn.com, linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com,
	jannh@google.com, outreachy@lists.linux.dev, netdev@vger.kernel.org
Subject: Re: [PATCH v7 1/4] Landlock: Add abstract unix socket connect
 restriction
Message-ID: <Zqld+6wj8v0kLMBV@tahera-OptiPlex-5000>
References: <cover.1721269836.git.fahimitahera@gmail.com>
 <d7bad636c2e3609ade32fd02875fa43ec1b1d526.1721269836.git.fahimitahera@gmail.com>
 <20240730.Quei5io6sesh@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240730.Quei5io6sesh@digikod.net>

On Tue, Jul 30, 2024 at 06:05:15PM +0200, Mickaël Salaün wrote:
> On Wed, Jul 17, 2024 at 10:15:19PM -0600, Tahera Fahimi wrote:
> > The patch introduces a new "scoped" attribute to the
> > landlock_ruleset_attr that can specify "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET"
> > to scope abstract unix sockets from connecting to a process outside of
> > the same landlock domain.
> > 
> > This patch implement two hooks, "unix_stream_connect" and "unix_may_send" to
> > enforce this restriction.
> > 
> > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> > 
> > -------
> > v7:
> >  - Using socket's file credentials for both connected(STREAM) and
> >    non-connected(DGRAM) sockets.
> >  - Adding "domain_sock_scope" instead of the domain scoping mechanism used in
> >    ptrace ensures that if a server's domain is accessible from the client's
> >    domain (where the client is more privileged than the server), the client
> >    can connect to the server in all edge cases.
> >  - Removing debug codes.
> > v6:
> >  - Removing curr_ruleset from landlock_hierarchy, and switching back to use
> >    the same domain scoping as ptrace.
> >  - code clean up.
> > v5:
> >  - Renaming "LANDLOCK_*_ACCESS_SCOPE" to "LANDLOCK_*_SCOPE"
> >  - Adding curr_ruleset to hierarachy_ruleset structure to have access from
> >    landlock_hierarchy to its respective landlock_ruleset.
> >  - Using curr_ruleset to check if a domain is scoped while walking in the
> >    hierarchy of domains.
> >  - Modifying inline comments.
> > V4:
> >  - Rebased on Günther's Patch:
> >    https://lore.kernel.org/all/20240610082115.1693267-1-gnoack@google.com/
> >    so there is no need for "LANDLOCK_SHIFT_ACCESS_SCOPE", then it is removed.
> >  - Adding get_scope_accesses function to check all scoped access masks in a ruleset.
> >  - Using file's FD credentials instead of credentials stored in peer_cred
> >    for datagram sockets. (see discussion in [1])
> >  - Modifying inline comments.
> > V3:
> >  - Improving commit description.
> >  - Introducing "scoped" attribute to landlock_ruleset_attr for IPC scoping
> >    purpose, and adding related functions.
> >  - Changing structure of ruleset based on "scoped".
> >  - Removing rcu lock and using unix_sk lock instead.
> >  - Introducing scoping for datagram sockets in unix_may_send.
> > V2:
> >  - Removing wrapper functions
> > 
> > [1]https://lore.kernel.org/outreachy/Zmi8Ydz4Z6tYtpY1@tahera-OptiPlex-5000/T/#m8cdf33180d86c7ec22932e2eb4ef7dd4fc94c792
> > -------
> > 
> > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> > ---
> >  include/uapi/linux/landlock.h |  29 +++++++++
> >  security/landlock/limits.h    |   3 +
> >  security/landlock/ruleset.c   |   7 ++-
> >  security/landlock/ruleset.h   |  23 ++++++-
> >  security/landlock/syscalls.c  |  14 +++--
> >  security/landlock/task.c      | 112 ++++++++++++++++++++++++++++++++++
> >  6 files changed, 181 insertions(+), 7 deletions(-)
> 
> > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > index 849f5123610b..597d89e54aae 100644
> > --- a/security/landlock/task.c
> > +++ b/security/landlock/task.c
> 
> > +static int hook_unix_stream_connect(struct sock *const sock,
> > +				    struct sock *const other,
> > +				    struct sock *const newsk)
> > +{
> 
> We must check if the unix sockets use an abstract address.  We need a
> new test to check against a the three types of addresse: pathname,
> unnamed (socketpair), and abstract.  This should result into 6 variants
> because of the stream-oriented or dgram-oriented sockets to check both
> hooks.  The test can do 3 checks: without any Landlock domain, with the
> client being sandboxed with a Landlock domain for filesystem
> restrictions only, and with a domain scoped for abstract unix sockets.
correct. Since the current tests check all the possible scenarios for
abstract unix sockets, we only need to add the scenarios where a socket
with pathname or unnamed address and scoped domain wants to connect to a
listening socket. In this case, the access should guaranteed since there
is no scoping mechanism for these sockets yet.

> For pathname you'll need to move the TMP_DIR define from fs_test.c into
> common.h and create a static path for the named socket.  A fixture
> teardown should remove the socket and the directory.
Thanks for the help :) 
> > +	if (sock_is_scoped(other))
> > +		return 0;
> > +
> > +	return -EPERM;
> > +}
> > +
> > +static int hook_unix_may_send(struct socket *const sock,
> > +			      struct socket *const other)
> > +{
> 
> Same here
> 
> > +	if (sock_is_scoped(other->sk))
> > +		return 0;
> > +
> > +	return -EPERM;
> > +}
> > +
> >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> >  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> > +	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> > +	LSM_HOOK_INIT(unix_may_send, hook_unix_may_send),
> 
> Future access controls dedicated to pathname unix sockets may need these
> hooks too, but I guess we'll see where tehy fit the best when we'll be
> there.
> 
> >  };
> >  
> >  __init void landlock_add_task_hooks(void)
> > -- 
> > 2.34.1
> > 
> > 
