Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618946AAD
	for <outreachy@lists.linux.dev>; Sat, 30 Mar 2024 03:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711770220; cv=none; b=SnNJkfHROmXQRQ7ZUZ9oH5q27MVk5rlBzfSY46Ry8F1PlMchRlYvXxGKubQMgNNyYa/TffAbPboOoPANBxfurm9O8VUiv347+grSpT0WKvvJOo5oITh+a59/btudqPF753i+wFDarPMruokVTBzXvFfFHtaSqHZiVk8BoAGFIQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711770220; c=relaxed/simple;
	bh=sZodVfaLcYFsSzl3EWX1JKPfQ/5AkOg6MBk+ZfkXfqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LsbOz/dj4gnfuz4I/djsznwfpmJN5NMVjLb8z+ENFZu0vb30BvR4zvHnI2QK6Vh5m/31pcGCQdUTitoBLNoyDkjFju5DMzZYytDxPTG8tBZSYiVeP0BbY1uK4oqperan6nipYQfAWvscwFeH/H9RBDlmFhjZb5OLAGmUSBaTKps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LetMmPTT; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LetMmPTT"
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6ea7f2d093aso2395138b3a.3
        for <outreachy@lists.linux.dev>; Fri, 29 Mar 2024 20:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711770218; x=1712375018; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4qQk+FdYlSOqZM0fQLUZYPzVqb7xo2mJHQ19mSIXgnI=;
        b=LetMmPTTv9d8iMYboV/dvf72JcJUAI82Ikhmapw5sFsbKfwHmdlSIHvbIC/rIZnkMe
         3ZDYlQjUbCHRMGzawxcVUNMf4Yp/RCD0xnP2rQg27O6y3A6ozt6MDUS/dLCrr8nra5TY
         qSvL0i3AmZ7xrxCAXP+8Xq1/j3Np26a9zBpO0fih9oznPeTd1k7z1/kmBf2CVEbJKGyG
         sgrd9EMjSumsBcPbTjoXLJUnYN2L+z376YNRTIO4drLeRDuGLxIxzxyA9AxwkvfVHeVt
         AtFuyan8dcnH7fJf/nLu6u1Zpj4D5eCBLXw4ijwnJ5Cl8uHVkDGvKLS9bmQIn0SIBZV0
         iN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711770218; x=1712375018;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4qQk+FdYlSOqZM0fQLUZYPzVqb7xo2mJHQ19mSIXgnI=;
        b=CtiYOGEmFIAP6I9jnkrIUqi7nF7JeFPwH9e5018VRvXTBI8ZbQldnNPnxqgU9FwNDa
         1WdOxWc9wsZXBXBLSk5MCwFnD7x2N7B/ZV8xOxczCukkaLyJYln/xwpaHrjyLK8SBXkZ
         XNRUVsxYCVBX+VNwHBJb4Qbq6ynTqtzLe5kH9yv2ekfJfT3YznLsLRP0l+r2v4RMom9o
         SVgbxdK8Fg2I+kHnHIqF30iSv4bsQucJ5JT90Xdqgh41h3e0Fm4J1Bk1TNHylAAg1KIr
         bb7EKOldV0NNQY7xMsJqhmM8M78iN+wT/8eeyJ6Pkd3E2WDPP1b1t1d3opUtVfaVT58s
         j3BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnyHbQYL848QUulyUE4erkYVMSz3Rcqmpv1hoMnjJPB78n9I+gzyzRafj0Wj+dvOeNEzJCdqPdABmESeEgXr+oKIhw7aHPyg5y
X-Gm-Message-State: AOJu0Yxj+7fq+MP65pQdIEmu80fWMrr3+emVACuSBn1YPIOn1rQMMKCM
	23HUdOSyjVd1vXrvZLlV/Opvk60XIr5Q3bIj2O8fePAGkl6FXuue0GZTgkMr
X-Google-Smtp-Source: AGHT+IENxvRHwwJW1F49oCR5SoM9TBaaW74X7yNjU7g+AsUFkNv9xlNYgBGEbSOIOVrY4FEiZbqLDw==
X-Received: by 2002:a05:6a00:3a08:b0:6e6:270a:9303 with SMTP id fj8-20020a056a003a0800b006e6270a9303mr4029096pfb.32.1711770217455;
        Fri, 29 Mar 2024 20:43:37 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.124])
        by smtp.gmail.com with ESMTPSA id r2-20020aa78b82000000b006eaf43bbcb5sm464018pfd.114.2024.03.29.20.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 20:43:37 -0700 (PDT)
