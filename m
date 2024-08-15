Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B891547EB
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 22:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723759885; cv=none; b=GCiEOoRJDHDmvnUhsXrn5+uha6B/XHEQjnQeU5GuJDC32BMXbdW1XKHyqTRkVder+HjADVMz23oGkshUkp6hYsaSDsSp6SZsr0znNwKI+ppYQAWvokfc2Aqpameaqh6qUNx3PwnET1fb4af9mD2LvCxqB1t5C7DAYISTrrUBAvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723759885; c=relaxed/simple;
	bh=OUrB7jjq0zzcJBlRNS5gBbkoim1wQkYk3hv5MCVg2jw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n/IBL8G5viuYn96kfPIs3Yxri1xBfU72Kg+Do1XlnMjhfKWlJyylSmeDYfZ8lrYoP8uBHBYhskyBbcbRR4RNQWg4zzzEpy2Z1ojG9DJ7XDFaaS4BWlbfO700xQSHpHnrLx+qjQOauMn30q4BhZ536alEqVDFmJINxA9VbMqFRuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=NEfa5cnJ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NEfa5cnJ"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5bebb241fddso944a12.1
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 15:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723759881; x=1724364681; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0EbhLIoeNQ2r+xrZ9UdYSTABXF+0gbcRVGeJ3HRC5U=;
        b=NEfa5cnJRGTrrvAsYcP8sWla6GP4+11QNT1lEwkxF3ZWeskM4fqKYWHlVszaFZhvyo
         qtQRM7k6OCxmseWUDYw3CMTdczmlExH/LHTpiDiDAf/8Su6vLsTrYSdEYM0FwY402Kzq
         Knf1XHZzDJQFcAV5h7RjOD6pbfSrYbW1+vexaquZ+uf0bozvo7e+wIPWeHmeJkBApB1q
         GV3JdgCCBgCJF/IcmbAAt7hZg/ugwJFIeBNC7mLuRW7R0/YYdL12g3PQKek+uHIxxKVP
         PlVdKVajp8OG1Lh8ADqZ+8nrZJ7xO5OxRrDuPFHyUfbt5bHePD87kj0xxMWK8ABo8hff
         9v4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723759881; x=1724364681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k0EbhLIoeNQ2r+xrZ9UdYSTABXF+0gbcRVGeJ3HRC5U=;
        b=AM3OEm1Kw5kOO5qU8IS/56Qz6LXD/W3R3ZrZ9vwt1/OQG0hBTJO6Uj+av/1SjMun5J
         Ns4hGhHqUKr4XumL2Txbdvyuylugyf6oPUVv5W8iSp2MxsRUabLmV9bkr2hRIxMtzMd2
         E0HhexJuHdp1hdr7M7b16+9Wv2WMRXwsOBWsgt1D5WW1J4F5gzOW6ie9aZwyjS/MJXMm
         9wV7SIvNMn0UeZCrDh7g+SRV95QpfPVoPyrkN6PRUNnMDR1saVNIqh1I4WbXgHi74E/8
         JJ9eCBE8ybUSw7CDRqsAF593P9p8pT/HSoX/EJBMiSkRD7hc+1z9BEvXO9qC8C/z6THr
         +WUA==
X-Gm-Message-State: AOJu0Yzx7OHclCaC6rMGPbviFfdsjWJ9NhefrmdBG1RdQR1ZyJscdUSx
	wHL/gNiPl97XQbBM2ah+DPPst7fIa7rG7hj64HPCJpQh80IEUXTVElY9Ph2Vvaq06GdAdWaZDy/
	rcYDnYKHaUi8XeOa0xPMO5xHF01+oXaiPO/o9
X-Google-Smtp-Source: AGHT+IHnL6ZPj0JywgJ6DAhMXWPxpocgbzFPs+YcLitYohDgiihNIv3VjQgAC2NO/FExipns+1pkK+rBnkU66YasC0c=
X-Received: by 2002:a05:6402:280d:b0:5be:9bb0:1189 with SMTP id
 4fb4d7f45d1cf-5becb3e5a03mr28885a12.2.1723759880647; Thu, 15 Aug 2024
 15:11:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1723680305.git.fahimitahera@gmail.com> <d04bc943e8d275e8d00bb7742bcdbabc7913abbe.1723680305.git.fahimitahera@gmail.com>
 <CAG48ez2Sw0Cy3RYrgrsEDKyWoxMmMbzX6yY-OEfZqeyGDQhy9w@mail.gmail.com> <Zr5y53Bl6cgdLKjj@tahera-OptiPlex-5000>
