Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318491957FF
	for <outreachy@lists.linux.dev>; Fri,  9 Aug 2024 13:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723211883; cv=none; b=lZ+CbGLpK6iqOmRMCEDht7YesOm3pLUCxFzzvgWbN7Yu1FTOb+wtJ9hVDMEq9JW01W91rMNqnIJdHwMImZSjVAxd/syVhDWHwTfLUKBzp6sWpIUVNV1QgbxwO17D+oJLdiO9+5mHorOi58Q9oi9XouBtDnLs1NfSSWVGISa+QJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723211883; c=relaxed/simple;
	bh=w6Vkbk7g1bhMu2SYQ5zcQ14DAY77SckcLxEdl1ex4yo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QecLLrf0xrDK2SfGGpz6q6/y8E8UpjgA/iGgyNTFRsHsGLyhkZaK10cjPARZJ3q8vnaLVlCLHMvdU8DnNpZnCy9L3lufL+htGWDFe8qBzCUXMcW5P/9UrJZapqCgUVDGm/N/2qyX80IZa/Ou1wmEZudjksHjoSBmKfJnsfw0i/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BQsziiGY; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BQsziiGY"
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5b9fe5ea355so11924a12.0
        for <outreachy@lists.linux.dev>; Fri, 09 Aug 2024 06:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723211880; x=1723816680; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6Vkbk7g1bhMu2SYQ5zcQ14DAY77SckcLxEdl1ex4yo=;
        b=BQsziiGYHNySX+7pcmlX2m+G73FtawJwhgO6tAOvw33PHt31O9FFK5nl8jQ+3rSXXI
         gsRbkC5m8Mw3Ce5PjfUbelcPcWnmMi61yRqe1tAgC0j1dWjMLWqBu+ZUWejbCo5BvaXF
         3XXCivnDh0IZ+pnxiFh8x3QrMpor9hcBKMerXKE1j6pkAgzUM6kyNmYFilPJ8a58BgKF
         iSDMns8DEE3wqAYnGIZyTkR+eTKYC+NZbwdZmjexSSTL9tsqhLwv2vSi5x65unPF6ojl
         IXoEpSrMLYB0VTrZQPcn+5Tt86Nn6CR3YWfLjtd8UIPhNI375LZw4D6faoxTRbUMLeWE
         dy0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723211880; x=1723816680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w6Vkbk7g1bhMu2SYQ5zcQ14DAY77SckcLxEdl1ex4yo=;
        b=blJl6zWR3wdnskRGKEgZ6NYoX/XIE1q2m2dybeP0JQUQIs0kzJt3+SZ8oGfpmDrIMP
         5nmZM1wJrUqNmAIxMfbnSGycdmkSGND9pnWQAtsZBIE/oODY2y8vrXikoDdh0VbSo2gS
         TOLb7lLrAClIalYY82XXMx02dKs/eZEje6Oml6bihgwwq3mvqbmFriQ8e6b1/NYIXAFB
         jrk2uIwwU5NivMOrfvtWnG3ZbHpwOOYfatymeDN+02EqCDftEpn1ulb2ZfVaCTZkGYxM
         0AM0QXnYfPTPm4c+bO1J//oSyhQ++p3oZlMf9AcXnEzLJcewJUtyG8iAnHD/IKXUYPqG
         bp/A==
X-Forwarded-Encrypted: i=1; AJvYcCXEWEEA9cQw7tEy1Go9xs2tlzj7dobkt9c8kP4cxamit0E2R0L3otLa7cDUCKn+byM6RobhMmcM6gOLvSYAJKjcIKxYoIIWXzMJ
X-Gm-Message-State: AOJu0YyMUU2F0MVFKUJV8E6n7YDKjxTHTE2EQLqnt9lTcpC8/Djq/6p+
	Hi/aU4jZQJW9f5zf6DxNt72qIY8b0eb+tUQIP3UIYuNTuNfZJqjnE+w23wcmgt10t/qR23dhe/1
	Jbo/VAA0lDT4dvA5rqoy0UBp9kReymo3WvHr9
