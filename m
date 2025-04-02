Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DD01F09B7
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 20:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743625590; cv=none; b=pZEn4ebQG7hJkb04pP+iRGxHByQRAkPt52hxi1F3KOW45WC996b8UcKKVngTKQw6mLyPOdU2UAUfRlXM6XWvONc/CULdTbu64ijRmGQ5MAivuqm2d7G/81/RIhO4f88b3W/1QnUOKto912XHB0fuxkPrSW/4oly9eEhqnwvC38E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743625590; c=relaxed/simple;
	bh=tqhvsI7M6zu5H/d4RC6oKcSwiESTyItJImU6Uu2AyEM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OJhqQV5wwNODpFUW+x2QPLNr27YNpcCkUEybDe+uhF5ZnCctCWjEWSDh4H8rwyikSWcnqs7vMOOM3hnomKqmzAxGa5M9Q1QU/4WYk98x6rWJAuLEtzd6nJ+zmUZLkSrvcMrsHWYMjWalLgBTVmttviuVgWM6KyM9RIwavn0FzKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BTizzUON; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BTizzUON"
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5240764f7c1so102325e0c.2
        for <outreachy@lists.linux.dev>; Wed, 02 Apr 2025 13:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743625588; x=1744230388; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8wPFPgt/bI1Ab8FIOJQ6VrIdMtAfZfghmoT30YYZQ0=;
        b=BTizzUONFqh55jwux5iPBj2uD/1oJWt0QXXSoyDjVmo/nOU/kM5ZLHVLj5ZrUv3m8M
         SbCl01lmSwiOkgMJLlzwDfswaejLYmrKohuJJ+yoKmkoGDlVkm8D2gm//w1TtZvs6QrL
         LCbkk0N/SD25PzSvm1vAV6TgLExYp6Er1TdJD2nMz3E4lPqp94JM02eBiBMzY5W/IHN4
         fKIeYij9iQjXKzRLIDlk1WlyL6k5LB8BesX7YGa919WN9e8rMJLJZcipBq/Ul6VXGdVs
         eAXo6Qdfl+QRJf948bLGJDSh2x9kHOtUxuMnNyQ8kT5jinMy9c6v6WzSkz8iIGh1prbg
         vcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743625588; x=1744230388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C8wPFPgt/bI1Ab8FIOJQ6VrIdMtAfZfghmoT30YYZQ0=;
        b=ZYty8QOjElFltrOJd52EZJ+muwINnl86IL0x8jJXAyUjcbtu5SzCOIIJlHQKRlz9If
         UDvEmhQNDR2phdcsrI5XdhwuQKXIr95+YVu66ZqFnr5xaufB7Cm3T7klGcKbpUrEJYFR
         rqvHDjFJ3b2cEQ6vW+VKwyTUAJK6sZ0+/+/Je7Q4h9Oz01O1LmOIvL2oPZn7IJWz6C2C
         dPvNyKxfTTN9CP9fWDtYobsEkXuY7x6eVqW0+4sFz9vfEwMonfkFGvBX1ems9eBwxHgC
         +F3xYhIydRm/6aUFkoJ8bh8oQK475juL+ScNOlj2yImaaI4dALvfAjd4QS9fDJ8ruzzQ
         IdcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZsUqqR3GHhftTi1YR2aueaXAUlW/zfVH4QKkc3iBq9ogVntWWUaFoHJBXWVi5W6ot8aPkHZcAVRo=@lists.linux.dev
X-Gm-Message-State: AOJu0YyJtXXbaPoiymd+gKjdoPMZKKozIWdw65qfxjPfkywoSiID13SZ
	7WqX3IuSsLV1cVzXBG2yHlTZAp5rpXi8qMHitrHsFkyefUXRpNSm1WUpLwDA/60VPK3oEkTp9Q8
	Pp++zf4jA64BFvoHB6esK78kfum4=
X-Gm-Gg: ASbGncu/+tx/iLzyh1wrovHHDhssFLtqi1YW382f8udqJgtFkwTGhr1ykXzy18wDhzE
	7cSY5AQPkIr3SA34zeq5VdVKpO5Ku/KVxa43X6XPr7GTF+FmYzkY9uNWnbmLzFJ+EpDbQHl/fO8
	mH2R9L26ZlqnccJc29b7rpiI4/7CpO
