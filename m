Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EDC19CD0E
	for <outreachy@lists.linux.dev>; Sun, 13 Apr 2025 09:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744537325; cv=none; b=Qd9SxBs6t90mGKT+LsuBrTJ0bsAOG+k9AaIaeIBZvp9QiC9WTi10dronFHBHTGM7jwyl7yYi4n24wVoHTUQz7rtEifk3HHWzt/Vq1IEKkWKqSlGfJ3RqWZxiNozDq7fG9/lNMwYLp5BwdicSaxHFKRYnErfsipds2H5I7qmTxgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744537325; c=relaxed/simple;
	bh=AXmGv/EA2Maf85vdE+bGO2w66eosPIva2IHnRplHXbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kMane3gptkse4Wu/JJliU/dXJOniyd0dQ8wKnOQlp8aOFt0esPuFOeCzTNHdlNJ6A6+U4HWnJ7GJZbO7B8gdz3YbpjIg3ETiMIEZnbMdrj/vX72GRH+24ip/tn/Sp8WTG1vOlnVChPbh31u9rCsYKdNyWDONZ7bx7xlPiRQFu/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EFF1Nf0F; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EFF1Nf0F"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso6191073a12.0
        for <outreachy@lists.linux.dev>; Sun, 13 Apr 2025 02:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744537322; x=1745142122; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u3yjB6VXeCPCiDVNoSh3PXJozRcVQK6McuMGj6JOpjI=;
        b=EFF1Nf0Fpef4q3+Oxy9GwvYO8kL5bDejnqSIcMYGP2oHAOY8Ksu5RsbvE3aeA15VYy
         ejQDNCH7jTa86/NAnp9t/GhR/Rkj24yvvNPJW/tlIkEJ93Vo5CV34LJPGLa6easnLDfP
         3D0s+1jRIVvnExJsSCkPgUURh2XvO6rxw7t+XVH0LXnhb3tNel6f5KtRJGHQss38adx9
         xp/+cl+E0iNrWo+DmElUIBTLzRuqr5Mi/XbTHoEPy0R57QTjFSZGXNTqddNs/9kWsqiI
         v5bwxewvecW8tDIXEJrXDKI+RI2PDiflnG2guRk1VsJcl0TgGX4JSuHgAV/sQ5RDqBBK
         TScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744537322; x=1745142122;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u3yjB6VXeCPCiDVNoSh3PXJozRcVQK6McuMGj6JOpjI=;
        b=AmoSY6RQkkf9BORw4qXAa2ZCJlWhmyae+g2RyHJoprfpzLUXGCrXe6B0KJdURb2SBh
         a6rc5B6ddYG7AntAKirbZZxqP+cfdKs7FWoFZzPSlEqwsUdhzmP3AzHYm8J8z8e6i2lf
         OUElXWGeY4VP3q1uJI6RutVZnuHq/MYnx/JVJ+b4SvatGjrmv1zGSljGxiDfw5eMcM0l
         EAWWqY/CJSYOYEHbyQjyvjLdNjEhAq4wuT8vlWnDPy0nzzJBH0/mTeZHFg2dzExNGjXo
         mbrIE8w99QmkiUagciOukr8aSPDRtGkJLbQQX1xHI0WGyGk72iPX7NnltArxZPOFnN1O
         iv4Q==
X-Gm-Message-State: AOJu0YyyFk1HyeHqB2dACzEaeGyoSWoBlHpGOdAAoo96CAly1Nk4yZCR
	GitQFAiHfZeQIlRuPb3ETy8BMuh7MqpmZnwxfUbJL9cKyq9e2g014yHtyRBtoeJoELLMviHn8Df
	RA6Pp1zH06T4cTRFPYQX2k77miII=
X-Gm-Gg: ASbGncsDWku+ThgQqOMRMnPqoDZ3NvakT023SgF3dnVknh7k3hP8W0NF/EevE76Fzp1
	BGC1CJEaTXSmNgohq1Fm9qSU7o0/Mxi8x4DjjIoXJXiAfq4uXCzP8mvgxg/8dJEN3zzZrz+BUFw
	A3xxVQDIrYf+s0aktaXXwdoU8=
X-Google-Smtp-Source: AGHT+IHRusjq3DQL6y56XMG0llKOUnWpFMnH0G2jylXv2DhtLLzo7oXAxKY4TPdaIrZN8tiKn8SBiz/YgY3bYbaB7sc=
X-Received: by 2002:a05:6402:354a:b0:5ed:c09c:10f with SMTP id
 4fb4d7f45d1cf-5f36fda1f3dmr6595123a12.15.1744537321763; Sun, 13 Apr 2025
 02:42:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
In-Reply-To: <3b183d22-55e9-60f6-aa7f-e0d2a27cae7@inria.fr>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Sun, 13 Apr 2025 10:41:35 +0100
X-Gm-Features: ATxdqUGjzKz3Fx1mjdJ0RGi4ipi7hr3_F8MkzbIqLvqvwDkeUdwq2Q7gRLW7zW4
Message-ID: <CAMyr_b++b9RUTK-SGKrAo=JTeajLFoA=5v_huRQ2f88eb7V78w@mail.gmail.com>
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

Thank you for the notification.
Please do you perhaps have a template for writing a timeline?

Richard Akintola
