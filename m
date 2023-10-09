Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7E21843
	for <outreachy@lists.linux.dev>; Mon,  9 Oct 2023 05:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mzULnhEN"
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2773f776f49so2968058a91.1
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 22:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696829661; x=1697434461; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iB4En1WQ5VkA7AJ0usHNS8NS2XjSU28Bp08x966lIiA=;
        b=mzULnhENeeseN6K8ZhhMJwYMU2ZDXK9gfa3kK41sSok8hmKJCsjjF0DDo1O6AxTjSG
         FB4FubsNY7YDWrhDzmTc0wpnHD8RPksQ62M3alH3ThoG5xcq7giqWmGlpCiq7i33vRt+
         Vtr/uNUWQJn1CbHgxQRDbheHYvWd612zFQqVOYfU3sAL+BJYBGLG8LZP/HyRoHwthGhz
         y8rJ9vqOVcvs5EjWNhbH3b9JXJ2nfHWdUG/bL7Au/KmxfflBpMLlsZmhKC30AxdUSRNt
         Lc8UneY9LFZUA0dwKr6HwvBjP1pM32pL6I62ZQYMtTvJ6XB7d8Ifq8XLWRbedXm2ue9b
         Wulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696829661; x=1697434461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iB4En1WQ5VkA7AJ0usHNS8NS2XjSU28Bp08x966lIiA=;
        b=ZPNGt+RnyonEGsFOctI7hKqs+yvrXOhubxsQhEOLEAxVMEUlvr3FRlaKJNEnthzQCI
         00+Kd/ndvLdD+RD+Qgu9vW1Kj4tiu279Rso0Rt4PPwp7fmuiwVmorlLCF5HQ+aUlhQvf
         Qpa+uZdbkQXKLVLSThUGUN8F6ORvpMzTk1DEt4sq2i1t0A19yCydVjpgZBdx2p01w1Nt
         tLxDGUs1eboKp8M8l5AhNa29y/q904gU43TlWqoHRajNZVSBjmBFMPQRjZ206/uMtpM5
         f5h6BoSagK3WWumf8F36cdb4we/eF9jh3l7QihcVz+kdwcPTn/+rnL3wpZmictVzzDcV
         9lJA==
X-Gm-Message-State: AOJu0YxnIP5wwdFbJQqa+NGR0o48mMeLSWneAUys374667mwmnS4TbwM
	/AzUAuxZLUl3B8n7Bk1WhRhQutuQTCPyQVYOOZYoAj2XupPD+A==
X-Google-Smtp-Source: AGHT+IE65fmXzby09XhlcVpEVryQxeEHum0DMvZGr/OX5/XKEiIkIz+rZ07Qc478lLHuqR4fgkAZAWpYmzb5l1IO/s8=
X-Received: by 2002:a17:90b:33c6:b0:26d:49a0:2071 with SMTP id
 lk6-20020a17090b33c600b0026d49a02071mr18112036pjb.13.1696829660605; Sun, 08
 Oct 2023 22:34:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
 <CAJHH8bGGship88xdjep302+wq0jbaC6VUbcwEW7DotUKY4bysw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051048360.3375@hadrien> <CAJHH8bFETe6cfkG-w9H=UywxTC9xGss40+2r_EhDJT3k8Z5fvg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051143580.3375@hadrien> <CAJHH8bFuZtfZEeknsiSQzLLUq=jhoSUmyVh7pcViBfa8nTnhhw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051203150.3375@hadrien> <CAJHH8bFS1=BpXjKkNNk0VQZR-Ztk13ooo5YSpbuKiQS3y9JR7w@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051309370.3375@hadrien> <CAJHH8bGaPhMdYmm6swFdM1NTQQ=eHz0+hBsUB+hb-+EDqpz7ug@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051857240.3375@hadrien> <CAJHH8bHixAcrUwpj_LCjAZ641tbzjHQHm9ig=UPvoRh+h0ubPg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051908490.3375@hadrien> <CAJHH8bHV4rRPmM5scQ2AUk9FTs4hAy6i8S5fwJ=4v1xf7DDqOg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310080800280.3223@hadrien> <CAJHH8bGB4pVDZpK6LoTCZccRqJg_sry=NLdMsqO+7EzRufXWMQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310080806480.3223@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2310080806480.3223@hadrien>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Mon, 9 Oct 2023 06:32:53 +0100
Message-ID: <CAJHH8bEtYuWYkP0c=AoZscoq-hJ5_ZfedY_Ykn61-udfGP0QeQ@mail.gmail.com>
Subject: Re: [Error]
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Linux Outreachy <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am sorry for the confusion. After building and installing the kernel
successfully I didn't edit the grub file, so I didn't see my new
kernel after boot, so I went to do that and reboot, but my VM couldn't
load any kernel at all, I don't know if its because I was using
Vagrant, so I downloaded and installed Ubuntu on the VM to start
afresh, but I have been able to finish the first instruction on
compiling and installing, but my compiled kernel doesn't work, can I
work on it from just the directory?

