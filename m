Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4A234198
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 16:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hP/uWmcc"
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2774f6943b1so901093a91.0
        for <outreachy@lists.linux.dev>; Thu, 05 Oct 2023 09:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696524922; x=1697129722; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g50WEmcQ5v5PIX7nR2L8arbL6VewrLlpXSn4UFnuk9E=;
        b=hP/uWmccnHtcG9sI0eePznOWjv2t36ZWTOr85t4875oWJJpeqB4YcB3aTKAH6Dzf33
         sxfiksadpkNtMBSYwZEnHHhRk9z7MeUT9RSswafZMx6EDsG+GS3Dqtxs1nfgvY3COZdq
         5k621tdaXoW9z7pW6xycPSfBEVnVkrcG/+dYpnS7P9nW1xft3CK962uejLihjPC9tWkI
         VivlAtkAiTxdKvlj4iuGBfMSbIPno9NkD6SpLwHUXacYtnLbnCGrfLjSon2wcRiG/hbf
         yHSjPcRigCsw1yaw/O/iQAFVCGq7G/nhua7E0ZyG3PjXgrcs4FjkokbQrOx/QXrmf4AD
         GbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696524922; x=1697129722;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g50WEmcQ5v5PIX7nR2L8arbL6VewrLlpXSn4UFnuk9E=;
        b=sW5z87coQ18xoTr5onMYBI/d2NPrfDZaxJzqy1Cms6Aw2oTCLw+Ra8/mc1ZQ8VlAnW
         L/WDnxXfyZQ2cVsqdLsJOIDlsgYG+Iv+qyzPz4nAAQBDfmfrvBeaxkQVgSFdq+/j/qpL
         NJtuE1V24Zy58saDU36iamp4ZaOuHCXbhlz4/V6tsA8n2+EKT1j1joxrnMk5gEtE3gVt
         XcvlEN2XnJBxpygI/1aEnEYLWyKeushFd4JnRVYmu+TQ+rE5e0mtmvB7gY5/6VxHYiE5
         1bju3WyRzdoJz0HAImk++TBzITrLe0T1sgQDN2VIbsj7CSAKICb1lQ1Zh7awBNa1CdEa
         yVAA==
X-Gm-Message-State: AOJu0YzwzqKjOeqiY3CVUD6Dv9fgfWLF+Hb8Z2lNxbtsKlA7GPQd5TaD
	0Ud/egTq2extX/CJeXTsf07NKCrqRENVoi7Q4sw=
X-Google-Smtp-Source: AGHT+IE+UJRZIcgDD+eZJ1GpffIEZ9U4UlqSXBymJrsmaKxfYQEz1GCdFiGpco3ZrP/N4hlh4s9KhOdTtQH+VEMufzQ=
X-Received: by 2002:a17:90b:4f8c:b0:26f:f272:144c with SMTP id
 qe12-20020a17090b4f8c00b0026ff272144cmr5125959pjb.27.1696524921558; Thu, 05
 Oct 2023 09:55:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
 <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan> <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com>
 <CALPt=awuCRF3_Z5-Qh3biBBEuS7fVkvxQyfFcxuv8Snww6csMA@mail.gmail.com>
 <CAJHH8bEvLeEytHH7FR-eiGeshLmjfj9syjNa0ekuDbgT2q+=3w@mail.gmail.com>
 <CALPt=aznty=FRpmNXMvVVJKSH48OibdrQ5cr68ubEO2b8b+atg@mail.gmail.com>
 <CAJHH8bF7D5dREdF=4fmGhC6rnEWPyZ7+vW1C2mwuy_jAwaJ8Bw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051021430.3375@hadrien> <CAJHH8bGGship88xdjep302+wq0jbaC6VUbcwEW7DotUKY4bysw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051048360.3375@hadrien> <CAJHH8bFETe6cfkG-w9H=UywxTC9xGss40+2r_EhDJT3k8Z5fvg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051143580.3375@hadrien> <CAJHH8bFuZtfZEeknsiSQzLLUq=jhoSUmyVh7pcViBfa8nTnhhw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051203150.3375@hadrien> <CAJHH8bFS1=BpXjKkNNk0VQZR-Ztk13ooo5YSpbuKiQS3y9JR7w@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051309370.3375@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2310051309370.3375@hadrien>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Thu, 5 Oct 2023 17:53:56 +0100
Message-ID: <CAJHH8bGaPhMdYmm6swFdM1NTQQ=eHz0+hBsUB+hb-+EDqpz7ug@mail.gmail.com>
Subject: Re: [Error]
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Linux Outreachy <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the help. I made changes to the probe function by adding
the printk line to it 'printk(KERN_DEBUG "I can modify the Linux
kernel!\n");' , compiled and installed the changes , rebooted my VM
and ran 'dmesg | less' test the changes, but can not  find the
changes. please what should I do?

