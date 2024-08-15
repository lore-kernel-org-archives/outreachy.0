Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83DC12B94
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 23:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723763172; cv=none; b=sSDG2K0f6CT0Gwosz3Y7rKVDkXWQlBJhFyffzAgXOD+S6TjbRjFP5zxcOAhAguMD1z1iwMGf/qZ1UKG2NYSSExjvkqj9UQgA7xWF4T2dh1EDcg8kyYtF4WeOMtGw3TTvvJvS0jgiDc5NtoyLGGSKUf143yit92l9vCtP54WJa5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723763172; c=relaxed/simple;
	bh=bvTlhlXNaVe0JPjLpRuKFXfFp3CAjwWT83vZcv58etE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WvXJmSSzqrOmQNYw0ukL3eR5YQ8Cad3Q0FOaG/P+i+STkccGJHAM+M7q3eRRbtMeBzra438sM7hAwTymUgIkRCKElT1AyVHd1p5mmOJgExuygNzZ8qV5xRBasGeqWJxLW95wtZ4NOexesRpRGpL0936PxWZ+KDa3VDj2M2/+P70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lrjONIyM; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lrjONIyM"
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-710bdddb95cso976915b3a.3
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 16:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723763170; x=1724367970; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r2MVp98bZo761S4wGmdjk4zKZB2eYXUc53AD4ygWeNY=;
        b=lrjONIyMCdNVcecZ69EmBZMAoT+hS9o5PJy0BXvNl227nAamCjyJHBjoAF12YmH/LB
         lz3WnWM87R+lHf+3Eo4r40UeQ7ATkKjqWx9urL4bzYh5uM/g7nUaYJLF3MmDaLc7pSJa
         0icsGiyUYVTL46G+heS7msxcFsIXPKhyn8RRhJ8BDNwCDDneLzFZHAs0PY8+3LaRMMP+
         abBmpbn7SSt0B9YqOSPPx1HuvLxYyqAajkzEFv5TzRLY/k9YR5rznYIlsBEeL3PxRaax
         hj8wR+hihrmZPCedU7dLnB4nI3TC+tgKnJGWAvC40oZrW9kkk7yj74yV3jujhGUaVFhh
         m65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723763170; x=1724367970;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r2MVp98bZo761S4wGmdjk4zKZB2eYXUc53AD4ygWeNY=;
        b=lsGhB7GDGc/bOCIMgcU1dwSfXtjoEWlI+vGc7hyKrNdDXdaV/46OcdKiJoI4TEdlie
         apAoHp0EReX/T+byrHWm/n7UFnF5eTJUagO7h7hab/ikrCBjMYR7GijIHujBBTBRd87u
         KjF7pTB0QCA/Oi7rLkMKbM6xiydSbMq1t1+cQ6mwflsprUvmw+2Pg5CMy7aKnvN6+213
         DTdmjLA7zZVxYjxWSgFsIMzwwFrhS3CKwRhJTahiEaL15O7dYpI0DqjpnhXCZHECfAro
         jTMUe+N6VVp4H/TnJ7/ziNmvc+MOP1v8qgDIiQjAUG8fnOUJ+DB7DXZ6XZPrwr6sstG8
         Dy6g==
X-Gm-Message-State: AOJu0Yx7+OSH9ZRnQN+FihWeifc/MeB9xE7BKlfdIPikP8zmVIYFmTlw
	DPh4jndi/FeGoC/DbtinfjEDbyZnE6RA0L1S4c0gwLqkwR+v7yxh
X-Google-Smtp-Source: AGHT+IGXM/Mqg9qSgfOA6fMJ1xt6FPn83RQRVebx68PrCIT9+I7807vn1nG8ky9ebKzf39dbjaw4Wg==
X-Received: by 2002:a05:6a20:c88a:b0:1c8:95c9:307c with SMTP id adf61e73a8af0-1c904fb6489mr1756065637.28.1723763170085;
        Thu, 15 Aug 2024 16:06:10 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7127ae0756dsm1508384b3a.47.2024.08.15.16.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 16:06:09 -0700 (PDT)
Date: Thu, 15 Aug 2024 17:06:07 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: Jann Horn <jannh@google.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com,
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH v3 2/6] Landlock: Adding file_send_sigiotask signal
 scoping support
