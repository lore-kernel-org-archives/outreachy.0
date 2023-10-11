Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126771097B
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 11:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GIdZdqxb"
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1c735473d1aso47243995ad.1
        for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 04:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697024905; x=1697629705; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5YU9hJOwppDZj/9PIXqSsR6YHDg+hlHA31kuxXkP4xE=;
        b=GIdZdqxbSCxzzU6bOVRhirGn36ek4wTYLHD37hXgezmrAuyD5yVRg0i40a2+FYiNB3
         h17JP17ppEFvUtj1mhTF0+ApeAMsjRfndpRlKN1hTxfdJNE+mWjdJRxfHrl9YVQSDxbX
         od9lzOL4C22YxyNGjzdLp9ya62OZulbl+4e9NCOGG3JfjVlns9d/eVm97qBxcii6Ts7n
         uCxsAh9t8WZ56scsg3ktBTBMcPPlLChxRCAhROp4nCUyuu5ED0wUdeFEWFoSJ22SYt0E
         sWG02OpB663YFv+Etb5Ezp72BuTWXLSc3AMcfDvRojivtGmGzA2KKu/vCauQxQAdUn2u
         jrkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024905; x=1697629705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5YU9hJOwppDZj/9PIXqSsR6YHDg+hlHA31kuxXkP4xE=;
        b=RMz2KNdBt2vitOW2pSnpwxr3oi1XHX6XLHJYgMMRxERzcaEOwKP4pAxXCmopt5QdFH
         WrR0YF5Hs5jI8zD8IsCZS9OiNbzh0PiySPilMT3wcEArmL3RP/3N5H913wBrhBrnoSwE
         baAki6ti/eb4clGxDzTEK8N1JnaD8F/nDmBNoSoMPlMLU357+a79lztFB7TWhXFXHlpW
         Dbys7KjF2Lg0Cuofd6Iq/IP/yo8rfigBvXjMzQKkqcOpFDb8brwxFmG8dFa5NkSqHyhN
         HoBCvxgzjU4N9yoEC4ZrlHpRNbLTxeQwHJe7dQGKXwWDNnUchaZsYB+NgaSs4GxSODKQ
         SuDw==
X-Gm-Message-State: AOJu0Yx+cewKNj69K4wukOtDGiaOdi1wwVTPbviCj+Z2REuDTJpjfXqN
	CQYqx0ZeLAlxIAr0dXnZR1i7jVvoYymeEZpvQLNCL2UxmejDIHmQVRQ=
X-Google-Smtp-Source: AGHT+IFReS2LC6cd+8Z07KL+RY0zKioombXANv19FEmHFR+eZsLzNwbHcWdx0WoByLcMeaNwwin2FhS7+Rc5rkck+Us=
X-Received: by 2002:a17:90b:4d11:b0:27c:e6a7:51be with SMTP id
 mw17-20020a17090b4d1100b0027ce6a751bemr4678659pjb.45.1697024905025; Wed, 11
 Oct 2023 04:48:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
 <CAJHH8bFETe6cfkG-w9H=UywxTC9xGss40+2r_EhDJT3k8Z5fvg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051143580.3375@hadrien> <CAJHH8bFuZtfZEeknsiSQzLLUq=jhoSUmyVh7pcViBfa8nTnhhw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051203150.3375@hadrien> <CAJHH8bFS1=BpXjKkNNk0VQZR-Ztk13ooo5YSpbuKiQS3y9JR7w@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051309370.3375@hadrien> <CAJHH8bGaPhMdYmm6swFdM1NTQQ=eHz0+hBsUB+hb-+EDqpz7ug@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051857240.3375@hadrien> <CAJHH8bHixAcrUwpj_LCjAZ641tbzjHQHm9ig=UPvoRh+h0ubPg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051908490.3375@hadrien> <CAJHH8bHV4rRPmM5scQ2AUk9FTs4hAy6i8S5fwJ=4v1xf7DDqOg@mail.gmail.com>
 <alpine.DEB.2.22.394.2310080800280.3223@hadrien> <CAJHH8bGB4pVDZpK6LoTCZccRqJg_sry=NLdMsqO+7EzRufXWMQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310080806480.3223@hadrien> <CAJHH8bEtYuWYkP0c=AoZscoq-hJ5_ZfedY_Ykn61-udfGP0QeQ@mail.gmail.com>
 <16afa9e8-9b77-bc68-18bc-f3acf29389b9@inria.fr> <CAJHH8bE3T6zfX_fRBCKqodKBUn0X=gehJ39-eNknzhLQVTrSLA@mail.gmail.com>
