Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A53143751
	for <outreachy@lists.linux.dev>; Wed,  7 Aug 2024 23:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723073790; cv=none; b=CGGHysuOdEuuVWPne+8wXFBy5qEWQXfyVN3N6PXeUWKcTTxRP8KMy4HfO2OnrkXXQlxICyLcIY8+r+UkqdAcd/L5/c0Egz7ZDYrKmC5d+jmWAolF+ressiu1UG/GNEhrUSQ7mZ1B1OPNv6s97tX/Ni6ke4Na+oHA4HtCk17J7Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723073790; c=relaxed/simple;
	bh=qSbCFaZH+G6lzKlJZVve6DFWjFuUgcmFFYwA/SjX21I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O68UGB+Vosq376VXJET/IdpGwBQXBbc9EB/DqlacGnC2Dr1nm2x1qpMm4A75DCIm//GMx1yh/zQ5YCHHMflD++acGPDPxUz9Kp32H5Mh1Jv0UkWiLZfy/DbHRJ3Sp1xXJZKnCsHQsmNSHyelm3rom6Sv5JbC3klWwxWjhOsQdJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OepJi6vL; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OepJi6vL"
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1fc49c0aaffso4110965ad.3
        for <outreachy@lists.linux.dev>; Wed, 07 Aug 2024 16:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723073788; x=1723678588; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3bI2iAB50s/sgrD0as33mPKfx3YGxvdhWBB75P/hORk=;
        b=OepJi6vL0MyDCT68DOddDmtJyXyvLU7BG09EKduSUdT3oQfJJ5g1WjCPH6kGFetXpJ
         76ej40EVmp5UginGVbsrio8NoX7wciKKzOsfkkmm5pvIC5a9tCq813T8KJ1H1UvxH91V
         2Zq8rN8778qABdSdD2+WlxbEs2SzHzNWQhnvilBgksTcMedqNG4ebaiHEcavu6pCaYZh
         emNMel0TR5bR0K3kicK9pM/dTOBvtthJhxPF7ZbfJmL7iLEBItvWipOaEuVGnMYFSK31
         GZFQG0gi/C4vjYNQi/Emv0cEOpHdL8l+vwbzCBu64QVvjcoH4lanTvzLt6RGnFJiiYq5
         TNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723073788; x=1723678588;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3bI2iAB50s/sgrD0as33mPKfx3YGxvdhWBB75P/hORk=;
        b=KvKJG1gIOW7UnvTijZxEwElSy5tBVS7oK6lSQAIZXsEg2VSy5sOy3OBg2FXFMe7tVp
         wDJlEuYL1YhkuAlamRoUjyZLYQ47wMTV4Idp/9wZDA7iHjqr7nTYQYrvuyEJwg9Kk13g
         1DpJ7dWebRDI+2KKJK6m19ExvzAUXaEiBc1kTGX/EK3b4J/uMpBaQdAqRKz8foUYAbjC
         XhmTFCLosTOlix62sDSqfBAuIn1l3z+lN3A0BBubhFGTlDAQMn62lstl+XY5UdqS/EDv
         WawFUrxPyzqa7/ms36mPRmMK0syJp8jhZdUSdc1b4j0JqAYi6TIrsjD4L4OqHOtjVUnf
         HxjA==
X-Forwarded-Encrypted: i=1; AJvYcCWus0ax8tou5iFZ7Bg6heYg6agRyss+NWt7HWHHPZyO+JusW6X/kZbtxtGo9/TqtO4dtuNjN9cU5+WuxTL/B9idVNISgaZoygsm
X-Gm-Message-State: AOJu0YyZ8dL0MpStvecR4hvjcItwlWD5Xv3E6XvD2d0FgHlicwhFP2wS
	cJkBYi+Re2OrbgwjQUmQmEqIwNRrAovGEQ6ellS1htOeYdLnDH2S
X-Google-Smtp-Source: AGHT+IHvCp3huaVdNK2AR/421T2J1J8zVwb1EDAWJDXPQ4FGbjP9mkC7qxfimpUomsC/h8MQ6DOH6g==
X-Received: by 2002:a17:902:d2ca:b0:1fb:8a3b:ee9a with SMTP id d9443c01a7336-200952e28admr2942865ad.61.1723073788023;
        Wed, 07 Aug 2024 16:36:28 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff59176eb6sm112030645ad.196.2024.08.07.16.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 16:36:27 -0700 (PDT)