X-Google-Smtp-Source: AGHT+IGorSTepQVsXhBNOvm/zf/47AgJrSsLTorFYqRRe8EUocWPlkMaF4asp584fB6DmFmz9SXCR2ZAmFf4ptjeSWI=
X-Received: by 2002:a05:6122:249a:b0:526:42c2:8453 with SMTP id
 71dfb90a1353d-52642c2849fmr7346060e0c.7.1743625588169; Wed, 02 Apr 2025
 13:26:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2503301522210.23941@hadrien>
 <CAG+54DYX8DEh2AVkQmL2O=5=0rF=GHrMiZnsSWwnvtpo-36-jw@mail.gmail.com>
 <CAMyr_bLCOWsNTDrCBuLgGDYFqqpNCJ46x_ob01vL8crPC4L=_A@mail.gmail.com>
 <CAG+54DYFO7cEkekhQ1K_5dYLDgQjw_QedqcTRGXXSkFFQ8QySg@mail.gmail.com>
 <CAMyr_bKKf3Hq4fVzA9h2ZU=bpL2dHJHTU+qjhusCxYBYZXeW5A@mail.gmail.com>
 <Z-vIFv5cLEyjA2JD@brak3rDesk> <CAMyr_b+K3q5avgd7HHNbSufP5pk=-HPMjTomLLc0Rc7k=6V=kg@mail.gmail.com>
 <CAG+54DasAjm0StZWGithAXKJbR6SPGJ7UiD_hAcBkGMJLPSRew@mail.gmail.com>
 <CAMyr_bJgUjK-UMryTOqT7-G0-uduzx3J9Kg7co_owghpBiwOyA@mail.gmail.com>
 <CAG+54DbOK9sEPAwF_oHR=RzKL8xh4+X5GR0K9xmrvvOauwON9A@mail.gmail.com>
 <CAG+54DYK-C=bAWTueZSkHLtBpWj3urNJ64_z+Ey5uGsgr+nruQ@mail.gmail.com>
 <CAMyr_bLhdH27ngH95MEQFp5_XMm8NzQDd7Kf9Cx4WZY9+9tGTg@mail.gmail.com>
 <CAG+54Db1B1MqgErFoiLfx9bePwMXZe0zZaHzVEMcU+GTW+M5wA@mail.gmail.com>
 <CAG+54Dbc3BC8H1oLUFJ1mbRxH6K01EUsT7jVceabmeuSV3N=_A@mail.gmail.com> <d7b552d0-9d57-ab39-417c-4b1bc13a22f0@inria.fr>
In-Reply-To: <d7b552d0-9d57-ab39-417c-4b1bc13a22f0@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 2 Apr 2025 21:26:19 +0100
X-Gm-Features: AQ5f1JrAVNkjyiJ3KHxZzNcmSIsEH5Ip6UkB6w6bbAcJDKskTA7eTden8ZIq6-4
Message-ID: <CADYq+fZyNOGS4nuWf8v6_DOpC3nFR+_rnY1iObXDwc0rq=3SYg@mail.gmail.com>
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing my
 Here I have attached the xhci files where have found the probe functions: so
 which one should i change ?
To: Julia Lawall <julia.lawall@inria.fr>
Cc: rujra <braker.noob.kernel@gmail.com>, 
	Richard Akintola <princerichard17a@gmail.com>, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 9:10=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr>=
 wrote:
>
>
>
> On Thu, 3 Apr 2025, rujra wrote:
>
> > Hi team,
> > Its regarding the issue which I am facing in tutorial this command line=
:
> >
> > apt-get install python-ply python-git
>
> What motivated you to want to install these things?
>
> julia
>
>
> > OUTPUT :
> > <
> > sudo apt-get install python-ply python-git
> > Reading package lists... Done
> > Building dependency tree... Done
> > Reading state information... Done
> > Package python-git is not available, but is referred to by another pack=
age.
> > This may mean that the package is missing, has been obsoleted, or
> > is only available from another source
> > However the following packages replace it:
> >   python-git-doc
> >
> > E: Unable to locate package python-ply
> > E: Package 'python-git' has no installation candidate

I think you might be missing some package sources
I have encountered this issue before
Here are some steps you can try
1. run sudo apt update
2. check your architecture
    dpkg --print-architecture
3. check your package source list with
vim /etc/apt/sources.list
this is how mine looks like
deb http://archive.ubuntu.com/ubuntu jammy main restricted universe multive=
rse
deb http://archive.ubuntu.com/ubuntu jammy-updates main restricted
universe multiverse
deb http://security.ubuntu.com/ubuntu jammy-security main restricted
universe multiverse
deb http://archive.ubuntu.com/ubuntu jammy-backports main restricted
universe multiverse

4. if yours is empty, you can browse the appropriate source list for
your distribution and architecture
5.run sudo apt update && sudo apt upgrade -y

I hope this helps
Adekunle
