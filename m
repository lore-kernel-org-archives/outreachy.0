Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA707184119
	for <outreachy@lists.linux.dev>; Wed, 10 Apr 2024 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712787875; cv=none; b=GVuRAtHXTaEPhJssROe1K2OQWY8S9N478s28vSG/O/C6tpSKJS6/Hp0pewYc91B9+Y8zWKuqeTAooLVCAcgdefAOpoB+AxWk7hYpolH9f4cOFISCj4gLSwST6p3lLnjx2dx1Iodrm8hOEfJRmLAE/WiyKm65COe5VF1u2edLzoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712787875; c=relaxed/simple;
	bh=OkZRHG4OUP0/Mknu1H2qrXOnItaKgi574B2w63UEBQc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qMVvCVVmbfX68RWFxptsakVqI3KHIADpGfDc5WPcoh3Nc8w7mpVYdipVW+yRjlQUeA8rqDO8cpDDFvNwORchT4tTlr4MwTrO5uyqYk/IK/gD9K++xa9B2f6fTDjswcDnbkHnypwTgIdllOGF147C89Bv64WUaTW7M5OPCy/rcjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZXcAoIzP; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZXcAoIzP"
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6e703e0e5deso6101227b3a.3
        for <outreachy@lists.linux.dev>; Wed, 10 Apr 2024 15:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712787873; x=1713392673; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3oArjKw8wsID4rCgeuLIYE0lPG2MnYnaXMSAIhN+7kM=;
        b=ZXcAoIzPA4/4y2fgGive59RSJYSubTsva48I+dmr+d2Ier+9Enav9PuW3mOyTpy/P6
         QAgypwZtvnQBI+oEiDvY61+e5Fng0FM8SFo0ElnDxMU1DI2wQTwXnW2QuO2IwwhWL8QJ
         iIn4/JK200qByKsIJnLhaWXdoKT8p3a/HXl73WyrEqrL/oQ7jSpZvTZk89mNShoW5SGl
         SUK5ytH/ut0CNrOOMYl56GmTuDxcZwTOUu3tIlCAa+3a4suFcVdLFcPmvQ3fqLCkGmnX
         ljqFKFTUQ3JIVuUWzkRNw/6PJf+ba2DtRFr09J+CrD5jj2ffvDK0CJidew5h2gfSWhZn
         7AaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712787873; x=1713392673;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3oArjKw8wsID4rCgeuLIYE0lPG2MnYnaXMSAIhN+7kM=;
        b=CXQWqhGxdRatjg0KeqfzgvNyZiKHniBMWv7hzKqPFSpVQ4ziMJ3kXX/qioE2aoQOrD
         I3vt7dOWLTVhE0UUIKeEjC68xcXXmgX0QIJboaXXbM47a2kqYpHi8yIJhJmytW46REu8
         4uTcF7QdjVfH6WxUj8bmeFInvsvc71EislzkzccT4J+XjxPuacXplJRzE7EKuML+XpIp
         NTp2ZwrSWP4xrH18HyUZUBQtaWTnSSNVUnqmlS9nWnrc5LHIKQ5wWjrDf+EnT0zmNf+V
         snxzxb/weNx/Fh1+b0T60qTIJ65Gv/i17jTXBORTk/AvTW4SwqrgxtV9e6ko39HWLV4c
         Q8Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXbkIu76d3aVTICVB9FWgvxKbu1/Wfgbr5TiiWlFhUH7Y31oyEuq9JqTBTuFExnRCpi60QvXULrz9JZmeUefrQZASM05BVPm4be
X-Gm-Message-State: AOJu0Yz3OfjcG7NDjbTQqtSls/1BqiYzNIp6d5o6p9DBvBLPzgVlU9Uj
	PdNcurYjrxt9vzaQp7WNNEUXzrHAiOEjL8T5fJJKrtxwBYDSuXrl
