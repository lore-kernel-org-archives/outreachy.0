Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE80E442D
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 06:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="DQfrGerL"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=0Dn3xjcGBFdqUG+/G+pi1QIxc0eu8pI4rU+zmIsV5zI=;
  b=DQfrGerLJuajrSz/hrn70YAoHGujAVVar2XqcxYzlWWblp/E+eU7+G+e
   ksEG3Nl5r/VwXvzKXE/BZMbc7tIH1oZNbGbkJz2EHEvk0MUzwjv7C3Ek5
   whZBPYLGxM4YYPNWq1qLLIPwhaXCtVKzyFeJ4ZVS3tbgELgnYBzKlOHjG
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="130048144"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 08:07:37 +0200
Date: Sun, 8 Oct 2023 08:07:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Isoken Ibizugbe <isokenjune@gmail.com>
cc: Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: [Error]
In-Reply-To: <CAJHH8bGB4pVDZpK6LoTCZccRqJg_sry=NLdMsqO+7EzRufXWMQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310080806480.3223@hadrien>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com> <CAJHH8bGGship88xdjep302+wq0jbaC6VUbcwEW7DotUKY4bysw@mail.gmail.com> <alpine.DEB.2.22.394.2310051048360.3375@hadrien> <CAJHH8bFETe6cfkG-w9H=UywxTC9xGss40+2r_EhDJT3k8Z5fvg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051143580.3375@hadrien> <CAJHH8bFuZtfZEeknsiSQzLLUq=jhoSUmyVh7pcViBfa8nTnhhw@mail.gmail.com> <alpine.DEB.2.22.394.2310051203150.3375@hadrien> <CAJHH8bFS1=BpXjKkNNk0VQZR-Ztk13ooo5YSpbuKiQS3y9JR7w@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051309370.3375@hadrien> <CAJHH8bGaPhMdYmm6swFdM1NTQQ=eHz0+hBsUB+hb-+EDqpz7ug@mail.gmail.com> <alpine.DEB.2.22.394.2310051857240.3375@hadrien> <CAJHH8bHixAcrUwpj_LCjAZ641tbzjHQHm9ig=UPvoRh+h0ubPg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051908490.3375@hadrien> <CAJHH8bHV4rRPmM5scQ2AUk9FTs4hAy6i8S5fwJ=4v1xf7DDqOg@mail.gmail.com> <alpine.DEB.2.22.394.2310080800280.3223@hadrien> <CAJHH8bGB4pVDZpK6LoTCZccRqJg_sry=NLdMsqO+7EzRufXWMQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1451368995-1696745212=:3223"
Content-ID: <alpine.DEB.2.22.394.2310080807000.3223@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1451368995-1696745212=:3223
Content-Type: text/plain; CHARSET=UTF-8
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2310080807001.3223@hadrien>



On Sun, 8 Oct 2023, Isoken Ibizugbe wrote:

> I skipped that part, so I went back to edit the grub file.

Not sure what you mean here.

I mean, that I thought you had a working solution for the first step, so I
wonder why you seem to have discarded that and taken another solution?

julia