In-Reply-To: <CAJHH8bE3T6zfX_fRBCKqodKBUn0X=gehJ39-eNknzhLQVTrSLA@mail.gmail.com>
From: Isoken Ibizugbe <isokenjune@gmail.com>
Date: Wed, 11 Oct 2023 12:46:58 +0100
Message-ID: <CAJHH8bFNKnQFDz=sc1mcM6EbSdYnMtAoO14_FWEnzhK1pxM_2g@mail.gmail.com>
Subject: Re: [Error]
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Linux Outreachy <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 9, 2023 at 7:57=E2=80=AFAM Isoken Ibizugbe <isokenjune@gmail.co=
m> wrote:
>
> Thanks, I'll check it out.
I cannot enable the driver that I changed. I fixed coding errors for a
file in drivers/staging, but the staging drivers option in the
menuconfig has this symbol '---staging divers', so I cannot open it to
make the driver a module. Please what do I do?
>
> On Mon, 9 Oct 2023 at 7:52 AM, Julia Lawall <julia.lawall@inria.fr> wrote=
:
>>
>>
>>
>> On Mon, 9 Oct 2023, Isoken Ibizugbe wrote:
>>
>> > I am sorry for the confusion. After building and installing the kernel
>> > successfully I didn't edit the grub file, so I didn't see my new
>> > kernel after boot, so I went to do that and reboot, but my VM couldn't
>> > load any kernel at all, I don't know if its because I was using
>> > Vagrant, so I downloaded and installed Ubuntu on the VM to start
>> > afresh, but I have been able to finish the first instruction on
>> > compiling and installing, but my compiled kernel doesn't work, can I
>> > work on it from just the directory?
>>
>> I think you should check with the mentor(s) for the project(s) that you
>> are interested in.  In some sense it is time to move on, since the
>> contribution period is not very long.  But if you need to be able to
>> obtain a running kernel for your project, then you need to be able to do
>> that.
>>
>> Maybe you can use kexec: https://wiki.archlinux.org/title/kexec
>> The following arguments: /boot/vmlinuz-linux --initrd=3D/boot/initramfs-=
linux.img
>> both correspond to the kernel you want to boot.
>>
>> julia
>>
>> >
>> > On Sun, Oct 8, 2023 at 7:07=E2=80=AFAM Julia Lawall <julia.lawall@inri=
a.fr> wrote:
>> > >
>> > >
>> > >
>> > > On Sun, 8 Oct 2023, Isoken Ibizugbe wrote:
>> > >
>> > > > I skipped that part, so I went back to edit the grub file.
>> > >
>> > > Not sure what you mean here.
>> > >
>> > > I mean, that I thought you had a working solution for the first step=
, so I
>> > > wonder why you seem to have discarded that and taken another solutio=
n?
>> > >
>> > > julia
>> > >
>> > > >
>> > > > On Sun, 8 Oct 2023 at 7:02 AM, Julia Lawall <julia.lawall@inria.fr=
> wrote:
>> > > >
>> > > >
>> > > >       On Sat, 7 Oct 2023, Isoken Ibizugbe wrote:
>> > > >
>> > > >       > I cannot boot into my Virtual machine using vagrant after
>> > > >       reloading it to
>> > > >       > switch to the new kernel. It gives a warning that there wa=
s an
>> > > >       error. Do I
>> > > >       > really need to boot into the new kernel to work? . I canno=
t
>> > > >       seem to fix the
>> > > >       > issue, do I need to reinstall the virtual machine and star=
t
>> > > >       all over?
>> > > >
>> > > >       Didn't you already get to the point of booting a virtual
>> > > >       machine, and the
>> > > >       problem was just that you didn't see the effect of the code =
that
>> > > >       you
>> > > >       changed?
>> > > >
>> > > >       julia
>> > > >
>> > > >
>> > > >       > On Thu, 5 Oct 2023 at 6:09 PM, Julia Lawall
>> > > >       <julia.lawall@inria.fr> wrote:
>> > > >       >
>> > > >       >
>> > > >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>> > > >       >
>> > > >       >       > I modified the e1000 driver and compiled with -j2
>> > > >       according to
>> > > >       >       the tutorial.
>> > > >       >
>> > > >       >       Whether a file gets compiled depends on your
>> > > >       configuration.  Do
>> > > >       >       you have a
>> > > >       >       .o file or .ko file for the .c file that you changed=
?
>> > > >       >
>> > > >       >       Please remember to keep the list in CC.  Other peopl=
e
>> > > >       may have
>> > > >       >       better
>> > > >       >       answers than I do :)
>> > > >       >
>> > > >       >       julia
>> > > >       >
>> > > >       >       >
>> > > >       >       > On Thu, 5 Oct 2023 at 5:58 PM, Julia Lawall
>> > > >       >       <julia.lawall@inria.fr> wrote:
>> > > >       >       >
>> > > >       >       >
>> > > >       >       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>> > > >       >       >
>> > > >       >       >       > Thanks for the help. I made changes to the
>> > > >       probe
>> > > >       >       function by adding
>> > > >       >       >       > the printk line to it 'printk(KERN_DEBUG "=
I
>> > > >       can modify
>> > > >       >       the Linux
>> > > >       >       >       > kernel!\n");' , compiled and installed the
>> > > >       changes ,
>> > > >       >       rebooted my VM
>> > > >       >       >       > and ran 'dmesg | less' test the changes, b=
ut
>> > > >       can not
>> > > >       >       find the
>> > > >       >       >       > changes. please what should I do?
>> > > >       >       >
>> > > >       >       >       What driver did you change?  Did you compile=
 the
