Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF63234545
	for <outreachy@lists.linux.dev>; Wed, 10 Jul 2024 17:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720632049; cv=none; b=hIfzGc3kdtF6tsOstRlVBBSdqwePLVCXqHQJEyafCU/kV2ECKzBFDpeIXSdjFRnRKAWvXGBFZ3+I4+XUnXHgEmUSQPNIJX1t2jf2I2HJkmXxn+x8LtdKfQV7tqWZoS0o8ci/lTG9utB6ve569rTLMaF94tt0MZfhCee3BMZz+Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720632049; c=relaxed/simple;
	bh=qRcTcUopRK2xHoEu39uGsBqYKTPXei/IqbG5uKck4zM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bwDHBAUhZdo784v6VqFRrb7w0fZ9VNV67V4WX7IhlVCXbouA8s/KhAgj0EeeFlyGKa8XCeMimNykhI/Ziz6Nlv8fcu2VgpnbUBjHBqcERKXkjYU4sgsu8no+vffitME64B+SbyhkVGozFYyWOG+HdJr/nckGhdDHulczVPylufk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YuniNn3P; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YuniNn3P"
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ca489b4146so46661a91.0
        for <outreachy@lists.linux.dev>; Wed, 10 Jul 2024 10:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720632047; x=1721236847; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pcl1f+AK0P8JCKXXKjbHo0YsgLy2QnOimTj9DcDVJYs=;
        b=YuniNn3P8Wk5oKLsgFEKLX/Cev8KyZ4tipXQIOUN4GfIpgzc8uxhLwA8/zV/XYr90k
         M/OlZZ78AJFHg3LZBXh6IADLxihrivIJKF7+kBDtei/k+YEugVW+JUXHUX0waTuwFL4e
         gX6v/Z5HXdQPZ/8DXl1oc/PFin1fSn+KxQY3ZaJHhYq1U3zDdLFTHvqEa3k/zvIRT8m3
         pXM3sCLORhHcdHcGY9VYdSyq2HyZ4262EcHOe1yTC8dDxQkw/Mf3MovCTOZe263u42GM
         zOpYBV2+O5PCCCsDcDcBToKRynTVuADaxpN56N3TDvE+j6uCK4mAKpenrss9pb0ae4Qo
         Go4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720632047; x=1721236847;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pcl1f+AK0P8JCKXXKjbHo0YsgLy2QnOimTj9DcDVJYs=;
        b=v15dxbxDMP8qCI9zL+yg5LEORsnWRdU+XkeH+HU1CWal4W71MHGtNF6unUkXkQtC6I
         OR99ptlJv/eT3AEDkvOCQ0KDG8tFux3ZEo56WowXKRo08WOn3BJkMbJ+LhOtT23E+iN+
         IX8EL491PpOxnjPHvVJVc6AqYQwiGD0t7pZj9ndLQNFXMMkVgTWhyy6FI9dgBEA/68Fo
         hgFw9Tr/1zooFrAobkLvIh1VofgQfc1sp9HPCN3BfiNVwEUpPQJ5hcWQmDgG2FoT4RwS
         gAPsQqVsyGgExMBWgVJZZ7Wkz3mJoQYL0ZsS+UC3oqHRSQYHfKjussiR/z19rF6bbIma
         2VIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvMPP6mJwZsKfvIiVGl9L+HZf4H1UpEjrgpyqL8dpaaCxQdxPakaQxSgFpH0hMdtOukRbT3495KGFu8zLjytf3aqz2q/rVOHFA
X-Gm-Message-State: AOJu0YwfQRdKReVIKnRPD8Yk4R3Rzm89OgMm/FA47nMFN9MJRHYzrLzO
	BAV1xsQNWWrreyiS3oE1mJAica73wZWC2KGoZ56T85YDBWIBM//Q
