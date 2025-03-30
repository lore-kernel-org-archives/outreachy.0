Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A216017A2EB
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 18:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743357697; cv=none; b=HYQ8asqqUkSwBayxppCciBsnS4ZjQopp/g7T0xctcLyYhK1HVarqautXj5zZhAqg5sif1qhdV4LkGK2V4p6jdvsUdnDZDwfEGWK+DWAzvNbvqT0I4Q6V24DPxI3+ToLjuo1vAkHffyaeKEHv33e8F2ke3ls0J4LtCAr8+vyerYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743357697; c=relaxed/simple;
	bh=epXoV58O/uJs0Gf0MD5krT1p7Q0HK3CftLzW24nKfKA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jlcd/u4cLXFaIdRw64lpToVU/X+4qD61pUeyxroPw2oAoFmDh0BzwX7TQAsiClWEIUPIxk+9oh3RgO93HyvM0YQwUrlXsiiC6p5ESqPD3LHexq6v21ABZMMPCBAMcDlMuNBvLPkZZ2tCplKxI36BoBwSlXwXBmJYGYxgs/pBjsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HNG84MOJ; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HNG84MOJ"
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-523d8c024dfso1507190e0c.3
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 11:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743357694; x=1743962494; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jzp6XgKaT59griRD4INZzT+ANJeWRCGvNcRCOxs3s4c=;
        b=HNG84MOJ3p6MwTbmCywG/LNxlPRKIMLNxM6xQPXSJggTnt5MsyaHR2kpTK5/Wlob/y
         q19+4xGyzHaCdltRPAMGQ8j2HoGdEcKcUG53MZL/GXg6WDAlPrWWjVxKjqJawSONtRS1
         I9LAqv5PNuHXL+vTWMREsYCL7OXbwYx8pJxsBvmVbmogtp+H+V7S/sBfYN3Lked4RYD/
         GolpvpxDoM/w76Y9CVogjzLkFBXN3EeuvSLmdtfGAvzhIw0LJ5ZCm3yYAvS6vQq+Ip/8
         HkXEimN/UrEf3mbA7kNGOm8fQRzJ0Lu7Qp2rKOVDccqQ0jcuGfSI/AGN26RKkYERbjab
         0vBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743357694; x=1743962494;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jzp6XgKaT59griRD4INZzT+ANJeWRCGvNcRCOxs3s4c=;
        b=rtUlzZIdIXNE6u5jig3lMd6v3Sy+JvZ0ojk7pjq3cl9i1uCzhkabnYVN5JzV0FpOHR
         PEUI1Ewrm5zMjECMM7nwb4qazOyAuvvgCGtYnyLeNpjMI75p2QxHoHVhk/09rQWysztA
         xZAxwIFV0fzgCh2TkpgfvnlcBhJlVVeFWiUKVn9zSyvUadEKM3/1brv30ibNVnUaxmfg
         /9HaemcuozOQYFc3kDjaC4SAAOvEyK4ZFImGEG+zDWJ4+7LIbpJeCiOseo0E0aqqT20c
         a7OLhPWBtNX4qFxv2pf2yvsKof9rT3JGHS0uNBiC2u2N+BQr2gytX3W/oCDshf+YYPYV
         QfVg==
X-Forwarded-Encrypted: i=1; AJvYcCW7ckF8YkPVugbht5FE26O23/MH7ExUo42bt4L9WT0ELFoQ86eyXGLkCLa1ScxLjZfb7MC4HliObhw=@lists.linux.dev
X-Gm-Message-State: AOJu0YwE4Vqc4KQkgcMbMh6Amq4Yl7/4SH/C9iBXGRho8jsF1lV3YEp6
	/yUNzyCFy5MrN54EVLJRnLouxm/yQTGmWiSFzG/MH7GqURJtcAeWbOWYp+aBLYZUl6S5ss+jrXN
	he/kz7Gg17QM22xzeVIsYVJofT+A=
X-Gm-Gg: ASbGncu5ke22KCrRiUo+iYOFI4pWtyZnPJhC0ayABsmrS02ELwK89hWNpl8k4hBlfpU
	+rk4tawGOjeWVMwJIgQMLHk9DH+4zKQ/4In7C744Q1Z6TS6k/bbh7ZSHN8T3AHmmxDjcxHEmXGF
	kqQhqATdT2KB6zMWkl4uIKxBY5TstH
