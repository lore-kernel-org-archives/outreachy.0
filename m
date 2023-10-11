Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046291EA66
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 12:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="OzVBoGZv"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=uEePtSAVMQ5KHmaVTaSt+bpcugr90W4Z0youf6Aghz8=;
  b=OzVBoGZv2uYm5nlMS4Ukn+Diy59VIjfBwYqOXzcMrRQfOoWhYJGOxkjS
   CT8oM7EvxlPvZKoBzQskbLjoPZHxc0Zwi4AEb7B2IiNnFrt/pQl1v0AYN
   XZHx6k/qM2cWK1/IXgLtsqLiy20l4WELhnHV5Iuy61w16sBqxEqt3Zg1E
   M=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,214,1694728800"; 
   d="scan'208";a="68402140"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 14:08:30 +0200
Date: Wed, 11 Oct 2023 14:08:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Isoken Ibizugbe <isokenjune@gmail.com>
cc: Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: [Error]
In-Reply-To: <CAJHH8bFNKnQFDz=sc1mcM6EbSdYnMtAoO14_FWEnzhK1pxM_2g@mail.gmail.com>
Message-ID: <d414b080-3967-f3a-71ba-4674114b113@inria.fr>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com> <alpine.DEB.2.22.394.2310051203150.3375@hadrien> <CAJHH8bFS1=BpXjKkNNk0VQZR-Ztk13ooo5YSpbuKiQS3y9JR7w@mail.gmail.com> <alpine.DEB.2.22.394.2310051309370.3375@hadrien>
 <CAJHH8bGaPhMdYmm6swFdM1NTQQ=eHz0+hBsUB+hb-+EDqpz7ug@mail.gmail.com> <alpine.DEB.2.22.394.2310051857240.3375@hadrien> <CAJHH8bHixAcrUwpj_LCjAZ641tbzjHQHm9ig=UPvoRh+h0ubPg@mail.gmail.com> <alpine.DEB.2.22.394.2310051908490.3375@hadrien>
 <CAJHH8bHV4rRPmM5scQ2AUk9FTs4hAy6i8S5fwJ=4v1xf7DDqOg@mail.gmail.com> <alpine.DEB.2.22.394.2310080800280.3223@hadrien> <CAJHH8bGB4pVDZpK6LoTCZccRqJg_sry=NLdMsqO+7EzRufXWMQ@mail.gmail.com> <alpine.DEB.2.22.394.2310080806480.3223@hadrien>
 <CAJHH8bEtYuWYkP0c=AoZscoq-hJ5_ZfedY_Ykn61-udfGP0QeQ@mail.gmail.com> <16afa9e8-9b77-bc68-18bc-f3acf29389b9@inria.fr> <CAJHH8bE3T6zfX_fRBCKqodKBUn0X=gehJ39-eNknzhLQVTrSLA@mail.gmail.com> <CAJHH8bFNKnQFDz=sc1mcM6EbSdYnMtAoO14_FWEnzhK1pxM_2g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-961786117-1697026110=:5451"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-961786117-1697026110=:5451
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Oct 2023, Isoken Ibizugbe wrote:

> On Mon, Oct 9, 2023 at 7:57 AM Isoken Ibizugbe <isokenjune@gmail.com> wrote:
> >
> > Thanks, I'll check it out.
> I cannot enable the driver that I changed. I fixed coding errors for a
> file in drivers/staging, but the staging drivers option in the
> menuconfig has this symbol '---staging divers', so I cannot open it to
> make the driver a module. Please what do I do?

If you changed a staging driver, it seems thta you will not want to boot
that code, because you don't have the relevant device.

So you can do make allyesconfig and then it will have as much selected as
possible.  The you should be able to make the driver you changed.  See the
tutorial for how to compile and single file and how to a compile a
complete driver.

julia