X-Google-Smtp-Source: AGHT+IGTzt5K2rzfweaEtxiqsl4HgDFZ/lCPOIrLsQV0ScOaq5I5BseMmXfl86hdYqwHj3mGlMJLBg==
X-Received: by 2002:a17:90b:4f8b:b0:2c9:cf1d:1bcc with SMTP id 98e67ed59e1d1-2ca35d386c5mr5149648a91.36.1720632046879;
        Wed, 10 Jul 2024 10:20:46 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ca34e6a7dcsm4101196a91.16.2024.07.10.10.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 10:20:46 -0700 (PDT)
Date: Wed, 10 Jul 2024 11:20:44 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack@google.com>,
	Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Jann Horn <jannh@google.com>, outreachy@lists.linux.dev,
	netdev@vger.kernel.org
Subject: Re: [PATCH v6] landlock: Add abstract unix socket connect restriction
Message-ID: <Zo7C7MUfnPApp0Np@tahera-OptiPlex-5000>
References: <Zn32CYZiu7pY+rdI@tahera-OptiPlex-5000>
 <20240704.uab4aveeYad0@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240704.uab4aveeYad0@digikod.net>

On Mon, Jul 08, 2024 at 05:35:48PM +0200, Mickaël Salaün wrote:
> Please add a user documentation with the next version.  You can take
> some inspiration in commits that changed
> Documentation/userspace-api/landlock.rst
> 
> You also need to extend samples/landlock/sandboxer.c with this new
> feature.  You might want to use a new environment variable (LL_SCOPED)
> with "a" (for abstract unix socket) as the only valid content.  New kind
> of sopping could add new characters.  I'm not sure this is the most
> ergonomic, but let's go this way unless you have something else in mind.
Thanks for the feedback. 
This will be added in the next patch. 

> All the related patches (kernel change, tests, sample, documentation)
> should be in the same patch series, with a cover letter introducing the
> feature and pointing to the previous versions with links to
> https://lore.kernel.org/r/...
Noted.
> 
> On Thu, Jun 27, 2024 at 05:30:17PM -0600, Tahera Fahimi wrote:
> > Abstract unix sockets are used for local inter-process communications
> > without a filesystem. Currently a sandboxed process can connect to a
> 
> "local inter-process communications independant of the filesystem."
> 
> > socket outside of the sandboxed environment, since Landlock has no
> > restriction for connecting to an abstract socket address. Access to
> > such sockets for a sandboxed process should be scoped the same way
> > ptrace is limited.
> > 
> > Because of compatibility reasons and since landlock should be flexible,
> 
> Landlock

