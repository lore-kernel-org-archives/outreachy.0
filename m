Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1DB48F7D
	for <outreachy@lists.linux.dev>; Thu,  8 Aug 2024 01:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723079495; cv=none; b=AGiE1+QAYL3EfQvIH//JKO0Tv/3TXm04elb54/StESr8Bg1Q4rFB7nDFYrxataYmIxEnL4yHxx1I8wyXjpXVIS4OEBwPHVxOYdxndTZ5OaRrJAlm/KTN/TramFK0GypQWqYBVJFCQMBhAK9QHoyxGIw0KCrv++EIqnQ2VxFORH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723079495; c=relaxed/simple;
	bh=iMeBsXr0Kfh01/tBUecXD3Sn6ad+m6SdJ/phGyaDRgs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jHKSJQtTm4IRddiSLvLlF8/x//7q4x0DgNBrypJWkakn5Eu7KWUx4LEjYSg78Zk8kuOx4BUMkDeSjb6QlPSZ8Xnz1gwGgHZD6PdTiSTU/tmQLWPrGEvzgJ7iBJYMHnlAxNFN0IHyiA40A7dyGpUdSzscaNEjekONl7xus3iq5uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=m0JSV5XS; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="m0JSV5XS"
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5a28b61b880so4400a12.1
        for <outreachy@lists.linux.dev>; Wed, 07 Aug 2024 18:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723079491; x=1723684291; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xW+hk7BnX0mviU1OSor8umk+3J3UK7ghMIw7kikOTh8=;
        b=m0JSV5XSWFLEPkZHAyAA5umvMH3ns76md+IU+pabgcpmmXnaDkdfpTSvLOO+i6cAhQ
         RRq/1c8+81+OKKCGgOpx5IOyluY8VEd8Ujf/VbfQ+gvz1FbTBLOvslpR0wavA1oA5HcB
         lHiHK+yG2+SGDEVwsoG95Fs80TqmqPQwL54Np1F+qhYKe3XndRSpOaaIfTXgHLIw7nFr
         cNMxpaZ/ilPGRFGNcuDoIovKzPFXbfEl5hF6hiuamqOMZ24HC1cHwbWLzq0IJL4UapcM
         T2w6mPLQeZJvQjkJ9J4dCN+JGu7Ur9Mj8Oo5ub/LEsHXjIgmeNfpgqC04dmGcJvqlSr7
         t4Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723079491; x=1723684291;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xW+hk7BnX0mviU1OSor8umk+3J3UK7ghMIw7kikOTh8=;
        b=CZnMFv7TLPZeFb28zknjmb/bhY1IciHJM4Hr9xitIzPhRBET/r5tgnjs1Vp0Ksgx9Y
         7yBXKT+3KbQ8egcBfIMidjIXGoLQ1yHFK85YhwAE0CWlGcNLoZIWsWtCmwWuV+t0oZ0Y
         J7XZEcydRl3iKd4Mc0bL7YPgKQfqa4QbCwctWrUCcpagDOIBpijocQbm8z2Pa3/LPauR
         N1CTORSu/5ZEuym3XIbLppkba1dw/qSDbTKCE3MoMIwRJkWe3UYXs32o/EdD2kKzciNu
         /N9H2o6D4VAi6it+Kam9FFlyqd1yALjGxip5MArv1DzfUFw9ZzAvW1fJApqkC2j6ooyU
         XzAg==
X-Forwarded-Encrypted: i=1; AJvYcCUld2LEUUkQ5BExMcC+r7I/QhNHAbhrP5NAwTW3IcYBFX2Xtuh6OfvJhD3yzKmfO87YCA7s6r/SCecrfqKV90wMwRS/3Fak3g+b
X-Gm-Message-State: AOJu0Yx65Fnc4oOP8dTM4MVEUEyUt0GvKLuaQR91vN0ffLmFg/mInN6k
	fu9hKHNG+s5fKTtMDjEiPfG8NGoUkNRiJkfkOKFR8U94cDwXbUGVv3OV3V0oStZLceLn1yIpuSE
	J2QHa5LHsx1LO34rOmZxLzixfNM4QnqZnJ2+A
X-Google-Smtp-Source: AGHT+IEJCnzs5/WRwGZRVK9UyW0fQT3xQ8Bs3ROpO7dzhDkETpP4CcGPK/5gf3OtbpGIMWRZlIoHeayZv1sFiACC5gk=
X-Received: by 2002:a05:6402:3587:b0:5aa:19b1:ffc7 with SMTP id
 4fb4d7f45d1cf-5bbaff2fa9fmr108946a12.2.1723079490726; Wed, 07 Aug 2024
 18:11:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1722966592.git.fahimitahera@gmail.com> <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
 <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
 <CAG48ez1jufy8iwP=+DDY662veqBdv9VbMxJ69Ohwt8Tns9afOw@mail.gmail.com>
 <20240807.Yee4al2lahCo@digikod.net> <ZrQE+d2b/FWxIPoA@tahera-OptiPlex-5000>