On Sun, Oct 8, 2023 at 7:07=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr>=
 wrote:
>
>
>
> On Sun, 8 Oct 2023, Isoken Ibizugbe wrote:
>
> > I skipped that part, so I went back to edit the grub file.
>
> Not sure what you mean here.
>
> I mean, that I thought you had a working solution for the first step, so =
I
> wonder why you seem to have discarded that and taken another solution?
>
> julia
>
> >
> > On Sun, 8 Oct 2023 at 7:02 AM, Julia Lawall <julia.lawall@inria.fr> wro=
te:
> >
> >
> >       On Sat, 7 Oct 2023, Isoken Ibizugbe wrote:
> >
> >       > I cannot boot into my Virtual machine using vagrant after
> >       reloading it to
> >       > switch to the new kernel. It gives a warning that there was an
> >       error. Do I
> >       > really need to boot into the new kernel to work? . I cannot
> >       seem to fix the
> >       > issue, do I need to reinstall the virtual machine and start
> >       all over?
> >
> >       Didn't you already get to the point of booting a virtual
> >       machine, and the
> >       problem was just that you didn't see the effect of the code that
> >       you
> >       changed?
> >
> >       julia
> >
> >
> >       > On Thu, 5 Oct 2023 at 6:09 PM, Julia Lawall
> >       <julia.lawall@inria.fr> wrote:
> >       >
> >       >
> >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >       >
> >       >       > I modified the e1000 driver and compiled with -j2
> >       according to
> >       >       the tutorial.
> >       >
> >       >       Whether a file gets compiled depends on your
> >       configuration.  Do
> >       >       you have a
> >       >       .o file or .ko file for the .c file that you changed?
> >       >
> >       >       Please remember to keep the list in CC.  Other people
> >       may have
> >       >       better
> >       >       answers than I do :)
> >       >
> >       >       julia
> >       >
> >       >       >
> >       >       > On Thu, 5 Oct 2023 at 5:58 PM, Julia Lawall
> >       >       <julia.lawall@inria.fr> wrote:
> >       >       >
> >       >       >
> >       >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >       >       >
> >       >       >       > Thanks for the help. I made changes to the
> >       probe
> >       >       function by adding
> >       >       >       > the printk line to it 'printk(KERN_DEBUG "I
> >       can modify
> >       >       the Linux
> >       >       >       > kernel!\n");' , compiled and installed the
> >       changes ,
> >       >       rebooted my VM
> >       >       >       > and ran 'dmesg | less' test the changes, but
> >       can not
> >       >       find the
> >       >       >       > changes. please what should I do?
> >       >       >
> >       >       >       What driver did you change?  Did you compile the
> >       >       affected file?  Do you
> >       >       >       have the corresponding device?
> >       >       >
> >       >       >       julia
> >       >       >
> >       >       >       >
> >       >       >       > On Thu, Oct 5, 2023 at 12:10=E2=80=AFPM Julia L=
awall
> >       >       <julia.lawall@inria.fr> wrote:
> >       >       >       > >
> >       >       >       > >
> >       >       >       > >
> >       >       >       > > On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >       >       >       > >
> >       >       >       > > > The .config file was a copy from my
> >       running kernel
> >       >       using this commmand cp /boot/config- name -r * .config.
> >       Then I
> >       >       generated a new default configuration using =E2=80=98make
> >       defconfig=E2=80=99. I
> >       >       had followed this from another resource before you
> >       >       >       suggested using
> >       >       >       > > > =E2=80=98make localmodconfig=E2=80=99
> >       >       >       > >
> >       >       >       > > OK, make defconfig will indeed result in a
> >       much
> >       >       smaller configuration.  I
> >       >       >       > > don't know if it will boot on your machine.
> >       But if
> >       >       it does, then that's
> >       >       >       > > fine.
> >       >       >       > >
> >       >       >       > > julia
> >       >       >       > >
> >       >       >       > > >
> >       >       >       > > > On Thu, 5 Oct 2023 at 11:03 AM, Julia
> >       Lawall
> >       >       <julia.lawall@inria.fr> wrote:
> >       >       >       > > >
> >       >       >       > > >
> >       >       >       > > >       On Thu, 5 Oct 2023, Isoken Ibizugbe
> >       wrote:
> >       >       >       > > >
> >       >       >       > > >       > I started by setting .config to
> >       default
> >       >       and started over it again
> >       >       >       > > >
> >       >       >       > > >       What do you mean by "setting .config
> >       to
> >       >       default"?  And what was the
> >       >       >       > > >       .config file before?
> >       >       >       > > >
> >       >       >       > > >       julia
> >       >       >       > > >
> >       >       >       > > >       >
> >       >       >       > > >       > On Thu, 5 Oct 2023 at 10:44 AM,
> >       Julia
> >       >       Lawall <julia.lawall@inria.fr> wrote:
> >       >       >       > > >       >
> >       >       >       > > >       >
> >       >       >       > > >       >       On Thu, 5 Oct 2023, Isoken
> >       Ibizugbe
> >       >       wrote:
> >       >       >       > > >       >
> >       >       >       > > >       >       > Thanks for the help, I set
> >       the
> >       >       .config to default and commented out the former
> >       instructions
> >       >       like before and ran make. It compiled successful.
> >       >       >       > > >       >
> >       >       >       > > >       >       I'm not sure to understand.
> >       You
> >       >       mean that after 10 hours it finally
> >       >       >       > > >       >       completed?  Or that you
> >       started over
> >       >       and it became faster?
> >       >       >       > > >       >
> >       >       >       > > >       >       julia
> >       >       >       > > >       >
> >       >       >       > > >       >
> >       >       >       > > >       >       >
> >       >       >       > > >       >       > On Thu, 5 Oct 2023 at 9:56
> >       AM,
> >       >       Julia Lawall <julia.lawall@inria.fr> wrote:
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       On Thu, 5 Oct 2023,
> >       Isoken
> >       >       Ibizugbe wrote:
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       > I just checked and
> >       the
> >       >       virtual machine has 4 CPUs but is set to 2, should I end
> >       the
> >       >       building process and use make localmodconfig?
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       I think you can run
> >       make
> >       >       localmodconfig from another directory, to have
> >       >       >       > > >       >       >       the generated files
> >       be put
> >       >       in that other directory.  You could do:
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       make
> >       O=3D/path/to/mydir
> >       >       localmodconfig
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >     https://stackoverflow.c=
om/questions/15969694/make-o-files-in-separate-fol
> >       d
> >       >       er-in-linux-kernel-compilation
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       I have not tried
> >       this
> >       >       though.  Copy your .config file to some other file
> >       >       >       > > >       >       >       first for easy
> >       reference.
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       In this way, maybe
> >       you can
> >       >       keep your current compilation running and see
> >       >       >       > > >       >       >       if make
> >       localmodconfig would
> >       >       be beneficial.
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       julia
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       > On Thu, 5 Oct 2023
> >       at 9:24
> >       >       AM, Julia Lawall <julia.lawall@inria.fr> wrote:
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >       On Thu, 5
> >       Oct 2023,
> >       >       Isoken Ibizugbe wrote:
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >       > Thank you
> >       for the
> >       >       clarification.
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >       I think your
> >       >       configuration is too big.  You can try make
> >       localmodconfig
> >       >       >       > > >       >       >       >       and see if
> >       you get a
> >       >       smaller configuration.
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >       Does your VM
> >       >       actually have 4 cores?
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >       julia
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >       >
> >       >       >       > > >       >       >       >       > On Thu,
> >       Oct 5,
> >       >       2023 at 8:01=E2=80=AFAM sumitra sharma <sumitraartsy@gmai=
l.com>
> >       wrote:
> >       >       >       > > >       >       >       >       > >
> >       >       >       > > >       >       >       >       > >
> >       >       >       > > >       >       >       >       > >
> >       >       >       > > >       >       >       >       > > On Thu,
> >       5 Oct,
> >       >       2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.com>
> >       wrote:
> >       >       >       > > >       >       >       >       > > Yes I
> >       copied the
> >       >       .config file of the currently running kernel and I'm
> >       >       >       > > >       >       >       >       > > using
> >       Ubuntu
> >       >       20.04LTS on a virtual box, I renamed the
> >       >       >       > > >       >       >       >       > >
> >       >       CONFIG_LOCALVERSION in the .config and commented out
> >       these lines
> >       >       >       > > >       >       >       >       > >
> >       >       CONFIG_SYSTEM_TRUSTED_KEY
> >       >       >       > > >       >       >       >       > > and
> >       >       CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel
> >       has
> >       >       been
> >       >       >       > > >       >       >       >       > >
> >       compiling for 10
> >       >       hours now. please is this normal?
> >       >       >       > > >       >       >       >       > >
> >       >       >       > > >       >       >       >       > > Hello
> >       Isoken,
> >       >       >       > > >       >       >       >       > >
> >       >       >       > > >       >       >       >       > > Yes, it
> >       is
> >       >       normal. The compilation time depends upon how much RAM
> >       you have
> >       >       allocated to your virtual machine. I still use virtual
> >       machines
> >       >       and sometimes the kernel building takes two days  :)
> >       >       >       > > >       >       >       >       > >
> >       >       >       > > >       >       >       >       > > Regards
> >       >       >       > > >       >       >       >       > > Sumitra
> >       >       >       > > >       >       >       >       >
> >       >       >       > > >       >       >       >       >
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >       >
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >
> >       >       >       > > >       >       >
> >       >       >       > > >       >
> >       >       >       > > >       >
> >       >       >       > > >       >
> >       >       >       > > >
> >       >       >       > > >
> >       >       >       > > >
> >       >       >       >
> >       >       >
> >       >       >
> >       >       >
> >       >
> >       >
> >       >
> >
> >
> >