>
> On Sun, 8 Oct 2023 at 7:02 AM, Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>       On Sat, 7 Oct 2023, Isoken Ibizugbe wrote:
>
>       > I cannot boot into my Virtual machine using vagrant after
>       reloading it to
>       > switch to the new kernel. It gives a warning that there was an
>       error. Do I
>       > really need to boot into the new kernel to work? . I cannot
>       seem to fix the
>       > issue, do I need to reinstall the virtual machine and start
>       all over?
>
>       Didn't you already get to the point of booting a virtual
>       machine, and the
>       problem was just that you didn't see the effect of the code that
>       you
>       changed?
>
>       julia
>
>
>       > On Thu, 5 Oct 2023 at 6:09 PM, Julia Lawall
>       <julia.lawall@inria.fr> wrote:
>       >
>       >
>       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>       >
>       >       > I modified the e1000 driver and compiled with -j2
>       according to
>       >       the tutorial.
>       >
>       >       Whether a file gets compiled depends on your
>       configuration.  Do
>       >       you have a
>       >       .o file or .ko file for the .c file that you changed?
>       >
>       >       Please remember to keep the list in CC.  Other people
>       may have
>       >       better
>       >       answers than I do :)
>       >
>       >       julia
>       >
>       >       >
>       >       > On Thu, 5 Oct 2023 at 5:58 PM, Julia Lawall
>       >       <julia.lawall@inria.fr> wrote:
>       >       >
>       >       >
>       >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>       >       >
>       >       >       > Thanks for the help. I made changes to the
>       probe
>       >       function by adding
>       >       >       > the printk line to it 'printk(KERN_DEBUG "I
>       can modify
>       >       the Linux
>       >       >       > kernel!\n");' , compiled and installed the
>       changes ,
>       >       rebooted my VM
>       >       >       > and ran 'dmesg | less' test the changes, but
>       can not 
>       >       find the
>       >       >       > changes. please what should I do?
>       >       >
>       >       >       What driver did you change?  Did you compile the
>       >       affected file?  Do you
>       >       >       have the corresponding device?
>       >       >
>       >       >       julia
>       >       >
>       >       >       >
>       >       >       > On Thu, Oct 5, 2023 at 12:10 PM Julia Lawall
>       >       <julia.lawall@inria.fr> wrote:
>       >       >       > >
>       >       >       > >
>       >       >       > >
>       >       >       > > On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>       >       >       > >
>       >       >       > > > The .config file was a copy from my
>       running kernel
>       >       using this commmand cp /boot/config- name -r * .config. 
>       Then I
>       >       generated a new default configuration using ‘make
>       defconfig’. I
>       >       had followed this from another resource before you
>       >       >       suggested using
>       >       >       > > > ‘make localmodconfig’
>       >       >       > >
>       >       >       > > OK, make defconfig will indeed result in a
>       much
>       >       smaller configuration.  I
>       >       >       > > don't know if it will boot on your machine. 
>       But if
>       >       it does, then that's
>       >       >       > > fine.
>       >       >       > >
>       >       >       > > julia
>       >       >       > >
>       >       >       > > >
>       >       >       > > > On Thu, 5 Oct 2023 at 11:03 AM, Julia
>       Lawall
>       >       <julia.lawall@inria.fr> wrote:
>       >       >       > > >
>       >       >       > > >
>       >       >       > > >       On Thu, 5 Oct 2023, Isoken Ibizugbe
>       wrote:
>       >       >       > > >
>       >       >       > > >       > I started by setting .config to
>       default
>       >       and started over it again
>       >       >       > > >
>       >       >       > > >       What do you mean by "setting .config
>       to
>       >       default"?  And what was the
>       >       >       > > >       .config file before?
>       >       >       > > >
>       >       >       > > >       julia
>       >       >       > > >
>       >       >       > > >       >
>       >       >       > > >       > On Thu, 5 Oct 2023 at 10:44 AM,
>       Julia
>       >       Lawall <julia.lawall@inria.fr> wrote:
>       >       >       > > >       >
>       >       >       > > >       >
>       >       >       > > >       >       On Thu, 5 Oct 2023, Isoken
>       Ibizugbe
>       >       wrote:
>       >       >       > > >       >
>       >       >       > > >       >       > Thanks for the help, I set
>       the
>       >       .config to default and commented out the former
>       instructions
>       >       like before and ran make. It compiled successful.
>       >       >       > > >       >
>       >       >       > > >       >       I'm not sure to understand. 
>       You
>       >       mean that after 10 hours it finally
>       >       >       > > >       >       completed?  Or that you
>       started over
>       >       and it became faster?
>       >       >       > > >       >
>       >       >       > > >       >       julia
>       >       >       > > >       >
>       >       >       > > >       >
>       >       >       > > >       >       >
>       >       >       > > >       >       > On Thu, 5 Oct 2023 at 9:56
>       AM,
>       >       Julia Lawall <julia.lawall@inria.fr> wrote:
>       >       >       > > >       >       >
>       >       >       > > >       >       >
>       >       >       > > >       >       >       On Thu, 5 Oct 2023,
>       Isoken
>       >       Ibizugbe wrote:
>       >       >       > > >       >       >
>       >       >       > > >       >       >       > I just checked and
>       the
>       >       virtual machine has 4 CPUs but is set to 2, should I end
>       the
>       >       building process and use make localmodconfig?
>       >       >       > > >       >       >
>       >       >       > > >       >       >       I think you can run
>       make
>       >       localmodconfig from another directory, to have
>       >       >       > > >       >       >       the generated files
>       be put
>       >       in that other directory.  You could do:
>       >       >       > > >       >       >
>       >       >       > > >       >       >       make
>       O=/path/to/mydir
>       >       localmodconfig
>       >       >       > > >       >       >
>       >       >       > > >       >       >     https://stackoverflow.com/questions/15969694/make-o-files-in-separate-fol
>       d
>       >       er-in-linux-kernel-compilation
>       >       >       > > >       >       >
>       >       >       > > >       >       >       I have not tried
>       this
>       >       though.  Copy your .config file to some other file
>       >       >       > > >       >       >       first for easy
>       reference.
>       >       >       > > >       >       >
>       >       >       > > >       >       >       In this way, maybe
>       you can
>       >       keep your current compilation running and see
>       >       >       > > >       >       >       if make
>       localmodconfig would
>       >       be beneficial.
>       >       >       > > >       >       >
>       >       >       > > >       >       >       julia
>       >       >       > > >       >       >
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       > On Thu, 5 Oct 2023
>       at 9:24
>       >       AM, Julia Lawall <julia.lawall@inria.fr> wrote:
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >       On Thu, 5
>       Oct 2023,
>       >       Isoken Ibizugbe wrote:
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >       > Thank you
>       for the
>       >       clarification.
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >       I think your
>       >       configuration is too big.  You can try make
>       localmodconfig
>       >       >       > > >       >       >       >       and see if
>       you get a
>       >       smaller configuration.
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >       Does your VM
>       >       actually have 4 cores?
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >       julia
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >       >
>       >       >       > > >       >       >       >       > On Thu,
>       Oct 5,
>       >       2023 at 8:01 AM sumitra sharma <sumitraartsy@gmail.com>
>       wrote:
>       >       >       > > >       >       >       >       > >
>       >       >       > > >       >       >       >       > >
>       >       >       > > >       >       >       >       > >
>       >       >       > > >       >       >       >       > > On Thu,
>       5 Oct,
>       >       2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.com>
>       wrote:
>       >       >       > > >       >       >       >       > > Yes I
>       copied the
>       >       .config file of the currently running kernel and I'm
>       >       >       > > >       >       >       >       > > using
>       Ubuntu
>       >       20.04LTS on a virtual box, I renamed the
>       >       >       > > >       >       >       >       > >
>       >       CONFIG_LOCALVERSION in the .config and commented out
>       these lines
>       >       >       > > >       >       >       >       > >
>       >       CONFIG_SYSTEM_TRUSTED_KEY
>       >       >       > > >       >       >       >       > > and
>       >       CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel
>       has
>       >       been
>       >       >       > > >       >       >       >       > >
>       compiling for 10
>       >       hours now. please is this normal?
>       >       >       > > >       >       >       >       > >
>       >       >       > > >       >       >       >       > > Hello
>       Isoken,
>       >       >       > > >       >       >       >       > >
>       >       >       > > >       >       >       >       > > Yes, it
>       is
>       >       normal. The compilation time depends upon how much RAM
>       you have
>       >       allocated to your virtual machine. I still use virtual
>       machines
>       >       and sometimes the kernel building takes two days  :)
>       >       >       > > >       >       >       >       > >
>       >       >       > > >       >       >       >       > > Regards
>       >       >       > > >       >       >       >       > > Sumitra
>       >       >       > > >       >       >       >       >
>       >       >       > > >       >       >       >       >
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >       >
>       >       >       > > >       >       >
>       >       >       > > >       >       >
>       >       >       > > >       >       >
>       >       >       > > >       >
>       >       >       > > >       >
>       >       >       > > >       >
>       >       >       > > >
>       >       >       > > >
>       >       >       > > >
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
--8323329-1451368995-1696745212=:3223--
