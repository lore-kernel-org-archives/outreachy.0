Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD46C18632
	for <outreachy@lists.linux.dev>; Sat,  7 Oct 2023 21:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YFWEnG/M"
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2bff936e10fso52565951fa.1
        for <outreachy@lists.linux.dev>; Sat, 07 Oct 2023 14:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696715297; x=1697320097; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nckE8/WicqEH2fK+aE87ryaIr39PKRnYKCAdLBipe5s=;
        b=YFWEnG/M9+2wQx/O21AsVpCvTpX7JJDJ2kOyseNvqCy4dhTcFtQlK0RkUnhecvyfzz
         g6C99A5nJeIi8+xCrzpbExi4COy8nZKyypeaM43P+FMGMEGgUqTj2gHHlXUn34dA+vLC
         mGVw4in4MA+b0QqgozFFnUkfSzvVKPTPNtZvRK/LKkDguAu6zZqv7Lvp4pNaDL+G3ooL
         pXDDG3nqBgBXveLwBVX59en+8x8rLc2QlC2YtVgqf9VsBkIHQ1G6bYkeu1Nx+8CuryNC
         ZVaWMl/97LgrWL04ZERD30/HcfQ0Xim4oQGUzbWNvM0LzgPZNJiWgtjyslPMkIUOXfhQ
         tiyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696715297; x=1697320097;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nckE8/WicqEH2fK+aE87ryaIr39PKRnYKCAdLBipe5s=;
        b=mIk1Tmcg941eixzygOXvvYteYEEYXliFn9PBNsAfJwiC88yeMWZbLKn0GqJBgEINeA
         QpSls6vH1xzuVxwSonggYl29RWETpp/m6m28vgkC0jTfhmiq0w33XZA9ofd+AC+CkO84
         6xaKN8e/6ptjOyZZKW9YUFjuecCplANq4FIyrHi8Gk351uyHtKEJup8bGaIks++FL1kw
         x+Zqrp8DYU0Z1Bvhr8kkIXoz3wljB3QJgfgFo3ps9uvUcyd4253x1U5mrOi7iZh/jJWQ
         OmZMj3ZX909LQVy97BT29HPIF6cVaIn1/lTSvC5d7qarb9w1vWOVMoCfiu+NWMzNhXaD
         RxyA==
X-Gm-Message-State: AOJu0YxNetjZWNAmSbYoK68ofoQueStzM3JeNRDciX4Es7k7uc2hrem4
	k8WyQGYsSIkycWSfGR7bJm1jkpmyhrtAI8nIMJA=
X-Google-Smtp-Source: AGHT+IFyIedItFVGr4DWqW7CPzG2vSoiyw6InqQ4GT46JkUp1U4YX3zNjZtCnrNtbUCzVm6+OWfJ27Yk1gsrf+1eISs=
X-Received: by 2002:a05:651c:230b:b0:2be:58a8:1ac with SMTP id
 bi11-20020a05651c230b00b002be58a801acmr6042876ljb.1.1696715296313; Sat, 07
 Oct 2023 14:48:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
 <ZR0NRvHkjcWIv9+f@ashyti-mobl2.lan> <CAKrXSsafYQSb2YH128da-+CcnxejZ4V=n-xO5UDmTJLUk_zG8A@mail.gmail.com>
 <ZR6xRGp4uD+jbzJ/@ashyti-mobl2.lan> <CAKrXSsbRm9-nmZNj_i8DkW=a=px4DL_bt=ggAfiEnMjHVs3HqQ@mail.gmail.com>
 <ZR7C3u2IdLt3IVlV@ashyti-mobl2.lan> <CAKrXSsaC-3c1knSmGbSL6ivkJg8QgDJv7=j4C6ffB6Mjs5PRKQ@mail.gmail.com>
 <ZR7j0Vc0y/K0arAF@ashyti-mobl2.lan> <ZR+q/KtzEQ+FNw1l@ashyti-mobl2.lan>
 <CAKrXSsaO3=b5f0YOBhRXn04j8jj5oL5WP4NXvCckcnJGu9++jQ@mail.gmail.com> <ZSBrsmdAK9Q9DawP@ashyti-mobl2.lan>
In-Reply-To: <ZSBrsmdAK9Q9DawP@ashyti-mobl2.lan>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Sat, 7 Oct 2023 22:47:39 +0100
Message-ID: <CAKrXSsZqwcwcgXfEbd+9wKjRWCxMfWf+j5=dXCgg9VVvGYSqkA@mail.gmail.com>
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
To: Andi Shyti <andi.shyti@intel.com>
Cc: outreachy <outreachy@lists.linux.dev>, Julia Lawall <Julia.Lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Andi,

Thank you for your response. I ended up searching "how to increase the
shrink volume of my hard drive" and found resources that helped me
increase the volume of the partition to 100GB. I'm sending this email
from a natively installed Linux OS on my computer.

Thanks
Gilbert