>> > > >       >       affected file?  Do you
>> > > >       >       >       have the corresponding device?
>> > > >       >       >
>> > > >       >       >       julia
>> > > >       >       >
>> > > >       >       >       >
>> > > >       >       >       > On Thu, Oct 5, 2023 at 12:10=E2=80=AFPM Ju=
lia Lawall
>> > > >       >       <julia.lawall@inria.fr> wrote:
>> > > >       >       >       > >
>> > > >       >       >       > >
>> > > >       >       >       > >
>> > > >       >       >       > > On Thu, 5 Oct 2023, Isoken Ibizugbe wrot=
e:
>> > > >       >       >       > >
>> > > >       >       >       > > > The .config file was a copy from my
>> > > >       running kernel
>> > > >       >       using this commmand cp /boot/config- name -r * .conf=
ig.
>> > > >       Then I
>> > > >       >       generated a new default configuration using =E2=80=
=98make
>> > > >       defconfig=E2=80=99. I
>> > > >       >       had followed this from another resource before you
>> > > >       >       >       suggested using
>> > > >       >       >       > > > =E2=80=98make localmodconfig=E2=80=99
>> > > >       >       >       > >
>> > > >       >       >       > > OK, make defconfig will indeed result in=
 a
>> > > >       much
>> > > >       >       smaller configuration.  I
>> > > >       >       >       > > don't know if it will boot on your machi=
ne.
>> > > >       But if
>> > > >       >       it does, then that's
>> > > >       >       >       > > fine.
>> > > >       >       >       > >
>> > > >       >       >       > > julia
>> > > >       >       >       > >
>> > > >       >       >       > > >
>> > > >       >       >       > > > On Thu, 5 Oct 2023 at 11:03 AM, Julia
>> > > >       Lawall
>> > > >       >       <julia.lawall@inria.fr> wrote:
>> > > >       >       >       > > >
>> > > >       >       >       > > >
>> > > >       >       >       > > >       On Thu, 5 Oct 2023, Isoken Ibizu=
gbe
>> > > >       wrote:
>> > > >       >       >       > > >
>> > > >       >       >       > > >       > I started by setting .config t=
o
>> > > >       default
>> > > >       >       and started over it again
>> > > >       >       >       > > >
>> > > >       >       >       > > >       What do you mean by "setting .co=
nfig
>> > > >       to
>> > > >       >       default"?  And what was the
>> > > >       >       >       > > >       .config file before?
>> > > >       >       >       > > >
>> > > >       >       >       > > >       julia
>> > > >       >       >       > > >
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       > On Thu, 5 Oct 2023 at 10:44 AM=
,
>> > > >       Julia
>> > > >       >       Lawall <julia.lawall@inria.fr> wrote:
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >       On Thu, 5 Oct 2023, Isok=
en
>> > > >       Ibizugbe
>> > > >       >       wrote:
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >       > Thanks for the help, I=
 set
>> > > >       the
>> > > >       >       .config to default and commented out the former
>> > > >       instructions
>> > > >       >       like before and ran make. It compiled successful.
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >       I'm not sure to understa=
nd.
>> > > >       You
>> > > >       >       mean that after 10 hours it finally
>> > > >       >       >       > > >       >       completed?  Or that you
>> > > >       started over
>> > > >       >       and it became faster?
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >       julia
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       > On Thu, 5 Oct 2023 at =
9:56
>> > > >       AM,
>> > > >       >       Julia Lawall <julia.lawall@inria.fr> wrote:
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       On Thu, 5 Oct 20=
23,
>> > > >       Isoken
>> > > >       >       Ibizugbe wrote:
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       > I just checked=
 and
