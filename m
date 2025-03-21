Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95309227EB6
	for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 13:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742562649; cv=none; b=gTunHzGJDOUaDlqcukGUIWSCc9v4fHdiQFIaWDm8W32LSfWXhWvEXtP3WpW2MpQn5lQCVZT7v16zwYfCRLeSHbMU3Mmnp1zz0yKS4MydCgowFaCWmmAIraq2wWbQSWGzAIXI5offHeglpPYXB16q6ZUPAV7a2ZTyfesLsyZEtRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742562649; c=relaxed/simple;
	bh=QlcVfP154dmx/khEf578pD20ZFqg771qH+QGhMSSCh4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lrnp57w4U1V0ld3R4VqmcqdESZ0OfI+j0iYIdYceZjU3fddVoo+ywIvRug1hhchdXuh1/ASS0NYanqStnHa0f/aC6UwyonSgXWPSsB8Pse+Xk9EfPkLKUDTNLZguW56YAZsApZJbCa31KoRBHtQ2QQuY6DyCT/LSah+W7ESBzPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wi1jSOII; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wi1jSOII"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso12664235e9.0
        for <outreachy@lists.linux.dev>; Fri, 21 Mar 2025 06:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742562646; x=1743167446; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X/TiJxb/8rK8h4Hvs7PiD++TVssomNiL2i3GN5RpJrc=;
        b=Wi1jSOIIjUBaua6fFP91lCW0zTADy07kxL/JKcm+X3+aBBXFFQMcdAfp/DT/Jtlbbb
         41mORkxrcer3rkvyXiyC4dKdOCyXzb9kXtGdkq68kFFRl4yYvIspOLJb38KhI1vOIlqn
         4lin6200GZ1SDE9kRjEt2dMOyyZoqmK04Q6ELRr3ok3bnmJwiJzQdOX4IYDdfXpUDPZP
         /4n8XPk1d2ToZB973fEMMK6Lr9NOPPkZThpZkiHLAMrSB0qvZqVN/peyjSNBJOOBpHUp
         LkiKH96hgEcRLaOU36AbpYa+N4R7wRCVo6Tip6ka9QAQPxvBwBxFkphOFhXOqicK29x1
         M9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742562646; x=1743167446;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X/TiJxb/8rK8h4Hvs7PiD++TVssomNiL2i3GN5RpJrc=;
        b=LNLQSicelJg2oHLcH2g9agzWeTpM1vnWp/SgWRQrLiLp9vDHdHemFM5P4xMH3hqRh4
         ZnTy7//EhoeXMZD0urXg2VSCXfGnAcPlnTCXfBAVWRt2S/qTjDJoJVwNZPWu7yWc/Qc6
         X7kO3nnS3S84ERKa9OsM5lbmbIfhSKG43K8roSen0kMmewCEw+AU07WOBjTdLwkajCzi
         4Ml29sUpWhTUHRDi3o/PfS3w7QKUG9+LyYK5sdT+PGAy0/FR6SSR3pySGyeCyJB1rjnL
         9W37+UQvYTEfuPKe7B5GsfWuGPy5DX6im6TO4TmqRwGngD50bOExbVbAG0KoZQYVeMiC
         tPIQ==
X-Gm-Message-State: AOJu0YwUHmH9qqJ3BC6e1QZniIQzMgFHt1/Ui8HO9gR2WaUZB0LuPs0S
	C3ZX+iqeOyGgXAJqMqdkGNXRlYFLn80MO0YPK5CjPqv7IpuETu+tofaNodOXySJ6mTc4Han9/6o
	Y+Ffy5JU36LUZUBAH8GjAZvopkDV8FDYv
X-Gm-Gg: ASbGncsweYU8i+mQKGcPM69tFEArkL/CtTS9Eu1caLWfe/Ytq5+H3TGDWS/Dr8PRJro
	SsTVwNAuCTbStVJCe89IZsa/A+HKtTWESAXw+jBA55uWGT6S78H4BTsp+8HeZgQRbYOWpw30HCs
	Qzgq4TzTx5gOvYU5G867Wpnl6uQwBV
X-Google-Smtp-Source: AGHT+IGPfy0XJArjtt7fxF0WySNYRUJ0Ixv363wwSXd4tBBXrc/3QYOUwn9HTt4vixNhVpKZIJ+TKWWC1T1G2OFCBVE=
X-Received: by 2002:a05:600c:35ca:b0:43c:fc04:6d48 with SMTP id
 5b1f17b1804b1-43d50873ee8mr32808995e9.0.1742562645531; Fri, 21 Mar 2025
 06:10:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <18312c4a-13ec-d7b6-d5cf-e5fd24355ee@inria.fr> <CADYq+fYGgssZ36=dCcvyZtf7LV1uR-4G9gSA7KQ7xz1tPBbujA@mail.gmail.com>
In-Reply-To: <CADYq+fYGgssZ36=dCcvyZtf7LV1uR-4G9gSA7KQ7xz1tPBbujA@mail.gmail.com>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Fri, 21 Mar 2025 14:10:37 +0100
X-Gm-Features: AQ5f1Jow4suSMcTr58ACTWrRKpPUC_WEwyA6HxexZY3aSnH79ufzYk4V1BTCgqk
Message-ID: <CADYq+fbxzMXbVXG2ESpw-EfxqsBMhxEPFC0hT6U=dVuoNo07dw@mail.gmail.com>
Subject: Re: status?
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 21, 2025 at 12:53=E2=80=AFPM Samuel Abraham
<abrahamadekunle50@gmail.com> wrote:
>
> On Fri, Mar 21, 2025 at 12:40=E2=80=AFPM Julia Lawall <julia.lawall@inria=
.fr> wrote:
> >
> > Hello all,
> Hello Julia
> > How are things going with the tutorial?  Any successes to report?  And
> > roadblocks to overcome?
> On my part, I have been able to successfully clone, build and install
> the kernel from Greg's staging tree.
> I have also modified it by adding the print statement into the kernel
> log in the psmouse_probe function in the psmouse-basic.c file
> in the drivers/input/mouse directory. I have also been able to see the
> message when I reboot the newly modified kernel and use dmesg | less
> Surely I will send a patch soon.
>
> Thank you for checking in Julia.
>
> Adekunle.

Hello Julia,
Please I just want to be sure you can see my message to the list also.