On Fri, Oct 6, 2023 at 9:19=E2=80=AFPM Andi Shyti <andi.shyti@intel.com> wr=
ote:
>
> Hi Gilbert,
>
> On Fri, Oct 06, 2023 at 03:16:45PM +0100, Gilbert Adikankwu wrote:
> > Hello Andi,
> >
> > Thank you for your response. I have found a resource online that will
> > guide me through the process of dual-booting Linux on my machine. But
> > I have another question, the project's system requirement says 50GB is
> > recommended for the hard drive space by 5GB is the minimum. I am only
> > able to partition 27GB on my current hard drive can it still work?
>
> I don't know, I feel like nowadays 27GB are a bit tight.
>
> The 50GB we wrote was arbitrary... if you are able to fit things
> in 27GB, then OK... consider also that after the compilation, the
> kernel directory and other tools become a bit fatter.
>
> Andi
>
> > On Fri, Oct 6, 2023 at 7:40=E2=80=AFAM Andi Shyti <andi.shyti@intel.com=
> wrote:
> > >
> > > Hi Gilbert,
> > >
> > > please, do not remove the mailing list from the Cc.
> > >
> > > For such cases there is never a single solution and I'm able to
> > > provide ony my experience. Besides, I'm not experienced in VMs.
> > >
> > > The point of reaching a community throught a mailing list is that
> > > you can collect a wider range of thoughts and opinions.
> > >
> > > Please, keep asking questions for clearing out your doubts.
> > >
> > > Andi
> > >
> > > On Thu, Oct 05, 2023 at 06:27:08PM +0200, Andi Shyti wrote:
> > > > Hi Gilbert,
> > > >
> > > > On Thu, Oct 05, 2023 at 05:15:02PM +0100, Gilbert Adikankwu wrote:
> > > > > Hello Andi
> > > > >
> > > > > I looked up my system properties and I have an Intel integrated G=
PU: Intel (R)
> > > > > HD Graphics 4400.
> > > >
> > > > Excellent!
> > > >
> > > > > I will go with your advice and try installing natively Linux.  I =
usually have
> > > > > been avoiding this process for a long time because I am scared of=
 mistakenly
> > > > > wiping my computer's memory in the process but I guess I have to =
take the risk
> > > > > now =F0=9F=98=85
> > > >
> > > > you could even use an external hard drive if you are afraid to
> > > > wipte your computer's memory, but it's going to be a bit slower.
> > > >
> > > > Let me know if you need further help in this process.
> > > >
> > > > Andi
> > > >
> > > > > Thanks
> > > > > Gilbert
> > > > >
> > > > >
> > > > > On Thu, Oct 5, 2023 at 3:06=E2=80=AFPM Andi Shyti <andi.shyti@int=
el.com> wrote:
> > > > >
> > > > >     Hi Gilbert,
> > > > >
> > > > >     On Thu, Oct 05, 2023 at 02:36:03PM +0100, Gilbert Adikankwu w=
rote:
> > > > >     > Hello Andi,
> > > > >     >
> > > > >     > Thank you for your reply.
> > > > >     >
> > > > >     > So I use WSL2 as my Linux environment on a Dell running Win=
dows 10
> > > > >     >
> > > > >     > This is what I got when I ran the command lspci
> > > > >     >
> > > > >     > 4234:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio =
filesystem
> > > > >     (rev 01)
> > > > >     > 495f:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio =
filesystem
> > > > >     (rev 01)
> > > > >     > 87ba:00:00.0 System peripheral: Red Hat, Inc. Device 105a (=
rev 01)
> > > > >     > e8a6:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio =
console (rev
> > > > >     01)
> > > > >     > f883:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio =
filesystem
> > > > >     (rev 01)
> > > > >     >
> > > > >     >
> > > > >     > Seems like my system doesn't meet the requirement, is there=
 a workaround?
> > > > >
> > > > >     doing kernel development on a virtual machine is challenging =
and
> > > > >     I'm not sure you can run i915 on a VM.
> > > > >
> > > > >     I'm not a Windows user, but I guess, from the control panel y=
ou
> > > > >     should be able to see the graphic card you have. Try to look =
on
> > > > >     google, I'm sure you'll find plenty of answers.
> > > > >
> > > > >     If you have an Intel GPU, then you could consider installing
> > > > >     natively Linux on your machine in dual boot with Windows. Tha=
t
> > > > >     would make your life so much easier.
> > > > >
> > > > >     Andi
> > > > >
> > > > >     > Thanks
> > > > >     > Gilbert
> > > > >     >
> > > > >     >
> > > > >     >
> > > > >     > On Thu, Oct 5, 2023 at 1:51=E2=80=AFPM Andi Shyti <andi.shy=
ti@intel.com> wrote:
> > > > >     > >
> > > > >     > > Hi Gilbert,
> > > > >     > >
> > > > >     > > > How do I check to see if my system meets the system req=
uirements?
> > > > >     > >
> > > > >     > > If you run lspci, you should check that your VGA controll=
er is
> > > > >     > > Intel.
> > > > >     > >
> > > > >     > > E.g., in my current laptop is:
> > > > >     > >
> > > > >     > > $ lspci
> > > > >     > > ...
> > > > >     > > 00:02.0 VGA compatible controller: Intel Corporation Tige=
rLake-LP GT2
> > > > >     [Iris Xe Graphics] (rev 01)
> > > > >     > > ...
> > > > >     > >
> > > > >     > > Another way is to check the modules running in your PC wi=
th
> > > > >     > > lsmod. The module (i.e. the driver) is called i915. In my=
 laptop:
> > > > >     > >
> > > > >     > > $ lsmod
> > > > >     > > ...
> > > > >     > > i915                 3756032  19
> > > > >     > > ...
> > > > >     > >
> > > > >     > > Besides, i915 will be the piece of software this project =
is based
> > > > >     > > on.
> > > > >     > >
> > > > >     > > Let me know,
> > > > >     > > Andi
> > > > >
