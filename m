Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC0215DBB9
	for <outreachy@lists.linux.dev>; Tue,  9 Jul 2024 15:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720538342; cv=none; b=MNYalbqQD7rSrH+GTsCKwTykoPaMjAi3AkCPblQjJnsNwp2nOnKIB+22V3tkXVOpr1fc8u7Wwy3bmsLefg+gWRASzyaPE2p9TkbczBIlmCyezxb0lP5aippWNwYqxU/KH49OEsrSsXZAXNtpa32pGR8BndEBwNPCb8VfvAayO8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720538342; c=relaxed/simple;
	bh=ojN2JmcT7kvuAEXfKcAoFG86zqUA6Rqq1vkhBEhguOg=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=oNIQbJewxpro7WSvkfc9BgXFMGTKs5gSHdQIfFsarLsZa8kmhQW8rY0CLkkdlpJBREAEBWKJhOJmUTT802FMdXO7IPC3FxQ0G21twzCMHJdqZWcorxUiAQvcjQOZDVzAJ/eveqnk3vNy9LlMiFcAFxGBezZAruT5pYdVF02Flrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UMFlYkN0; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UMFlYkN0"
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6513899bbdcso73143907b3.0
        for <outreachy@lists.linux.dev>; Tue, 09 Jul 2024 08:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1720538340; x=1721143140; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WFa9c2fe6FXvwC1bTAk+U1J7rwHtRLarFBf2iyFVXFo=;
        b=UMFlYkN02dtf07WcAo/xyI4dPlOiDoWC5zuoR+p4Zs34Ob57pTQK3KTG4ibs0JKQAR
         wITJNghaxqVY4XdpJECF1YbfpECuISbIAWFKva99d3ADJYrfzcUcv/VsF6832grzX+Sy
         pp84pmSA1WCIYZg8XJP9/FyO9XYqxylxGfBFjSivmzZ8ughfxEacKMd06cY1V+erzoNU
         30DLt8f8RZqJO1ZaLcfcmTBnv5Xf2NidzLc6N9xPPWIC7iA0dsEGaqa6jztdyQT2vZvN
         tGtmOO30Wv8wqd8SEsWVqlpxGUbV9uEgx/hkFmzrBTLebDrWKIZE8exZGWmMJnC3WL/9
         GN3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720538340; x=1721143140;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WFa9c2fe6FXvwC1bTAk+U1J7rwHtRLarFBf2iyFVXFo=;
        b=ImRU+Q/L3qx9pugOh2t6PrBwioahsO0EAuKckhDfugqqfTwKsCmZ6DmISOcc7dVkYd
         z/7pDVRicXW7xekPv3R/uWHGSo/Gys9FjZbg4iFqrdvLzYcOd/AsJt4CLaIMqxrYpkRe
         tArC/ZUwwOsZiuP0ex48TEiYjJiVdDUcLWLL9teLFUCL5+HLxQ3oI84ri+QFtJNEvHW0
         Zm4tbX56Jep5IOo8HVaOr5+wfpeXUMd/wITpp4I6B0LIb/F2IT9v1rQ6CyJ0q3cNisbU
         vIIkHNsG2PJF09ZVcNPLgjBmh+knpU5RTkR/uKQO4UJtDgvfqpRot/GhicubNyUMExVO
         /dyw==
X-Forwarded-Encrypted: i=1; AJvYcCU5/mvZL3sNRVZkxoeqzlkrXihChIZ+HuX/NAw7s+EhtjxITFuYxokjMUUyInsx6MH/6LYKhDs/0pIeCBrH19lWSvEbzoJo4rlV
X-Gm-Message-State: AOJu0Ywn4ef4c9sMAeRskLNueB/ZjLA0JAXvPsgBi81EZwszWvHEECTA
	Wj9dooLd+keKhgrDLxdeyV+UVg3CORkrQF7ISfvtUPJz4ovPAN4Lw+0waHVuU3sHjSLJo/Ll7it
	Ckw==
X-Google-Smtp-Source: AGHT+IG6s2DL4z5jJ3caJ1nyKbichgc+9treufuJXMxHE5/JSZIsXGqVg7GvHDIihpvMghDuHrXil7HRN0A=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:690c:46c8:b0:62c:de05:5a78 with SMTP id
 00721157ae682-658f01fd061mr279197b3.6.1720538339849; Tue, 09 Jul 2024
 08:18:59 -0700 (PDT)
Date: Tue, 9 Jul 2024 17:18:57 +0200
In-Reply-To: <70756a7b4ed5bd32f2d881aa1a0d1e7760ce4215.1720213293.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
References: <36958dbc486e1f975f4d4ecdfa51ae65c2c4ced0.1720213293.git.fahimitahera@gmail.com>
 <70756a7b4ed5bd32f2d881aa1a0d1e7760ce4215.1720213293.git.fahimitahera@gmail.com>
Message-ID: <Zo1U4dX-kGcm0hHA@google.com>
Subject: Re: [PATCH v1 2/2] Landlock: Signal scoping tests
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: mic@digikod.net, paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, jannh@google.com, outreachy@lists.linux.dev, 
	netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 05, 2024 at 03:21:43PM -0600, Tahera Fahimi wrote:
> Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> ---
>  .../testing/selftests/landlock/ptrace_test.c  | 216 ++++++++++++++++++
>  1 file changed, 216 insertions(+)
>=20
> diff --git a/tools/testing/selftests/landlock/ptrace_test.c b/tools/testi=
ng/selftests/landlock/ptrace_test.c
> index a19db4d0b3bd..e092b67f8b67 100644
> --- a/tools/testing/selftests/landlock/ptrace_test.c
> +++ b/tools/testing/selftests/landlock/ptrace_test.c
> [...]

> +static void scope_signal_handler(int sig, siginfo_t *info, void *ucontex=
t)
> +{
> +	if (sig =3D=3D SIGHUP || sig =3D=3D SIGURG || sig =3D=3D SIGTSTP || sig=
 =3D=3D SIGTRAP)
> +		signaled =3D 1;
> +
> +	// signal process group
> +	//kill(-(t->pid), SIGKILL);

There is commented-out code like this in various places in this patch.

I am pretty sure that scripts/checkpatch.pl should flag that.
See https://docs.kernel.org/dev-tools/checkpatch.html
and https://docs.kernel.org/process/submitting-patches.html#style-check-you=
r-changes

I personally just keep a checklist of things to remember before sending a p=
atch.
(rebase as needed, clang-format -i (for Landlock files), run tests, check c=
ommit
metadata, git format-patch with -v and --cover-letter, scripts/checkpatch.p=
l,
edit cover letter, git send-email)

=E2=80=94G=C3=BCnther
