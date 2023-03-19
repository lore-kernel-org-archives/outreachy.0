Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02EB87ED
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 06:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Fq6hyV8uaJmvlGaei5MD2XyBkwfpn7VwlIReM+BwwvE=;
  b=H0ObmtmVKFghTo0D+UiX82hFWOzXursmkWbqyRdX9UnphaRp0iSKBc5a
   maXrzHwFNMCc75sey1BIEjmmneUAQ4Vssx2o+Xc5DefnvUXpCgDSBBBXe
   F4RYJ/72IvQXc1uWoMDJEn3WZtpjautn/g4g+YuqpG2BZ3EWT+Jjb6KtR
   U=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,273,1673910000"; 
   d="scan'208";a="97913493"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 07:30:20 +0100
Date: Sun, 19 Mar 2023 07:30:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mark Heim <questioneight@gmail.com>
cc: Ira Weiny <ira.weiny@intel.com>, outreachy@lists.linux.dev
Subject: Re: Patching spelling errors
In-Reply-To: <CALfc2ngYvgWE_Km89zZeUp+xx0cXXsrz5iyC=NnhXcAFK0reOg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2303190729390.2867@hadrien>
References: <20230317191154.GA57413@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303172116300.4097@hadrien> <20230317205743.GA78907@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303172201370.4097@hadrien> <20230317215000.GA86759@pikachu-Z97-D3H>
 <6415591d3f258_28dc5f294c7@iweiny-mobl.notmuch> <CALfc2ngYvgWE_Km89zZeUp+xx0cXXsrz5iyC=NnhXcAFK0reOg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1748914340-1679207420=:2867"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1748914340-1679207420=:2867
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 18 Mar 2023, Mark Heim wrote:

> Yes, that is approximately what I see. The root is ~/git/kernels/staging, but it is confusing that there is a subdirectory called ~/git/kernels/staging/drivers/staging

Don't top post.  Please read the tutorial.

julia


>
> Mark
>
> On Sat, Mar 18, 2023 at 12:24 AM Ira Weiny <ira.weiny@intel.com> wrote:
>       Mark Heim wrote:
>       > On Fri, Mar 17, 2023 at 10:07:05PM +0100, Julia Lawall wrote:
>       > > > There is a quirk with how my directories are set up due to the commands
>       > > > I used to check out.
>       > >
>       > > It's not at all clear to me what you mean by this.  The one and only
>       > > proper way to get the code is to clone the complete repository.  YOu can
>       > > use
>       > >
>       > > git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
>       > >
>       >
>       > Consider the greybus directory that I attempted to commit my patch. On my machine, the path is:
>       >
>       > ~/git/kernels/staging/drivers/staging/greybus
>       >
>       > I'm getting confused because I did a checkout of the repository inside a
>       > folder named staging, correct?
>       >
>       > > (I can't access the tutorial at the moment, so I don't know what it
>       > > recommends).
>       > >
>       >
>       > The command is:
>       >
>       > git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>       >
>
>       I'm confused when you ran this what was the current directory?
>
>       ~/git/kernels?
>
>       That would make the kernel root ~/git/kernels/staging
>
>       Which is fine.
>
>       $ git clone -b staging-testing https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>       Cloning into 'staging'...
>       remote: Enumerating objects: 517, done.
>       remote: Counting objects: 100% (517/517), done.
>       remote: Compressing objects: 100% (155/155), done.
>       remote: Total 9354360 (delta 414), reused 396 (delta 362), pack-reused 9353843
>       Receiving objects: 100% (9354360/9354360), 2.54 GiB | 2.48 MiB/s, done.
>       Resolving deltas: 100% (7672184/7672184), done.
>       Updating files: 100% (79608/79608), done.
>       $ ls staging/
>       arch/   certs/   CREDITS  Documentation/  fs/       init/      ipc/    Kconfig  lib/       MAINTAINERS  mm/   README  samples/  security/  tools/  virt/
>       block/  COPYING  crypto/  drivers/        include/  io_uring/  Kbuild  kernel/  LICENSES/  Makefile     net/  rust/   scripts/  sound/     usr/
>
>       That is what you see correct?
>
>       Julia is referring to the 'staging' subsystem not the staging repo from Greg.
>       The clone is of his 'staging' repo.
>
>       Does that make things more clear?
>
>       Ira
>
>
>
--8323329-1748914340-1679207420=:2867--
