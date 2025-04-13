Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8E9C8FE
	for <outreachy@lists.linux.dev>; Sun, 13 Apr 2025 03:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744513257; cv=none; b=blFFAPkKC1MHyTbpHB2nhfYrwe2j9Fx/YEYKJ/O9S5tirNimQGfMPfU5y/1NcKV+fSnxIy7eli6al/qXG5tvR4qlHSuuUVs0mtssJcBpVV+jdAupIY2c/PXfCeFCMcTb4isfNBUI78okvqfIMiIxLfkWrQ0D8EjevmNe0WchhF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744513257; c=relaxed/simple;
	bh=c+i7GlQTvUBWlcg5M+N6udQhKMW9ooVWB0jHphK99NY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d0NABO3a5wcOyAWLEvCHkMNvv7EblJf2yDcg6gxDYdTTIcQ36Cs9p92wzPyHRO9T0jAbgYS2E47g7/iL/n1C1ZqO1pkXS7khahZFoJcoolOiCt7rk11ciYobGAFVD9ErBbSOpA0RVbNGyFNkeQNh5dAAoamkUijKruDhCfViulQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GU/110tu; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GU/110tu"
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-525b44ec88aso1527862e0c.3
        for <outreachy@lists.linux.dev>; Sat, 12 Apr 2025 20:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744513254; x=1745118054; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uyy3HTCOTr5e+hX/P8aZ/P+CJfHuSEiyYgRlo6aHRY4=;
        b=GU/110tuyMFz3qrITaq3l0ycFMlkz67WZsI8TYUckhDc10B/a9UmLIKbmfSDHqg3zI
         1zRHfDaDfl6zprn6ISgnKYmIJ/OMBo+/I5xbP0dl4LX5jD8JJ8eyKuJ8JAQUd+VJKj2u
         dVvWeO+njft9hDkeF5rCaKQMeETTywF5oIUy/N1QsIDUGTGGN9a1urt+o/3oaqfDE5pF
         awtVXDuTlTYGqHq3s9luriyogO0Z6BAcBrREjLjIB/Weu/LgWc6KFQyRjfozdCqpZ2l5
         SdnmFOdUL1Hzv65YLSGWEp4sLFGE+3EvLPNwF3fV7m/BisDDczj8wo2tOtKP7jBHtR9y
         VyLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744513254; x=1745118054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uyy3HTCOTr5e+hX/P8aZ/P+CJfHuSEiyYgRlo6aHRY4=;
        b=XV18CJKEZv+Wt8F79SAWxAVDcLL2lovKoosgOiIhk2hfs7l5U2D2hrJKdCEkpkJ1zX
         eneRtebFznjEoX7cIZ9iKMhwdGGKGodSAdADymHdzK7cFjV8r9hZZv0RUfG7nY7IxLCh
         gF5pvrS3BvrR9XskU/z6M9Aq2YakDHdWK/A5LUJ+diFib82owNuH+wsAd69oRMnV0kYm
         MTXsAYA4+mS+GaNKYgasBex88n7PJjCrPKHutgBlkXRl+A/6iJ8sZXcsiKUrHM4v5Qr6
         ky2nTdrWAzIVOQGKrFZkz5efRy65xuOy5EjZ38DK9l4XDA/uEt3rZf8bEvNYpN7XBztF
         envQ==
X-Gm-Message-State: AOJu0Yxikns4OjlbQ6CNKqeyVI9ltm2BYFf7gjP1t30cGalSygajmXEM
	Gpl2zv1TdzMo5ejBU11xjwfOHuCvRVkXW85AVijdNDusCU+MwWxcsWHE9x63Vt1RYv9L1Pzx/Jz
	jpR/HOVoRQt2R4fCJyStcG8hHUyE=
X-Gm-Gg: ASbGncu5vHM7H01U5frlMl2xSezUAVKNB5w+iU1tvmVLP/7fGPdj3XavpGOupe3qZuo
	L+MW2myJfITCEyVYRV+qJx63sCwS8HgHSo5rEqzXswpH+AlFC1fgaP1KEXnc+WIboWP+TBqgj5M
	MpzgbW38YqOml2SVFV0cmglPQI
X-Google-Smtp-Source: AGHT+IETP6ikg6GoRU020Ha9wWkvYfeZhqc1lFOZFnpEOeeRdf2x6bjR5OmbGhYc5qvFGQ+/n/m3X38htP3dwhThW3s=
X-Received: by 2002:a05:6122:c83:b0:520:61ee:c814 with SMTP id
 71dfb90a1353d-527c345bf59mr3997073e0c.1.1744513253933; Sat, 12 Apr 2025
 20:00:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
In-Reply-To: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Sun, 13 Apr 2025 04:00:44 +0100
X-Gm-Features: ATxdqUEGn1fIt9u8PSF0dfldx_qtpDupTbpuNY5lBDspYUlXhPSU8NeuFvlIgnk
Message-ID: <CADYq+fbtN4NoVuEVz02Fg1MZZGHhzenZ+3vTDwDaVeTAYaykmQ@mail.gmail.com>
Subject: Re: application
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 13, 2025 at 12:46=E2=80=AFAM Julia Lawall <julia.lawall@inria.f=
r> wrote:
>
> Hello,
>
> The application period is coming to a close.  Applications must be
> submitted by April 15 at 4pm UTC.
>
> The focus of the project is to find opportunities for using the new
> cleanup-related macros such as scoped_guard and
> for_each_child_of_node_scoped.  Please take a little time to look into ho=
w
> these are used, and include a small writeup about them in your
> application.
>
> Your application should include a timeline.  I would suggest to identify
> several of these cleanup operators and plan to spend 1-2 weeks on each of
> them, to write a relevant semantic patch, test it on various Linux kernel
> code, and submit patches.
>
> Let me know if you have any questions.
>
> julia
>

Hello Julia,
Thank you for the update.
To be sure I understand what you are saying, the scoped_guard and
for_each_child_of_node_scoped are clean-up macros in the Linux kernel
code.

Then we'll be using Coccinelle semantic patches to look for cases in
kernel code where these clean up macros are appropriate to be used?

Lastly, would you like us to send the application as an inline email
to the mailing list for review?

Thank you.

Adekunle.
