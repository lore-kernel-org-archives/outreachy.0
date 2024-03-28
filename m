Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E0518E3A
	for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 03:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711597573; cv=none; b=EFoKCG5aWSFAPkRx9GTuSzIU/T22r/6USf3Hv88oZeIERfLYVh0peNnpfKpF1B6pqbDWS8Blsm7m/qlTWhkOeKixYNAbxHRZeIDYVSU6rV9gwUcAZcSuXF5Yi+srPGaO5EY1dsTg+L/CMaxb1cdKnDR0N1RBetWSTU9dHUWoN5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711597573; c=relaxed/simple;
	bh=NqTtace3PnrTo27pcGTvxwSJ67AyusFj3fq3yjS3U64=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QMMC/rip+/8Eh3ZzpsDVBYNQ5OIEEHVwXeOmxLJety4PaNIEaAgYyh/TLtLP5cyhzlCFIUuxqn00EQ8ee3MSwQFr894911M3Vaj9NQ26q15s1HDvWAwPtpUNMfjI8W4jTvqnbr5yvWPy/Ic8A5piSjjVPA9jtUCU3PyAfbMDsOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WtU8+pAF; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WtU8+pAF"
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1e04ac4209eso4246945ad.1
        for <outreachy@lists.linux.dev>; Wed, 27 Mar 2024 20:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711597571; x=1712202371; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IVzawfvSLlDsfchDp0ryo63y5iOU2ojXgTT0/RWjSds=;
        b=WtU8+pAF4oZPH9vI/vx+b8DeB4dYoTysNTcFATowUbiwV0zAzfiRW+Cq9J3ARe0DeY
         66hYm6PDdSTw6W/XXcKBYLiTc+1/JY6Vgd1Q6NUAqXodniult6wyiyHGQep6jZO7NXfi
         QIo4IqJoD9UMnI8WPOBgrO5YCifzHs0JW4WKSyKbb1bv9p/ya853ryoI8hbtQDbGdHDH
         1bZ64WppZORzW55QKpl3Sl/MWO+D/DxzBUftrhyDYKXyAGwI+vtgSn3QwkXZd8St3jqX
         e7L1ssYlkuPJEgkgpoP75y0U9Xdnd/+sRS+ZDf5O36c5hNuFL6ZzCEhTPFhv/zFcpYWn
         wD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711597571; x=1712202371;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IVzawfvSLlDsfchDp0ryo63y5iOU2ojXgTT0/RWjSds=;
        b=CSYoR6u0yLKI4gPruZE/Ils1El8BZ7UoIsDQF7/+Bhtbfdld4ClHhmjxuR7eKMJJeW
         hG6hH0aWFdfLqYGBsBvPiMy7k06WuxMc7KjtDyBEdo2lgaFDeN4xR5PwwSaPPu0a4f/c
         YsJnisE7VFLc+01oSNUy3BgeoVDrgtO4pb3YVT4KE11T/o1nWIq0X0RwyQZIOu3yxBSa
         Wh0+piAJVc2D3OPD60xsFNZFhxzd3884TTHjVMlbLCpuup+nByz1o5z0jWc3JMnsF/l3
         RT1aSh3T1tzJVCRm6yV1onCljeom280PMj3Q5g0H804iKjG8W3PrJZHo+TnyxAX0HxhA
         Ollg==
X-Forwarded-Encrypted: i=1; AJvYcCV+Q/LeUKvVvdDU9a/Hky61W4xELPHKjUD0pHMr2Puo1s/6ExEtzxqiofOaD2bLdGEkT7VbXGDUKk34ie3uahtzKjahSk4rfN1u
X-Gm-Message-State: AOJu0YwGU7Xr3BqCVWLAIBfhplJYtdIPNSvwbTx821eqoyrdCKKVKyVB
	yE8GN420orKoPvpmIx8wg9U9pG/GNkZP/wa/AGrjmnuk0TJfNydJ
