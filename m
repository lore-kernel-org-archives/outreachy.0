Received: from smtp-190d.mail.infomaniak.ch (smtp-190d.mail.infomaniak.ch [185.125.25.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F4F7E10B
	for <outreachy@lists.linux.dev>; Thu, 28 Mar 2024 14:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711636980; cv=none; b=NBOD0V7uaycbwcBaIXg3NtwdPcvwLtp7E1XE5Q42pxjJFMsfV+iu1vgk7rU9sJTz+z2XTExkDUFkfHP4FSGCBTTRmlZq0elIhqTiwEdpwVS+PAxH/Tq+GWGVZl6VqpN7nhPw2cX4t+OvkWPCoRXAB0+AyXaLyNsYugdauNghDXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711636980; c=relaxed/simple;
	bh=qg4aMlxCD4uLwB20A1f7VIFAY4gA3OLFJY0EY0HzFak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=siQtYm4zw2skzKVt+dClKIpoGLZLA+T78jKJM5F/+Gwj5YVh/6yZV7uGFWTx5neQZaoPDm7veQbMWC3SUO6/cKKtuA28xPc5dN5O+v4aDW/tpbn3W7X1/u3cWDyaTWVz0ts3GxejiJOaGaJMl7d9PIr8QcriI4g2QA2Fbekrer8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=J53dmLcA; arc=none smtp.client-ip=185.125.25.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="J53dmLcA"
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4V55qQ5FfGzRD4;
	Thu, 28 Mar 2024 15:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
	s=20191114; t=1711636962;
	bh=qg4aMlxCD4uLwB20A1f7VIFAY4gA3OLFJY0EY0HzFak=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J53dmLcAX8BXuFFDtYQA7b0a5aX7fd8fHvb40OWUOKevJvdK8g2YZ8VWl+nibCMuX
	 S+ZbFO4uJQsqlRlemJDz1JAApJg2pkE5VPZoRziHkGdimT5hXKBM6u2v8c47eAYSVn
	 zObSlO7Zwc/ZAnyvkX3urEhdCFc1G5DX392Xzqk0=
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4V55qQ0LgDz3W;
	Thu, 28 Mar 2024 15:42:41 +0100 (CET)
Date: Thu, 28 Mar 2024 15:42:24 +0100
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: Tahera Fahimi <fahimitahera@gmail.com>
Cc: Paul Moore <paul@paul-moore.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Adding helpers for unix_stream_connect.
Message-ID: <20240328.ShoR4Iecei8o@digikod.net>
References: <ZgD8lTToWEhtNmpg@tahera-OptiPlex-5000>
 <20240326.Ot8Zooveeh1k@digikod.net>
 <ZgToAL0HpTvr3l6G@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgToAL0HpTvr3l6G@tahera-OptiPlex-5000>
X-Infomaniak-Routing: alpha

On Wed, Mar 27, 2024 at 09:46:08PM -0600, Tahera Fahimi wrote:
> On Tue, Mar 26, 2024 at 12:28:36PM +0100, Mickaël Salaün wrote:
> > CCing Outreachy mailing list and Paul.
> > 
> > Related GitHub issue: https://github.com/landlock-lsm/linux/issues/7
> > 
> > On Sun, Mar 24, 2024 at 10:24:53PM -0600, TaheraFahimi wrote:
> > > Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> > 
> > I guess there is a space missing between your first and last name.
> > 
> > > ---
> > >  security/landlock/task.c | 89 ++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 89 insertions(+)
> > > 
> > > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > > index 849f5123610b..10195492c169 100644
> > > --- a/security/landlock/task.c
> > > +++ b/security/landlock/task.c
> > > @@ -14,6 +14,10 @@
> > >  #include <linux/rcupdate.h>
> > >  #include <linux/sched.h>
> > >  
> > > +/*to use sock structure*/
> > > +#include <net/sock.h>
> > > +#include <linux/spinlock.h>
> > > +
> > >  #include "common.h"
> > >  #include "cred.h"
> > >  #include "ruleset.h"
> > > @@ -108,9 +112,94 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
> > >  	return task_ptrace(parent, current);
> > >  }
> > >  
> > > +
> > > +/** 
> > > + * sk_get_peer_cred : Helper Function from socket.c
> > > + * This helper is used to retrieve the sk_peer credentioals.
> > > + */
> > > +static const struct cred *sk_get_peer_cred(struct sock *sk)
> > > +{
> > > +        const struct cred *cred;
> > > +        spin_lock(&sk->sk_peer_lock);
> > > +        cred = get_cred(sk->sk_peer_cred);
> > > +        spin_unlock(&sk->sk_peer_lock);
> > > +        return cred;
> > > +}
> > > +/**
> > > + * Use domain_scope_le() to scope the access same as ptrace trask.
> > > + */
> > > +static bool unix_sock_is_scoped(struct sock *const sock,
> > > +                                struct sock *const other)
> > > +{
> > > +
> > > +        bool is_scoped = true;
> > > +        /* retrieve the credential of socks.
> > > +	 * other->sk_peer_cred shows the listening socket credentials (This credential
> > > +	 *  is created at the init_cred function and will be coped to 
> > > +	 *  sock->sk_peer_cred later.) 
> > > +	 * Since sock is the connecting sock, then the credential of current task is equal
> > > +	 * to cred_sock.
> > > +	 *  */
> > > +        const struct cred *cred_other;
> > > +	cred_other = sk_get_peer_cred(other);
> > > +	
> > > +	
> > > +	const struct cred *cred_sock;
> > > +	spin_lock(&sock->sk_peer_lock);
> > 
> > You don't need a lock for get_current_cred(), and sk_peer_lock is
> > unrelated to current.  Moreover, security_unix_stream_connect() is
> > already called while the lock being held.
> > 
> > > +	cred_sock = get_current_cred();
> > > +	spin_unlock(&sock->sk_peer_lock);
> > 
> > You should just use landlock_get_current_domain().
> > 
> > > +
> > > +	printk(KERN_DEBUG "cred uid: %u\n", cred_other->gid);
> > 
> > You can use pr_warn() instead.
> > 
> > > +	//printk("the cred_sock kuid is : %llx\n", cred_sock->uid);
> > > +        /* retrieve the landlock_rulesets*/
> > > +	
> > > +	printk("The credentials is retrieved!!\n");
> > > +        
> > > +	const struct landlock_cred_security *dom_parent, *dom_child;
> > 
> > dom_* variables should only be used to refer do a Landlock domain, not
> > credential.
> > 
> > > +        const struct landlock_ruleset *parent, *child;
> > > +        rcu_read_lock();
> > > +        dom_parent = landlock_cred(cred_other);
> > > +	dom_child = landlock_cred(cred_sock);
> > > +        parent = dom_parent->domain;
> > > +        child = dom_child->domain;
> > > +	/* by uncommenting either the following if statement or calling 
> > > +	 * the domain_scope_le the kernel will not load(make task dead)*/
> > > +	//if (dom_parent)
> > > +	//	printk("parent num rules %u\n", parent->num_rules);
> > > +	if (child)
> > > +		printk("child num rules %u\n", child->num_rules);
> > > +	//is_scoped = domain_scope_le(parent, child);
> > > +        rcu_read_unlock();
> > > +	
> > > +
> > > +        return is_scoped;
> > > +}
> > > +/**
> > > + * unix_stream_connect -
> > > + */
> > > +static int task_unix_stream_connect(struct sock *const sock,
> > > +                               struct sock *const other,
> > > +                               struct sock *const newsk)
> > > +{
> > > +        /* How do we check if the scoping is optional?  */
> > > +        if (unix_sock_is_scoped(sock, other))
> > > +                return 0;
> > > +        return -EPERM;
> > > +}
> > > +
> > > +/**
> > > + * hook_unix_stream_connect -
> > > + */
> > > +static int hook_unix_stream_connect(struct sock *const sock, struct sock *const other,
> > > +                                    struct sock *const newsk)
> > > +{
> > > +        return task_unix_stream_connect(sock, other, newsk);
> > > +}
> > > +
> > >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> > >  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> > >  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> > > +        LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> > >  };
> > >  
> > >  __init void landlock_add_task_hooks(void)
> > > -- 
> > > 2.34.1
> > > 
> > > Hello Mickaël, I made the following changes to have an lsm hook function for "unix_stream_connect". I have an issue, and I was wondering  if you could give me a hint. At first, I retrieve the Socks' credentials through "sk_get_peer_cred" and "get_current_cred". As "get_current_cred" gives us the credential related to the sock and "sk_get_peer_cred" gives the sock's peer credential(this credential will be copied to the field sock->sk_peer_cred later). Then I uses both credentials to get their "landlock_cred_security". Since "landlock_cred_security" has a pointer to the "landlock_ruleset", we can pass their rulesets to the "domain_scope_le" (same as ptrace task) to check if it is scoped or not.
> > 
> > Hello Tahera, this approach looks good.  However, Landlock credential's
> > domain may be NULL (when the task is not sandboxed).
> > 
> > > The problem is that If I uncomment the "domain_scope_le", the kernel will not work. I think it can not get the "landlock_cred_security". Thank you :)
> > 
> > "the kernel will not work" could means a lot of things. We need a more
> > precise description.
> > 
> > I guess this is just a draft and the patch is not ready yet so it's
> > fine. Before sending a first official version you should follow and read
> > the referenced links and especially the kernel patch how-to here:
> > https://lore.kernel.org/outreachy/ZeZzLWtk2nZ1Pcgw@aschofie-mobl2/
> > For instance, you should run checkpatch.pl
> > For Landlock-specific patches, they need to be formatted with
> > clang-format (-i) and pass all the checked done by check-linux.sh
> > provided here: https://github.com/landlock-lsm/landlock-test-tools
> Hello Mickaël,
> Thanks for the hints. As you mentioned, it was just a draft. Besides the check-linux.sh checks, is there any other checks that I can test my code with them? Or should I sandbox a task and test the codes with that?

Please send a complete patch taking into account my review (and with a
link to this initial draft).

Then, you can write new tests using the hierarchy variants from
tools/testing/selftests/landlock/ptrace_test.c (I'll probably rename the
file but you don't need to worry about that).  The new TEST_F(hierarchy,
abstract_unix_socket) should be pretty similar to TEST_F(hierarchy,
trace) but without the ptrace and Yama specificities.

When your tests will be OK, you can send a new patch series (new
version) with one patch for the kernel changes and another for the new
tests.  You'll also need to write the user documentation in another
patch.

> Thanks again,
> Also, In my previous I forgot to copy outreachy email, so I sent this email again.
> Regards,
> Tahera
> 
