Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.15
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792878166;
	b=IteS0Nii4PP27T2UAbPx5Qm9APOsSZRePP2EH4wii/wKwifjHkIw4PGO/4nci8csoWDv
	 yfqwgolT0rZynRrvIEM1sa1eJ0C9/rMi01EG+Vb+uTlUnSCgedzN9FkxuYMic2yO1d+hR
	 ADuDUkz+A2NM9OR5AIeGhgEMdCwiCfFRwvCn8BYLlpAJ8yHDL0wBf/s2j7K4SJUDEWigR
	 xiI6svm3uPFox4xpm7tpOeXmE0fvxNxYPrTN92vtJXTg2xZO29CVtWG02p0HvPEjMGtID
	 yMOkFw+iIlA5NP6yohdHTVCE799Xnbsbe8nFi88Xk0EOz6KrZ6VKyL06/R42apZnuGA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792878166;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=7xzhA7SYWlz4I0V8qqYQZ2G8CLEq1n1qC0YNB5bn3ys=;
	b=uFV+2cugo0l0TQRmuiQ5Mm5uHi28zTyMhKt4XDbzu04S7OvHO3P9KTIkJshYT1Fi/EfX
	 6ViYpG2bfbiuaTgyj4HPJXt3lbUMsKQdFUuMifDGBIFZKMD7BQXldQGPy9S8357WEIt8y
	 CFjfebfUrDwrFnlq2qb1bpswqA3kZHAXim6oXW8+QP/HzOb0CHWOtwudfc667MJVkR0kT
	 +JGIwEj9/S+yuqPZBEYf5/cLe8jNH7jp95g2EAR7WqJB6E8Bp+Y08WxI/mkqN7F+KAXMC
	 8+xK5l3xaKqvASUTpxf1H4CoouSVQfk9bL+SECz+Ht7eD/FCgQWDwkJGP4EnIkgYTqw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=eIZpKBXg;
	arc=none smtp.remote-ip=216.40.44.15
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF25606A31A
	for <outreachy@lists.linux.dev>; Sat, 24 Oct 2026 21:42:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5EF25606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=eIZpKBXg
Received: from omf12.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id 5FA9A1C3C6D;
	Sat, 24 Oct 2026 21:42:38 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf12.hostedemail.com (Postfix) with ESMTPA id B21F117;
	Sat, 24 Oct 2026 21:42:36 +0000 (UTC)
Date: Sat, 24 Oct 2026 17:42:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Cc: julia.lawall@inria.fr, Julian Braha <julianbraha@gmail.com>,
 outreachy@lists.linux.dev
Subject: Re: Clarification on NFS Tracepoint Build Warnings
Message-ID: <20261024174235.2d88f87f@fedora>
In-Reply-To: <atzinx9DDgmOwOEw@user>
References: <atzinx9DDgmOwOEw@user>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: B21F117
X-Stat-Signature: 1768o1otw1sm9rd6n59uay9wdkykfqfo
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/GENL8fe5tifb/FXoDDvL+GRQZeGO8uSc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=7xzhA7SYWlz4I0V8qqYQZ2G8CLEq1n1qC0YNB5bn3ys=; b=eIZpKBXgKv92VsU4J2pwm2VYfXvIpbKCiiZnh+cGb0QRoWcT4gOyf6JjySiH7ip/3h6w0ysSSOzWjhaodntWr3tQ3Ik6myThUGjFryTrj2IiJnKMe5PPoTOUv7Ock3EoQY1LhADFxr7HxUDewKq6aYEzjkgQ+aUIR2lydB6oERY=
X-HE-Tag: 1792878156-406743
X-HE-Meta: U2FsdGVkX19O13SpYqjf9B0EVyCCjLhwzWus70+h8vtcXYL7msDeQbC0jher986O76EVv7DEOGI5D/NkeKdwkVxsIuq/3vbFHc5DazqBIRsvXxaf/PpPmeuaHffshPK5la5Y/RobUrXxB0Oyua84Qt/K8SXYZc8jVvEyx7BQdU6yu9ilcTUobJR1C27h1ZmRFM0bDM4S+BtNg3prg3gn2tuec9lQbYxk1ZcQBKTyovPa5hyjD/GbHCgOjt64V3UpgBJcNTiKyWm1QT+Bq+RzQF3pWuIkRFjXJLLQU+K/K89pLvIeJ813QMOw6XB59pTa065W89c6U5wfDTTOyLRgO8cfDkNqcYkI

On Sat, 24 Oct 2026 22:23:51 +0530
Yalagada Pavan Kumar <pavankumaryalagada@gmail.com> wrote:

> Hi Julia,
> 
> Using the attached configuration [1], i encountered few tracepoint warnings
> during the kernel build. I focused on these three NFS warnings:
> 
> warning: tracepoint 'nfs_local_open_fh' is unused in module fs/nfs/nfs.o
> warning: tracepoint 'nfs_atomic_open_exit' is unused in module fs/nfs/nfs.o
> warning: tracepoint 'nfs_atomic_open_enter' is unused in module fs/nfs/nfs.o
> 


> Could you please let me know whether my understanding is correct and whether
> guarding the tracepoint definition with CONFIG_NFS_LOCALIO is the apprpriate
> fix?

You are correct. Each warning may require a different fix. The
nfs_local_open_fh was not used because CONFIG_NFS_LOCALIO was not
enabled, and the TRACE_EVENT() macro should be guarded by that as your
patch does.

The nfs_atomic_open_exit/exit tracepoints are called in fs/nfs/dir.c
and if you see where they are used, there is:

#if IS_ENABLED(CONFIG_NFS_V4)

Around the use cases of the callers of the tracepoint. Your config
doesn't have that set, which is why they were not used. The solution
for those is to protect the TRACE_EVENT() definitions of those
tracepoints with the guard above.

-- Steve


