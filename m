Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1135919067D
	for <outreachy@lists.linux.dev>; Thu, 30 May 2024 23:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717110789; cv=none; b=QFxEIAns1Vs5DblzIMEx/4mjdz6j5RwqFrj9oVtyv47mxf+UTjFUVD5Ov9ooCxDvu+T5URnclcICZBhimeFUP7MkCsFpxab9h7/noTfO9unw4H1bJ0IecAKl0t34n5Og1/QY1YvDzvu5RXu5FlJBvymmUpeP/sgJ3Y7IPm3ji8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717110789; c=relaxed/simple;
	bh=po7DAgy8YTC2bJzT7s/B+fFjRETSLdi28cWfqH3P/sU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FAFE2fdCk4yCVXsBk2ExhmnZuGVegDrjxM6t24H8QSLkIkVadwfprHf0ctChkzoLDD090HT8cMuTB+3Z0mRde1VbW49RLCtxDUy151PUFnadZOu2Fvxj6+5+zXZhr/O74r+nDWLufn3magwuIkiMoJJD5t8o2pzekpal7uKgk+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ayE+EVWR; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ayE+EVWR"
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1f62fae8c3cso5117075ad.3
        for <outreachy@lists.linux.dev>; Thu, 30 May 2024 16:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717110787; x=1717715587; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FuqdMEwY6ApcjLMbdp1tLuV20KDvi7MGyAlyHkkts5I=;
        b=ayE+EVWRFpwRePbc8yEEtKqaYZGKpzVfft91G6I7YBHsnrdNSJ0Q488F75QKIvGbIF
         ApC7wrLBPqOoa0SUFS0skriavKhsrLITsPKM2RBKDgYhNIqqR3DbE0mqBBY30cIXuK8h
         up0GmwAtEZVj/seK1hwtaCMVMJckOS6m5TPDggPAyGP7K5PAeodab/5NCIdYFxLYlQh9
         EUtRZUofykecdsz9AduVeVDvZpoNQhgV6GCEwpNzH+3BPr5dl5T3O3wrYltjzAHuxlti
         dAXVTx7LwxrsR3kPKrVs8kFwc5bhFmX/HP8bu5xjQ2mMtZeynMAF6Pf4+bKGbE7AqPbx
         uh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717110787; x=1717715587;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FuqdMEwY6ApcjLMbdp1tLuV20KDvi7MGyAlyHkkts5I=;
        b=EOBwqajRKjMBhPs4Jfn2Cf7uWwfa+IelJc1npqL9NAeD4E94cK85vI+Q/LyxXAHHAk
         +hJ361O/MC875ZLlCIImwdrE+PIH9qPNuKyl1rZBaJUyJYVqM96b62sbgEK2x0GpI9C0
         9QT4m6/+e/MuNztRJm/y6PgTc3oWYYjLGPIf/qDFxGr3nUUoPBUq/bIQV5n86Gdc7cLq
         3DsIA6aii61XkkR1VEzwbbLNN+h/+GnilNoKXuO6Pmtvj4Tl+aSVraucAi0elgDkjka8
         SrXpz7OvUi2kXYep/+skeJP+lhNJ6DD+LYKqXp9Ns+ARHt40/5lMG5MQGIO3Nf2nYjlN
         Pq1A==
X-Forwarded-Encrypted: i=1; AJvYcCUGK0JkWLutx5K88MCs8K7m952nzflQmC7zvWxMmoTKVeOBYKXqlNW+fj7yfms2rAH0d7h/wi262ih0dDwDPEdqxat/Q5+h6BBF
X-Gm-Message-State: AOJu0YwJz7jxqZVvZgBQnhE7SwwM6/KLfFsDA24XZ1CViMlOUOkJdHmF
	2XVWEyPsyQkNl2zxf8tNvSdho3Nhnk20flAar+dLLr9hhVxD/NRl
X-Google-Smtp-Source: AGHT+IFiG5YeKzz45vQv3iDZc2S0tQYYcLWdJy2aRjmI2ti60UDng2VinTyifoaD9XAnyO4R0PyYFQ==
X-Received: by 2002:a17:902:e851:b0:1f4:947b:b7b6 with SMTP id d9443c01a7336-1f6370320c1mr2748675ad.39.1717110787217;
        Thu, 30 May 2024 16:13:07 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323e9f2csm3160285ad.200.2024.05.30.16.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 16:13:06 -0700 (PDT)
Date: Thu, 30 May 2024 17:13:04 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E.Hallyn" <serge@hallyn.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev, netdev@vger.kernel.org,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Jann Horn <jannh@google.com>,
	=?iso-8859-1?Q?G=FCnther?= Noack <gnoack@google.com>
Subject: Re: [PATCH v2] landlock: Add abstract unix socket connect
 restrictions
Message-ID: <ZlkIAIpWG/l64Pl9@tahera-OptiPlex-5000>
References: <ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000>
 <20240401.ieC2uqua5sha@digikod.net>
 <ZhcRnhVKFUgCleDi@tahera-OptiPlex-5000>
 <20240411.ahgeefeiNg4i@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240411.ahgeefeiNg4i@digikod.net>

