Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88AF1FCF
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 08:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="RjUN19qm"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=7p3zIwPLB6yGga2QhyHHJ7RWVP3GyqJU16zHCIyvWFQ=;
  b=RjUN19qm9NjvqjiDx7dIY/RaFfh6Xvldy6LBsZ0bUwQ/f3DyJyCVSbhS
   H9/0Z/lvJXdHFa48KLHjdEw3q2O8TUPcSIZ+EF+pZ3vn4fiYrJvLaB5H5
   bR4G3X/eav8LGwepwlW16tCKJDEQCJCUz/XlW39ScLaQeIipUT1oBgJIY
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,212,1694728800"; 
   d="scan'208";a="68254766"
Received: from wifi-eduroam-84-160.paris.inria.fr ([128.93.84.160])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Oct 2023 10:55:50 +0200
Date: Tue, 10 Oct 2023 10:55:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: timing for the contribution period
Message-ID: <959d94e-5327-9b4-6ada-b468a4f2d7f7@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Dear applicants.

The deadline is Oct. 30, 2023 at 4pm UTC pm to record your contributions.
This is coming up in less than three weeks, so it would be a good time to
consider what the current priorities should be.

To get an internship, the minimum bar is to have at least 1 patch
accepted.  However you should aim for 10 accepted patches, to make a
convincing case that you have mastered the development and contribution
style of the Linux kernel.  To have accepted patches, it is essential to
be able to submit patches, without having them be mangled for the
recipient.  We suggest that you use mutt for this purpose, although this
is not the only option.  So the highest priority should be to get mutt
working.  If you are using gmail in particular, please read through the
various discussions on the mailing list about getting mutt to work, as
well as the information in the tutorial.

Once you have mutt working, please start playing with checkpatch in
drivers/staging (but not drivers/staging/media) to see what changes you
can make.  Start with low ambition in terms of the complexity of the
change.  The purpose is to master the patch submission process, not to
make clever changes to the Linux kernel code.  You can move on to making
more interesting changes once your patches are being accepted regularly.

Please take the time to reread the whole first patch tutorial before
sending patches.  There are a lot of small details to take into account,
and rereading the tutorial with bring more of them to mind, and increase
the chance that your patches will be accepted directly.

You can work on modifying and booting a kernel in parallel with these
other tasks.  If you are having trouble with grub, your VM, etc, please
don't delay on getting to the point of being able to send patches.
Getting your patches accepted will take time, and you will need enough
time for several round trips of submitting patches and reacting to the
feedback.

Let me know if you have any questions.

julia
