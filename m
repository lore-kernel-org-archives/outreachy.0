Received: from smtp-190b.mail.infomaniak.ch (smtp-190b.mail.infomaniak.ch [185.125.25.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C35134C6
	for <outreachy@lists.linux.dev>; Tue, 26 Mar 2024 11:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711452525; cv=none; b=XFw1SL4mqLiuG9KVTBm08ph3wHCv7t/hm8rqPp+i2GDZbMjbf6BYCaB8blPjlchTgQanguqW2vTXBQEKsqtRFhCeGgLIUVOW5HcHCL+l5+XAjjyLXxV3+95UdNvQwqupHaPAoppd8ByGrAjInDmwDGXer0Bqp2twF9qAidtTbB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711452525; c=relaxed/simple;
	bh=ONpBtbITa1A2ZAuZ6mS/vT3ctcxfIycxvwsg+2KKEC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c+iiS4Cc4x2ypXLc0nix+Iwbx93RxADXJSrUPInAtab6CQl7tyzunV4aCEVHG7mIjHzrj+bvIQm267WVt5/lFpFtSnfz1uwqOYMfVoGqQSYGrS1GucJaxFBxW3FXU5hWow0zIqw8XpbxuFYMcZxcrcldA7M0GQCt4JnYfP3teK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=y8i39xDL; arc=none smtp.client-ip=185.125.25.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="y8i39xDL"
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4V3ncQ0F7GzQbN;
	Tue, 26 Mar 2024 12:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
	s=20191114; t=1711452517;
	bh=ONpBtbITa1A2ZAuZ6mS/vT3ctcxfIycxvwsg+2KKEC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=y8i39xDLeKgptySRxkWXoWelsxxda8xLI6zLgSSym0ufOTagRdu/LEKto473eCKcj
	 TmLpD9CgsAKBwXEBgYMMCEmMMJ6qQhIkpqzgN6oFkKT+g+7BsQZ8G0+kJn3XIsD1wG
	 MrG37DTtGgloAYfeB8riJBaQqVZpvc7Y5Ubrcmp0=
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4V3ncP3G96zKK4;
	Tue, 26 Mar 2024 12:28:37 +0100 (CET)
Date: Tue, 26 Mar 2024 12:28:36 +0100
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: TaheraFahimi <fahimitahera@gmail.com>
Cc: Paul Moore <paul@paul-moore.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Adding helpers for unix_stream_connect.
Message-ID: <20240326.Ot8Zooveeh1k@digikod.net>
References: <ZgD8lTToWEhtNmpg@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgD8lTToWEhtNmpg@tahera-OptiPlex-5000>
X-Infomaniak-Routing: alpha

CCing Outreachy mailing list and Paul.

Related GitHub issue: https://github.com/landlock-lsm/linux/issues/7

On Sun, Mar 24, 2024 at 10:24:53PM -0600, TaheraFahimi wrote:
> Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>

I guess there is a space missing between your first and last name.

> ---
>  security/landlock/task.c | 89 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 89 insertions(+)
> 
> diff --git a/security/landlock/task.c b/security/landlock/task.c
> index 849f5123610b..10195492c169 100644
> --- a/security/landlock/task.c
> +++ b/security/landlock/task.c
> @@ -14,6 +14,10 @@
>  #include <linux/rcupdate.h>
>  #include <linux/sched.h>
>  
> +/*to use sock structure*/
> +#include <net/sock.h>
> +#include <linux/spinlock.h>
> +
>  #include "common.h"
>  #include "cred.h"
>  #include "ruleset.h"
> @@ -108,9 +112,94 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
>  	return task_ptrace(parent, current);
>  }
>  
> +
> +/** 
> + * sk_get_peer_cred : Helper Function from socket.c
> + * This helper is used to retrieve the sk_peer credentioals.
> + */
> +static const struct cred *sk_get_peer_cred(struct sock *sk)
> +{
> +        const struct cred *cred;
> +        spin_lock(&sk->sk_peer_lock);
> +        cred = get_cred(sk->sk_peer_cred);
> +        spin_unlock(&sk->sk_peer_lock);
> +        return cred;
> +}
> +/**
> + * Use domain_scope_le() to scope the access same as ptrace trask.
> + */
> +static bool unix_sock_is_scoped(struct sock *const sock,
> +                                struct sock *const other)
> +{
> +
> +        bool is_scoped = true;
> +        /* retrieve the credential of socks.
> +	 * other->sk_peer_cred shows the listening socket credentials (This credential
> +	 *  is created at the init_cred function and will be coped to 
> +	 *  sock->sk_peer_cred later.) 
> +	 * Since sock is the connecting sock, then the credential of current task is equal
> +	 * to cred_sock.
> +	 *  */
> +        const struct cred *cred_other;
> +	cred_other = sk_get_peer_cred(other);
> +	
> +	
> +	const struct cred *cred_sock;
> +	spin_lock(&sock->sk_peer_lock);

You don't need a lock for get_current_cred(), and sk_peer_lock is
unrelated to current.  Moreover, security_unix_stream_connect() is
already called while the lock being held.

> +	cred_sock = get_current_cred();
> +	spin_unlock(&sock->sk_peer_lock);

You should just use landlock_get_current_domain().

> +
> +	printk(KERN_DEBUG "cred uid: %u\n", cred_other->gid);

You can use pr_warn() instead.

> +	//printk("the cred_sock kuid is : %llx\n", cred_sock->uid);
> +        /* retrieve the landlock_rulesets*/
> +	
> +	printk("The credentials is retrieved!!\n");
> +        
> +	const struct landlock_cred_security *dom_parent, *dom_child;

dom_* variables should only be used to refer do a Landlock domain, not
credential.

> +        const struct landlock_ruleset *parent, *child;
> +        rcu_read_lock();
> +        dom_parent = landlock_cred(cred_other);
> +	dom_child = landlock_cred(cred_sock);
> +        parent = dom_parent->domain;
> +        child = dom_child->domain;
> +	/* by uncommenting either the following if statement or calling 
> +	 * the domain_scope_le the kernel will not load(make task dead)*/
> +	//if (dom_parent)
> +	//	printk("parent num rules %u\n", parent->num_rules);
> +	if (child)
> +		printk("child num rules %u\n", child->num_rules);
> +	//is_scoped = domain_scope_le(parent, child);
> +        rcu_read_unlock();
> +	
> +
> +        return is_scoped;
> +}
> +/**
> + * unix_stream_connect -
> + */
> +static int task_unix_stream_connect(struct sock *const sock,
> +                               struct sock *const other,
> +                               struct sock *const newsk)
> +{
> +        /* How do we check if the scoping is optional?  */
> +        if (unix_sock_is_scoped(sock, other))
> +                return 0;
> +        return -EPERM;
> +}
> +
> +/**
> + * hook_unix_stream_connect -
> + */
> +static int hook_unix_stream_connect(struct sock *const sock, struct sock *const other,
> +                                    struct sock *const newsk)
> +{
> +        return task_unix_stream_connect(sock, other, newsk);
> +}
> +
>  static struct security_hook_list landlock_hooks[] __ro_after_init = {
>  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
>  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> +        LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
>  };
>  
>  __init void landlock_add_task_hooks(void)
> -- 
> 2.34.1
> 
> Hello Mickaël, I made the following changes to have an lsm hook function for "unix_stream_connect". I have an issue, and I was wondering  if you could give me a hint. At first, I retrieve the Socks' credentials through "sk_get_peer_cred" and "get_current_cred". As "get_current_cred" gives us the credential related to the sock and "sk_get_peer_cred" gives the sock's peer credential(this credential will be copied to the field sock->sk_peer_cred later). Then I uses both credentials to get their "landlock_cred_security". Since "landlock_cred_security" has a pointer to the "landlock_ruleset", we can pass their rulesets to the "domain_scope_le" (same as ptrace task) to check if it is scoped or not.

Hello Tahera, this approach looks good.  However, Landlock credential's
domain may be NULL (when the task is not sandboxed).

> The problem is that If I uncomment the "domain_scope_le", the kernel will not work. I think it can not get the "landlock_cred_security". Thank you :)

"the kernel will not work" could means a lot of things. We need a more
precise description.

I guess this is just a draft and the patch is not ready yet so it's
fine. Before sending a first official version you should follow and read
the referenced links and especially the kernel patch how-to here:
https://lore.kernel.org/outreachy/ZeZzLWtk2nZ1Pcgw@aschofie-mobl2/
For instance, you should run checkpatch.pl
For Landlock-specific patches, they need to be formatted with
clang-format (-i) and pass all the checked done by check-linux.sh
provided here: https://github.com/landlock-lsm/landlock-test-tools
