Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804EA3399B
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 18:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722970616; cv=none; b=XuEoov1PNGLzf9C5bmWsrp94wXj3veq0FbUhARIVG8qBDWaPehAo2YQEh/OoHymDUnedmhQX60TAR410ibE27q/EIAoweGbvTUqHw5/LgKMw9iez1+ogWWxtS0gAB8N61Dy4RxVd6+eun6ow0TuX8624Ztivwhxu89RNPBLgfQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722970616; c=relaxed/simple;
	bh=DciIyaltMFYLMxZvjIfQj8LL3dvXxfc6HZ7aYdssDhE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lHWYnYZKVYMxMUjD6hwq0iPZgU0AIA4lY9/2AhEQSfC+7G7+Vijj6VVt+MQSO06H/zxCQoYSnow46GlhpAEDpBhZ6T+HPmSFsjfGVQH15sYiOTJp6vHW0Jt8SQsKibiXUyMO3+tfawmWRbydFSt7uZQDxd1idYhuCTVlF9QjyUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=cqkvbHAk; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="cqkvbHAk"
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5a18a5dbb23so17705a12.1
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 11:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1722970612; x=1723575412; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Hlr295kPt+eGh8NSlH0Dz/t5X1B6Heu59VkOJqUybg=;
        b=cqkvbHAka7o5cJ+OUnpwFcYl9eyye2WqK358VuWc0IAdEuqsKZ860/tQxuH8SaWkR5
         EoL7BIlmoZgDBSCuU82IW9ro5t4kUEniJKPAPcWVAmtkW20FITEcSkpgYHR7Cq8FX39d
         qbEUajZTUoh/l+vJjK+vzbpalnMFXI07qVDH3aVdFafonwjuyFcj3HO82Y5nXXnyjnPh
         y9e4xWG7A0+IwA2FF42dFXx9i8qRLcaXDXK8zjxvLDWaPTUHMQBzi+baeI/yeXwQl1oq
         S4jA8faYj8Az9OoOvAjesufGAsjJFMBDKaHnqrMQAKGUDptdKAfGlmyQhcbFswP0uScK
         Z7cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722970612; x=1723575412;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Hlr295kPt+eGh8NSlH0Dz/t5X1B6Heu59VkOJqUybg=;
        b=b49nRi2WymfNi43ZjSdOHOoVoqmjADAnlC2yvdfZRiF1F9mporCRs7tXl6xDCsSk2P
         G04S8JefQYgIXD3L09mRq9ylFLMYEZO4+eFYdOQaXDGDLHqdACUXkYV5HlsZkk4h0tVP
         XldCRuYL4eB/2KuxZmNX5xFco95NCM/HjSQgtQzSnvWvJ5XV9I1CTjBZOc3h8f/w9rxF
         7lY4z56ZV7fiutYvKY5aGSVdvcU5llo+peL1YUfHy+vEDkwECC3eD8cN7ORQCpuD/POS
         yrIOMZDuyzqXH9QxCIKDNv8mFrnmx7NCeDbBsczF/NBgwfzPRE4Q0spjR1tGL5mJVxxn
         tJsg==
X-Gm-Message-State: AOJu0YwpwmRnyXF9RysnOAR4XE2NQxuX5q81RlVPFgLt3Nywuv3wjg/9
	c0CFPnp8JRSDOlTieK11VXCCS+hzKzbm9lDICRL5Xve/INZioBaoTln8UNbkcBP4eb31jbFDFCP
	7+NqBClXWGHBBBkWo4bCYo4MyBMhAAUjXkKsr
X-Google-Smtp-Source: AGHT+IGqnjXhVQ8xTsbaWkcVIDDJvOxlZLSRQjKaeRvd7cNiXjReNou5GDw7DnmVT3rHal8ocqevhsdfWvubnFMhvKc=
X-Received: by 2002:a05:6402:84c:b0:59f:9f59:9b07 with SMTP id
 4fb4d7f45d1cf-5bba28bb22amr26688a12.4.1722970611142; Tue, 06 Aug 2024
 11:56:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1722966592.git.fahimitahera@gmail.com> <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