Date: Fri, 29 Mar 2024 21:43:35 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Paul Moore <paul@paul-moore.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Adding helpers for unix_stream_connect.
Message-ID: <ZgeKZ8ANztsvO245@tahera-OptiPlex-5000>
References: <ZgD8lTToWEhtNmpg@tahera-OptiPlex-5000>
 <20240326.Ot8Zooveeh1k@digikod.net>
 <ZgToAL0HpTvr3l6G@tahera-OptiPlex-5000>
 <20240328.ShoR4Iecei8o@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240328.ShoR4Iecei8o@digikod.net>

On Thu, Mar 28, 2024 at 03:42:24PM +0100, Mickaël Salaün wrote:
> On Wed, Mar 27, 2024 at 09:46:08PM -0600, Tahera Fahimi wrote:
> > On Tue, Mar 26, 2024 at 12:28:36PM +0100, Mickaël Salaün wrote:
> > > CCing Outreachy mailing list and Paul.
> > > 
> > > Related GitHub issue: https://github.com/landlock-lsm/linux/issues/7
> > > 
> > > On Sun, Mar 24, 2024 at 10:24:53PM -0600, TaheraFahimi wrote:
> > > > Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> > > 
> > > I guess there is a space missing between your first and last name.
> > > 
> > > > ---
> > > >  security/landlock/task.c | 89 ++++++++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 89 insertions(+)
> > > > 
> > > > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > > > index 849f5123610b..10195492c169 100644
> > > > --- a/security/landlock/task.c
> > > > +++ b/security/landlock/task.c
> > > > @@ -14,6 +14,10 @@
> > > >  #include <linux/rcupdate.h>
> > > >  #include <linux/sched.h>
> > > >  
> > > > +/*to use sock structure*/
> > > > +#include <net/sock.h>
> > > > +#include <linux/spinlock.h>
> > > > +
> > > >  #include "common.h"
> > > >  #include "cred.h"
> > > >  #include "ruleset.h"
> > > > @@ -108,9 +112,94 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
> > > >  	return task_ptrace(parent, current);
> > > >  }
> > > >  
> > > > +
> > > > +/** 
> > > > + * sk_get_peer_cred : Helper Function from socket.c
> > > > + * This helper is used to retrieve the sk_peer credentioals.
> > > > + */
> > > > +static const struct cred *sk_get_peer_cred(struct sock *sk)
> > > > +{
> > > > +        const struct cred *cred;
> > > > +        spin_lock(&sk->sk_peer_lock);
> > > > +        cred = get_cred(sk->sk_peer_cred);
> > > > +        spin_unlock(&sk->sk_peer_lock);
> > > > +        return cred;
> > > > +}
> > > > +/**
> > > > + * Use domain_scope_le() to scope the access same as ptrace trask.
> > > > + */
> > > > +static bool unix_sock_is_scoped(struct sock *const sock,
> > > > +                                struct sock *const other)
> > > > +{
> > > > +
> > > > +        bool is_scoped = true;
> > > > +        /* retrieve the credential of socks.
> > > > +	 * other->sk_peer_cred shows the listening socket credentials (This credential
> > > > +	 *  is created at the init_cred function and will be coped to 
> > > > +	 *  sock->sk_peer_cred later.) 
> > > > +	 * Since sock is the connecting sock, then the credential of current task is equal
> > > > +	 * to cred_sock.
> > > > +	 *  */
> > > > +        const struct cred *cred_other;
> > > > +	cred_other = sk_get_peer_cred(other);
> > > > +	
> > > > +	
> > > > +	const struct cred *cred_sock;
> > > > +	spin_lock(&sock->sk_peer_lock);
> > > 
> > > You don't need a lock for get_current_cred(), and sk_peer_lock is
> > > unrelated to current.  Moreover, security_unix_stream_connect() is
> > > already called while the lock being held.
> > > 
> > > > +	cred_sock = get_current_cred();
> > > > +	spin_unlock(&sock->sk_peer_lock);
> > > 
> > > You should just use landlock_get_current_domain().
> > > 
> > > > +
> > > > +	printk(KERN_DEBUG "cred uid: %u\n", cred_other->gid);
> > > 
> > > You can use pr_warn() instead.
> > > 
> > > > +	//printk("the cred_sock kuid is : %llx\n", cred_sock->uid);
> > > > +        /* retrieve the landlock_rulesets*/
> > > > +	
> > > > +	printk("The credentials is retrieved!!\n");
> > > > +        
> > > > +	const struct landlock_cred_security *dom_parent, *dom_child;
> > > 
> > > dom_* variables should only be used to refer do a Landlock domain, not
> > > credential.
> > > 
> > > > +        const struct landlock_ruleset *parent, *child;
> > > > +        rcu_read_lock();
> > > > +        dom_parent = landlock_cred(cred_other);
> > > > +	dom_child = landlock_cred(cred_sock);
> > > > +        parent = dom_parent->domain;
> > > > +        child = dom_child->domain;
> > > > +	/* by uncommenting either the following if statement or calling 
> > > > +	 * the domain_scope_le the kernel will not load(make task dead)*/
> > > > +	//if (dom_parent)
> > > > +	//	printk("parent num rules %u\n", parent->num_rules);
> > > > +	if (child)
> > > > +		printk("child num rules %u\n", child->num_rules);
> > > > +	//is_scoped = domain_scope_le(parent, child);
> > > > +        rcu_read_unlock();
> > > > +	
> > > > +
> > > > +        return is_scoped;
> > > > +}
> > > > +/**
> > > > + * unix_stream_connect -
> > > > + */
> > > > +static int task_unix_stream_connect(struct sock *const sock,
> > > > +                               struct sock *const other,
> > > > +                               struct sock *const newsk)
> > > > +{
> > > > +        /* How do we check if the scoping is optional?  */
> > > > +        if (unix_sock_is_scoped(sock, other))
> > > > +                return 0;
> > > > +        return -EPERM;
> > > > +}
> > > > +
> > > > +/**
> > > > + * hook_unix_stream_connect -
> > > > + */
> > > > +static int hook_unix_stream_connect(struct sock *const sock, struct sock *const other,
> > > > +                                    struct sock *const newsk)
> > > > +{
> > > > +        return task_unix_stream_connect(sock, other, newsk);
> > > > +}
> > > > +
> > > >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> > > >  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> > > >  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> > > > +        LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> > > >  };
> > > >  
> > > >  __init void landlock_add_task_hooks(void)
> > > > -- 
> > > > 2.34.1
> > > > 
> > > > Hello Mickaël, I made the following changes to have an lsm hook function for "unix_stream_connect". I have an issue, and I was wondering  if you could give me a hint. At first, I retrieve the Socks' credentials through "sk_get_peer_cred" and "get_current_cred". As "get_current_cred" gives us the credential related to the sock and "sk_get_peer_cred" gives the sock's peer credential(this credential will be copied to the field sock->sk_peer_cred later). Then I uses both credentials to get their "landlock_cred_security". Since "landlock_cred_security" has a pointer to the "landlock_ruleset", we can pass their rulesets to the "domain_scope_le" (same as ptrace task) to check if it is scoped or not.
> > > 
> > > Hello Tahera, this approach looks good.  However, Landlock credential's
> > > domain may be NULL (when the task is not sandboxed).
> > > 
> > > > The problem is that If I uncomment the "domain_scope_le", the kernel will not work. I think it can not get the "landlock_cred_security". Thank you :)
> > > 
> > > "the kernel will not work" could means a lot of things. We need a more
> > > precise description.
> > > 
> > > I guess this is just a draft and the patch is not ready yet so it's
> > > fine. Before sending a first official version you should follow and read
> > > the referenced links and especially the kernel patch how-to here:
> > > https://lore.kernel.org/outreachy/ZeZzLWtk2nZ1Pcgw@aschofie-mobl2/
> > > For instance, you should run checkpatch.pl
> > > For Landlock-specific patches, they need to be formatted with
> > > clang-format (-i) and pass all the checked done by check-linux.sh
> > > provided here: https://github.com/landlock-lsm/landlock-test-tools
> > Hello Mickaël,
> > Thanks for the hints. As you mentioned, it was just a draft. Besides the check-linux.sh checks, is there any other checks that I can test my code with them? Or should I sandbox a task and test the codes with that?
> 
> Please send a complete patch taking into account my review (and with a
> link to this initial draft).
Hi Mickaël, 
I completed my patch, in the following link: 
https://lore.kernel.org/outreachy/ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000/T/#u
 
> Then, you can write new tests using the hierarchy variants from
> tools/testing/selftests/landlock/ptrace_test.c (I'll probably rename the
> file but you don't need to worry about that).  The new TEST_F(hierarchy,
> abstract_unix_socket) should be pretty similar to TEST_F(hierarchy,
> trace) but without the ptrace and Yama specificities.
Also, While I was writing the test code, I noticed that my patch only
considers that the connecting socket is always the child process (But
a parent process should also be able to connet to a child process). So 
I should cover this as well, do you agree?

Thank you,
Tahera

> When your tests will be OK, you can send a new patch series (new
> version) with one patch for the kernel changes and another for the new
> tests.  You'll also need to write the user documentation in another
> patch.
> 
> > Thanks again,
> > Also, In my previous I forgot to copy outreachy email, so I sent this email again.
> > Regards,
> > Tahera
> > 
