Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC253213252
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 04:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744000965; cv=none; b=hxCqEGlHdLH4unewpwNZJsog5MoIVG9RrXubzQLlsYCyywVa8uPLK1tXYCwMb8X1Wz0toumuXJiGlJLng/90lF4VGoocWLdG1oDUb712Z6rtZued6axSGy2DNCFkxxoUnBLDdN+6I+uQ2PgtWoHyjoX5YAfUm1eZ7/nxBvtqHT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744000965; c=relaxed/simple;
	bh=XNryYVyz7ltmvgn5c1i5prN/gX+O/uSmqX1pTQgvSaw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FIDCOQuqjOQngqUfnCK+4r6649a4i2MLQR435R7Fka7ZkzVNFoZip+0MbURxXV/mex8zDy1b9tkOUWbDZhyF0KBRLWn4zrXo+ckWt527zlcqWbeph6g3VEJSXQxhDk3RBIu+YEyAS8a/Oc4MxNTI6y/iEyBXs2jIe/AeyZw2wUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WcmXZIVg; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WcmXZIVg"
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5efe8d9eb12so5788673a12.1
        for <outreachy@lists.linux.dev>; Sun, 06 Apr 2025 21:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744000962; x=1744605762; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XNryYVyz7ltmvgn5c1i5prN/gX+O/uSmqX1pTQgvSaw=;
        b=WcmXZIVgIvG4Qp2lvUShOkCzgKI/+cNWDoYKUuz9xOEtCFlOu8+RHYYBVI6sx6nDfN
         wagHCAs5SujNsaImh4j30wCc1gOg3bVKmqqzPJMeqDpg8wRViNd91C6bakWFPFTsdxE2
         IDZT/JoHuwdL6GCVgHtbNu/Fiwazsf3NadhJDsmOXObuBa0WifbC9TB0DaZalFg+DwB0
         +C/P5FUWO6WMRHCfNaabSQrELanROtNgJ1a0tnNpTymqlEs7ew56NtsZajCiMCnupgOT
         tQAGJG6pHnKjHze//gcJCp4ip6D4koJ6rou5XexxcOalJTjBE2/93c6oSB7DMlQ+Ccgz
         Ugtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744000962; x=1744605762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XNryYVyz7ltmvgn5c1i5prN/gX+O/uSmqX1pTQgvSaw=;
        b=SM7mOuCdKChR6Qj3oX1BB03EOjUjiEeqSQsvNRH0Kj77ZtpeBVczRwHZ9QaU0Yf3m6
         aZWsIZHJBxiduxKQDxthCPczAV+YJS4YzTpI/Ugxk6nCItzRcCbQdCuf8N1651HStt1Q
         pmxhSkLbH919fgMwgv1q+LTmzsoDfnRMQb4UmeiKd/NonnDjhWrmf3t1pELp6zhHZh0y
         8cq5cu5IbhaKQqMtHQNIEs8tQvv9zOWW+9nv4/bgqcEBxkAKbemdELPjyOA9ogf7bNBm
         WLM4dWFjiDK6x0qsZopimbcFnQJEdsKOTa6rWwAwqitmiu9cQmdsrRmuGG69OTAQTcEM
         wGBg==
X-Forwarded-Encrypted: i=1; AJvYcCWrx3kMjj0Af8k+LoeqkNBbuq6HmtbGCoY4e5Rvlp1O5iOaSAH7uVNrRPRn97hkQ/m+wnFiEXVKiTY=@lists.linux.dev
X-Gm-Message-State: AOJu0YxbddCaHupBEX40rte5RUdDtJO2IzUgNQrKfnP1bTlxk6t+g8jj
	DAwb+JJE/mEi25z0zzDz8ua3MI5rxv3HxRFvTV9Emg1Ay4ij17beuiEWSvDTKg8ML/yWxrkFVzS
	YXt5pij/d7ZJ5ZRLlR141+ZH4pUY=
X-Gm-Gg: ASbGncu7rKkWDeltOhDMQmyuIAT5hj5YLfnbt0/2P3NjMlX7bjs6AJ8t6o82TKIHnNb
	73uGQUdI7F8nxzX80TSIelM4hsUvn+iV0EbFkE5jDMenfDzV3gpH13jViGe0X7dWYYiwF9SkQf6
	4qdEjvRS+Whk7Aq8/Bfy7/+ygIGw==
X-Google-Smtp-Source: AGHT+IEUy44iLnNQ8SpSrtXBGU0km9Y3x5Z+EvZGzUdXB5WIOYyJsDsllzNHJYKrFuXMvS11MwqIugDAYfTd1KthS+4=
X-Received: by 2002:a17:907:981:b0:ac3:1763:cc32 with SMTP id
 a640c23a62f3a-ac7d191b295mr1105521966b.29.1744000961796; Sun, 06 Apr 2025
 21:42:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <Z/McCdceSpyL2A2p@ubuntu>
In-Reply-To: <Z/McCdceSpyL2A2p@ubuntu>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 7 Apr 2025 07:42:05 +0300
X-Gm-Features: ATxdqUFIOsiX9auunU8SgWM2VGdjyhz41zblW_hhfHcha4c9Oi76sVF3z270wrk
Message-ID: <CAHp75Vfy0KMs1STmS4_5MqdCysKiZs_GaG1ahRNDr8ARhjRAUg@mail.gmail.com>
Subject: Re: [PATCH v3] staging: rtl8723bs: Use % 4096u instead of & 0xfff
To: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy@lists.linux.dev, andy@kernel.org, dan.carpenter@linaro.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 7, 2025 at 3:27=E2=80=AFAM Abraham Samuel Adekunle
<abrahamadekunle50@gmail.com> wrote:
>
> The sequence number is constrained to a range of [0, 4095], which
> is a total of 4096 values. The bitmask operation using `0xfff` is
> used to perform this wrap-around. While this is functionally correct,
> it obscures the intended semantic of a 4096-based wrap.
>
> Using a modulo operation with `4096u` makes the wrap-around logic
> explicit and easier to understand. It clearly signals that the sequence
> number cycles though a range of 4096 values.
>
> The use of `4096u` also guarantees that the modulo operation is performed
> with unsigned arithmetic, preventing potential issues with signed types.

Also there are a couple of important things about modulo vs. AND:

The modulo use for wrapping around is making code robust against
potential changes of the upper range, especially when it becomes
non-power-of-2 value, the AND works solely for power-of-2 values. The
modulo in case of power-of-2 is optimised by the compiler to the same
or equivalent code.

> Suggested-by: Andy Shevchenko <andy@kernel.org>
> David Laight <david.laight.linux@gmail.com>

Not sure what tag David's name is meant for.

>

This blank line shouldn't be here. It's a tag block where we don't put
blank lines.

> Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>

--=20
With Best Regards,
Andy Shevchenko