In-Reply-To: <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
From: Jann Horn <jannh@google.com>
Date: Tue, 6 Aug 2024 20:56:15 +0200
Message-ID: <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] Landlock: Add signal control
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 8:11=E2=80=AFPM Tahera Fahimi <fahimitahera@gmail.co=
m> wrote:
> Currently, a sandbox process is not restricted to send a signal
> (e.g. SIGKILL) to a process outside of the sandbox environment.
> Ability to sending a signal for a sandboxed process should be
> scoped the same way abstract unix sockets are scoped. Therefore,
> we extend "scoped" field in a ruleset with
> "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset will deny
> sending any signal from within a sandbox process to its
> parent(i.e. any parent sandbox or non-sandboxed procsses).
[...]
> diff --git a/security/landlock/task.c b/security/landlock/task.c
> index 7e8579ebae83..a73cff27bb91 100644
> --- a/security/landlock/task.c
> +++ b/security/landlock/task.c
> @@ -261,11 +261,54 @@ static int hook_unix_may_send(struct socket *const =
sock,
>         return -EPERM;
>  }
>
> +static int hook_task_kill(struct task_struct *const p,
> +                         struct kernel_siginfo *const info, const int si=
g,
> +                         const struct cred *const cred)
> +{
> +       bool is_scoped;
> +       const struct landlock_ruleset *target_dom;
> +
> +       /* rcu is already locked */
> +       target_dom =3D landlock_get_task_domain(p);
> +       if (cred)
> +               /* dealing with USB IO */
> +               is_scoped =3D domain_IPC_scope(landlock_cred(cred)->domai=
n,
> +                                            target_dom,
> +                                            LANDLOCK_SCOPED_SIGNAL);
> +       else
> +               is_scoped =3D domain_IPC_scope(landlock_get_current_domai=
n(),
> +                                            target_dom,
> +                                            LANDLOCK_SCOPED_SIGNAL);

This might be a bit more concise if you turn it into something like:

/* only USB IO supplies creds */
cred =3D cred ?: current_cred();
is_scoped =3D domain_IPC_scope(landlock_cred(cred)->domain,
    target_dom, LANDLOCK_SCOPED_SIGNAL);

but that's just a question of style, feel free to keep it as-is
depending on what you prefer.

> +       if (is_scoped)
> +               return 0;
> +
> +       return -EPERM;
> +}
> +
> +static int hook_file_send_sigiotask(struct task_struct *tsk,
> +                                   struct fown_struct *fown, int signum)
> +{
> +       bool is_scoped;
> +       const struct landlock_ruleset *dom, *target_dom;
> +       struct task_struct *result =3D get_pid_task(fown->pid, fown->pid_=
type);

I'm not an expert on how the fowner stuff works, but I think this will
probably give you "result =3D NULL" if the file owner PID has already
exited, and then the following landlock_get_task_domain() would
probably crash? But I'm not entirely sure about how this works.

I think the intended way to use this hook would be to instead use the
"file_set_fowner" hook to record the owning domain (though the setup
for that is going to be kind of a pain...), see the Smack and SELinux
definitions of that hook. Or alternatively maybe it would be even
nicer to change the fown_struct to record a cred* instead of a uid and
euid and then use the domain from those credentials for this hook...
I'm not sure which of those would be easier.

> +       /* rcu is already locked! */
> +       dom =3D landlock_get_task_domain(result);
> +       target_dom =3D landlock_get_task_domain(tsk);
> +       is_scoped =3D domain_IPC_scope(dom, target_dom, LANDLOCK_SCOPED_S=
IGNAL);
> +       put_task_struct(result);
> +       if (is_scoped)
> +               return 0;
> +       return -EPERM;
> +}