>> > > >       the
>> > > >       >       virtual machine has 4 CPUs but is set to 2, should I=
 end
>> > > >       the
>> > > >       >       building process and use make localmodconfig?
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       I think you can =
run
>> > > >       make
>> > > >       >       localmodconfig from another directory, to have
>> > > >       >       >       > > >       >       >       the generated fi=
les
>> > > >       be put
>> > > >       >       in that other directory.  You could do:
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       make
>> > > >       O=3D/path/to/mydir
>> > > >       >       localmodconfig
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >     https://stackoverf=
low.com/questions/15969694/make-o-files-in-separate-fol
>> > > >       d
>> > > >       >       er-in-linux-kernel-compilation
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       I have not tried
>> > > >       this
>> > > >       >       though.  Copy your .config file to some other file
>> > > >       >       >       > > >       >       >       first for easy
>> > > >       reference.
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       In this way, may=
be
>> > > >       you can
>> > > >       >       keep your current compilation running and see
>> > > >       >       >       > > >       >       >       if make
>> > > >       localmodconfig would
>> > > >       >       be beneficial.
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       julia
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       > On Thu, 5 Oct =
2023
>> > > >       at 9:24
>> > > >       >       AM, Julia Lawall <julia.lawall@inria.fr> wrote:
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >       On Thu, =
5
>> > > >       Oct 2023,
>> > > >       >       Isoken Ibizugbe wrote:
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >       > Thank =
you
>> > > >       for the
>> > > >       >       clarification.
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >       I think =
your
>> > > >       >       configuration is too big.  You can try make
>> > > >       localmodconfig
>> > > >       >       >       > > >       >       >       >       and see =
if
>> > > >       you get a
>> > > >       >       smaller configuration.
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >       Does you=
r VM
>> > > >       >       actually have 4 cores?
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >       julia
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >       >
>> > > >       >       >       > > >       >       >       >       > On Thu=
,
>> > > >       Oct 5,
>> > > >       >       2023 at 8:01=E2=80=AFAM sumitra sharma <sumitraartsy=
@gmail.com>
>> > > >       wrote:
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       >       > > >       >       >       >       > > On T=
hu,
>> > > >       5 Oct,
>> > > >       >       2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.co=
m>
>> > > >       wrote:
>> > > >       >       >       > > >       >       >       >       > > Yes =
I
>> > > >       copied the
>> > > >       >       .config file of the currently running kernel and I'm
>> > > >       >       >       > > >       >       >       >       > > usin=
g
>> > > >       Ubuntu
>> > > >       >       20.04LTS on a virtual box, I renamed the
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       CONFIG_LOCALVERSION in the .config and commented out
>> > > >       these lines
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       CONFIG_SYSTEM_TRUSTED_KEY
>> > > >       >       >       > > >       >       >       >       > > and
>> > > >       >       CONFIG_MODULE_SIG_KEY, then ran make -j4, but the ke=
rnel
>> > > >       has
>> > > >       >       been
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       compiling for 10
>> > > >       >       hours now. please is this normal?
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       >       > > >       >       >       >       > > Hell=
o
>> > > >       Isoken,
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       >       > > >       >       >       >       > > Yes,=
 it
>> > > >       is
>> > > >       >       normal. The compilation time depends upon how much R=
AM
>> > > >       you have
>> > > >       >       allocated to your virtual machine. I still use virtu=
al
>> > > >       machines
>> > > >       >       and sometimes the kernel building takes two days  :)
>> > > >       >       >       > > >       >       >       >       > >
>> > > >       >       >       > > >       >       >       >       > > Rega=
rds
>> > > >       >       >       > > >       >       >       >       > > Sumi=
tra
>> > > >       >       >       > > >       >       >       >       >
>> > > >       >       >       > > >       >       >       >       >
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >       >
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >       >
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >       >
>> > > >       >       >       > > >
>> > > >       >       >       > > >
>> > > >       >       >       > > >
>> > > >       >       >       >
>> > > >       >       >
>> > > >       >       >
>> > > >       >       >
>> > > >       >
>> > > >       >
>> > > >       >
>> > > >
>> > > >
>> > > >
>> >
>> >
