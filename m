Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D0C19BB1
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 08:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="IoKodVuV"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=irwPv829Spww8oIuLJh3d0yGh6P1ip1pJtamzApbw34=;
  b=IoKodVuVmfxbyuQRl3z+tEgC0qNezaldqGy1HfyfGlPcn9BGEWz+t+6U
   3Q1O1lubDRUD7XJqYa+XgTdoJsLvtrDTZ4kdgBsjCy+3AalM6IYEMIz8H
   pBtUJJbBFcg7iizsZSoPDmGaLGG6Yf2nLD0nbkZXuhEoR5kYBojcPXXev
   4=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,214,1694728800"; 
   d="scan'208";a="130596891"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 10:13:03 +0200
Date: Wed, 11 Oct 2023 10:13:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dorcas Litunya <anonolitunya@gmail.com>
cc: andi.shyti@linux.intel.com, outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant]Building Linux Kernel failed,help Needed
In-Reply-To: <CAKh3C7RWnxWJznVwcpG72jUVY=hYOq1FUmHPPz0hhQQAD-=ZbQ@mail.gmail.com>
Message-ID: <aca2b1eb-bbef-e040-f348-c184d9da52b2@inria.fr>
References: <CAKh3C7SoERYPTHV_pZN_6fmr32esPMEoCisLCnJZ+_sfmvO=4Q@mail.gmail.com> <alpine.DEB.2.22.394.2310110741530.3208@hadrien> <CAKh3C7SPRWe740v=g0q8c=rtdBupNhqhvuqFCi+=jTFOFNY8RQ@mail.gmail.com> <alpine.DEB.2.22.394.2310110753420.3208@hadrien>
 <CAKh3C7RXKatfMrQBcnUHN1JEYobXQBSkygv-zXcqAQphQFW7Kg@mail.gmail.com> <CAKh3C7RWnxWJznVwcpG72jUVY=hYOq1FUmHPPz0hhQQAD-=ZbQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1712097286-1697011983=:3449"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1712097286-1697011983=:3449
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Oct 2023, Dorcas Litunya wrote:

> In the documentation, we had been told to allocate 40GB , however, it seems
> like 40GB is not enough as it is now saying the VM low than disk space.
>
> I will try to allocate 70GB to see if it will fit. Is it possible to tell me
> the exact size so that I can be able to allocate appropriate space?

No, sorry it depends on your configuration.

Did you do make localmodconfig?

julia

>
> Kind regards, 
> Dorcas
>
> On Wed, 11 Oct 2023 at 08:54, Dorcas Litunya <anonolitunya@gmail.com> wrote:
>       Okay. Lemme try that.
>
> On Wed, 11 Oct 2023 at 08:54, Julia Lawall <julia.lawall@inria.fr>
> wrote:
>
>
>       On Wed, 11 Oct 2023, Dorcas Litunya wrote:
>
>       > Hi Julia
>       > How much disk space is enough?
>       >
>       > It’s used 30.8GB as at now…I have 15GB left…is this
>       enough?
>
>       Should be.  Try make with no -j to see what the problem
>       could be.
>
>       julia
>
>       >
>       > On Wed, 11 Oct 2023 at 08:43, Julia Lawall
>       <julia.lawall@inria.fr> wrote:
>       >
>       >
>       >       On Wed, 11 Oct 2023, Dorcas Litunya wrote:
>       >
>       >       > Hi everyone,
>       >       > My name is Dorcas Litunya and I am interested in
>       participating
>       >       in the
>       >       > Outreachy Linux project.
>       >       > Thank you for this reminder. I have been trying
>       to build the
>       >       Linux Kernel
>       >       > for the last day but I have faced this error
>       that I am not
>       >       sure how to
>       >       > navigate:
>       >       >
>       >       > libbpf: failed to find '.BTF' ELF section in
>       vmlinux
>       >       > FAILED: load BTF from vmlinux: No data available
>       >       > make[2]: *** [scripts/Makefile.vmlinux:36:
>       vmlinux] Error 255
>       >       > make[2]: *** Deleting file 'vmlinux'
>       >       > make[1]: ***
>       >     
>        [/home/dorcaslitunya/Desktop/Outreachy/LinuxProject/git/kernels
>       >       > /staging/Makefile:1165: vmlinux] Error 2
>       >       > make: *** [Makefile:234: __sub-make] Error 2
>       >       >
>       >       > I am currently working with linux Ubuntu
>       distribution on a
>       >       Virtual Box. My h
>       >       > ost machine is a windows device.
>       >       >
>       >       > This happens when I run the make command as
>       indicated here:
>       >       >                             Building the kernel
>       >       >
>       >       > Run
>       >       >
>       >       > make
>       >       >
>       >       > Any guidance or assistance will be greatly
>       appreciated. I
>       >       really want to set
>       >       > this up and get started.
>       >
>       >       Maybe you had an error previously in the
>       compilation process. 
>       >       Try make
>       >       clean  (to start over) and then make without -j. 
>       Then it will
>       >       stop
>       >       precisely at the place that didn't work.
>       >
>       >       Be sure that you have engough disk space
>       accessible to your VM. 
>       >       The Linux
>       >       kernel consumes a lot of space.  You can also run
>       make
>       >       localmodconfig,
>       >       because the complete configuration offered by
>       ubuntu contains a
>       >       lot of
>       >       things you don't need.
>       >
>       >       julia
>       >
>       >
>       >
>       >       >
>       >       > Thank you.
>       >       >
>       >       > Kind regards,
>       >       > Dorcas Litunya
>       >       >
>       >       >
>       >
>       >
>       >
>
>
>
--8323329-1712097286-1697011983=:3449--
