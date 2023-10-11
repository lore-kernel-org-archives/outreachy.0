Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AF815481
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 12:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="LsKAjo6B"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=7Vv1gViUIMs+JY9OU7CfgdQoBn4FyicM/wpb1vAYhlU=;
  b=LsKAjo6BedPrngPMFR9hi2DkqqX82jG/0Kdg2kCyi2mbiLvd/r+dWvkN
   LVFwHb7OQ/8C6EiWH0hSZ7hpsnl+JNhDQFvQ1bCrJIEL5S/v4iP9wE5z+
   w0w+6u/qSSrlHjF3DdNuO5CotTx52s2+5uzBadsXGBLpTA1tMh4GV+99z
   Q=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,214,1694728800"; 
   d="scan'208";a="130660099"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 14:14:43 +0200
Date: Wed, 11 Oct 2023 14:14:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dorcas Litunya <anonolitunya@gmail.com>
cc: andi.shyti@linux.intel.com, outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant]Building Linux Kernel failed,help Needed
In-Reply-To: <CAKh3C7TEgaUREecfmjVFQNefnhKTjQjvKXXjBHRfRCei8-myQg@mail.gmail.com>
Message-ID: <6d5c3122-f0c0-eb34-cfee-e0d1fcfd8d4f@inria.fr>
References: <CAKh3C7SoERYPTHV_pZN_6fmr32esPMEoCisLCnJZ+_sfmvO=4Q@mail.gmail.com> <alpine.DEB.2.22.394.2310110741530.3208@hadrien> <CAKh3C7SPRWe740v=g0q8c=rtdBupNhqhvuqFCi+=jTFOFNY8RQ@mail.gmail.com> <alpine.DEB.2.22.394.2310110753420.3208@hadrien>
 <CAKh3C7RXKatfMrQBcnUHN1JEYobXQBSkygv-zXcqAQphQFW7Kg@mail.gmail.com> <CAKh3C7RWnxWJznVwcpG72jUVY=hYOq1FUmHPPz0hhQQAD-=ZbQ@mail.gmail.com> <aca2b1eb-bbef-e040-f348-c184d9da52b2@inria.fr> <CAKh3C7RbWgVvo+Ok0veDPGGVYbJr7vMYUCmgyQKA58V8rX6P4w@mail.gmail.com>
 <63756ac-9ad3-30e-e492-5575bc23822@inria.fr> <CAKh3C7Twm=T9Fna1PJ5D5rs9hHqSn_7eF-hQzOSUfTCujoy2rA@mail.gmail.com> <CAKh3C7TEgaUREecfmjVFQNefnhKTjQjvKXXjBHRfRCei8-myQg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-166559440-1697026484=:5451"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-166559440-1697026484=:5451
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Oct 2023, Dorcas Litunya wrote:

> Hi Julia,
>
> I wanted to please clarify on whether after do the make localmodconfig
> (which is under step 2 in the  changing your config section for kernel for
> newbies) Should I still run make command which is under Building your
> kernel(this is after the changing your config section)? If I do make
> localmodconfig, should I do a make again?

Make localmodconfig creates a .config file.  Once you have a .config file,
you can type make to compile the kernel code.  Last you need to install
the modules and install the kernel.

julia


