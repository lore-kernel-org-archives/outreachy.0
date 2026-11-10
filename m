Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.128.181
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794301260;
	b=vXcYhRwhjYtQy1c8znFA6hS75YPjorYf9JQoSuOfG3VZeq3cZ6fbfwR7pyWAYKvILQ+C
	 QIFE3jWj+Rui5+YNt4NutetTnkxQp5cEJjdlLrh+cUUq8bBok0YTrC6k8Y3lUPQqlaJS/
	 0Ug84qswHnpbbKeF1AECqWXiOhgzI7b7qob2ZyReSxA2P/ZyciVjw4UqksWZjzPaP7I+K
	 vPdC6cEa/9HNf0FLXABdRd7KlEyW37UCaSs8HAURGrGzoU59EnFQx0AdjIiJ5x8cjyP9l
	 qzSdL/u5iGboa8u7gJ8USNtYd/toplS9g0/2MESQKRXyzXBeRXu39PJ58+mTy6iOs5w==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794301260;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding;
	bh=D/l1DG9pW0EG2fGxLRQvmW7PF5RxeWs5LWhd8jRdOqg=;
	b=YImjZ9qZCSvzaSi9St7Ax0KRsOJASU0dhoXVrJmbZWLhSggIR/KfJRxzH9mIN3Y5W7+q
	 9Qvxi6yz9pA4hu8TcjzY5h/iSDt2aVFKWw720avjvVx0SDp9TG6e3iYP4eZw/5nyGSnP2
	 409iCKybDJvh1kSMbLBkXiBXuDtq9klTYtBCqVVdoYoT5wlA8MHvqJBNps1ELh+HVb18S
	 uz/pCu0zTOwigKuCRViQE8G+4B17tokcmu1o9U36495gOFWtB+w0GMKPjQvpmi0mGGCtX
	 OiKIyFR1LJQ7+8M+EHzH1Du003Ykolso3IOl4Zx7+547EEY/sWaSsFk8eE44VNbCmyA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=O4Xp+jeT;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.128.181
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B59606A321
	for <outreachy@lists.linux.dev>; Tue, 10 Nov 2026 09:00:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org B0B59606A321
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=O4Xp+jeT
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-8b30ff12f84so12220507b3.2
        for <outreachy@lists.linux.dev>; Tue, 10 Nov 2026 01:00:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794301258; cv=none;
        d=google.com; s=arc-20260327;
        b=L0q4qxxP4TL24nFIEzCJKWUhcAhQkPrArRm70rVOoeg1x2SYOwP9ePvk4yUY/p4J7w
         vY9OFUs9VqqnMcGACsuJHCpcfXJijeacrOEZXRH1DYy5FG17R7OdJvVKgThhkCtFsvnU
         +lTlK1MK4s25czPvZcWCkz1q0E7F1+Cw+/x3gu1pO5OwEZVNXN3t89bLM/10LWTj1RNx
         aENKen7lSA9F8Sy29xjulYAjqG5athqebfYsC+m8wBY2+PPQcuKC7bS/CddKOyV4ghcj
         sbSQTakp7TlyMzgxxyQlCZfyqm7Rfz48oBWbCIdrvtZ3xt54lfLC5PTc1/5Hwny6zFS/
         6Geg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=D/l1DG9pW0EG2fGxLRQvmW7PF5RxeWs5LWhd8jRdOqg=;
        fh=SRHMLzRtX6O5xgvsrn0SLNTb6s4ZA3h7XiLQhTxN7hs=;
        b=qJvSrETlQymZrznoRGK2ryYB0netWhK3dhO7egmYwb0B8lSx+R8DI/VMCXKgjpmnkD
         W8jDPxAu1ozNjJoXGVtV5VPic23MBD2yFpvB7A2zJ4pREc1ln1ALBxFAidg4SstdfL5e
         m7pxPIbyM2oD7Z4d1M0ml2TVG3msw8shYU+0gjNeh6KRXRNoZORpaYOzJnwIjPd7DOM/
         4XqtiAJ/E2KFzVga1IzPG+Bv/WX8I8h+sN2CggKBtKkOTC0ZR5i1bYFEUuaShOhPKcfj
         kBCfKs/MfBriNGD1I8AhEq5KwhYvwj5YN0JQcOH8joOyICe5hq0VDYE8aBUsdNCoBuz6
         O7BQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794301258; x=1794906058; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=D/l1DG9pW0EG2fGxLRQvmW7PF5RxeWs5LWhd8jRdOqg=;
        b=O4Xp+jeTj2R8Z3fW0uoIbG7I1IUaSyW7LF0KN8g9yotE8LDr7iTcZ+mXkRuk5OIPOt
         s1T4nQfaUzLbYt1Qx96hdQC4XuyFm0XHmpzg9cPHlAkBhfKDqrklHoHWM6Xgrm3/cX+R
         CiJcaanajfT/3SUm9ldjzFL4thPXCNpGdV8Gz51rHKYtY6qYVmYdRxhWGaQEsfosJBDD
         zJ2CFdQ8AmpDzgojLJQ2g9hOvmE+6EHsMhHHS+51JAVjibZrrwQwb2PoFEADmE9qQymI
         gD+UmA6vz+YIKujtccEkj9uMmtuWDEsFdEKZapyGi4vbgiuP5ZJpKaBGhuIdew4XpbdG
         zzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794301258; x=1794906058;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D/l1DG9pW0EG2fGxLRQvmW7PF5RxeWs5LWhd8jRdOqg=;
        b=ySQk8NQ8k6wWjmhtf62FJKrONAg9Q/RrVb4e3NREvI94SSCMYo4H/ndx7AkxWOm/Mc
         FPiD8zw6z6+2C2VO3QUhGU8AucE1/pkCNKf1vdvCKWU2YBliz+M+Yh2mWxcQVo4NVPdJ
         xWF8XuC8sBfKFQ1/EUSSwrm51FyY8JYAbGxwyCCuMAyeSX8FNujxcJyHJFZ2IDUKPC8l
         5EPLnGF6/astgxliXe+RoSE+ns6v7/Z5uwTBsAT8ukdZHtDk2lHtulOGy1xojxHNk5m4
         aEznthZuthlOq+WDxFn1IdS7LAzkFBx/01m/FXfIQXUeaxTw0afeKtmeQkn8oav5H44f
         h8Kw==
