Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E0D19CCEC
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 20:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743624882; cv=none; b=tmJ1v4+9lRaxgLBXwkcHIo+Qf3mPiiWvNfiWAp/+JF8qJhiSuVBJUY7R/zzBwIbdzm68SbWMqY0qyf7GIqjBJHJ4/YQfZ4UEepuhcLZstKP+5A6i5h5OEzWp8zQBA9bUABhhRTnART/flPio4SKUiuonlFlztd+H7ZxXL0/yhbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743624882; c=relaxed/simple;
	bh=9/fmKs6XT96V1w+e807M45XtjmTqp9xFNEZLBBR5fp4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VX1PRos+PZ0ukrtEzxDh9QScq06cuECf0JifUAGH7Jf1hxtF+Euvd7orJwXO0yZVPuGsk4Gt18WVyb3W+g6j5iuWQD90tFiwKJw04+EUdaEb3hYYDKNcDbAqOsIfOJg7K4H5sb0L1YsGE65ZPF8NG+BTwEuG4msWNrnOZta5SJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WTReuSlG; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WTReuSlG"
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-523eb86b31aso110219e0c.0
        for <outreachy@lists.linux.dev>; Wed, 02 Apr 2025 13:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743624879; x=1744229679; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+5kPGDeJdkPDI4HiGC6TzCTJMQN6Y+CQH2NUWfZ35yc=;
        b=WTReuSlGjIRmp18iyXbQF1P1Jipr9Zd7QOZg7GfGHYk7rsLNMAA8SnjvLYJ+1PWqZt
         FfrWfloRE57vWzM7QQVpuaAOgi/ori6XDN+wT9zzVsGsOaCtfA5igfZ7HHYwPZQlYm0l
         Pml96Ug+VubsgWQVj05eW5eCm9KxkEFq562YuNLPhKLTN1u8MPG5kCDSxoptqhE+nIOQ
         ASvRVE9mP+ejnwx+VYTM93thE4t7Jrt38pUkI/orCgOv6HUEHvYXJCz+Avm7bYNME8tA
         A5+LzzJ4zCjoIXOcjq9W3WyVvnK5G6jbllTGFGCoBIsyvCgqaGIoWdZo8Z/tTDGGnnO0
         Nffg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743624879; x=1744229679;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+5kPGDeJdkPDI4HiGC6TzCTJMQN6Y+CQH2NUWfZ35yc=;
        b=pHTihjsHwCI1ZCRUqv05MUYHznXMSIi1Kl1coDIqyMujQEASzI0G5gwhtUILZQjIZ4
         B8oaOTActCSZPjqNKRYvXLv2WRH23lpdLFkQ4ozhNcMVe58m50NvHACQ621lJqt9wGkc
         EFd1r8uT1K163qR6YXjf9AIOUrXdCSsSAmbmT26U2YT1QdBBnEw3dFNd6Qj4LLxySabZ
         5Ea+LX2bl84f24KwQV2m3zOy0pOmvKdluRMtoqNPop11ypi7eGfCS/1gPx7LFd7FiFQz
         9NG80V9jQyMocQKWwbMsJuo3f8JSdTHf7WHhZeozk/6cljWkMg7mzv8KcJ8WQzg1FM1F
         DIbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgLbP0yIhV1+rdqKZND5Yh0XUqJUnbcIwU93idK9nyQUvu2iKoBdc1bgQ/4yNGPaE15zSn1j3lALI=@lists.linux.dev
X-Gm-Message-State: AOJu0Yw3ED3jp3w2RtwCrEeKe4w+1RDeXaysmSfbh382HlGY1YH/TtBj
	rMJOdtByR5jiqiKM+uR+K8hKWftOvbEO2Zjo7HA0zExdCXFB6tXybMuEkEnLN9LuXRG/j5gNU69
	hNAE12qNq/20CnpY31SJ0PQ6nX0Q=
X-Gm-Gg: ASbGnctjizvUzVbJXWy0McgcwrrDBOEZaC3qQfvCEs/NDE7arh4bnmlWEys94dD4qKB
	NuRz5b32sfgh0KoBMH9OBiO2p8W8uugVoevkrOK2qIl8N1UVM4Qh+xo5rByZgvHZtWLtQF/y1nt
	WpnqDnKFpeN1FLm+CCo+/Dj3DmAYTX
X-Google-Smtp-Source: AGHT+IG+KcoCFM+EFU85dYy3jZ9TGepiGeQpPVmqQJAARsO/5ikZLPUx4FCB8nwNkIO87IYhNmHXG5B900Kq85wXdYE=
X-Received: by 2002:a05:6122:8c01:b0:520:61ee:c815 with SMTP id
 71dfb90a1353d-52758eebd9cmr144053e0c.10.1743624879668; Wed, 02 Apr 2025
 13:14:39 -0700 (PDT)
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
Date: Wed, 2 Apr 2025 21:14:30 +0100
X-Gm-Features: AQ5f1JrvVU6C433veyVhd_ovLtfvtDoMKo8eFTyLb8uaPMGlQGwDy1nLHTOaXLY
Message-ID: <CADYq+fZHYzo5v0XOMBOd0iRiJzcP6v1xctbaBPH2e+H61Wh0jw@mail.gmail.com>
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

Hello Julia
This were installed when chechpatch produced the following error when
running checks on a driver

ModuleNotFoundError: No module named 'ply'

ModuleNotFoundError: No module named 'git'

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
> > brak3r@brak3rDesk:~/braker.noob.kernel/git/kernels/staging$ sudo apt-ge=
t
> > install python-ply python-git-doc
> > Reading package lists... Done
> > Building dependency tree... Done
> > Reading state information... Done
> > E: Unable to locate package python-ply
> > >
> >
> >
> > not able to install ply. so that "checkpatch.pl" can work
> > also have tried this command as well :
> > "sudo apt-get install python3-pip python-git-doc"
> >
> > Here also we might need to change the tutorial steps for the upcoming
> > candidates.
> > happy to help here,
> > thanking you,regards
> > Rujra Bhatt
> >
> >
> >
