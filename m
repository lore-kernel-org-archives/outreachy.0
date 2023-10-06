Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5338FC157
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 14:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BMydlykN"
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso25075351fa.1
        for <outreachy@lists.linux.dev>; Fri, 06 Oct 2023 07:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696601843; x=1697206643; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oM9Y7gZkPU8xGgywfd0LLnyAyNz15P+WCn8/1fePzQc=;
        b=BMydlykNmJzOWaXGENSgDsT7vilk1pfMBMYXrxqi96ghclN38yupX+ED/4getQv9IL
         Pg13AkmXEnHC7Dq2JKBDNrD9IV0RARHdcIjsCYJYyQdQ0c9qDHru0uHC7eisTrhkqPv1
         nkcYkE52RFRhsSSxF0XNZ94ue/sv0sED+KgrAkpx6f4ls7bI/cCC6TGZc7p94d8QZesE
         LTgWTOkpRWXG3dyRATKWkj52jti4ynUSeDcGGBhQYbbZxIE8WuBSbznBTWWzbp+xrRoC
         YS+zfAUPACX7EkCXrMkTKagbojI02dD1sKtm35ps+BJMm1fwOkeCw5BwlQZqgkWAlm0w
         NoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696601843; x=1697206643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oM9Y7gZkPU8xGgywfd0LLnyAyNz15P+WCn8/1fePzQc=;
        b=LTI08C/uza7u2l5+UeBfHlp0uUhpENIyHZXuiT/aGiRL3QFn06/MrO4LCfUH5taIX9
         EyMoz8iUobzjv+Z1OkP4Mf3oa5x3jQoovFmO5fpKMWRTCaIqcxJ+iDUYqcNs/nOqtnEK
         Ze0Q/xD02gYXWboEmGOOHRSrL/7HN51TF61FZT9dFujqswp/A8OtDmwVZUXZHhmbjyEO
         D+1RPRrhOKhfuZNwJzflAvMVlqLMVpaVLoq86p2ZnzjPlF/8okHF2q/2oVlAtpnAXvDG
         YinRB+2F8Ao0zRmjrrm8QGrIZ30VIcrMiQc0slxicYhqe3Dgt7hXz7uM++OA1ovfKxgb
         MS0g==
X-Gm-Message-State: AOJu0YzlYA57MF3i3Baht1tSr61YYh7GdyPiOjXEJ/6Z8n9DUcr4bsm4
	Gj8fPVDPppKZipbOpIFhxDLIIR+pcg2oird5m5c=
X-Google-Smtp-Source: AGHT+IG05HOsgrN4u35F6Bb3UihW/yf7/ywcuD6v7laXEMB3s/pmPrut169KcI/oiZDn5rzAEKd5d1L2vNKJ0lCuJr8=
X-Received: by 2002:a2e:b178:0:b0:2b9:4413:864e with SMTP id
 a24-20020a2eb178000000b002b94413864emr7355713ljm.53.1696601843101; Fri, 06
 Oct 2023 07:17:23 -0700 (PDT)
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
In-Reply-To: <ZR+q/KtzEQ+FNw1l@ashyti-mobl2.lan>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Fri, 6 Oct 2023 15:16:45 +0100
Message-ID: <CAKrXSsaO3=b5f0YOBhRXn04j8jj5oL5WP4NXvCckcnJGu9++jQ@mail.gmail.com>
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
To: Andi Shyti <andi.shyti@intel.com>
Cc: outreachy <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Andi,

Thank you for your response. I have found a resource online that will
guide me through the process of dual-booting Linux on my machine. But
I have another question, the project's system requirement says 50GB is
recommended for the hard drive space by 5GB is the minimum. I am only
able to partition 27GB on my current hard drive can it still work?