> >
> > On Mon, 9 Oct 2023 at 7:52 AM, Julia Lawall <julia.lawall@inria.fr> wrote:
> >>
> >>
> >>
> >> On Mon, 9 Oct 2023, Isoken Ibizugbe wrote:
> >>
> >> > I am sorry for the confusion. After building and installing the kernel
> >> > successfully I didn't edit the grub file, so I didn't see my new
> >> > kernel after boot, so I went to do that and reboot, but my VM couldn't
> >> > load any kernel at all, I don't know if its because I was using
> >> > Vagrant, so I downloaded and installed Ubuntu on the VM to start
> >> > afresh, but I have been able to finish the first instruction on
> >> > compiling and installing, but my compiled kernel doesn't work, can I
> >> > work on it from just the directory?
> >>
> >> I think you should check with the mentor(s) for the project(s) that you
> >> are interested in.  In some sense it is time to move on, since the
> >> contribution period is not very long.  But if you need to be able to
> >> obtain a running kernel for your project, then you need to be able to do
> >> that.
> >>
> >> Maybe you can use kexec: https://wiki.archlinux.org/title/kexec
> >> The following arguments: /boot/vmlinuz-linux --initrd=/boot/initramfs-linux.img
> >> both correspond to the kernel you want to boot.
> >>
> >> julia
> >>
> >> >
> >> > On Sun, Oct 8, 2023 at 7:07 AM Julia Lawall <julia.lawall@inria.fr> wrote:
> >> > >
> >> > >
> >> > >
> >> > > On Sun, 8 Oct 2023, Isoken Ibizugbe wrote:
> >> > >
> >> > > > I skipped that part, so I went back to edit the grub file.
> >> > >
> >> > > Not sure what you mean here.
> >> > >
> >> > > I mean, that I thought you had a working solution for the first step, so I
> >> > > wonder why you seem to have discarded that and taken another solution?
> >> > >
> >> > > julia
> >> > >
> >> > > >
> >> > > > On Sun, 8 Oct 2023 at 7:02 AM, Julia Lawall <julia.lawall@inria.fr> wrote:
> >> > > >
> >> > > >
> >> > > >       On Sat, 7 Oct 2023, Isoken Ibizugbe wrote:
> >> > > >
> >> > > >       > I cannot boot into my Virtual machine using vagrant after
> >> > > >       reloading it to
> >> > > >       > switch to the new kernel. It gives a warning that there was an
> >> > > >       error. Do I
> >> > > >       > really need to boot into the new kernel to work? . I cannot
> >> > > >       seem to fix the
> >> > > >       > issue, do I need to reinstall the virtual machine and start
> >> > > >       all over?
> >> > > >
> >> > > >       Didn't you already get to the point of booting a virtual
> >> > > >       machine, and the
> >> > > >       problem was just that you didn't see the effect of the code that
> >> > > >       you
> >> > > >       changed?
> >> > > >
> >> > > >       julia
> >> > > >
> >> > > >
> >> > > >       > On Thu, 5 Oct 2023 at 6:09 PM, Julia Lawall
> >> > > >       <julia.lawall@inria.fr> wrote:
> >> > > >       >
> >> > > >       >
> >> > > >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >> > > >       >
> >> > > >       >       > I modified the e1000 driver and compiled with -j2
> >> > > >       according to
> >> > > >       >       the tutorial.
> >> > > >       >
> >> > > >       >       Whether a file gets compiled depends on your
> >> > > >       configuration.  Do
> >> > > >       >       you have a
> >> > > >       >       .o file or .ko file for the .c file that you changed?
> >> > > >       >
> >> > > >       >       Please remember to keep the list in CC.  Other people
> >> > > >       may have
> >> > > >       >       better
> >> > > >       >       answers than I do :)
> >> > > >       >
> >> > > >       >       julia
> >> > > >       >
> >> > > >       >       >
> >> > > >       >       > On Thu, 5 Oct 2023 at 5:58 PM, Julia Lawall
> >> > > >       >       <julia.lawall@inria.fr> wrote:
> >> > > >       >       >
> >> > > >       >       >
> >> > > >       >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >> > > >       >       >
> >> > > >       >       >       > Thanks for the help. I made changes to the
> >> > > >       probe
> >> > > >       >       function by adding
> >> > > >       >       >       > the printk line to it 'printk(KERN_DEBUG "I
> >> > > >       can modify
> >> > > >       >       the Linux
> >> > > >       >       >       > kernel!\n");' , compiled and installed the
> >> > > >       changes ,
> >> > > >       >       rebooted my VM
> >> > > >       >       >       > and ran 'dmesg | less' test the changes, but
> >> > > >       can not
> >> > > >       >       find the
> >> > > >       >       >       > changes. please what should I do?
> >> > > >       >       >
> >> > > >       >       >       What driver did you change?  Did you compile the
> >> > > >       >       affected file?  Do you
> >> > > >       >       >       have the corresponding device?
> >> > > >       >       >
> >> > > >       >       >       julia
> >> > > >       >       >
> >> > > >       >       >       >
> >> > > >       >       >       > On Thu, Oct 5, 2023 at 12:10 PM Julia Lawall
> >> > > >       >       <julia.lawall@inria.fr> wrote:
> >> > > >       >       >       > >
> >> > > >       >       >       > >
> >> > > >       >       >       > >
> >> > > >       >       >       > > On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >> > > >       >       >       > >
> >> > > >       >       >       > > > The .config file was a copy from my
> >> > > >       running kernel
> >> > > >       >       using this commmand cp /boot/config- name -r * .config.
> >> > > >       Then I
> >> > > >       >       generated a new default configuration using ‘make
> >> > > >       defconfig’. I
> >> > > >       >       had followed this from another resource before you
> >> > > >       >       >       suggested using
> >> > > >       >       >       > > > ‘make localmodconfig’
> >> > > >       >       >       > >
> >> > > >       >       >       > > OK, make defconfig will indeed result in a
> >> > > >       much
> >> > > >       >       smaller configuration.  I
> >> > > >       >       >       > > don't know if it will boot on your machine.
> >> > > >       But if
> >> > > >       >       it does, then that's
> >> > > >       >       >       > > fine.
> >> > > >       >       >       > >
> >> > > >       >       >       > > julia
> >> > > >       >       >       > >
> >> > > >       >       >       > > >
> >> > > >       >       >       > > > On Thu, 5 Oct 2023 at 11:03 AM, Julia
> >> > > >       Lawall
> >> > > >       >       <julia.lawall@inria.fr> wrote:
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >       On Thu, 5 Oct 2023, Isoken Ibizugbe
> >> > > >       wrote:
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >       > I started by setting .config to
> >> > > >       default
> >> > > >       >       and started over it again
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >       What do you mean by "setting .config
> >> > > >       to
> >> > > >       >       default"?  And what was the
> >> > > >       >       >       > > >       .config file before?
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >       julia
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       > On Thu, 5 Oct 2023 at 10:44 AM,
> >> > > >       Julia
> >> > > >       >       Lawall <julia.lawall@inria.fr> wrote:
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >       On Thu, 5 Oct 2023, Isoken
> >> > > >       Ibizugbe
> >> > > >       >       wrote:
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >       > Thanks for the help, I set
> >> > > >       the
> >> > > >       >       .config to default and commented out the former
> >> > > >       instructions
> >> > > >       >       like before and ran make. It compiled successful.
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >       I'm not sure to understand.
> >> > > >       You
> >> > > >       >       mean that after 10 hours it finally
> >> > > >       >       >       > > >       >       completed?  Or that you
> >> > > >       started over
> >> > > >       >       and it became faster?
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >       julia
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       > On Thu, 5 Oct 2023 at 9:56
> >> > > >       AM,
> >> > > >       >       Julia Lawall <julia.lawall@inria.fr> wrote:
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       On Thu, 5 Oct 2023,
> >> > > >       Isoken
> >> > > >       >       Ibizugbe wrote:
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       > I just checked and
> >> > > >       the
> >> > > >       >       virtual machine has 4 CPUs but is set to 2, should I end
> >> > > >       the
> >> > > >       >       building process and use make localmodconfig?
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       I think you can run
> >> > > >       make
> >> > > >       >       localmodconfig from another directory, to have
> >> > > >       >       >       > > >       >       >       the generated files
> >> > > >       be put
> >> > > >       >       in that other directory.  You could do:
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       make
> >> > > >       O=/path/to/mydir
> >> > > >       >       localmodconfig
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >     https://stackoverflow.com/questions/15969694/make-o-files-in-separate-fol
> >> > > >       d
> >> > > >       >       er-in-linux-kernel-compilation
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       I have not tried
> >> > > >       this
> >> > > >       >       though.  Copy your .config file to some other file
> >> > > >       >       >       > > >       >       >       first for easy
> >> > > >       reference.
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       In this way, maybe
> >> > > >       you can
> >> > > >       >       keep your current compilation running and see
> >> > > >       >       >       > > >       >       >       if make
> >> > > >       localmodconfig would
> >> > > >       >       be beneficial.
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       julia
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       > On Thu, 5 Oct 2023
> >> > > >       at 9:24
> >> > > >       >       AM, Julia Lawall <julia.lawall@inria.fr> wrote:
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >       On Thu, 5
> >> > > >       Oct 2023,
> >> > > >       >       Isoken Ibizugbe wrote:
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >       > Thank you
> >> > > >       for the
> >> > > >       >       clarification.
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >       I think your
> >> > > >       >       configuration is too big.  You can try make
> >> > > >       localmodconfig
> >> > > >       >       >       > > >       >       >       >       and see if
> >> > > >       you get a
> >> > > >       >       smaller configuration.
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >       Does your VM
> >> > > >       >       actually have 4 cores?
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >       julia
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >       >
> >> > > >       >       >       > > >       >       >       >       > On Thu,
> >> > > >       Oct 5,
> >> > > >       >       2023 at 8:01 AM sumitra sharma <sumitraartsy@gmail.com>
> >> > > >       wrote:
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       >       > > >       >       >       >       > > On Thu,
> >> > > >       5 Oct,
> >> > > >       >       2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.com>
> >> > > >       wrote:
> >> > > >       >       >       > > >       >       >       >       > > Yes I
> >> > > >       copied the
> >> > > >       >       .config file of the currently running kernel and I'm
> >> > > >       >       >       > > >       >       >       >       > > using
> >> > > >       Ubuntu
> >> > > >       >       20.04LTS on a virtual box, I renamed the
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       CONFIG_LOCALVERSION in the .config and commented out
> >> > > >       these lines
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       CONFIG_SYSTEM_TRUSTED_KEY
> >> > > >       >       >       > > >       >       >       >       > > and
> >> > > >       >       CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel
> >> > > >       has
> >> > > >       >       been
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       compiling for 10
> >> > > >       >       hours now. please is this normal?
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       >       > > >       >       >       >       > > Hello
> >> > > >       Isoken,
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       >       > > >       >       >       >       > > Yes, it
> >> > > >       is
> >> > > >       >       normal. The compilation time depends upon how much RAM
> >> > > >       you have
> >> > > >       >       allocated to your virtual machine. I still use virtual
> >> > > >       machines
> >> > > >       >       and sometimes the kernel building takes two days  :)
> >> > > >       >       >       > > >       >       >       >       > >
> >> > > >       >       >       > > >       >       >       >       > > Regards
> >> > > >       >       >       > > >       >       >       >       > > Sumitra
> >> > > >       >       >       > > >       >       >       >       >
> >> > > >       >       >       > > >       >       >       >       >
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >       >
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >       >
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >       >
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >
> >> > > >       >       >       > > >
> >> > > >       >       >       >
> >> > > >       >       >
> >> > > >       >       >
> >> > > >       >       >
> >> > > >       >
> >> > > >       >
> >> > > >       >
> >> > > >
> >> > > >
> >> > > >
> >> >
> >> >
>
--8323329-961786117-1697026110=:5451--
