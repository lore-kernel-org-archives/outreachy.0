Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D171727F742
	for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 09:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744707616; cv=none; b=Z/h6pEAPEAB4cE8gM/mhpJxCjNW9theUEAXJnaZzW5ztRHzcGmmGPFPuRHfb2c31f/A2j0Ei8BrZPXFhgkm+DdtEoaQ2jc9Htrl1HNvSZ/A6cGU8Lcp/jrhh85a6wBP+7rM6eP1ukzt+x+tQxRCmij/13ZMrmGcRrAilhfVns+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744707616; c=relaxed/simple;
	bh=ILkUyTr4GnCgMifMDc6uCXh/9MzmTzNg5XNzItghGbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lw9GdvunEeZL5k7nEqCONYO3CXtoo+z/SqYjs9Q+v+C3LWPsKC50v4+nSlfBx5IWKq2Okm0EmuxWaozIDg/hcLpDuMAZAzeI+XMOIZg0wH8gircxm2ieyRbA/bZWXQtyGrQ/0p9rwrKgCny1Fox3joQCsXJSgVNBdQGkRZZMeLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a/HfBoTt; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a/HfBoTt"
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e6167d0536so9800645a12.1
        for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 02:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744707613; x=1745312413; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ILkUyTr4GnCgMifMDc6uCXh/9MzmTzNg5XNzItghGbE=;
        b=a/HfBoTtysNcX58+ByF0VXJKgpVHufKaAXDQAdoc9kSadjvYpzI9whKpCWzZcUrM0q
         3F4hqmzvkBYMXVnWxt1lmV7EqD6r356UzFW9mQ69Kj8+Ka59Z42pyw62eU0Tur8zzcoB
         1+PfrATQkMucPHwx9Od8SnjFVyJiumEw0j8quACAUeIWHamJOxxDf1pSrmO7il9zshzO
         Zmg6r+BRr83ivwOIhKLdj4jQ9AMwcajg8gXUsaqiptWsqd9Hv//LDNkN3ZMme9khbzI9
         tA7iQ9gcMoycvfnDQBJf+LAhh8Q3hKopUwkvkCERBffoiA6nP6ppZxgqDBcgH5KGe5fg
         iWGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744707613; x=1745312413;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILkUyTr4GnCgMifMDc6uCXh/9MzmTzNg5XNzItghGbE=;
        b=Dwpz82SF5CP847muAR/+QCJYdUaibEJwedJppvtDCbGve8yDMEARL3a53BWe2o+VHM
         PY7THp9QfoxMg2mNpU6PSmMXLQHo7YBJcB8yM9Bcqc+2tItD4UIwDxuY6fdBfBdKMYJI
         RFN4swAEGiSMwKG0WXBI0AK0c86FbTTXSwPGo8TJ2fZNoRCZ9Y/8+U7GfcVWNmkXVy8O
         TDQFzoCe1vdlOV/pugdPaHCg3LjHoXP6AeMoDgLqIf+pawgqAd3SNkXauaysbX8hqyzg
         xGN9B5kAtXNZnWvxyj4MCMsdViTpZ9futpLG4wjWN9SkmNgRS7vX2XZtPi5GVljkz9kc
         3kYg==
X-Gm-Message-State: AOJu0YyCPX5ByW3dEVGZ3ek1Ox6laE6ZdF+HF9ZvRuBDfMGi3TmWVjaR
	9uy7YO+KHE+Uk5mE8ixzfHEt2+ZqDY96LdjWtNaqeIz6qMYV1v42oui/o8dy/5n5vIRaDa5uWcE
	n1hARjAjqmYIRKkAQuudw9gKiV6E=
X-Gm-Gg: ASbGncuLfc2RT7khg2uYTWnbCkaoH57UbMgK3xfe44LpgzE/JTbVh4nLSWygoCuZbRQ
	g5bgKT9gwRC7hSRNRl2TjMxkdY7tvhc5iUA0pyfn6CjoF+SLz7uBjaAJPETGDGATzXMyVnKkoya
	YiP5kctJNZgvFBjPhsspm+E0w=
X-Google-Smtp-Source: AGHT+IHacwCJ+MvRHsmINMngMvdEf3aZgCyXvhtYbvaUVBC/+TAoQvAsy9CdIdtR8nbCZmjX/RwZNauw379MzwCEN6U=
X-Received: by 2002:a05:6402:2350:b0:5e7:2871:c137 with SMTP id
 4fb4d7f45d1cf-5f36fd9adfbmr13122507a12.14.1744707612770; Tue, 15 Apr 2025
 02:00:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com>
 <CAMyr_b+jCO2k+VbAB=Ahv9=Xi8adSUF3SM7UrO8FLa5JSfro6A@mail.gmail.com> <CADYq+fa94LXFe=sZbEYYKMN4wX7bWFkTtBOSD3_OpjjkhkRnFA@mail.gmail.com>
In-Reply-To: <CADYq+fa94LXFe=sZbEYYKMN4wX7bWFkTtBOSD3_OpjjkhkRnFA@mail.gmail.com>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Tue, 15 Apr 2025 10:00:02 +0100
X-Gm-Features: ATxdqUE217_JYxSutf1PqM-N_ITPWP6tLtLwb8WuxGVNFXfnDuFeu98StP8KfSU
Message-ID: <CAMyr_b+LNRxxbiqR_xWZvmEFMLV-XqB-fdskR2Eovv45ua+tVA@mail.gmail.com>
Subject: Re: Setup for sending mail via Mutt
To: Samuel Abraham <abrahamadekunle50@gmail.com>
Cc: outreachy@lists.linux.dev, Julia Lawall <julia.lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 1, 2025 at 5:16=E2=80=AFPM Samuel Abraham
<abrahamadekunle50@gmail.com> wrote:

> This is Okay without the 'Next' after the first paragraph is removed.

I hope this is now appropriate.

Gmail set up

Enable two-step verification
(https://myaccount.google.com/signinoptions/two-step-verification) if
not enabled on your gmail account, then generate and use App Password
(https://support.google.com/accounts/answer/185833?hl=3Den)


Richard Akintola