X-Google-Smtp-Source: AGHT+IHHrJAMBeERUSxC45ktj+lVQiPFBG7OLKY1vQPlgkQngOEv68cgN6MzIH2Cnn+Ppr3cZMF2S0JP8EOcfkS6l48=
X-Received: by 2002:a05:6122:16a8:b0:520:61ee:c815 with SMTP id
 71dfb90a1353d-5261d4cbdcdmr3062629e0c.10.1743357694385; Sun, 30 Mar 2025
 11:01:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <c1b29fc7062b6e6a130de4adb121845d9574a50e.camel@gmail.com>
 <c651948d-2c11-d140-3aca-9ace35f52eb@inria.fr> <CAMyr_bLnE22pObV784EKpabb-R8w64o0fYDf8_x8h9rmySCoVA@mail.gmail.com>
 <bbec6f21-69c1-b14d-512-7660b83ffd7@inria.fr> <CAMyr_bJyn3Krz0R5tYooQRP6A3=bj_H_f3f4rejGJGkS8LQaLg@mail.gmail.com>
 <CAMyr_b+rJBRQFrFCnB=kq33XCyo=twuRQ-OrQC50D0mH9CaRUg@mail.gmail.com>
 <alpine.DEB.2.22.394.2503252124080.3642@hadrien> <CAMyr_bKWDLGZLQgducONi=H_107UydmaOErRcRythgw9FR9CFw@mail.gmail.com>
 <CAMyr_bKSouz-OCTOaWX9HvAEVLEsodW6Nv9MNDqjzYWp+=Ohtw@mail.gmail.com>
 <alpine.DEB.2.22.394.2503291129340.58211@hadrien> <CAMyr_bL-rAZRfPjEWMKHJNApUySeP_Jgkj_iDH+7EK_hCS-Bmg@mail.gmail.com>
In-Reply-To: <CAMyr_bL-rAZRfPjEWMKHJNApUySeP_Jgkj_iDH+7EK_hCS-Bmg@mail.gmail.com>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Sun, 30 Mar 2025 19:01:26 +0100
X-Gm-Features: AQ5f1JoJCJVRZo0Iao5EkhBMuymT9ioSjnaoJcLlxFy_5EwuybCZFQ7CBIlurqY
Message-ID: <CADYq+fY5_Rjwjax97jj8gheSE77KG7DE6iTUULt=RayFFN-3+Q@mail.gmail.com>
Subject: Re: Can't Build Linux Kernel from Tutorial
To: Richard Akintola <princerichard17a@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, 
	"outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 30, 2025 at 6:40=E2=80=AFPM Richard Akintola
<princerichard17a@gmail.com> wrote:
>
> Hi Julia,
>
> Having reviewed previous messages on the mailing list, and running the co=
mmand:
> perl scripts/checkpatch.pl --strict -f drivers/staging/sm750fb/* | less
>
> I found:
> ------------------------------------
> drivers/staging/sm750fb/ddk750_dvi.c
> ------------------------------------
> CHECK: Avoid CamelCase: <sii164GetDeviceID>
> #19: FILE: drivers/staging/sm750fb/ddk750_dvi.c:19:
> +               .get_device_id =3D sii164GetDeviceID,
>
> CHECK: Avoid CamelCase: <sii164ResetChip>
> #21: FILE: drivers/staging/sm750fb/ddk750_dvi.c:21:
> +               .reset_chip =3D sii164ResetChip,
>
> CHECK: Avoid CamelCase: <sii164GetChipString>
> #22: FILE: drivers/staging/sm750fb/ddk750_dvi.c:22:
> +               .get_chip_string =3D sii164GetChipString,
>
> CHECK: Avoid CamelCase: <sii164SetPower>
> #23: FILE: drivers/staging/sm750fb/ddk750_dvi.c:23:
> +               .set_power =3D sii164SetPower,
>
> CHECK: Avoid CamelCase: <sii164EnableHotPlugDetection>
> #24: FILE: drivers/staging/sm750fb/ddk750_dvi.c:24:
> +               .enable_hot_plug_detection =3D sii164EnableHotPlugDetecti=
on,
>
> CHECK: Avoid CamelCase: <sii164IsConnected>
> #25: FILE: drivers/staging/sm750fb/ddk750_dvi.c:25:
> +               .is_connected =3D sii164IsConnected,
>
> CHECK: Avoid CamelCase: <sii164CheckInterrupt>
> #26: FILE: drivers/staging/sm750fb/ddk750_dvi.c:26:
> +               .check_interrupt =3D sii164CheckInterrupt,
>
> CHECK: Avoid CamelCase: <sii164ClearInterrupt>
> #27: FILE: drivers/staging/sm750fb/ddk750_dvi.c:27:
> +               .clear_interrupt =3D sii164ClearInterrupt,
>
> total: 0 errors, 0 warnings, 8 checks, 62 lines checked
>
> I would love to have all the 8 checks done, although I learnt it is one
> check at a time.
>
> Please how do I go about sending the patches, given the fact that same
> definitions are
> found in file: drivers/staging/sm750fb/ddk750_dvi.c and file:
> drivers/staging/sm750fb/ddk750_sii164.h
> and I don't know which other files they are defined.
>
> Richard Akintola
>

Hello Richard
Here are some steps to send your patch
1. Since you have identified the files that checkpatch has checks for,
    you can pick some of the files to modify and assess if it is
appropriate to modify the file
2. If it is appropriate to modify, then modify it to adhere to Linux
coding styles and/or any other files you want to modify
3. Rebuild to be sure nothing breaks and no compiler errors using
`make drivers/staging/`
4. If nothing breaks and all is fine, you can view your modified files
with `git diff`
5. Add your modified file to the staging area using git add -A
6. Commit your changes using git commit -s -v, writing your commit messages
7. Use git format-patch -o /tmp/ HEAD^ to format your commit into a patch
8. Use mutt -H /tmp/<filename.patch> or git send-mail to send your patch

I hope this helps

Adekunle
