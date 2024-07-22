Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4923AC36
	for <outreachy@lists.linux.dev>; Mon, 22 Jul 2024 12:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721652375; cv=none; b=aNkYaAE0Rt+KTE9eDMmPaiGMWhP+5XbUbLRTh8oknwBpu8G6c7leBktyy37wyVBnHqulpkYksaTyKWeIxFWCHpDbvGEfeG1oC494x29Qko80Pxo1wb8rbWr0IGNbvnVU5feTibwLTPFCzOvbRi0w0HffcprzLQ2s/s8SXQ071iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721652375; c=relaxed/simple;
	bh=08A40bbhznrlKFn2gZRVp22dL57vJ4Sag/bNSCApeS4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dUp66bLc71L73ojeYEQ02jGB0q1rsK/F1/dt2VQRQiCWLRVtbC/TFt27Qf5tlKqcUpEEpzjIn8oxJ+AaiSdCG49mzZv1nq/FRY5MPsz7Tgnz5djHjZeKvFNgt7bb/nnWlvrDK0QCDoXdlLnx2VWAIXn6p2yp5fGKXqkO8BR5ktc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=QYjebo3R; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="QYjebo3R"
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5a869e3e9dfso8855a12.0
        for <outreachy@lists.linux.dev>; Mon, 22 Jul 2024 05:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721652372; x=1722257172; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SkPk7qSJmsTXHG/tHIONPG7HUxcysTuWtB6jumYqrdM=;
        b=QYjebo3RW2i2zGoEN5NADCJHWZU4t18q4O8e6uR/Y7S1C6xIVdApsIEoc9mUN/cEKb
         F1ZqKEUVWPB4sLFGmTC0aCEt9FFI+ZH69hLv7VkYnsCkotpNy2YRyEGkddjCN0eK2amv
         3+GKDZY0sThaG06EK2FUvG5ENz4ItbuBiOP3mOOin9tKQyJf7kNCIfaNHSe88N8KV8Ke
         pMslIlVZ2HcnAgzkz76d8hFnVJFev2O5hkhMJ8U/7TYJm317T2Y0fjw1x9ZW26ecvuXz
         9nZw43P0ghmEvRV/kX/u199NdpW6pL8SZ7Ey8sldD7m4Y+vjlxEhs72EiTGZvNJB0vIi
         rQ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721652372; x=1722257172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SkPk7qSJmsTXHG/tHIONPG7HUxcysTuWtB6jumYqrdM=;
        b=cuNM5a6TH9dYcPqQMzcuJdzm95gymlbAmRrSoj3kyS02i5z9qA0AqPKMrMuOitnsDN
         NNKVNsrklh7W+afZakF2r57lo1+pbtfBNXZNDe5cPVDsqnKCVaaHcw/LyEBn4HI12+C8
         TX++krro6Qjts36NyXLPItB5PgF/3fu/trJNMVJ5uD5XQPiVjINR8MmybrdebZ+MUWUW
         5KvfwXtzBoe7JqbGgdJHag6FqzZ2tmVytDtuJuRN9KoI3ouvjmnCobTJUzfAiUQ3KVsN
         A/4kDd2K70MNUM/YCCSlgR4IrcS3duPKUtG9PdUfgqqxJxlgx44Mln0br7yuky13w3P3
         KLwg==
X-Forwarded-Encrypted: i=1; AJvYcCVpHqRpgAHhhCzB7MuXP6Sq3LvBIl0sdw0ro55JxYrI086Ocy2FRfBegjf7FyuFdL0ksM7ICbezA73khUPLnACuPX4ageI1CEWg
X-Gm-Message-State: AOJu0YzuOQN/5LArSlGoVPeMflGfmwUvRuqYKdBHhqkdQnOinUn2AuoI
	1RQtEj6Xfkqxgpb+8FCFfh4ONZqJc9thAeYBxHiTQ3wrZ/drz0W5/vPD7Apppk0VaORQtAlMYOL
	qQ+05AoBb1HWvvzhuBi7O6YHiHsD+PsR48ZXU
X-Google-Smtp-Source: AGHT+IHCi62PM+KOTFc8/S9a0uMCt8sBsWfBOfvWEaTCwIQZzIuRwZy1cJ/vucoCoYuRW5CLLmMrzJQs2JS1pzid0TE=
X-Received: by 2002:a05:6402:34c9:b0:57c:c3a7:dab6 with SMTP id
 4fb4d7f45d1cf-5a4a842af45mr220593a12.3.1721652371314; Mon, 22 Jul 2024
 05:46:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <36958dbc486e1f975f4d4ecdfa51ae65c2c4ced0.1720213293.git.fahimitahera@gmail.com>
In-Reply-To: <36958dbc486e1f975f4d4ecdfa51ae65c2c4ced0.1720213293.git.fahimitahera@gmail.com>
From: Jann Horn <jannh@google.com>
Date: Mon, 22 Jul 2024 14:45:35 +0200
Message-ID: <CAG48ez3MNJ9QiULabERc-SWQLx4T80_UOvsqCVFXTi3yxeeMRg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] Landlock: Add signal control
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: mic@digikod.net, gnoack@google.com, paul@paul-moore.com, jmorris@namei.org, 
	serge@hallyn.com, linux-security-module@vger.kernel.org, 
	linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com, 
	outreachy@lists.linux.dev, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 5, 2024 at 11:22=E2=80=AFPM Tahera Fahimi <fahimitahera@gmail.c=
om> wrote:
> Currently, a sandbox process is not restricted to send a signal
> (e.g. SIGKILL) to a process outside of the sandbox environment.
> Ability to sending a signal for a sandboxed process should be
> scoped the same way abstract unix sockets are scoped.
>
> The same way as abstract unix socket, we extend "scoped" field
> in a ruleset with "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset
> will deny sending any signal from within a sandbox process to its
> parent(i.e. any parent sandbox or non-sandboxed procsses).
>
> Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
[...]
> +static int hook_file_send_sigiotask(struct task_struct *tsk,
> +                                   struct fown_struct *fown, int signum)
> +{
> +       const struct task_struct *result =3D
> +               get_pid_task(fown->pid, fown->pid_type);

get_pid_task() returns a refcounted reference; you'll have to call
put_task_struct(result) to drop this reference at the end of the
function.

> +       const struct landlock_ruleset *const dom =3D
> +               landlock_get_task_domain(result);
> +       if (signal_is_scoped(dom, tsk))
> +               return 0;
> +       return EPERM;
> +}