Message-ID: <Zr6J31ewINPtPtTD@tahera-OptiPlex-5000>
References: <cover.1723680305.git.fahimitahera@gmail.com>
 <d04bc943e8d275e8d00bb7742bcdbabc7913abbe.1723680305.git.fahimitahera@gmail.com>
 <CAG48ez2Sw0Cy3RYrgrsEDKyWoxMmMbzX6yY-OEfZqeyGDQhy9w@mail.gmail.com>
 <Zr5y53Bl6cgdLKjj@tahera-OptiPlex-5000>
 <CAG48ez1PcHRDhRjtsq_JAr5e6z=XNjB1Mi_jjtr8EsRphnnb2g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez1PcHRDhRjtsq_JAr5e6z=XNjB1Mi_jjtr8EsRphnnb2g@mail.gmail.com>

On Fri, Aug 16, 2024 at 12:10:44AM +0200, Jann Horn wrote:
> On Thu, Aug 15, 2024 at 11:28 PM Tahera Fahimi <fahimitahera@gmail.com> wrote:
> >
> > On Thu, Aug 15, 2024 at 10:25:15PM +0200, Jann Horn wrote:
> > > On Thu, Aug 15, 2024 at 8:29 PM Tahera Fahimi <fahimitahera@gmail.com> wrote:
> > > > This patch adds two new hooks "hook_file_set_fowner" and
> > > > "hook_file_free_security" to set and release a pointer to the
> > > > domain of the file owner. This pointer "fown_domain" in
> > > > "landlock_file_security" will be used in "file_send_sigiotask"
> > > > to check if the process can send a signal.
> > > >
> > > > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> > > > ---
> > > >  security/landlock/fs.c   | 18 ++++++++++++++++++
> > > >  security/landlock/fs.h   |  6 ++++++
> > > >  security/landlock/task.c | 27 +++++++++++++++++++++++++++
> > > >  3 files changed, 51 insertions(+)
> > > >
> > > > diff --git a/security/landlock/fs.c b/security/landlock/fs.c
> > > > index 7877a64cc6b8..d05f0e9c5e54 100644
> > > > --- a/security/landlock/fs.c
> > > > +++ b/security/landlock/fs.c
> > > > @@ -1636,6 +1636,21 @@ static int hook_file_ioctl_compat(struct file *file, unsigned int cmd,
> > > >         return -EACCES;
> > > >  }
> > > >
> > > > +static void hook_file_set_fowner(struct file *file)
> > > > +{
> > > > +       write_lock_irq(&file->f_owner.lock);
> > >
> > > Before updating landlock_file(file)->fown_domain, this hook must also
> > > drop a reference on the old domain - maybe by just calling
> > > landlock_put_ruleset_deferred(landlock_file(file)->fown_domain) here.
> > Hi Jann,
> >
> > Thanks for the feedback :)
> > It totally make sense.
> > > > +       landlock_file(file)->fown_domain = landlock_get_current_domain();
> > > > +       landlock_get_ruleset(landlock_file(file)->fown_domain);
> > > > +       write_unlock_irq(&file->f_owner.lock);
> > > > +}
> > > > +
> > > > +static void hook_file_free_security(struct file *file)
> > > > +{
> > > > +       write_lock_irq(&file->f_owner.lock);
> > > > +       landlock_put_ruleset(landlock_file(file)->fown_domain);
> > I was thinking of if we can replace this landlock_put_ruleset with
> > landlock_put_ruleset_deferred. In this case, it would be better use of
> > handling the lock?
> 
> I don't think you have to take the "file->f_owner.lock" in this hook -
> the file has already been torn down pretty far, nothing is going to be
> able to trigger the file_set_fowner hook anymore.
That's right. Thanks.

> But either way, you're right that we can't just use
> landlock_put_ruleset() here because landlock_put_ruleset() can sleep
> and the file_free_security hook can be invoked from non-sleepable
> context. (This only happens when fput() directly calls file_free(),
> and I think that only happens with ->fown_domain==NULL, so technically
> it would also be fine to do something like "if (domain)
> landlock_put_ruleset(domain);".)
> If you test your current code in a kernel that was built with
> CONFIG_DEBUG_ATOMIC_SLEEP=y, this will probably print an warning
> message in the kernel log (dmesg). You're right that using
> landlock_put_ruleset_deferred() instead would fix that.
> 
> I think the right solution here is probably just to do:
> 
> static void hook_file_free_security(struct file *file)
> {
>   landlock_put_ruleset_deferred(landlock_file(file)->fown_domain);
> }
I think I will stick to this one since it is easier to understand. 
> Alternatively it would also work to do this - this code is probably a
> bit more efficient but also a little less clear:
> 
> static void hook_file_free_security(struct file *file)
> {
>   /* don't trigger might_sleep() for tearing down unopened file */
>   if (landlock_file(file)->fown_domain)
>     landlock_put_ruleset(landlock_file(file)->fown_domain);
> }
> 
> >
> > > > +       write_unlock_irq(&file->f_owner.lock);
> > > > +}
