Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D72219E0
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 06:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744007550; cv=none; b=jdqHnkHo9dqmqavUgIOi3Xq13urxe8rFRnCTJ38JV3YTZfOjeb5CFNA/A9RyUPYBA8ip9zISa8dZ8q7jTwGNhyn5OYRlriGU8Iy1bWWZYVVkjlHC6kBRgJpg2NJvQpT5EIxiCzrAoc14zZHFoQydfHRw9d7BeFBg/Tjt9sC7Jx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744007550; c=relaxed/simple;
	bh=oblhWxgwN0vg6hjBPTixU+LjIBwj2tbuN66nuPJZqEU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jpis2R9aVjyco0MHT+zGuaY1d+jA6baRewK35uLt1DQbwuEnC5p0rT0H8eCvWzc88Q3BKmLjEmk4DUKLCnxQEjUeRDrZ380ogiT7BH/ARUmmLXsuRSotv5Lmu0jYjf20DiLz6AnL/T1kiQN9pKIErYtrb8Si9PIv4A3oUewBqLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Iy5gRQvC; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Iy5gRQvC"
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-525b44b7720so1762530e0c.0
        for <outreachy@lists.linux.dev>; Sun, 06 Apr 2025 23:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744007548; x=1744612348; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OAsH6xyP+BlqJ30TbZINVs3gH4R48kHTKbHXFCB8J1w=;
        b=Iy5gRQvCK5OxE8yfc7H6t2BSePnaSc0f3IyEz083z5gIcHtoBsfYjxT1sl+jZ0O4uO
         C7bBvd3+P458JhZ9CCOBcjbpmu8D2ynjOFiu472bj4WrPykLq/7QPF2PkVzzu5x98Fzn
         MwUA5EqSVaw2jIldE8V1Xq/+7U1KK/hFTuwN238q5vWXIjYV2JEQj/CfHB8J3RdAbV5Q
         TjOMaAEjRBmFFympOOmbFPm7L2UYteqWu1zP+Q0KlZJO/s8/xZ2z5USMmuJuzcxuvTeF
         lolZQSENF3hl7vUvohM7u4cM1TN3Lf1a/K/sW7RRxil7aUYPXeh9lVVHM9WyypdA3Q+w
         g/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744007548; x=1744612348;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OAsH6xyP+BlqJ30TbZINVs3gH4R48kHTKbHXFCB8J1w=;
        b=QwPLfxbjJmaz0xRAry9IXf6CjGM5dwwEdydJMVZkD/PeWpjqN38uVAFNoMI7Dgz7uT
         xi4Ve+AbtItuKNtdoGC6Setej+XkrhJBgTlWBIU1f50Z5pR8xkPTbpt4ETe46nfTAvvA
         G0nAnfA2kA3jj/97ioFtyNM6fsApYafo7Et4R13D6/i9VMMTSI/BDgGNGWTQDFRMaKM0
         Xixih+Q1bGS66qyS708N21/agM+8SAY4GzmLmAE8vgu5n1oaBmwsreNtJtgUtxQxX/W0
         wQ/rXPzYYMhq2uUqq0NwU6iPz2mSG1xBXWFf//tqfgPjHogjYhQbSZ6HS/aaUDRlqIWS
         PKrw==
X-Forwarded-Encrypted: i=1; AJvYcCVLkxHsIx/r6u1V5XjMiETo/f2DlTTAY534PbY2HjNOoPln5XNXo7zgmRgSsu2XECKmmkn1thngEYQ=@lists.linux.dev
X-Gm-Message-State: AOJu0YzC/Twtji5ObesADCQHkLm+xJVPu5XfkMyBhuoCeR06LkFsMcv1
	roWpOvMMbeZT+rXSFHhnkpUpM6N52TRAA+4DuEdtkeA06MEnYgomvDb76aOFrgD2ZUiKFXFSQXX
	IgiBKF9tlbV+Pbuh+lUmK6izx+qo=
X-Gm-Gg: ASbGnctavA2eaGeMYKO0YVnndrJTwpSWXZfnfg6Ln1rbmkflcEAGjBJd6/fC651wYtq
	Nj9m+sVkfqNx2P6Q5cEjkhwWs596yCHckFLhQCzPBKyFwLN4X518t5156wKgpxy9STPFX6h/wKA
	3w0tjXkjYhFZiMA+tvzjkS245hNxjDbx2p6oCy6w==
X-Google-Smtp-Source: AGHT+IHs9ScGvj4OWEx4v3durvZDgeZiAiY8aul09WdPxrtj1Sd4XcK36me3zb0C/0zjPSYv6v57tKmF/FzwQVIxNQU=
X-Received: by 2002:a05:6122:f09:b0:527:67db:9cb2 with SMTP id
 71dfb90a1353d-52767db9cfamr7378492e0c.4.1744007548058; Sun, 06 Apr 2025
 23:32:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <Z/McCdceSpyL2A2p@ubuntu> <2025040719-utter-hydrant-b241@gregkh>
In-Reply-To: <2025040719-utter-hydrant-b241@gregkh>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Mon, 7 Apr 2025 07:32:18 +0100
X-Gm-Features: ATxdqUHlpQO0oh2sTMnp5Q5lmbaJmnkyhUOvFly-RL_CnRtc-y1iO9UEAGk3jdw
Message-ID: <CADYq+fZzzJTEvhbO9y=i2DA7fH_99ofcG-PZHP_7LR1pyhympA@mail.gmail.com>
Subject: Re: [PATCH v3] staging: rtl8723bs: Use % 4096u instead of & 0xfff
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev, andy@kernel.org, 
	dan.carpenter@linaro.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 7, 2025 at 6:10=E2=80=AFAM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Apr 07, 2025 at 12:27:53AM +0000, Abraham Samuel Adekunle wrote:
> > The sequence number is constrained to a range of [0, 4095], which
> > is a total of 4096 values. The bitmask operation using `0xfff` is
> > used to perform this wrap-around. While this is functionally correct,
> > it obscures the intended semantic of a 4096-based wrap.
> >
> > Using a modulo operation with `4096u` makes the wrap-around logic
> > explicit and easier to understand. It clearly signals that the sequence
> > number cycles though a range of 4096 values.
> >
> > The use of `4096u` also guarantees that the modulo operation is perform=
ed
> > with unsigned arithmetic, preventing potential issues with signed types=
.
> >
> > Suggested-by: Andy Shevchenko <andy@kernel.org>
> > David Laight <david.laight.linux@gmail.com>
> >
> > Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
> > ---
> > Changes in v2:
> >       - Changed the commit message to a more descriptive message which
> >       makes it clear why the patch does the change.
> >       - Changed the subject title to include `4096u` to show that an un=
signed
> >       module is used.
> > Changes in v1:
> >       - Added more patch recipients.
> >
> >  drivers/staging/rtl8723bs/core/rtw_xmit.c | 6 +++---
>
> Any specific reason you did not include the staging mailing list like
> scripts/get_maintainers.pl asks you to?

Thank you, Greg.
I have sent an updated patch.

Adekunle