In-Reply-To: <Zr5y53Bl6cgdLKjj@tahera-OptiPlex-5000>
From: Jann Horn <jannh@google.com>
Date: Fri, 16 Aug 2024 00:10:44 +0200
Message-ID: <CAG48ez1PcHRDhRjtsq_JAr5e6z=XNjB1Mi_jjtr8EsRphnnb2g@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] Landlock: Adding file_send_sigiotask signal
 scoping support
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2024 at 11:28=E2=80=AFPM Tahera Fahimi <fahimitahera@gmail.=
com> wrote:
>
> On Thu, Aug 15, 2024 at 10:25:15PM +0200, Jann Horn wrote:
> > On Thu, Aug 15, 2024 at 8:29=E2=80=AFPM Tahera Fahimi <fahimitahera@gma=
il.com> wrote:
> > > This patch adds two new hooks "hook_file_set_fowner" and
> > > "hook_file_free_security" to set and release a pointer to the
> > > domain of the file owner. This pointer "fown_domain" in
> > > "landlock_file_security" will be used in "file_send_sigiotask"
> > > to check if the process can send a signal.
> > >
> > > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> > > ---
> > >  security/landlock/fs.c   | 18 ++++++++++++++++++
> > >  security/landlock/fs.h   |  6 ++++++
> > >  security/landlock/task.c | 27 +++++++++++++++++++++++++++
> > >  3 files changed, 51 insertions(+)
> > >
> > > diff --git a/security/landlock/fs.c b/security/landlock/fs.c
> > > index 7877a64cc6b8..d05f0e9c5e54 100644
> > > --- a/security/landlock/fs.c
> > > +++ b/security/landlock/fs.c
> > > @@ -1636,6 +1636,21 @@ static int hook_file_ioctl_compat(struct file =
*file, unsigned int cmd,
> > >         return -EACCES;
> > >  }
> > >
> > > +static void hook_file_set_fowner(struct file *file)
> > > +{
> > > +       write_lock_irq(&file->f_owner.lock);
> >
> > Before updating landlock_file(file)->fown_domain, this hook must also
> > drop a reference on the old domain - maybe by just calling
> > landlock_put_ruleset_deferred(landlock_file(file)->fown_domain) here.
> Hi Jann,
>
> Thanks for the feedback :)
> It totally make sense.
> > > +       landlock_file(file)->fown_domain =3D landlock_get_current_dom=
ain();
> > > +       landlock_get_ruleset(landlock_file(file)->fown_domain);
> > > +       write_unlock_irq(&file->f_owner.lock);
> > > +}
> > > +
> > > +static void hook_file_free_security(struct file *file)
> > > +{
> > > +       write_lock_irq(&file->f_owner.lock);
> > > +       landlock_put_ruleset(landlock_file(file)->fown_domain);
> I was thinking of if we can replace this landlock_put_ruleset with
> landlock_put_ruleset_deferred. In this case, it would be better use of
> handling the lock?

I don't think you have to take the "file->f_owner.lock" in this hook -
the file has already been torn down pretty far, nothing is going to be
able to trigger the file_set_fowner hook anymore.

But either way, you're right that we can't just use
landlock_put_ruleset() here because landlock_put_ruleset() can sleep
and the file_free_security hook can be invoked from non-sleepable
context. (This only happens when fput() directly calls file_free(),
and I think that only happens with ->fown_domain=3D=3DNULL, so technically
it would also be fine to do something like "if (domain)
landlock_put_ruleset(domain);".)
If you test your current code in a kernel that was built with
CONFIG_DEBUG_ATOMIC_SLEEP=3Dy, this will probably print an warning
message in the kernel log (dmesg). You're right that using
landlock_put_ruleset_deferred() instead would fix that.

I think the right solution here is probably just to do:

static void hook_file_free_security(struct file *file)
{
  landlock_put_ruleset_deferred(landlock_file(file)->fown_domain);
}

Alternatively it would also work to do this - this code is probably a
bit more efficient but also a little less clear:

static void hook_file_free_security(struct file *file)
{
  /* don't trigger might_sleep() for tearing down unopened file */
  if (landlock_file(file)->fown_domain)
    landlock_put_ruleset(landlock_file(file)->fown_domain);
}

>
> > > +       write_unlock_irq(&file->f_owner.lock);
> > > +}