In-Reply-To: <ZrQE+d2b/FWxIPoA@tahera-OptiPlex-5000>
From: Jann Horn <jannh@google.com>
Date: Thu, 8 Aug 2024 03:10:54 +0200
Message-ID: <CAG48ez1q80onUxoDrFFvGmoWzOhjRaXzYpu+e8kNAHzPADvAAg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] Landlock: Add signal control
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: =?UTF-8?B?TWlja2HDq2wgU2FsYcO8bg==?= <mic@digikod.net>, 
	outreachy@lists.linux.dev, gnoack@google.com, paul@paul-moore.com, 
	jmorris@namei.org, serge@hallyn.com, linux-security-module@vger.kernel.org, 
	linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com, 
	netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 8, 2024 at 1:36=E2=80=AFAM Tahera Fahimi <fahimitahera@gmail.co=
m> wrote:
> On Wed, Aug 07, 2024 at 08:16:47PM +0200, Micka=C3=ABl Sala=C3=BCn wrote:
> > On Tue, Aug 06, 2024 at 11:55:27PM +0200, Jann Horn wrote:
> > > On Tue, Aug 6, 2024 at 8:56=E2=80=AFPM Jann Horn <jannh@google.com> w=
rote:
> > > > On Tue, Aug 6, 2024 at 8:11=E2=80=AFPM Tahera Fahimi <fahimitahera@=
gmail.com> wrote:
> > > > > Currently, a sandbox process is not restricted to send a signal
> > > > > (e.g. SIGKILL) to a process outside of the sandbox environment.
> > > > > Ability to sending a signal for a sandboxed process should be
> > > > > scoped the same way abstract unix sockets are scoped. Therefore,
> > > > > we extend "scoped" field in a ruleset with
> > > > > "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset will deny
> > > > > sending any signal from within a sandbox process to its
> > > > > parent(i.e. any parent sandbox or non-sandboxed procsses).
> > > [...]
> > > > > +       if (is_scoped)
> > > > > +               return 0;
> > > > > +
> > > > > +       return -EPERM;
> > > > > +}
> > > > > +
> > > > > +static int hook_file_send_sigiotask(struct task_struct *tsk,
> > > > > +                                   struct fown_struct *fown, int=
 signum)
> >
> > I was wondering if we should handle this case, but I guess it makes
> > sense to have a consistent policy for all kind of user-triggerable
> > signals.
> >
> > > > > +{
> > > > > +       bool is_scoped;
> > > > > +       const struct landlock_ruleset *dom, *target_dom;
> > > > > +       struct task_struct *result =3D get_pid_task(fown->pid, fo=
wn->pid_type);
> > > >
> > > > I'm not an expert on how the fowner stuff works, but I think this w=
ill
> > > > probably give you "result =3D NULL" if the file owner PID has alrea=
dy
> > > > exited, and then the following landlock_get_task_domain() would
> > > > probably crash? But I'm not entirely sure about how this works.
> > > >
> > > > I think the intended way to use this hook would be to instead use t=
he
> > > > "file_set_fowner" hook to record the owning domain (though the setu=
p
> > > > for that is going to be kind of a pain...), see the Smack and SELin=
ux
> > > > definitions of that hook. Or alternatively maybe it would be even
> > > > nicer to change the fown_struct to record a cred* instead of a uid =
and
> > > > euid and then use the domain from those credentials for this hook..=
.
> > > > I'm not sure which of those would be easier.
> > >
> > > (For what it's worth, I think the first option would probably be
> > > easier to implement and ship for now, since you can basically copy
> > > what Smack and SELinux are already doing in their implementations of
> > > these hooks. I think the second option would theoretically result in
> > > nicer code, but it might require a bit more work, and you'd have to
> > > include the maintainers of the file locking code in the review of suc=
h
> > > refactoring and have them approve those changes. So if you want to ge=
t
> > > this patchset into the kernel quickly, the first option might be
> > > better for now?)
> > >
> >
> > I agree, let's extend landlock_file_security with a new "fown" pointer
> > to a Landlock domain. We'll need to call landlock_get_ruleset() in
> > hook_file_send_sigiotask(), and landlock_put_ruleset() in a new
> > hook_file_free_security().
> I think we should add a new hook (hook_file_set_owner()) to initialize
> the "fown" pointer and call landlock_get_ruleset() in that?

Yeah. Initialize the pointer in the file_set_fowner hook, and read the
pointer in the file_send_sigiotask hook.

Note that in the file_set_fowner hook, you'll probably need to use
both landlock_get_ruleset() (to take a reference on the ruleset you're
storing in the fown pointer) and landlock_put_ruleset() (to drop the
reference to the ruleset that the fown pointer was pointing to
before). And you'll need to use some kind of lock to protect the fown
pointer - either by adding an appropriate lock next to your fown
pointer or by using some appropriate existing lock in "struct file".
Probably it's cleanest to have your own lock for this? (This lock will
have to be something like a spinlock, not a mutex, since you need to
be able to acquire it in the file_set_fowner hook, which runs inside
an RCU read-side critical section, where sleeping is forbidden -
acquiring a mutex can sleep and therefore is forbidden in this
context, acquiring a spinlock can't sleep.)

> If we do not
> have hook_file_set_owner to store domain in "fown", can you please give
> me a hint on where to do that?
> Thanks
> > I would be nice to to replace the redundant informations in fown_struct
> > but that can wait.
