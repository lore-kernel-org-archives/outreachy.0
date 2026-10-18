Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53FA2737F9
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 01:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792286228; cv=none; b=L0P9drRSW/DJglpGLyA/LFqx0DNMfIyVBFNZA8ICkfH9SqTzI4b2Ua0/gyuiCA0GXcwsb7YpJ9k9EBs/3GRbpa0QCQgv0BN5j4k7BdSY2/iL/0XTsV97HhI5F/B8QuDP32i1Wi7ptO095NOOjQjL5yrQLRdyilVNsQtjWXuLIYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792286228; c=relaxed/simple;
	bh=lPYtaOtDhkwxeVBcDDlmKu3VLfc3IANqFKkApgdK+Cc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=uo0jo0E1bC/WWYmgtACvt+qqr8Uk1VRjIN7DBn+3i0lR2+JJTi1QfashV7D2mpO5nTaUoILO6k800P3TA8p5QKUzJevERcG4jLUN8wrSsK5H860hnmfJdh9f1502qMl06hwJbYrWbGrYZiDanAv/QXu2WHYoK7wJPJvu3Q/d9eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=a5ma8bak; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="a5ma8bak"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=fw4f1132OAHbgfiymNTzEZTkEACbYV8kzILxgGc3eps=;
  b=a5ma8bakzDERpIkuA4ZGhhNQ6Z++ikVzraWR+QsMl8tPGWSBYlZ327ob
   tdEXM12HqJ9QcsXc2jAg+m4T5ftmZxufyQU766QdmYOQj11vb3a+sGj4H
   1CLYtKlwQefakhGXWrmx5Lh2AX4WKuV0jexJYRNVcMa0vfjosWMw5yUb0
   k=;
X-CSE-ConnectionGUID: KAoMpqrPS+aRw4YpCVqPYw==
X-CSE-MsgGUID: J5K97/TLRjmIJBFgPJCnpQ==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,163,1787004000"; 
   d="scan'208";a="160128032"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Oct 2026 03:16:54 +0200
Date: Sat, 17 Oct 2026 21:16:51 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: haasham <haasham93@gmail.com>
cc: outreachy@lists.linux.dev
Subject: =?UTF-8?Q?Re=3A_Outreachy_December_2026_=E2=80=93_Linux_Kerne?=
 =?UTF-8?Q?l_Project_Progress_Update?=
In-Reply-To: <CAFmYDUEb3SO46gzoZm=eXiTFZUBGCZY1wv45PHtTDcMitekJ4Q@mail.gmail.com>
Message-ID: <9c4a6d30-6816-5be5-c0e5-90b0fefe844d@inria.fr>
References: <CAFmYDUEb3SO46gzoZm=eXiTFZUBGCZY1wv45PHtTDcMitekJ4Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 17 Oct 2026, haasham wrote:

> Hi everyone,
>
> So far, I've set up my Ubuntu development environment in VirtualBox,
> installed the essential kernel development tools, and configured Git
> for development. I've also cloned Greg Kroah-Hartman's staging
> repository, checked out the staging-testing branch, and verified that
> my working tree is clean and up to date.
>
> I've started exploring the drivers/staging/ tree to understand its
> structure and identify suitable cleanup opportunities. I've also begun
> familiarizing myself with the kernel contribution workflow, including
> checkpatch.pl and the importance of reviewing existing code and
> mailing-list discussions before proposing changes.
>
> My current focus is to identify a small, well-scoped cleanup that is
> appropriate for a first contribution, validate the change carefully,
> and follow the kernel's patch submission and review process. After
> getting familiar with the contribution workflow, I plan to move toward
> the project's starter tasks involving unused tracepoints.
>
> I'm continuing to build my understanding of the codebase and would
> appreciate any recommendations on areas worth investigating or
> guidance on selecting an appropriate first contribution.

You must work on drivers/staging.

You can try checkpatch, but it seems that the remaining files in drivers
staging give very few warnings.  If you don't get any warnings, you can
look through the code to find things that seem unnecessary or incorrect.

julia

>
> Thank you for your time.
>
> Best regards,
> Haasham
>
>