On Thu, Oct 5, 2023 at 12:10=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>
> > The .config file was a copy from my running kernel using this commmand =
cp /boot/config- name -r * .config.  Then I generated a new default configu=
ration using =E2=80=98make defconfig=E2=80=99. I had followed this from ano=
ther resource before you suggested using
> > =E2=80=98make localmodconfig=E2=80=99
>
> OK, make defconfig will indeed result in a much smaller configuration.  I
> don't know if it will boot on your machine.  But if it does, then that's
> fine.
>
> julia
>
> >
> > On Thu, 5 Oct 2023 at 11:03 AM, Julia Lawall <julia.lawall@inria.fr> wr=
ote:
> >
> >
> >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >
> >       > I started by setting .config to default and started over it aga=
in
> >
> >       What do you mean by "setting .config to default"?  And what was t=
he
> >       .config file before?
> >
> >       julia
> >
> >       >
> >       > On Thu, 5 Oct 2023 at 10:44 AM, Julia Lawall <julia.lawall@inri=
a.fr> wrote:
> >       >
> >       >
> >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >       >
> >       >       > Thanks for the help, I set the .config to default and c=
ommented out the former instructions like before and ran make. It compiled =
successful.
> >       >
> >       >       I'm not sure to understand.  You mean that after 10 hours=
 it finally
> >       >       completed?  Or that you started over and it became faster=
?
> >       >
> >       >       julia
> >       >
> >       >
> >       >       >
> >       >       > On Thu, 5 Oct 2023 at 9:56 AM, Julia Lawall <julia.lawa=
ll@inria.fr> wrote:
> >       >       >
> >       >       >
> >       >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
> >       >       >
> >       >       >       > I just checked and the virtual machine has 4 CP=
Us but is set to 2, should I end the building process and use make localmod=
config?
> >       >       >
> >       >       >       I think you can run make localmodconfig from anot=
her directory, to have
> >       >       >       the generated files be put in that other director=
y.  You could do:
> >       >       >
> >       >       >       make O=3D/path/to/mydir localmodconfig
> >       >       >
> >       >       >       https://stackoverflow.com/questions/15969694/make=
-o-files-in-separate-folder-in-linux-kernel-compilation
> >       >       >
> >       >       >       I have not tried this though.  Copy your .config =
file to some other file
> >       >       >       first for easy reference.
> >       >       >
> >       >       >       In this way, maybe you can keep your current comp=
ilation running and see
> >       >       >       if make localmodconfig would be beneficial.
> >       >       >
> >       >       >       julia
> >       >       >
> >       >       >       >
> >       >       >       > On Thu, 5 Oct 2023 at 9:24 AM, Julia Lawall <ju=
lia.lawall@inria.fr> wrote:
> >       >       >       >
> >       >       >       >
> >       >       >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote=
:
> >       >       >       >
> >       >       >       >       > Thank you for the clarification.
> >       >       >       >
> >       >       >       >       I think your configuration is too big.  Y=
ou can try make localmodconfig
> >       >       >       >       and see if you get a smaller configuratio=
n.
> >       >       >       >
> >       >       >       >       Does your VM actually have 4 cores?
> >       >       >       >
> >       >       >       >       julia
> >       >       >       >
> >       >       >       >
> >       >       >       >       >
> >       >       >       >       > On Thu, Oct 5, 2023 at 8:01=E2=80=AFAM =
sumitra sharma <sumitraartsy@gmail.com> wrote:
> >       >       >       >       > >
> >       >       >       >       > >
> >       >       >       >       > >
> >       >       >       >       > > On Thu, 5 Oct, 2023, 12:24 pm Isoken =
Ibizugbe, <isokenjune@gmail.com> wrote:
> >       >       >       >       > > Yes I copied the .config file of the =
currently running kernel and I'm
> >       >       >       >       > > using Ubuntu 20.04LTS on a virtual bo=
x, I renamed the
> >       >       >       >       > > CONFIG_LOCALVERSION in the .config an=
d commented out these lines
> >       >       >       >       > > CONFIG_SYSTEM_TRUSTED_KEY
> >       >       >       >       > > and CONFIG_MODULE_SIG_KEY, then ran m=
ake -j4, but the kernel has been
> >       >       >       >       > > compiling for 10 hours now. please is=
 this normal?
> >       >       >       >       > >
> >       >       >       >       > > Hello Isoken,
> >       >       >       >       > >
> >       >       >       >       > > Yes, it is normal. The compilation ti=
me depends upon how much RAM you have allocated to your virtual machine. I =
still use virtual machines and sometimes the kernel building takes two days=
  :)
> >       >       >       >       > >
> >       >       >       >       > > Regards
> >       >       >       >       > > Sumitra
> >       >       >       >       >
> >       >       >       >       >
> >       >       >       >
> >       >       >       >
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