>
> Kind regards,
> Dorcas
>
> On Wed, 11 Oct 2023 at 11:28, Dorcas Litunya <anonolitunya@gmail.com> wrote:
>       Okay
> I have uninstalled and let me do a local config in this new
> installation.
> I have allocated it now 70GB
>
> On Wed, 11 Oct 2023 at 11:20, Julia Lawall <julia.lawall@inria.fr>
> wrote:
>
>
>       On Wed, 11 Oct 2023, Dorcas Litunya wrote:
>
>       > No
>       >
>       > I duplicated my current config  then renamed my
>       CONFIG_LOCALVERSION to an
>       > another  version.
>       >
>       > Is that okay?
>
>       It's ok, but if you run make localmodconfig you should end
>       up with a
>       smaller configuration and thus a smaller kernel.
>
>       julia
>
>       >
>       > Kind regards,
>       > Dorcas
>       >
>       >
>       > On Wed, 11 Oct 2023 at 11:13, Julia Lawall
>       <julia.lawall@inria.fr> wrote:
>       >
>       >
>       >       On Wed, 11 Oct 2023, Dorcas Litunya wrote:
>       >
>       >       > In the documentation, we had been told to
>       allocate 40GB ,
>       >       however, it seems
>       >       > like 40GB is not enough as it is now saying the
>       VM low than
>       >       disk space.
>       >       >
>       >       > I will try to allocate 70GB to see if it will
>       fit. Is it
>       >       possible to tell me
>       >       > the exact size so that I can be able to allocate
>       appropriate
>       >       space?
>       >
>       >       No, sorry it depends on your configuration.
>       >
>       >       Did you do make localmodconfig?
>       >
>       >       julia
>       >
>       >       >
>       >       > Kind regards, 
>       >       > Dorcas
>       >       >
>       >       > On Wed, 11 Oct 2023 at 08:54, Dorcas Litunya
>       >       <anonolitunya@gmail.com> wrote:
>       >       >       Okay. Lemme try that.
>       >       >
>       >       > On Wed, 11 Oct 2023 at 08:54, Julia Lawall
>       >       <julia.lawall@inria.fr>
>       >       > wrote:
>       >       >
>       >       >
>       >       >       On Wed, 11 Oct 2023, Dorcas Litunya wrote:
>       >       >
>       >       >       > Hi Julia
>       >       >       > How much disk space is enough?
>       >       >       >
>       >       >       > It’s used 30.8GB as at now…I have 15GB
>       left…is this
>       >       >       enough?
>       >       >
>       >       >       Should be.  Try make with no -j to see
>       what the problem
>       >       >       could be.
>       >       >
>       >       >       julia
>       >       >
>       >       >       >
>       >       >       > On Wed, 11 Oct 2023 at 08:43, Julia
>       Lawall
>       >       >       <julia.lawall@inria.fr> wrote:
>       >       >       >
>       >       >       >
>       >       >       >       On Wed, 11 Oct 2023, Dorcas
>       Litunya wrote:
>       >       >       >
>       >       >       >       > Hi everyone,
>       >       >       >       > My name is Dorcas Litunya and I
>       am interested
>       >       in
>       >       >       participating
>       >       >       >       in the
>       >       >       >       > Outreachy Linux project.
>       >       >       >       > Thank you for this reminder. I
>       have been
>       >       trying
>       >       >       to build the
>       >       >       >       Linux Kernel
>       >       >       >       > for the last day but I have
>       faced this error
>       >       >       that I am not
>       >       >       >       sure how to
>       >       >       >       > navigate:
>       >       >       >       >
>       >       >       >       > libbpf: failed to find '.BTF'
>       ELF section in
>       >       >       vmlinux
>       >       >       >       > FAILED: load BTF from vmlinux:
>       No data
>       >       available
>       >       >       >       > make[2]: ***
>       [scripts/Makefile.vmlinux:36:
>       >       >       vmlinux] Error 255
>       >       >       >       > make[2]: *** Deleting file
>       'vmlinux'
>       >       >       >       > make[1]: ***
>       >       >       >     
>       >       >     
>       >     
>          [/home/dorcaslitunya/Desktop/Outreachy/LinuxProject/git/kernels
>       >       >       >       > /staging/Makefile:1165: vmlinux]
>       Error 2
>       >       >       >       > make: *** [Makefile:234:
>       __sub-make] Error 2
>       >       >       >       >
>       >       >       >       > I am currently working with
>       linux Ubuntu
>       >       >       distribution on a
>       >       >       >       Virtual Box. My h
>       >       >       >       > ost machine is a windows device.
>       >       >       >       >
>       >       >       >       > This happens when I run the make
>       command as
>       >       >       indicated here:
>       >       >       >       >                           
>        Building the
>       >       kernel
>       >       >       >       >
>       >       >       >       > Run
>       >       >       >       >
>       >       >       >       > make
>       >       >       >       >
>       >       >       >       > Any guidance or assistance will
>       be greatly
>       >       >       appreciated. I
>       >       >       >       really want to set
>       >       >       >       > this up and get started.
>       >       >       >
>       >       >       >       Maybe you had an error previously
>       in the
>       >       >       compilation process. 
>       >       >       >       Try make
>       >       >       >       clean  (to start over) and then
>       make without
>       >       -j. 
>       >       >       Then it will
>       >       >       >       stop
>       >       >       >       precisely at the place that didn't
>       work.
>       >       >       >
>       >       >       >       Be sure that you have engough disk
>       space
>       >       >       accessible to your VM. 
>       >       >       >       The Linux
>       >       >       >       kernel consumes a lot of space. 
>       You can also
>       >       run
>       >       >       make
>       >       >       >       localmodconfig,
>       >       >       >       because the complete configuration
>       offered by
>       >       >       ubuntu contains a
>       >       >       >       lot of
>       >       >       >       things you don't need.
>       >       >       >
>       >       >       >       julia
>       >       >       >
>       >       >       >
>       >       >       >
>       >       >       >       >
>       >       >       >       > Thank you.
>       >       >       >       >
>       >       >       >       > Kind regards,
>       >       >       >       > Dorcas Litunya
>       >       >       >       >
>       >       >       >       >
>       >       >       >
>       >       >       >
>       >       >       >
>       >       >
>       >       >
>       >       >
>       >
>       >
>       >
>
>
>
--8323329-166559440-1697026484=:5451--
