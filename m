Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62722E336E
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 07:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743579034; cv=none; b=QRwb72Z9UJbC5KBxYTjTPEg4pis8h5A+IpXneIdXShk2CH34K9FWxatP8rca9x8xCZhMvuQcu+dO1WxcrSLLjDHejavqq+JhWyzgFRJt2DX/aNCOYpivzNDvjkcDAF/6mTAZJT96vKHWumoeQNjJh82I/PWKMCZp8HP/MZ70uGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743579034; c=relaxed/simple;
	bh=0mx9UvAtyjC/GQwm5VdARhSTJ97VR+LwOqMhmsQUdcg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xd9rqXr9ocDppiclmG78pOFb11ejbHirvKEfLH+KvmL4eaZZTdmBCczdrC13183WwF3y168HgqdkECu0r+cbPISkdyecdGjpRnXys9dYVDDzRERIAzUDybV0Zye7ksNr8F1KpRvUo+4af4xJzSaS0wI9ZJvLdiD2UMK+7XQB0eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UlqNkgeW; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UlqNkgeW"
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-52446b21cfdso2872535e0c.1
        for <outreachy@lists.linux.dev>; Wed, 02 Apr 2025 00:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743579031; x=1744183831; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gcWd9DSvNdgLjg+rVDnmQae/YnDPZEFlMZADCZBJdzI=;
        b=UlqNkgeWv5bnywG5GxI/+gzwHNsIphgG3J/EemLqW/pB6xWfi7HOUtHLz2vFMBkcnw
         aJTr6jlC+LCDdMyUKnYIejmUX+zANiTga9yoQGqra75oGMjKh7N2zzaR2KGBuHVZGOox
         T8/J3sj79cBAZr0v1n4yVu/sS6ZF7Enyv+Nz9xQC7a7X6JvC4zxg1L1pbT+ib+TdatUR
         IN+xdwXqXYbYToxH/NtkR4l6pgakLOzPC6o0r1QrKAkB5MIVz+/8AXxbKYzJZwwGwp5d
         5flM9RcGT+2E6myFAoX9gz3G/hia9A6Ca8YwYjGhsyHoKrY++OzfOf+j2NyN+GpvKOcI
         GmAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743579031; x=1744183831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gcWd9DSvNdgLjg+rVDnmQae/YnDPZEFlMZADCZBJdzI=;
        b=E5HuCHB4TfljtGAJzQMr9ILaANI3uDKGD62BjH75BL18If5S5VBUVGqlu0YI7q5rD6
         EQuzq/9QeNrzeHRv82oWonEI6EhhBix84BArNHb/UDBP99ame2e6Y/c12xcFP+ovUbll
         5jg+yUEpedw9U9Huh/0no5kdBuX21/kM0JCppkMlepz9uSuypawt1aJ7r3RjHAbmIHQ3
         tYym5TIIYpkzyQNK6rJnm/rsSHxjtZ9pGShgbhIm0I07KQT9QRYAxh9bwJpNW912ezrn
         8x5YnkYnFWsVtcnVMQFZJdQitPSxpx2azY77O3FA2elhPgIVJQYs8Mc715gZIqfFjKAv
         752w==
X-Gm-Message-State: AOJu0Yy63avadkJV/d04vu67k5e4LKnRSCvLEwBmNQ7T0hmhONMauH4M
	ZtdfPOkzePDnrIubbot7Q2ZWEfTz0+4y/F2l3/ILLe14IYDGL5PLbEaaGvp0RxiN2OjE0wBYCQT
	PnBkuTCmENBs/jbs2FHn1t7VqsFjPTTAA
X-Gm-Gg: ASbGncsKMXQvzHJ+qeUeAo5IEC9y8obJ25N+CJQ0R9gW7jycf7njxpIsmmSvFfZAhgk
	bF8mDFBxxY5FOM3ujh+KSGoEiioMlZ+zrJ3R4qKma+MIKeuuzn09D2EpMg+VEjjZ9MqjN/KF0Wg
	jECEGqYILEWHXKy1Oub47g2HsTFE+L
X-Google-Smtp-Source: AGHT+IGIJYo0lFYTO2HyQZsTt5sPvv5JjoOtXgouUGH2t4EKTrmopHTNkEVxF++TdH1xdmXD9600j13TTkab7mDoV7s=
X-Received: by 2002:a05:6122:c83:b0:520:3536:feb5 with SMTP id
 71dfb90a1353d-5261d4e4ac5mr10648817e0c.11.1743579031526; Wed, 02 Apr 2025
 00:30:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr>
 <CADYq+fauoeq0fPbV10d0fwnoOSG7=5-_Gd5jCKuJ-rJmoqMp6A@mail.gmail.com> <39c4d11d-db3d-d954-cc7a-373ab172cbf@inria.fr>
In-Reply-To: <39c4d11d-db3d-d954-cc7a-373ab172cbf@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 2 Apr 2025 08:30:21 +0100
X-Gm-Features: AQ5f1JokGXGeNLyfB_Zc6ZJEyaN9ylslxJusnNPJWMyhl2k7XfbvkB0kNkvnx1w
Message-ID: <CADYq+fZkv4YXbkPgFFbJu_Y67U8=dE52-Bbo6JqwmkQ2+hcYBw@mail.gmail.com>
Subject: Re: patches
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 8:22=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr>=
 wrote:
>
> > Please do you mean we can run some checks on drivers just like check pa=
tch?
>
> Yes.
>
> > I saw the coccicheck binary in the scripts/ directory but I am not
> > sure how to run it
> > on a driver if that is what it is meant for.
> > Could you please provide some guidance?
>
> I previously sent a link to some coccinelle semantic patches that I think
> can be useful for staging drivers.  Just put one in a file, say sp.cocci,
> and then run spatch sp.cocci drivers/staging --very-quiet.  You can also
> mention a specific file.  It is nto necessary to use make coccicheck.

Okay, I already tested this on some drivers previously.
Thanks for the clarity
>
> > > not necessary to send such patches at a large scale.  Working on one =
file
> > > at a time is fine.
> >
> > Also, I would like to ask that when a driver is eventually transformed
> > using Coccinelle,
> > how do we indicate in the commit message that the suggestion and the
> > transformation
> > was done using coccinelle just like we do for checkpatch?
>
> Ideally, you could include the semantic patch, particularly if you are
> makign a patch series; then you can put it in the cover letter.  If the
> semantc patch is quite large, then putting it in an actual patch may be
> overwhelming.  So you could just say Found using Coccinelle.  If it is
> small enough, or can be simplified to be small enough, then it can give
> the maintainer some information about the reasoning that went into
> creating the patch.
>
Thank you very much
It is clear now.

Adekunle
