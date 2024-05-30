Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E5BC12C
	for <outreachy@lists.linux.dev>; Thu, 30 May 2024 00:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717030240; cv=none; b=Gww5sDeEAM0lN7TbY/kLdvNiMzm+FeeoJrWcICBcYyI8UuOtyJWx4iv7EpRNkhrwV9ymX8fn5C4VAeYI5Xj5Gfo879xcQi9qiKf/ibe8jrLqMG0o59MJHfdqtzPaLIQBF0xOP9qlro/ba/X+zoJATEUxvhucEOdZa8ETP709YRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717030240; c=relaxed/simple;
	bh=w0M2NwYr/14Mvs7l87d7yBk8eY17sbC7zcA+FobWwQY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QEZZJpZlRQDPmt9tl3JSstB/pl3d1Ot4nC3lJJ4t5D0xiDsHrOZOwelczlB875lvwvCrxRT6ckRUmFNveGWY8X/YTF9hQ92AnvQ+XKwEHhRZ8EFiILbCg0ApU9tQEgcLVzt8SjZIT2a79aXXcV+rpXsosQh6U++hlmk7XCO5s9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gogX5pmg; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gogX5pmg"
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6f4603237e0so254301b3a.0
        for <outreachy@lists.linux.dev>; Wed, 29 May 2024 17:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717030238; x=1717635038; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k8+O8xhY+pxJWdqeW2KaJVJjVRnx1SFKpe5mCJ/JMA4=;
        b=gogX5pmgc7BIrHobjFBe9MjGBHX17amIQXwfcXOeCGugx2NYBJr+ExbOXMJJRwsGgE
         1u96a8G9+fLr9bUK8Kus3TWdZ61JBHAIhSyhcMVYErA9X10kALX8M+tixBKjdfifquKu
         2cxhLyHq4BnKvt9NxXER0alZrlRCHJ6QTPe/Mt8l5ffCEy+Ot9Eu0/oxCPWAKi0rvShp
         AtxUPIOjRlANXqJ8vrgeF59LmzoEXU1ZrxRmQhssxGGwbhLuWXRMD5jV+uw52sVAZgaD
         hyBe+v2x7U9m7URdLTOiIEnAxkfLHKqs8WgOipp1AA2uNVQjCMJIDKWcMK6TejmF3rse
         vahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717030238; x=1717635038;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k8+O8xhY+pxJWdqeW2KaJVJjVRnx1SFKpe5mCJ/JMA4=;
        b=VdD+MIo+P37ysOzdC9Y4MwlbvJMX6d4L1ohSDy7zgw1prx5HR5IJg6mCOr3VygS1YX
         iLesen3oas/EEP8xCcLanOV/+n6lC/SOFC5JV9XlEPtwTE8BKQyl2Zc4yiiuzB+NnuGq
         kzPA37v9EjnwdEc6Tt9cmSi++U0qHYBaLMp6ihOlZIyHWIlvkb1lyxb7tTY/Rc84NlBm
         fLEp8DC3XkiwBjtE8DCzWh8P56OyT9+tZLs0HbxnkjcIi+q1stZxughKQ5niEbLNbBT6
         hICwx0zGGpkjuX86K3K7pp/B+ye+Cm7AkI4Eayv4vk9EnCVcLGxqAerLn4ds+EzyRh4c
         cQCg==
X-Forwarded-Encrypted: i=1; AJvYcCVuw+VE593CNjoZ1DkVBEtpcGDop4Pq+uWYgNEDsFl7ysC4MduZPTu/s2wje0ztrkvOZXJSIr674+9NWvbgd1HXSPbyt66aZRg1
X-Gm-Message-State: AOJu0Yx1UhPJZr2tvm1sLJv9DjfJ0Mw1+vIfcMNsb7jlk41UOzZ5I36E
	IuJfy64H41QkuD4/Uv7nioKwRmF2U3wdpjzY7HsdpCZ29J0C5iO5
X-Google-Smtp-Source: AGHT+IEYDfQxP1oHkh5ta+MZE51Ikrl8Y36qaiEgsMUgYNELNTiBc5MpFMcJovRpYRv1UkeiFSflbw==
X-Received: by 2002:a62:f201:0:b0:701:c944:ae75 with SMTP id d2e1a72fcca58-70231a867d5mr652385b3a.4.1717030237502;
        Wed, 29 May 2024 17:50:37 -0700 (PDT)
Received: from tahera-OptiPlex-5000 ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fc3552ffsm8593308b3a.80.2024.05.29.17.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 17:50:37 -0700 (PDT)
Date: Wed, 29 May 2024 18:50:34 -0600
From: Tahera Fahimi <fahimitahera@gmail.com>
To: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc: Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev, netdev@vger.kernel.org,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Jann Horn <jannh@google.com>,
	=?iso-8859-1?Q?G=FCnther?= Noack <gnoack@google.com>
Subject: Re: [PATCH v2] landlock: Add abstract unix socket connect
 restrictions
Message-ID: <ZlfNWtyEnIAw99ne@tahera-OptiPlex-5000>
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
Indeed, in the case of abstract Unix sockets, both parties can send and
receive data when a connection is established. Therefore, we can define
a single LANDLOCK_ACCESS_DOM_UNIX_ABSTRACT to represent the right to
share data, regardless of direction. However, we should still retain
LANDLOCK_DOMAIN_HIERARCHY for SELF, PARENT, and CHILD, as the source and
destination are important. 
As you said, I believe we should have receive and send rights for
another kind of IPCs (which will be used for landlock#8 issue)