X-Google-Smtp-Source: AGHT+IFVnyKFHxzbXF0rWfmn+H6GI+i3o48dP8yMzH2AEvNtJYBPKOB4FqLuIDM0ICI6BEl+/AwPTw==
X-Received: by 2002:a05:6a20:1585:b0:1a9:4055:6dce with SMTP id h5-20020a056a20158500b001a940556dcemr4693410pzj.58.1712787872754;
        Wed, 10 Apr 2024 15:24:32 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id ge7-20020a056a00838700b006e567c81d14sm145086pfb.43.2024.04.10.15.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 15:24:32 -0700 (PDT)
Date: Wed, 10 Apr 2024 16:24:30 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev, netdev@vger.kernel.org,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Jann Horn <jannh@google.com>
Subject: Re: [PATCH v2] landlock: Add abstract unix socket connect
 restrictions
Message-ID: <ZhcRnhVKFUgCleDi@tahera-OptiPlex-5000>
References: <ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000>
 <20240401.ieC2uqua5sha@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240401.ieC2uqua5sha@digikod.net>

On Tue, Apr 02, 2024 at 11:53:09AM +0200, Mickaël Salaün wrote:
> Thanks for this patch.  Please CC the netdev mailing list too, they may
> be interested by this feature. I also added a few folks that previously
> showed their interest for this feature.
> 
> On Thu, Mar 28, 2024 at 05:12:13PM -0600, TaheraFahimi wrote:
> > Abstract unix sockets are used for local interprocess communication without
> > relying on filesystem. Since landlock has no restriction for connecting to
> > a UNIX socket in the abstract namespace, a sandboxed process can connect to
> > a socket outside the sandboxed environment. Access to such sockets should
> > be scoped the same way ptrace access is limited.
> 
> This is good but it would be better to explain that Landlock doesn't
> currently control abstract unix sockets and that it would make sense for
> a sandbox.
> 
> 
> > 
> > For a landlocked process to be allowed to connect to a target process, it
> > must have a subset of the target process’s rules (the connecting socket
> > must be in a sub-domain of the listening socket). This patch adds a new
> > LSM hook for connect function in unix socket with the related access rights.
> 
> Because of compatibility reasons, and because Landlock should be
> flexible, we need to extend the user space interface.  As explained in
> the GitHub issue, we need to add a new "scoped" field to the
> landlock_ruleset_attr struct. This field will optionally contain a
> LANDLOCK_RULESET_SCOPED_ABSTRACT_UNIX_SOCKET flag to specify that this
> ruleset will deny any connection from within the sandbox to its parents
> (i.e. any parent sandbox or not-sandboxed processes).
Thanks for the feedback. Here is what I understood, please correct me if
I am wrong. First, I should add another field to the
landlock_ruleset_attr (a field like handled_access_net, but for the unix
sockets) with a flag LANDLOCK_ACCESS_UNIX_CONNECT (it is a flag like
LANDLOCK_ACCESS_NET_CONNECT_TCP but fot the unix sockets connect).

