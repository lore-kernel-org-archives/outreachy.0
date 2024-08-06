Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE628249F
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 22:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722981608; cv=none; b=UTF0MiUJLaI+oNpz1hr0+G13IwioPHRgD3j9uoacH4smnxJr9L4Xv7IunmcEo3sqdclopLtzF67WuAG8uhU+UR82vZ+JtxcTOsSMrjb1JhafTMOCq0W+YVVk6uL4QYUYuGNTcOfkeCPCLOx0gpBhVtIDW4+nTTAgEUbv+LKeSF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722981608; c=relaxed/simple;
	bh=OwNLSN1W0J+6Dh8h5WKA9Oa1TE84Nv+86Y1dQJADOF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FZysKZfXDpvrpAFhxlg5VmG/sdA4tzwWtV4yfvH7wB1CJfQmIAx6EimG9hlQVVDAqAo0r0CjAUnmJVoCrnKxaokh7wbvIvTXJ+oKON0tSB3ZbnsLdNSXNpt1gM+0qXGBWiWQScMxsSIpbtrGlrKdfoM3kut2vdWBvsARJW/CjhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SNelGoK9; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SNelGoK9"
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1fd70ba6a15so9089245ad.0
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 15:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722981606; x=1723586406; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/50Kbw9qcagQY5OojgELJFLSQm6KtoCpbcMKlofWHNk=;
        b=SNelGoK99S/V7nEH/mvx+GPS+pUGHMOSXqSqHfgMUSR+W4gR19dCEGCW0suiTlc//H
         tj2l4Ymfm3lwsoleAF0GTbqmfnzfveF55gjG2/YH10bMeLeMaT/naUmfVHCJ98rq9FtE
         IQ1Ak6b7gXXO7y/zwW4if7ctTgfze3OfAU2l3pq0Avem3Dfnry4ZQ9m1FKPsNJne0dUi
         X2mewCZYzxVAbsHaxqAmQJ8aPdS/ren+RtFwJ7PysQ1tcLsrL7r+FQciK3w3N/K0i/h+
         ihz08JBxpAJ5kdmVfdBG1XPhNtOjebD7WbcxgVpMyUZj3FSjZA29Lt9grionrHE9R3lq
         Jz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722981606; x=1723586406;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/50Kbw9qcagQY5OojgELJFLSQm6KtoCpbcMKlofWHNk=;
        b=eqllJn6MowKOIx+w0Ru7hSSwl0yuJvuntuEWJ8fJ1Gv121B2hF7xhjufPr/Z45AbiL
         snVKIHkPLEber3QnQh08mbfmqbnwcTRrZtln3VnDPNFYbYhevhTmI9w8YNzDum2JN4Xa
         g6BoiDbwtKzXuHY9Jb3DMuUgS9e5XTkEK1zNvod1BtaaUvot9gwRLQsxd2AAJWz+p7fH
         8fZ2zbxrLUsMiPIGLsqdZYjoSqCefSXcXHsdEfYiRT/i71dal1F3huNchs3xINO1EfYr
         wJwPDJ2gRd315vRH+zRFgsddldLhyQfyMbfbFa4nhshx/tAujpnD2HasWXbqNw2h+gLJ
         1viQ==
X-Gm-Message-State: AOJu0YzMLOUzk0+j0f79Fs9wdTe5cIx2XBINWyR9akSsZmH1iF6mMGWO
	XDMMzZ2CIVmESYlv6qJDBF0tBii84QChwYhbkGUEa/SND2J6rfnV
X-Google-Smtp-Source: AGHT+IHXa+LRVRm/C57MqrYOQ/Vf3v239GPhpPLFEDgIDJ84hO19cKAzIjegusu4uADCXlVAQQ3Wmg==
X-Received: by 2002:a17:902:f68f:b0:1fc:6b8b:4918 with SMTP id d9443c01a7336-1ff573bfcacmr172334305ad.41.1722981606141;
        Tue, 06 Aug 2024 15:00:06 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-200775d1b92sm20453155ad.77.2024.08.06.15.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 15:00:05 -0700 (PDT)