X-Gm-Message-State: APuU4Z8quDmiP9m6sYzE5+fOIB43f/ACwM+JIc1u49wWVbpRmJPdZY0z
	/JFjyo9M1uyvkDt+p4hv/DfEML+3mFCSANUmjofgE+i9wvhkod3T/bgh7/ZnZnLkjU4KyNQtzMP
	1oRx3lqLz8XF/1qk6wFZ3WVPNwXMOo/0=
X-Gm-Gg: AYBFou2SJ3eJNLgOA2To4Qzkorca1+7EMoIPgHFZRt4/p7HR0GM6Rd8vHjfdYUz4uX4
	18y5xGAQiF3pycFoJkzCwUPWsKlVRtgu1CmXX0GxwgL0ao8c057iPfAY2/I+7VrjYA5DaZoiuAC
	SEdrWTtrA2pNyuu3iYzV1EqniVaOYjOmfHMn5pTaIfBWfZInke8CkZ7Mr93sBJ+du/cBUdv2PoO
	TNPulUBM7PsbnAVDg2pKmZlZGssDKzYS1/Gd4u0D3BQXYYYlzcjtNl3Z9OyjzNXlaHlwD5BCB5i
	hZo1U7YZJVjhTK/rsoK4p6mPerGOSCOSbIskaphqjQEuxJBJUiG1JU4ddYDREpzLbAlAHuPYgW0
	uJRu4Cbr9Z6EwVV1JRv+neXqr36Qp4DUvHC4Hag171C7wvNi2olKId+1P1PRww32A8ZhLyZlfIW
	X/VGHyA0Scg2Bf3cWffadBbqY+CallrcTRVhVR8vBRv8KH9aUSWV4qctgcC0Y+hqzLJIrd3qBW0
	mdHGE1YERSGg3uMXAhOVCrYSRqf2SsT43gC5CrjFIqDwc0yGq0QcOn2fRsKcGw=
X-Received: by 2002:a05:690c:6e83:b0:8af:1843:a9e5 with SMTP id
 00721157ae682-8b3929e7519mr14686337b3.23.1794301258389; Tue, 10 Nov 2026
 01:00:58 -0800 (PST)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261110050448.69521-1-patelshivani2283@gmail.com>
In-Reply-To: <20261110050448.69521-1-patelshivani2283@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 10 Nov 2026 11:00:21 +0200
X-Gm-Features: AclHuK9lhRV4tkWDS8XhwM4LHpotMMW9vXUbmZoMQV9ygME13b4eHzMp8NHQLR4
Message-ID: <CAHp75Ve3E7qCXOQi_q9SmTkwhfSnPdWZy1cse0G=BFJ0FBoptg@mail.gmail.com>
Subject: Re: [PATCH] staging: media: atomisp: Fix leading space indentation
To: Shivani Patel <patelshivani2283@gmail.com>
Cc: outreachy@lists.linux.dev, Hans de Goede <hansg@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Andy Shevchenko <andy@kernel.org>, 
	linux-staging@lists.linux.dev, linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 10, 2026 at 7:05=E2=80=AFAM Shivani Patel
<patelshivani2283@gmail.com> wrote:
>
> Replace spaces at the beginning of the line with a tab in
> atomisp_find_in_fmt_conv_by_atomisp_in_fmt() function parameter list
> to conform to the Linux kernel coding style.

Nice try! But, sorry, no.

...

>  const struct atomisp_in_fmt_conv *atomisp_find_in_fmt_conv_by_atomisp_in=
_fmt(
> -    enum atomisp_input_format atomisp_in_fmt)
> +       enum atomisp_input_format atomisp_in_fmt)

The whole format of this prototype is broken (in v4l2 is a strong
requirement to follow the 80 character per line rule). On top of that
is it really the only issue of a kind?

>  {

...

Also note, this kind of patch for _this_ driver will be ignored, it's
not a priority for it *at all*. Try something better like [1].

[1]: https://lore.kernel.org/linux-media/20261027230807.2407261-1-vladurare=
s@gmail.com/

--=20
With Best Regards,
Andy Shevchenko