Date: Wed, 7 Aug 2024 17:36:25 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Jann Horn <jannh@google.com>, outreachy@lists.linux.dev,
	gnoack@google.com, paul@paul-moore.com, jmorris@namei.org,
	serge@hallyn.com, linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com,
	netdev@vger.kernel.org
Subject: Re: [PATCH v2 1/4] Landlock: Add signal control
Message-ID: <ZrQE+d2b/FWxIPoA@tahera-OptiPlex-5000>
References: <cover.1722966592.git.fahimitahera@gmail.com>
 <49557e48c1904d2966b8aa563215d2e1733dad95.1722966592.git.fahimitahera@gmail.com>
 <CAG48ez3o9fmqz5FkFh3YoJs_jMdtDq=Jjj-qMj7v=CxFROq+Ew@mail.gmail.com>
 <CAG48ez1jufy8iwP=+DDY662veqBdv9VbMxJ69Ohwt8Tns9afOw@mail.gmail.com>
 <20240807.Yee4al2lahCo@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240807.Yee4al2lahCo@digikod.net>

On Wed, Aug 07, 2024 at 08:16:47PM +0200, Mickaël Salaün wrote:
> On Tue, Aug 06, 2024 at 11:55:27PM +0200, Jann Horn wrote:
> > On Tue, Aug 6, 2024 at 8:56 PM Jann Horn <jannh@google.com> wrote:
> > > On Tue, Aug 6, 2024 at 8:11 PM Tahera Fahimi <fahimitahera@gmail.com> wrote:
> > > > Currently, a sandbox process is not restricted to send a signal
> > > > (e.g. SIGKILL) to a process outside of the sandbox environment.
> > > > Ability to sending a signal for a sandboxed process should be
> > > > scoped the same way abstract unix sockets are scoped. Therefore,
> > > > we extend "scoped" field in a ruleset with
> > > > "LANDLOCK_SCOPED_SIGNAL" to specify that a ruleset will deny
> > > > sending any signal from within a sandbox process to its
> > > > parent(i.e. any parent sandbox or non-sandboxed procsses).
> > [...]
> > > > +       if (is_scoped)
> > > > +               return 0;
> > > > +
> > > > +       return -EPERM;
> > > > +}
> > > > +
> > > > +static int hook_file_send_sigiotask(struct task_struct *tsk,
> > > > +                                   struct fown_struct *fown, int signum)
> 
> I was wondering if we should handle this case, but I guess it makes
> sense to have a consistent policy for all kind of user-triggerable
> signals.
> 
> > > > +{
> > > > +       bool is_scoped;
> > > > +       const struct landlock_ruleset *dom, *target_dom;
> > > > +       struct task_struct *result = get_pid_task(fown->pid, fown->pid_type);
> > >
> > > I'm not an expert on how the fowner stuff works, but I think this will
> > > probably give you "result = NULL" if the file owner PID has already
> > > exited, and then the following landlock_get_task_domain() would
> > > probably crash? But I'm not entirely sure about how this works.
> > >
> > > I think the intended way to use this hook would be to instead use the
> > > "file_set_fowner" hook to record the owning domain (though the setup
> > > for that is going to be kind of a pain...), see the Smack and SELinux
> > > definitions of that hook. Or alternatively maybe it would be even
> > > nicer to change the fown_struct to record a cred* instead of a uid and
> > > euid and then use the domain from those credentials for this hook...
> > > I'm not sure which of those would be easier.
> > 
> > (For what it's worth, I think the first option would probably be
> > easier to implement and ship for now, since you can basically copy
> > what Smack and SELinux are already doing in their implementations of
> > these hooks. I think the second option would theoretically result in
> > nicer code, but it might require a bit more work, and you'd have to
> > include the maintainers of the file locking code in the review of such
> > refactoring and have them approve those changes. So if you want to get
> > this patchset into the kernel quickly, the first option might be
> > better for now?)
> > 
> 
> I agree, let's extend landlock_file_security with a new "fown" pointer
> to a Landlock domain. We'll need to call landlock_get_ruleset() in
> hook_file_send_sigiotask(), and landlock_put_ruleset() in a new
> hook_file_free_security().
I think we should add a new hook (hook_file_set_owner()) to initialize
the "fown" pointer and call landlock_get_ruleset() in that? If we do not
have hook_file_set_owner to store domain in "fown", can you please give
me a hint on where to do that?
Thanks 
> I would be nice to to replace the redundant informations in fown_struct
> but that can wait.