X-Google-Smtp-Source: AGHT+IEAwCE819eFp9HXrJhbiR7g72RxfA+RZ0jzRNR/HFmgCAtCKkR3PyB+6FOmP0Sp56cWkOjaTh98FKimp19wPws=
X-Received: by 2002:a05:6402:5216:b0:5b8:ccae:a8b8 with SMTP id
 4fb4d7f45d1cf-5bc4b3fd7b2mr131081a12.3.1723211879768; Fri, 09 Aug 2024
 06:57:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
 <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
 <CAG48ez1jufy8iwP=+DDY662veqBdv9VbMxJ69Ohwt8Tns9afOw@mail.gmail.com>
 <20240807.Yee4al2lahCo@digikod.net> <ZrQE+d2b/FWxIPoA@tahera-OptiPlex-5000>
 <CAG48ez1q80onUxoDrFFvGmoWzOhjRaXzYpu+e8kNAHzPADvAAg@mail.gmail.com>
 <20240808.kaiyaeZoo1ha@digikod.net> <CAG48ez34C2pv7qugcYHeZgp5P=hOLyk4p5RRgKwhU5OA4Dcnuw@mail.gmail.com>
 <20240809.eejeekoo4Quo@digikod.net> <CAG48ez2Cd3sjzv5rKT1YcMi1AzBxwN8r-jTbWy0Lv89iik-Y4Q@mail.gmail.com>
 <20240809.fee1eiPohphu@digikod.net>
In-Reply-To: <20240809.fee1eiPohphu@digikod.net>
From: Jann Horn <jannh@google.com>
Date: Fri, 9 Aug 2024 15:57:21 +0200
Message-ID: <CAG48ez3nx4fR7skDf_Vhgm3OLJqGtsLUgHQMykq7oy9HZq5fgw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] Landlock: Add signal control
To: =?UTF-8?B?TWlja2HDq2wgU2FsYcO8bg==?= <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>, outreachy@lists.linux.dev, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 9, 2024 at 3:37=E2=80=AFPM Micka=C3=ABl Sala=C3=BCn <mic@digiko=
d.net> wrote:
> On Fri, Aug 09, 2024 at 02:44:06PM +0200, Jann Horn wrote:
> > On Fri, Aug 9, 2024 at 12:59=E2=80=AFPM Micka=C3=ABl Sala=C3=BCn <mic@d=
igikod.net> wrote:
> > > On Thu, Aug 08, 2024 at 04:42:23PM +0200, Jann Horn wrote:
[...]
> > > > So if you want to use RCU lifetime for this, I think you'll have to
> > > > turn landlock_put_ruleset() and landlock_put_ruleset_deferred() int=
o
> > > > one common function that always, when reaching refcount 0, schedule=
s
> > > > an RCU callback which then schedules a work_struct which then does
> > > > free_ruleset().
> > > >
> > > > I think that would be a little ugly, and it would look nicer to jus=
t
> > > > use normal locking in the file_send_sigiotask hook?
> > >
> > > I don't see how we can do that without delaying the free_ruleset() ca=
ll
> > > to after the RCU read-side critical section in f_setown().
> >
> > It should work if you used landlock_put_ruleset_deferred() instead of
> > landlock_put_ruleset().
>
> Calling landlock_put_ruleset_deferred() in hook_file_set_fowner() or
> replacing all landlock_put_ruleset() calls?

Calling landlock_put_ruleset_deferred() in hook_file_set_fowner().

> The deferred work queue is not guarantee to run after all concurrent RCU
> read-side critical sections right?

Yes, I was talking about my "it would look nicer to just use normal
locking in the file_send_sigiotask hook" suggestion - don't use any
RCU stuff, just use the same lock in file_set_fowner and
file_send_sigiotask.