On Tue, Apr 30, 2024 at 05:24:45PM +0200, Mickaël Salaün wrote:
> On Wed, Apr 10, 2024 at 04:24:30PM -0600, Tahera Fahimi wrote:
> > On Tue, Apr 02, 2024 at 11:53:09AM +0200, Mickaël Salaün wrote:
> > > Thanks for this patch.  Please CC the netdev mailing list too, they may
> > > be interested by this feature. I also added a few folks that previously
> > > showed their interest for this feature.
> > > 
> > > On Thu, Mar 28, 2024 at 05:12:13PM -0600, TaheraFahimi wrote:
> > > > Abstract unix sockets are used for local interprocess communication without
> > > > relying on filesystem. Since landlock has no restriction for connecting to
> > > > a UNIX socket in the abstract namespace, a sandboxed process can connect to
> > > > a socket outside the sandboxed environment. Access to such sockets should
> > > > be scoped the same way ptrace access is limited.
> > > 
> > > This is good but it would be better to explain that Landlock doesn't
> > > currently control abstract unix sockets and that it would make sense for
> > > a sandbox.
> > > 
> > > 
> > > > 
> > > > For a landlocked process to be allowed to connect to a target process, it
> > > > must have a subset of the target process’s rules (the connecting socket
> > > > must be in a sub-domain of the listening socket). This patch adds a new
> > > > LSM hook for connect function in unix socket with the related access rights.
> > > 
> > > Because of compatibility reasons, and because Landlock should be
> > > flexible, we need to extend the user space interface.  As explained in
> > > the GitHub issue, we need to add a new "scoped" field to the
> > > landlock_ruleset_attr struct. This field will optionally contain a
> > > LANDLOCK_RULESET_SCOPED_ABSTRACT_UNIX_SOCKET flag to specify that this
> > > ruleset will deny any connection from within the sandbox to its parents
> > > (i.e. any parent sandbox or not-sandboxed processes).
> 
> > Thanks for the feedback. Here is what I understood, please correct me if
> > I am wrong. First, I should add another field to the
> > landlock_ruleset_attr (a field like handled_access_net, but for the unix
> > sockets) with a flag LANDLOCK_ACCESS_UNIX_CONNECT (it is a flag like
> > LANDLOCK_ACCESS_NET_CONNECT_TCP but fot the unix sockets connect).
> 
> That was the initial idea, but after thinking more about it and talking
> with some users, I now think we can get a more generic interface.
> 
> Because unix sockets, signals, and other IPCs are fully controlled by
> the kernel (contrary to inet sockets that get out of the system), we can
> add ingress and egress control according to the source and the
> destination.
> 
> To control the direction we could add an
> LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_RECEIVE and a
> LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_SEND rights (these names are a bit
> long but at least explicit).  To control the source and destination, it
> makes sense to use Landlock domain (i.e. sandboxes):
> LANDLOCK_DOMAIN_HIERARCHY_PARENT, LANDLOCK_DOMAIN_HIERARCHY_SELF, and
> LANDLOCK_DOMAIN_HIERARCHY_CHILD.  This could be used by extending the
> landlock_ruleset_attr type and adding a new
> landlock_domain_hierarchy_attr type:
> 
> struct landlock_ruleset_attr ruleset_attr = {
>   .handled_access_dom = LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_RECEIVE | \
>                         LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_SEND,
> }
> 
> // Allows sending data to and receiving data from processes in the same
> // domain or a child domain, through abstract unix sockets.
> struct landlock_domain_hierarchy_attr dom_attr = {
>   .allowed_access = LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_RECEIVE | \
>                     LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_SEND,
>   .relationship = LANDLOCK_DOMAIN_HIERARCHY_SELF | \
>                   LANDLOCK_DOMAIN_HIERARCHY_CHILD,
> };
> 
> It should also work with other kind of IPCs:
> * LANDLOCK_ACCESS_DOM_UNIX_PATHNAME_RECEIVE/SEND (signal)
> * LANDLOCK_ACCESS_DOM_SIGNAL_RECEIVE/SEND (signal)
> * LANDLOCK_ACCESS_DOM_XSI_RECEIVE/SEND (XSI message queue)
> * LANDLOCK_ACCESS_DOM_MQ_RECEIVE/SEND (POSIX message queue)
> * LANDLOCK_ACCESS_DOM_PTRACE_RECEIVE/SEND (ptrace, which would be
>   limited)
> 
> What do you think?

I was wondering if you expand your idea on the following example. 

Considering P1 with the rights that you mentioned in your email, forks a
new process (P2). Now both P1 and P2 are on the same domain and are
allowed to send data to and receive data from processes in the same
domain or a child domain. 
/*
 *         Same domain (inherited)
 * .-------------.
 * | P1----.     |      P1 -> P2 : allow
 * |        \    |      P2 -> P1 : allow
 * |         '   |
 * |         P2  |
 * '-------------'
 */
(P1 domain) = (P2 domain) = {
		.allowed_access =
			LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_RECEIVE | 
			LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_SEND,
		.relationship = 
			LANDLOCK_DOMAIN_HIERARCHY_SELF | 
			LANDLOCK_DOMAIN_HIERARCHY_CHILD,
		}

In another example, if P1 has the same domain as before but P2 has
LANDLOCK_DOMAIN_HIERARCHY_PARENT in their domain, so P1 still can 
connect to P2. 
/*
 *        Parent domain
 * .------.
 * |  P1  --.           P1 -> P2 : allow
 * '------'  \          P2 -> P1 : allow
 *            '
 *            P2
 */

(P1 domain) = {
                .allowed_access =
                        LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_RECEIVE |
                        LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_SEND,
                .relationship = 
                        LANDLOCK_DOMAIN_HIERARCHY_SELF |
                        LANDLOCK_DOMAIN_HIERARCHY_CHILD,
                }
(P2 domain) = {
                .allowed_access =
                        LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_RECEIVE |
                        LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT_SEND,
                .relationship = 
                        LANDLOCK_DOMAIN_HIERARCHY_SELF |
                        LANDLOCK_DOMAIN_HIERARCHY_CHILD |
			LANDLOCK_DOMAIN_HIERARCHY_PARENT,
		}
 