On Fri, Oct 6, 2023 at 7:40=E2=80=AFAM Andi Shyti <andi.shyti@intel.com> wr=
ote:
>
> Hi Gilbert,
>
> please, do not remove the mailing list from the Cc.
>
> For such cases there is never a single solution and I'm able to
> provide ony my experience. Besides, I'm not experienced in VMs.
>
> The point of reaching a community throught a mailing list is that
> you can collect a wider range of thoughts and opinions.
>
> Please, keep asking questions for clearing out your doubts.
>
> Andi
>
> On Thu, Oct 05, 2023 at 06:27:08PM +0200, Andi Shyti wrote:
> > Hi Gilbert,
> >
> > On Thu, Oct 05, 2023 at 05:15:02PM +0100, Gilbert Adikankwu wrote:
> > > Hello Andi
> > >
> > > I looked up my system properties and I have an Intel integrated GPU: =
Intel (R)
> > > HD Graphics 4400.
> >
> > Excellent!
> >
> > > I will go with your advice and try installing natively Linux.  I usua=
lly have
> > > been avoiding this process for a long time because I am scared of mis=
takenly
> > > wiping my computer's memory in the process but I guess I have to take=
 the risk
> > > now =F0=9F=98=85
> >
> > you could even use an external hard drive if you are afraid to
> > wipte your computer's memory, but it's going to be a bit slower.
> >
> > Let me know if you need further help in this process.
> >
> > Andi
> >
> > > Thanks
> > > Gilbert
> > >
> > >
> > > On Thu, Oct 5, 2023 at 3:06=E2=80=AFPM Andi Shyti <andi.shyti@intel.c=
om> wrote:
> > >
> > >     Hi Gilbert,
> > >
> > >     On Thu, Oct 05, 2023 at 02:36:03PM +0100, Gilbert Adikankwu wrote=
:
> > >     > Hello Andi,
> > >     >
> > >     > Thank you for your reply.
> > >     >
> > >     > So I use WSL2 as my Linux environment on a Dell running Windows=
 10
> > >     >
> > >     > This is what I got when I ran the command lspci
> > >     >
> > >     > 4234:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio file=
system
> > >     (rev 01)
> > >     > 495f:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio file=
system
> > >     (rev 01)
> > >     > 87ba:00:00.0 System peripheral: Red Hat, Inc. Device 105a (rev =
01)
> > >     > e8a6:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio cons=
ole (rev
> > >     01)
> > >     > f883:00:00.0 SCSI storage controller: Red Hat, Inc. Virtio file=
system
> > >     (rev 01)
> > >     >
> > >     >
> > >     > Seems like my system doesn't meet the requirement, is there a w=
orkaround?
> > >
> > >     doing kernel development on a virtual machine is challenging and
> > >     I'm not sure you can run i915 on a VM.
> > >
> > >     I'm not a Windows user, but I guess, from the control panel you
> > >     should be able to see the graphic card you have. Try to look on
> > >     google, I'm sure you'll find plenty of answers.
> > >
> > >     If you have an Intel GPU, then you could consider installing
> > >     natively Linux on your machine in dual boot with Windows. That
> > >     would make your life so much easier.
> > >
> > >     Andi
> > >
> > >     > Thanks
> > >     > Gilbert
> > >     >
> > >     >
> > >     >
> > >     > On Thu, Oct 5, 2023 at 1:51=E2=80=AFPM Andi Shyti <andi.shyti@i=
ntel.com> wrote:
> > >     > >
> > >     > > Hi Gilbert,
> > >     > >
> > >     > > > How do I check to see if my system meets the system require=
ments?
> > >     > >
> > >     > > If you run lspci, you should check that your VGA controller i=
s
> > >     > > Intel.
> > >     > >
> > >     > > E.g., in my current laptop is:
> > >     > >
> > >     > > $ lspci
> > >     > > ...
> > >     > > 00:02.0 VGA compatible controller: Intel Corporation TigerLak=
e-LP GT2
> > >     [Iris Xe Graphics] (rev 01)
> > >     > > ...
> > >     > >
> > >     > > Another way is to check the modules running in your PC with
> > >     > > lsmod. The module (i.e. the driver) is called i915. In my lap=
top:
> > >     > >
> > >     > > $ lsmod
> > >     > > ...
> > >     > > i915                 3756032  19
> > >     > > ...
> > >     > >
> > >     > > Besides, i915 will be the piece of software this project is b=
ased
> > >     > > on.
> > >     > >
> > >     > > Let me know,
> > >     > > Andi
> > >