Date: Tue, 6 Aug 2024 16:00:02 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: Jann Horn <jannh@google.com>
Cc: outreachy@lists.linux.dev, mic@digikod.net, gnoack@google.com,
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH v2 1/4] Landlock: Add signal control
Message-ID: <ZrKc4i1PhdMwA77h@tahera-OptiPlex-5000>
References: <cover.1722966592.git.fahimitahera@gmail.com>
 <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
 <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>

On Tue, Aug 06, 2024 at 08:56:15PM +0200, Jann Horn wrote:
> On Tue, Aug 6, 2024 at 8:11 PM Tahera Fahimi <fahimitahera@gmail.com> wrote:
> > Currently, a sandbox process is not restricted to send a signal
> > (e.g. SIGKILL) to a process outside of the sandbox environment.
> > Ability to sending a signal for a sandboxed process should be
> > scoped the same way abstract unix sockets are scoped. Therefore,
> > we extend "scoped" field in a ruleset with
> > "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset will deny
> > sending any signal from within a sandbox process to its
> > parent(i.e. any parent sandbox or non-sandboxed procsses).
> [...]
> > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > index 7e8579ebae83..a73cff27bb91 100644
> > --- a/security/landlock/task.c
> > +++ b/security/landlock/task.c
> > @@ -261,11 +261,54 @@ static int hook_unix_may_send(struct socket *const sock,
> >         return -EPERM;
> >  }
> >
> > +static int hook_task_kill(struct task_struct *const p,
> > +                         struct kernel_siginfo *const info, const int sig,
> > +                         const struct cred *const cred)
> > +{
> > +       bool is_scoped;
> > +       const struct landlock_ruleset *target_dom;
> > +
> > +       /* rcu is already locked */
> > +       target_dom = landlock_get_task_domain(p);
> > +       if (cred)
> > +               /* dealing with USB IO */
> > +               is_scoped = domain_IPC_scope(landlock_cred(cred)->domain,
> > +                                            target_dom,
> > +                                            LANDLOCK_SCOPED_SIGNAL);
> > +       else
> > +               is_scoped = domain_IPC_scope(landlock_get_current_domain(),
> > +                                            target_dom,
> > +                                            LANDLOCK_SCOPED_SIGNAL);
> 
> This might be a bit more concise if you turn it into something like:
> 
> /* only USB IO supplies creds */
> cred = cred ?: current_cred();
> is_scoped = domain_IPC_scope(landlock_cred(cred)->domain,
>     target_dom, LANDLOCK_SCOPED_SIGNAL);
> 
> but that's just a question of style, feel free to keep it as-is
> depending on what you prefer.
Hi Jann,
Thanks for the feedback:)
> > +       if (is_scoped)
> > +               return 0;
> > +
> > +       return -EPERM;
> > +}
> > +
> > +static int hook_file_send_sigiotask(struct task_struct *tsk,
> > +                                   struct fown_struct *fown, int signum)
> > +{
> > +       bool is_scoped;
> > +       const struct landlock_ruleset *dom, *target_dom;
> > +       struct task_struct *result = get_pid_task(fown->pid, fown->pid_type);
> 
> I'm not an expert on how the fowner stuff works, but I think this will
> probably give you "result = NULL" if the file owner PID has already
> exited, and then the following landlock_get_task_domain() would
> probably crash? But I'm not entirely sure about how this works.
I considered since the file structure can always be obtained, then the
file owner PID always exist. I can check if we can use the credentials
stored in struct file instead.

> I think the intended way to use this hook would be to instead use the
> "file_set_fowner" hook to record the owning domain (though the setup
> for that is going to be kind of a pain...), see the Smack and SELinux
> definitions of that hook. Or alternatively maybe it would be even
> nicer to change the fown_struct to record a cred* instead of a uid and
> euid and then use the domain from those credentials for this hook...
> I'm not sure which of those would be easier.
Because Landlock does not use any security blob for this purpose, I am
not sure how to record the owner's doamin.
The alternative way looks nice.
> > +       /* rcu is already locked! */
> > +       dom = landlock_get_task_domain(result);
> > +       target_dom = landlock_get_task_domain(tsk);
> > +       is_scoped = domain_IPC_scope(dom, target_dom, LANDLOCK_SCOPED_SIGNAL);
> > +       put_task_struct(result);
> > +       if (is_scoped)
> > +               return 0;
> > +       return -EPERM;
> > +}
