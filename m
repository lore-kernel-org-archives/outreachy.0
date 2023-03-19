Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13CDA35
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 04:28:37 +0000 (UTC)
Received: by mail-io1-f53.google.com with SMTP id h2so864667iow.0
        for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 21:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679200117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DcbNA7eekrgL8lA9DXui9sHjsfddAkBDWQU/Sp27Z8M=;
        b=KQSp4JOroKuUV1ByQiXFAaanuxHHVKixXhiBdXRwmLAjUaEJL+jUYG351rP0vPrxLH
         /N18Koatw31FeRpI951jFFIauPU+GN+B0W3nZcyCSdetZeZ7sO+9sFWkxsVCzP1Q2pbF
         ikUTpODIyHA+Z0y76BTHQh0boyMJsQc6Svk7zMtL9AB3VBUy67V+dUQUubXLpen+hOEr
         jN7zcUecLz6E8Camal2q7VG99I6A54oAO3aQJwjvX1GfcjhcmXFo+gRuewk9HBgaF7G7
         Zwq17CeBHCxPXJ+wf+160uLno0ai0YcOQP3PSxayENd2RrEaHzxLWG/6AmxCtv8IhuW8
         z64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679200117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcbNA7eekrgL8lA9DXui9sHjsfddAkBDWQU/Sp27Z8M=;
        b=QRqI/cSw/KLKQzIIuAq/q+e+QXq40cVUJmtlpDYgo8Et6yUoZhmVWLcw/gEeXdOLLW
         PYUSiib05ehMjlacKhIMxkTBHuRyLG+fxph1hfLFFHFBqV4MCtSkZ8bXKOfkQR/joxr1
         8XOWhBIh9O/9e7QqpsyDOxy95PYsapDTRm8g+3mhpk+kUobehhZAQUHwiVY4QPyFk8ws
         zLt4ZLbzTRC+OIeKDcYyF9O3QID+wnvH4LmcpNahf/lhHPHTSvSQ46WgNhMkbiiRjLd9
         y/nR3W+9FmF+YE/LzwQcV1WNCL10Vi+cPaAW8XapTgWIn6AV6ytQgr9O7Q2heQ5cRVZ+
         JJHw==
X-Gm-Message-State: AO0yUKWxYVW3UmVr5C5QaX71Hazjwg7CEJZT0eYLxWuQ7RmSMnqeWw1u
	zhA1FvguScnVl6Ksy8zm/Nk=
X-Google-Smtp-Source: AK7set/rkKJCTxsNbPciOLFR8EAIDlB9GD13GdacbLTP5DihAazOBEcThLnhjC+qPshqkwj6oAspUg==
X-Received: by 2002:a5d:8b01:0:b0:74d:1317:b04a with SMTP id k1-20020a5d8b01000000b0074d1317b04amr2494482ion.10.1679200116829;
        Sat, 18 Mar 2023 21:28:36 -0700 (PDT)
Received: from pikachu-Z97-D3H ([76.76.64.93])
        by smtp.gmail.com with ESMTPSA id x1-20020a0566380ca100b003c5170ddcedsm1994857jad.110.2023.03.18.21.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 21:28:36 -0700 (PDT)
Date: Sat, 18 Mar 2023 22:28:34 -0600
From: Mark Heim <questioneight@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Patching spelling errors
Message-ID: <20230319042834.GA3410@pikachu-Z97-D3H>
References: <20230317191154.GA57413@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303172116300.4097@hadrien>
 <20230317205743.GA78907@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303172201370.4097@hadrien>
 <20230317215000.GA86759@pikachu-Z97-D3H>
 <6415591d3f258_28dc5f294c7@iweiny-mobl.notmuch>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6415591d3f258_28dc5f294c7@iweiny-mobl.notmuch>

On Fri, Mar 17, 2023 at 11:24:29PM -0700, Ira Weiny wrote:
> Mark Heim wrote:
> > On Fri, Mar 17, 2023 at 10:07:05PM +0100, Julia Lawall wrote:
> > > > There is a quirk with how my directories are set up due to the commands
> > > > I used to check out.
> > > 
> > > It's not at all clear to me what you mean by this.  The one and only
> > > proper way to get the code is to clone the complete repository.  YOu can
> > > use
> > > 
> > > git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
> > > 
> > 
> > Consider the greybus directory that I attempted to commit my patch. On my machine, the path is:
> > 
> > ~/git/kernels/staging/drivers/staging/greybus
> > 
> > I'm getting confused because I did a checkout of the repository inside a
> > folder named staging, correct?
> > 
> > > (I can't access the tutorial at the moment, so I don't know what it
> > > recommends).
> > > 
> > 
> > The command is:
> > 
> > git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> > 
> 
> I'm confused when you ran this what was the current directory?
> 
> ~/git/kernels?
> 
> That would make the kernel root ~/git/kernels/staging
> 
> Which is fine.
> 
> $ git clone -b staging-testing https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> Cloning into 'staging'...
> remote: Enumerating objects: 517, done.
> remote: Counting objects: 100% (517/517), done.
> remote: Compressing objects: 100% (155/155), done.
> remote: Total 9354360 (delta 414), reused 396 (delta 362), pack-reused 9353843
> Receiving objects: 100% (9354360/9354360), 2.54 GiB | 2.48 MiB/s, done.
> Resolving deltas: 100% (7672184/7672184), done.
> Updating files: 100% (79608/79608), done.
> $ ls staging/
> arch/   certs/   CREDITS  Documentation/  fs/       init/      ipc/    Kconfig  lib/       MAINTAINERS  mm/   README  samples/  security/  tools/  virt/
> block/  COPYING  crypto/  drivers/        include/  io_uring/  Kbuild  kernel/  LICENSES/  Makefile     net/  rust/   scripts/  sound/     usr/
> 
> That is what you see correct?
> 
> Julia is referring to the 'staging' subsystem not the staging repo from Greg.
> The clone is of his 'staging' repo.
> 
> Does that make things more clear?
> 

That is approximately what I see (I also have a directory named, e.g.
block). The root is ~/git/kernels, but confusingly there is also a
subdirectory named ~/git/kernels/staging/drivers/staging which is why I
was confused. Case closed, and thank for your response.
> Ira
