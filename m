Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906B71F3BBC
	for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 10:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712710; cv=none; b=gT53uqi4JAKs4hhKSOBw3u3zaUCgfPiDAzAft4Ff/G3D0Ln4OPseE9nm0r5XmZiCOU20WvK1dBbqyyWPXNlFzGsHx6EcstONaTOSNaZnNrGI95t8QjKfBiQyx4HYZm5ZGu92EIqeHS9wu8Wp0G5WyFK7scpZLzGoG/qyDaumFyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712710; c=relaxed/simple;
	bh=vj6miHwm576w1MLmAoUQ308ljIuLODsUld7TLskFp8Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hR1UCyRfVinfx6IbLB/6aFCwq+knVadi9ItByGW2FndkcEWJnX1NTP7g/ajopnFke3BaZqQBvVz+T8gRcLI2lgM6Dm4tQz90jHR6iKbfEvIo7oCfrMETDD+q5NDiEQWy6+44WeeW6dNmk2+ZqgJMfLVhjnw49kj6BJ1lKbcp8v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KqBNrJ8c; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KqBNrJ8c"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so9353773a12.0
        for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 03:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744712707; x=1745317507; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNhvJpzmnV29xLDMYS/I2gZ8Jp3BbzjWVhZu+zx0u5A=;
        b=KqBNrJ8cHKjHUGfbcxA58iHHAIMWsWPY+NstqkpuxgyJYRz6nEradXdjbueNiMx18C
         8Amg6dqwcU/rxlM2TEc/gEGsqHySz5lMAJ6aVQpiZsWLVBD/Y6sKf8pHDxHoYEhu0W3Q
         fpY8i3c8ZnJSuvwb2a2eAFPEXV286pihXnQ9Q6h+07cYK2nHrAHk/owIic24zLOzSZOG
         CCjxwsK4G+OimvhqCm71ff4fhr9nbMrqoFeAZaK8PDhJsHE4Zlk0vL6zbq9wPrkVXPb7
         TeC5zHQyfu6JXmTzCYQpYQet2rrCng97lOnnPYd3TwUqe/fytBZQu71/ThjE7ZmCLFnd
         CHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712707; x=1745317507;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNhvJpzmnV29xLDMYS/I2gZ8Jp3BbzjWVhZu+zx0u5A=;
        b=g5lSq7zmB3JoO78CjHKf5qiqyNQ9lQ5LrsUrgqEe4GTxxLBcvuJp+DwFM4eMtfCgjb
         eeWpVkQPQnOTpExyfvirwuiK8z6RCWXi2HVvOjWRlmEq4jKRKKKvQJQ3/YO85IoRkwB6
         VgsRFBO25PfdfNtz2vEDFBcNzjVP2ectONlm8EEp+6QihLZpj64nZd8TB7G/l4QgaERa
         U71uvlXguH4WGXEBPs9GAr34ee8vEFWluJXirs/+MIW7ioYHkKJGgUYEvayMgS+N7O3z
         hv/34uPdFrg3CsWWIDpnXzfGPbhNmkKGqB/8IfKnAzHR9pSL004dXvAxN9zyNBE+9lbv
         xZIg==
X-Gm-Message-State: AOJu0YxY/2NzL1Yae+PcluDzZIHRS2xYkqE86vElIYtljyB2ZBM43+me
	TBRrUrgvyUT/nvBLQ5kE0TjupdGiezZiM12x+t0kGfZhLn1wGwGAUtCZHgBh5KeGsoKNALR/bSV
	bnruWwh8IplY7+49J8v4+W3xwXgk=
X-Gm-Gg: ASbGncuc8sME3CHwwnyMc0U6XZwERSx6Iz9O0aI53w6+6OMvKyg1ATYOfcMR9YdCtIs
	gcTXtXWpxV5fxjvv8836evwneQbblxZVpaDuCiu37aaFP9iQ5NYSlgLhEOpGrMKOy5fNO+KWkHl
	nepr09SiVjVvvRSWjmuhEYxeY=
X-Google-Smtp-Source: AGHT+IEArEK7blpLqx/1cNuL5XakjGd6I532IlkGNl3UbheGjFeb5AIAh3zbW3rdxJD0c71b8LnDJ2kmJblDGP0G+kw=
X-Received: by 2002:a05:6402:520c:b0:5e5:d9e5:c4d7 with SMTP id
 4fb4d7f45d1cf-5f37001efc6mr12647875a12.28.1744712706542; Tue, 15 Apr 2025
 03:25:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CAMyr_b+C3qH2_ob7H2TQ=NTukc8_dpWf4ns1OYDNG95Zo+1P8A@mail.gmail.com>
 <efc078ff-8529-57c6-1ff0-2f1d7d8bebf@inria.fr>
In-Reply-To: <efc078ff-8529-57c6-1ff0-2f1d7d8bebf@inria.fr>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Tue, 15 Apr 2025 11:24:56 +0100
X-Gm-Features: ATxdqUFaxV8iXEBEYmTCjAW-AAdQ2zeeTpbiqobCtGYxfLlENF7DHPXwfV70msA
Message-ID: <CAMyr_bJ86_88ruvcH2_6GWcthNei=r5RYiim7m_SBHXaTEf=eA@mail.gmail.com>
Subject: Re: Setup for sending mail via Mutt
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 10:17=E2=80=AFAM Julia Lawall <julia.lawall@inria.f=
r> wrote:

> Again, please be more clear about what shoud be done.  What page is this
> referring to, for example?

Oh my bad that it wasn't clear, I couldn't use the "make -jN" and
"sudo make modules_install install" to successfully install the kernel on m=
y
Debian based OS, so I found a way around it.

Below are the parts of the page that I think that they could be placed
but it must be
noted that these are for Debian based OS.

Compile the Kernel
make bindeb-pkg
Or for example
make -j2 bindeb-pkg

Install your changes
After running "make bindeb-pkg or make -jN bindeb-pkg", install the
kernel with:
cd ..
sudo apt install ./*.deb

To uninstall the custom kernel -- this could also be placed at the
install your changes
sudo apt remove linux-image-<version> linux-headers-<version>

Richard Akintola