> > 
> > Link to first draft:
> > 	https://lore.kernel.org/outreachy/20240328.ShoR4Iecei8o@digikod.net/
> 
> You can move this sentence in the below changelog.
> 
> > 
> 
> You can add this:
> 
> Closes: https://github.com/landlock-lsm/linux/issues/7
> 
> > Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
> 
> Your Git (or email app) configuration doesn't use the same name as here.
> 
> Please run ./scripts/checkpatch.pl on this patch and fix the warnings.
> 
> > 
> > ----
> > Changes in v2:
> > - Remove wrapper functions, noted by Casey Schaufler <casey@schaufler-ca.com>
> > ---
> >  security/landlock/task.c | 40 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 40 insertions(+)
> > 
> > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > index 849f5123610b..67528f87b7de 100644
> > --- a/security/landlock/task.c
> > +++ b/security/landlock/task.c
> > @@ -13,6 +13,7 @@
> >  #include <linux/lsm_hooks.h>
> >  #include <linux/rcupdate.h>
> >  #include <linux/sched.h>
> > +#include <net/sock.h>
> >  
> >  #include "common.h"
> >  #include "cred.h"
> > @@ -108,9 +109,48 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
> >  	return task_ptrace(parent, current);
> >  }
> >  
> > +static bool unix_sock_is_scoped(struct sock *const sock,
> 
> For consistency with task_is_scoped(), you can rename this to
> sock_is_scoped().
> 
> > +				struct sock *const other)
> > +{
> > +	bool is_scoped = true;
> > +
> > +	/* get the ruleset of connecting sock*/
> 
> These comments don't help more than the following line, you can remove
> them.
> 
> > +	const struct landlock_ruleset *const dom_sock =
> 
> According to the name it looks like the domain of the socket but it is
> just the domain of the current task. Just "dom" would be clearer and
> more consistent with security/landlock/fs.c
> 
> > +		landlock_get_current_domain();
> > +
> > +	if (!dom_sock)
> > +		return true;
> > +
> > +	/* get credential of listening sock*/
> > +	const struct cred *cred_other = get_cred(other->sk_peer_cred);
> 
> We have a get but not a put call, so the credentials will never be
> freed.  The put call must be called before any return, so you
> probably need to follow the goto/error pattern.
> 
> In the context of these LSM hooks, only unix_listen() sets the "other"
> socket credential, and unix_listen() is guarded by unix_state_lock()
> which locks unix_sk(s)->lock .  When security_unix_stream_connect() or
> security_unix_may_send() are called, unix_sk(s)->lock is locked as well,
> which protects the credentials against race-conditions (TOCTOU:
> time-of-check to time-of-use).  We should then make that explicit with
> this assertion (which also documents it):
> 
> lockdep_assert_held(&unix_sk(other)->lock);
> 
> In theory it is then not required to call get_cred().  However, because
> the performance impact should be negligible and to avoid a potential
> use-after-free (not possible in theory with the current code), it would
> be safer to still call get/put.  It would be worse to have a
> use-after-free rather than an access control issue.
> 
> Another thing to keep in mind is that for this hook to be
> race-condition-free, the credential must not change anyway.  A comment
> should highlight that.
> 
> > +
> > +	if (!cred_other)
> > +		return true;
> > +
> > +	/* retrieve the landlock_rulesets */
> > +	const struct landlock_ruleset *dom_parent;
> 
> All declarations should be at the top of functions.
> 
> > +
> > +	rcu_read_lock();
> 
> No need for this RCU lock because the lock is managed by
> unix_state_lock() in this case.
> 
> > +	dom_parent = landlock_cred(cred_other)->domain;
> > +	is_scoped = domain_scope_le(dom_parent, dom_sock);
> > +	rcu_read_unlock();
> > +
> > +	return is_scoped;
> > +}
> > +
> > +static int hook_unix_stream_connect(struct sock *const sock,
> > +				    struct sock *const other,
> > +				    struct sock *const newsk)
> > +{
> > +	if (unix_sock_is_scoped(sock, other))
> > +		return 0;
> > +	return -EPERM;
> > +}
> > +
> >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> >  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> > +	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> 
> Please add a hook for security_unix_may_send() too, it should be quite
> similar, and simplify the patch's subject accordingly.
> 
> You now need to add tests (in a dedicated patch) extending
> tools/testing/selftests/landlock/ptrace_test.c (I'll rename the file
> later).
> 
> These tests should also check with unnamed and named unix sockets.  I
> guess the current code doesn't differentiate them and control all kind
> of unix sockets.  Because they must explicitly be passed, sockets
> created with socketpair(2) (i.e. unnamed socket) should never be denied.
> 
> >  };
> >  
> >  __init void landlock_add_task_hooks(void)
> > -- 
> > 2.34.1
> > 
> > 