[...]
> > diff --git a/include/uapi/linux/landlock.h b/include/uapi/linux/landlock.h
> > index 68625e728f43..010aaca5b05a 100644
> > --- a/include/uapi/linux/landlock.h
> > +++ b/include/uapi/linux/landlock.h
> > @@ -37,6 +37,12 @@ struct landlock_ruleset_attr {
> >  	 * rule explicitly allow them.
> >  	 */
> >  	__u64 handled_access_net;
> > +	/**
> > +	 * @scoped: Bitmask of scopes (cf. `Scope flags`_)
> > +	 * restricting a Landlock domain from accessing outside
> > +	 * resources(e.g. IPCs).
> 
> A space is missing.
> 
> > +	 */
> > +	__u64 scoped;
> >  };
> >  
> >  /*
> > @@ -266,4 +272,27 @@ struct landlock_net_port_attr {
> >  #define LANDLOCK_ACCESS_NET_BIND_TCP			(1ULL << 0)
> >  #define LANDLOCK_ACCESS_NET_CONNECT_TCP			(1ULL << 1)
> >  /* clang-format on */
> > +
> > +/**
> > + * DOC: scope
> > + *
> > + * .scoped attribute handles a set of restrictions on kernel IPCs through
> > + * the following flags.
> 
> I think you can remove this sentence.
> 
[...] 
> > diff --git a/security/landlock/task.c b/security/landlock/task.c
> > index 849f5123610b..acc6e0fbc111 100644
> > --- a/security/landlock/task.c
> > +++ b/security/landlock/task.c
> > @@ -13,6 +13,8 @@
> >  #include <linux/lsm_hooks.h>
> >  #include <linux/rcupdate.h>
> >  #include <linux/sched.h>
> > +#include <net/sock.h>
> > +#include <net/af_unix.h>
> >  
> >  #include "common.h"
> >  #include "cred.h"
> > @@ -108,9 +110,69 @@ static int hook_ptrace_traceme(struct task_struct *const parent)
> >  	return task_ptrace(parent, current);
> >  }
> >  
> > +static access_mask_t
> > +get_scoped_accesses(const struct landlock_ruleset *const domain)
> > +{
> > +	access_mask_t access_dom = 0;
> > +	size_t layer_level;
> > +
> > +	for (layer_level = 0; layer_level < domain->num_layers; layer_level++)
> > +		access_dom |= landlock_get_scope_mask(domain, layer_level);
> > +	return access_dom;
> > +}
> > +
> > +static bool sock_is_scoped(struct sock *const other)
> > +{
> > +	const struct landlock_ruleset *dom_other;
> > +	const struct landlock_ruleset *const dom =
> > +		landlock_get_current_domain();
> > +
> > +	/* quick return if there is no domain or .scoped is not set */
> > +	if (!dom || !get_scoped_accesses(dom))
> > +		return true;
> > +
> > +	/* the credentials will not change */
> > +	lockdep_assert_held(&unix_sk(other)->lock);
> > +	if (other->sk_type != SOCK_DGRAM) {
> > +		dom_other = landlock_cred(other->sk_peer_cred)->domain;
> 
> Why using different credentials for connected or not connected sockets?
> We should use the same consistent logic for both:
> other->sk_socket->file->f_cred (the process that created the socket, not
> the one listening).
The aim was to use the process's credential that utilized the socket for
connected sockets, and the process's credential created the socket for
non-connected sockets. However, I will change it and use the same
credential to keep it consistent for both cases. 

> > +	} else {
> > +		dom_other =
> > +			landlock_cred(other->sk_socket->file->f_cred)->domain;
> > +	}
> > +
> > +	if (!dom_other || !get_scoped_accesses(dom_other))
> 
> What if only one layer in dom_other is scoped?
The function `get_scoped_accesses()` cover this. 

> > +		return false;
> > +
> > +	/* other is scoped, they connect if they are in the same domain */
> 
> This doesn't fit with each domain's scoping. It only considers no
> scopping for all domains, or all domains as scopped if any of them is.
> domain_scope_le() needs to be changed to follow each domain's contract.
Noted.

> > +	return domain_scope_le(dom, dom_other);
> > +}
> > +
> > +static int hook_unix_stream_connect(struct sock *const sock,
> > +				    struct sock *const other,
> > +				    struct sock *const newsk)
> > +{
> > +	if (sock_is_scoped(other))
> > +		return 0;
> > +
> > +	return -EPERM;
> > +}
> > +
> > +static int hook_unix_may_send(struct socket *const sock,
> > +			      struct socket *const other)
> > +{
> > +	pr_warn("XXX %s:%d sock->file:%p other->file:%p\n", __func__, __LINE__,
> > +		sock->file, other->file);
> 
> Please remove debug code.
> 
> > +	if (sock_is_scoped(other->sk))
> > +		return 0;
> > +
> > +	return -EPERM;
> > +}
> > +
> >  static struct security_hook_list landlock_hooks[] __ro_after_init = {
> >  	LSM_HOOK_INIT(ptrace_access_check, hook_ptrace_access_check),
> >  	LSM_HOOK_INIT(ptrace_traceme, hook_ptrace_traceme),
> > +	LSM_HOOK_INIT(unix_stream_connect, hook_unix_stream_connect),
> > +	LSM_HOOK_INIT(unix_may_send, hook_unix_may_send),
> >  };
> >  
> >  __init void landlock_add_task_hooks(void)
> > -- 
> > 2.34.1
> > 
> > 
