Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3896020E3
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 09:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lK/NUpy+"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2c038a1e2e6so8991521fa.2
        for <outreachy@lists.linux.dev>; Thu, 05 Oct 2023 02:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696499908; x=1697104708; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdwQw+Ju44XQQqlyOAPffAUOFXFWZFinFrWH5k0p/sw=;
        b=lK/NUpy+RE1pqKJ+ks32VBEYABZ1SoW1L65xU2g2ZLjhyDZPkbz/0Zen5/7pzLl0iM
         SCYABOnAv/XRwFdlv+WHRUFOkaVlzUPvZMy7n/0mv8Qn4gc2+WxtaAn7llNRvgzF2HRr
         7mOWw+0JFL8jZO273U2g4SPtSVi/xF8IN4G03MmrWW/wtT+1smxL6IDhy9to7nzhtn1M
         97T5EcXLsLl6EOd1anFLROtYKU1FKAj4GJ1L5LT7+KV8eng8cRS7rlSUeHXYDPq0SnMK
         tyMZX/tUBq8Tv2zmO9YeDlBEILaTyXHCUn1uY0rYWylMATVFxEDBnpuD7uVac93x4xrG
         uJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696499908; x=1697104708;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VdwQw+Ju44XQQqlyOAPffAUOFXFWZFinFrWH5k0p/sw=;
        b=BNhKvnmQp8usv6waSR38BBa2R+GNhw2kLhFd0GytUgaZlradlBVIHBhGtj0Hajd4D7
         DpolJUPCMmfMRQHDaSTTviAu2cwUap/W2AnxL0a12ujQpcvRy+yxqB6LS3N+mDh6WmC1
         W8LtkWxrWCKdt2iNoNwXpD2qb4hxyRdEYW5yWpKeT9Xfq98Q8u3VZfuNAnwu/clCYKba
         g/L7dWyudX9FK6YF7P5e9D1JTJq9HoMVce+FmitWeM0LHu355fne8bTZdub3bMioUjtp
         rcUvwMtZOpuRBpMVGME17aHItJJGf95pKOEJIgZcO61xFIc38hw7UoXV+j/LDLIPoDt5
         +YEw==
X-Gm-Message-State: AOJu0Yw5oul4rG9iM3D9K0636sdYvXWb8lhawvLbkg3FuRv5gSVPb/dp
	M709uxJeavfx4oHE4QgDFGs6eekwkSaU7hd0tI3xNWJHCuQqgg==
X-Google-Smtp-Source: AGHT+IFaXrUAIC8sTRw5CXVTaBOvjHwg6rbQmIEYLWMyPHicvgtuaZ+RtKXyJJPmBJe5hiJf7CrNVOxKl3NVVxgh950=
X-Received: by 2002:a2e:8310:0:b0:2c0:a99:68e7 with SMTP id
 a16-20020a2e8310000000b002c00a9968e7mr4245385ljh.19.1696499907611; Thu, 05
 Oct 2023 02:58:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051126480.3375@hadrien> <CAKrXSsZxnjup4VBdXYgrndEatoQY_jxKB+iN7fWReSDOa8V=pQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310051145160.3375@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2310051145160.3375@hadrien>
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Date: Thu, 5 Oct 2023 10:57:50 +0100
Message-ID: <CAKrXSsaBNZd6MJBB2JQmTdhNR=udoWtnO=PoRA7AGXKvqbiDHQ@mail.gmail.com>
Subject: Fwd: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Julia Lawall <julia.lawall@inria.fr>
Date: Thu, Oct 5, 2023 at 10:45=E2=80=AFAM
Subject: Re: [Outreachy Applicant] Introduction and Interest in
Contributing to Linux Kernel
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>




On Thu, 5 Oct 2023, Gilbert Adikankwu wrote:

> Hello Julia,
>
> Yes, I have been looking at the tutorials... The questions I intended
> to ask were already answered in response to the other Applicant
> Isoken. However,  I want to know what this line in the setup tutorial
> mean:
>
> "Do not forget to rename your kernel version "CONFIG_LOCALVERSION" in
> the new .config. If you skip this, there is the risk of overwriting
> one of your existing kernels by mistake."
>
> My understanding is that I can rename it to whatever name I like, is that

Yes, whatever you like.

julia

>
> On Thu, Oct 5, 2023 at 10:27=E2=80=AFAM Julia Lawall <julia.lawall@inria.=
fr> wrote:
> >
> >
> >
> > On Wed, 4 Oct 2023, Gilbert Adikankwu wrote:
> >
> > > Dear Outreachy Linux Kernel Community,
> > >
> > > I am Gilbert Adikankwu, an Outreachy applicant for the December Cohor=
t
> > > 2023. I want to use this medium to introduce myself to the community.
> > >  As a Linux user,  I appreciate the quality work that has gone into
> > > making Linux a rewarding experience. On this note, I'm interested in
> > > contributing to the Linux Kernel. Specifically, I want to contribute
> > > to the Linux Kernel through the project titled; "Improve i915 sysfs
> > > interface implementation". I am excited about collaborating with
> > > community members on this project.
> > >
> > > I am eager to learn, contribute, and be part of the Linux Kernel
> > > community's journey. I'm reading the first patch tutorial to learn ho=
w
> > > to push my first patch. Any help you can offer me to make the process
> > > easier is welcomed.
> > >
> > > Thank you for your time and consideration.
> >
> > Have you had a chance to start on the tutorial?  Any questions?
> >
> > julia
>
