Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14086170A21
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 21:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722981370; cv=none; b=XkC1pi6GH3HAkV00W+39GS9+KvFTv10JopO7OEWt/K0CNB2CfSfObX8mQWUBQ1ex4BjKtV3trImU0ZyPkVNd6u44M5bSlvZMNz8AzmB2apb9gIirCk9RHB/8WItjS0fUahUDpupkzuVbPq65yHQlh1VEa+4vFqpEGWLujmFRQvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722981370; c=relaxed/simple;
	bh=wmfgdQYdTGpqJb5pxWE0y8AYHfytkLr7bRVUJCeQ1rY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P/I3b0/xU7kCBzh55UxGnDP4XHgWSW615L2OukBhLn0Zikr8+GDn+BNC7MlTex9hsE5SPkX6rvsdvzAtZSKQfv1Lg9NLXCePjAeWjqCK5JJ3gDzB/mrYRG40hj2GqSLs3qKHSSgvZz1a9hEZuTt8znj6AtaDqpdtMIsVSU6iUDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=DWifKK6E; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="DWifKK6E"
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a18a5dbb23so20559a12.1
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 14:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722981367; x=1723586167; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+sWPUIMGVUWcmjL98+oi0JS8IjtLhhZ9IWBSne+zhKM=;
        b=DWifKK6ERM6po/Ka0GC584eb+/hDYjWCp7pATXEJL9FZkMcET01Xd8u4BZW+jjEM5P
         KM4pPn2ok1dpWOgKaBY5Wz1IwP+IDyHuxW+X4G61GneVoTSDOADXw3u/tUO2GOEKhTtt
         h3rpbSADpnut3h+CehhnWb3T+hRpdEIw194Mx1aBQKYgMt54ODtOAxmasYUbCebxGqIh
         3bRL7JM05gLnXG3gB3qlXTmrBJs4/V1nCvQKmOUJoxU3CRblseao+eciByUKdhMgSYmM
         j9QyIi/SJXllWQIQK43PRtbdWjOkgcZfPd6bs0PMSQ9qCN/rGeVO/TfMcs5Auq/APrdE
         /N+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722981367; x=1723586167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+sWPUIMGVUWcmjL98+oi0JS8IjtLhhZ9IWBSne+zhKM=;
        b=ArbIeibY9qGnsq64AfriG6657CUyeh1XQwPegSIItPxGueRSGGfrKegzRdU4QL/t5l
         NDNoCqkXILwHk7qQvjmiJz+7Cjr1xDdMx7uVQJ4lL059HYfVBlnoRxbD1ia6vj+ldqc/
         ovc19hcHdH1NucTOjQ2e8KCqfIVWxG/7DJKg8h65igusS0ghT26q4KahbftdwkPjWn5N
         3aIdycNXk46OToK7LAwTSMKBULjOdp5WC76zu+Gkf1ESZDR+k/YLmuMxopI/S9m5wEtr
         zXRCOIi4ZYvmWTYdyCPluk1DCCmlm7wjgZjg3PGQrExppYueCUMbtv3uKyjg2uvAIJOI
         wUrw==
X-Gm-Message-State: AOJu0YzVElVOGA3WR6BVYst5scFthMBDjxRdeWZiW8oYBZ3YA3OM9op/
	cdBy/HI5yDw9YWe99Tr+gB49Cm0H4Hh0qOZdyJ5+KSW8qbkmuDommAlKDbG/A5WgYBMJ8K13n1O
	FbDild1Q81nWlJM6jhitDSsQQ2nw0tG7ZseAo
X-Google-Smtp-Source: AGHT+IHrdbF6ksKEP/0jX+HSSz9PUgh5mkW7R8u/LJHt8G4iQfLdba2Kwe1pQYLhXbf9Qp8tAYkNpUdj+svO6W0QJQs=
X-Received: by 2002:a05:6402:84c:b0:59f:9f59:9b07 with SMTP id
 4fb4d7f45d1cf-5bba28bb22amr74904a12.4.1722981366891; Tue, 06 Aug 2024
 14:56:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1722966592.git.fahimitahera@gmail.com> <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
 <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
In-Reply-To: <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 6 Aug 2024 23:55:27 +0200
Message-ID: <CAG48ez1jufy8iwP=+DDY662veqBdv9VbMxJ69Ohwt8Tns9afOw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] Landlock: Add signal control
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 8:56=E2=80=AFPM Jann Horn <jannh@google.com> wrote:
> On Tue, Aug 6, 2024 at 8:11=E2=80=AFPM Tahera Fahimi <fahimitahera@gmail.=
com> wrote:
> > Currently, a sandbox process is not restricted to send a signal
> > (e.g. SIGKILL) to a process outside of the sandbox environment.
> > Ability to sending a signal for a sandboxed process should be
> > scoped the same way abstract unix sockets are scoped. Therefore,
> > we extend "scoped" field in a ruleset with
> > "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset will deny
> > sending any signal from within a sandbox process to its
> > parent(i.e. any parent sandbox or non-sandboxed procsses).
[...]
> > +       if (is_scoped)
> > +               return 0;
> > +
> > +       return -EPERM;
> > +}
> > +
> > +static int hook_file_send_sigiotask(struct task_struct *tsk,
> > +                                   struct fown_struct *fown, int signu=
m)
> > +{
> > +       bool is_scoped;
> > +       const struct landlock_ruleset *dom, *target_dom;
> > +       struct task_struct *result =3D get_pid_task(fown->pid, fown->pi=
d_type);
>
> I'm not an expert on how the fowner stuff works, but I think this will
> probably give you "result =3D NULL" if the file owner PID has already
> exited, and then the following landlock_get_task_domain() would
> probably crash? But I'm not entirely sure about how this works.
>
> I think the intended way to use this hook would be to instead use the
> "file_set_fowner" hook to record the owning domain (though the setup
> for that is going to be kind of a pain...), see the Smack and SELinux
> definitions of that hook. Or alternatively maybe it would be even
> nicer to change the fown_struct to record a cred* instead of a uid and
> euid and then use the domain from those credentials for this hook...
> I'm not sure which of those would be easier.

(For what it's worth, I think the first option would probably be
easier to implement and ship for now, since you can basically copy
what Smack and SELinux are already doing in their implementations of
these hooks. I think the second option would theoretically result in
nicer code, but it might require a bit more work, and you'd have to
include the maintainers of the file locking code in the review of such
refactoring and have them approve those changes. So if you want to get
this patchset into the kernel quickly, the first option might be
better for now?)