X-Google-Smtp-Source: AGHT+IFF/Ds6FEvnzj2u5LQwxfj2AWOvSaiFJUVw3f2NVeBmnVYEaVFscJuUQ7q48DMdF0TihHGbqQ==
X-Received: by 2002:a17:903:240a:b0:1e0:939d:3d59 with SMTP id e10-20020a170903240a00b001e0939d3d59mr2070990plo.19.1711597571271;
        Wed, 27 Mar 2024 20:46:11 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902b70900b001db37fd26bcsm344955pls.116.2024.03.27.20.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 20:46:10 -0700 (PDT)
Date: Wed, 27 Mar 2024 21:46:08 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Paul Moore <paul@paul-moore.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Adding helpers for unix_stream_connect.
Message-ID: <ZgToAL0HpTvr3l6G@tahera-OptiPlex-5000>
References: <ZgD8lTToWEhtNmpg@tahera-OptiPlex-5000>
 <20240326.Ot8Zooveeh1k@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240326.Ot8Zooveeh1k@digikod.net>

On Tue, Mar 26, 2024 at 12:28:36PM +0100, Mickaël Salaün wrote:
> CCing Outreachy mailing list and Paul.
> 
> Related GitHub issue: https://github.com/landlock-lsm/linux/issues/7
> 
> On Sun, Mar 24, 2024 at 10:24:53PM -0600, TaheraFahimi wrote:
> > Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> 
> I guess there is a space missing between your first and last name.
> 
> > ---
> >  security/landlock/task.c | 89 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 89 insertions(+)
> > 
> > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > index 849f5123610b..10195492c169 100644
> > --- a/security/landlock/task.c
> > +++ b/security/landlock/task.c
> > @@ -14,6 +14,10 @@
> >  #include <linux/rcupdate.h>
> >  #include <linux/sched.h>
> >  
> > +/*to use sock structure*/
> > +#include <net/sock.h>
> > +#include <linux/spinlock.h>
> > +
> >  #include "common.h"
> >  #include "cred.h"
> >  #include "ruleset.h"
> > @@ -108,9 +112,94 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
> >  	return task_ptrace(parent, current);
> >  }
> >  
> > +
> > +/** 
> > + * sk_get_peer_cred : Helper Function from socket.c
> > + * This helper is used to retrieve the sk_peer credentioals.
> > + */
> > +static const struct cred *sk_get_peer_cred(struct sock *sk)
> > +{
> > +        const struct cred *cred;
> > +        spin_lock(&sk->sk_peer_lock);
> > +        cred = get_cred(sk->sk_peer_cred);
> > +        spin_unlock(&sk->sk_peer_lock);
> > +        return cred;
> > +}
> > +/**
> > + * Use domain_scope_le() to scope the access same as ptrace trask.
> > + */
> > +static bool unix_sock_is_scoped(struct sock *const sock,
> > +                                struct sock *const other)
> > +{
> > +
> > +        bool is_scoped = true;
> > +        /* retrieve the credential of socks.
> > +	 * other->sk_peer_cred shows the listening socket credentials (This credential
> > +	 *  is created at the init_cred function and will be coped to 
> > +	 *  sock->sk_peer_cred later.) 
> > +	 * Since sock is the connecting sock, then the credential of current task is equal
> > +	 * to cred_sock.
> > +	 *  */
> > +        const struct cred *cred_other;
> > +	cred_other = sk_get_peer_cred(other);
> > +	
> > +	
> > +	const struct cred *cred_sock;
> > +	spin_lock(&sock->sk_peer_lock);
> 
> You don't need a lock for get_current_cred(), and sk_peer_lock is
> unrelated to current.  Moreover, security_unix_stream_connect() is
> already called while the lock being held.
> 
> > +	cred_sock = get_current_cred();
> > +	spin_unlock(&sock->sk_peer_lock);
> 
> You should just use landlock_get_current_domain().
> 
> > +
> > +	printk(KERN_DEBUG "cred uid: %u\n", cred_other->gid);
> 
> You can use pr_warn() instead.
> 
> > +	//printk("the cred_sock kuid is : %llx\n", cred_sock->uid);
> > +        /* retrieve the landlock_rulesets*/
> > +	
> > +	printk("The credentials is retrieved!!\n");
> > +        
> > +	const struct landlock_cred_security *dom_parent, *dom_child;
> 
> dom_* variables should only be used to refer do a Landlock domain, not
> credential.
> 
> > +        const struct landlock_ruleset *parent, *child;
> > +        rcu_read_lock();
> > +        dom_parent = landlock_cred(cred_other);
> > +	dom_child = landlock_cred(cred_sock);
> > +        parent = dom_parent->domain;
> > +        child = dom_child->domain;
> > +	/* by uncommenting either the following if statement or calling 
> > +	 * the domain_scope_le the kernel will not load(make task dead)*/
> > +	//if (dom_parent)
> > +	//	printk("parent num rules %u\n", parent->num_rules);
> > +	if (child)
> > +		printk("child num rules %u\n", child->num_rules);
> > +	//is_scoped = domain_scope_le(parent, child);
> > +        rcu_read_unlock();
> > +	
> > +
> > +        return is_scoped;
> > +}
> > +/**
> > + * unix_stream_connect -
> > + */
> > +static int task_unix_stream_connect(struct sock *const sock,
> > +                               struct sock *const other,
> > +                               struct sock *const newsk)
> > +{
> > +        /* How do we check if the scoping is optional?  */
> > +        if (unix_sock_is_scoped(sock, other))
> > +                return 0;
> > +        return -EPERM;
> > +}
> > +
> > +/**
> > + * hook_unix_stream_connect -
> > + */
> > +static int hook_unix_stream_connect(struct sock *const sock, struct sock *const other,
> > +                                    struct sock *const newsk)
> > +{
> > +        return task_unix_stream_connect(sock, other, newsk);
> > +}
> > +
> >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> >  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> > +        LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> >  };
> >  
> >  __init void landlock_add_task_hooks(void)
> > -- 
> > 2.34.1
> > 
> > Hello Mickaël, I made the following changes to have an lsm hook function for "unix_stream_connect". I have an issue, and I was wondering  if you could give me a hint. At first, I retrieve the Socks' credentials through "sk_get_peer_cred" and "get_current_cred". As "get_current_cred" gives us the credential related to the sock and "sk_get_peer_cred" gives the sock's peer credential(this credential will be copied to the field sock->sk_peer_cred later). Then I uses both credentials to get their "landlock_cred_security". Since "landlock_cred_security" has a pointer to the "landlock_ruleset", we can pass their rulesets to the "domain_scope_le" (same as ptrace task) to check if it is scoped or not.
> 
> Hello Tahera, this approach looks good.  However, Landlock credential's
> domain may be NULL (when the task is not sandboxed).
> 
> > The problem is that If I uncomment the "domain_scope_le", the kernel will not work. I think it can not get the "landlock_cred_security". Thank you :)
> 
> "the kernel will not work" could means a lot of things. We need a more
> precise description.
> 
> I guess this is just a draft and the patch is not ready yet so it's
> fine. Before sending a first official version you should follow and read
> the referenced links and especially the kernel patch how-to here:
> https://lore.kernel.org/outreachy/ZeZzLWtk2nZ1Pcgw@aschofie-mobl2/
> For instance, you should run checkpatch.pl
> For Landlock-specific patches, they need to be formatted with
> clang-format (-i) and pass all the checked done by check-linux.sh
> provided here: https://github.com/landlock-lsm/landlock-test-tools
Hello Mickaël,
Thanks for the hints. As you mentioned, it was just a draft. Besides the check-linux.sh checks, is there any other checks that I can test my code with them? Or should I sandbox a task and test the codes with that?
Thanks again,
Also, In my previous I forgot to copy outreachy email, so I sent this email again.
Regards,
Tahera
