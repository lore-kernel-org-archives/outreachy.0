Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82AF75680
	for <outreachy@lists.linux.dev>; Thu, 18 Sep 2025 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758167675; cv=none; b=SDDDQKbd4mIZ+xbOMrtpQxreV4vJB+YgI9x/0UvQcD//gKcDCAwkohJhYqlQmw1bxP3FqwKbqGCaHQKXc2c9SmErKqbLJ52CJFMinjsHycfMsmCjXilFJlCaWUNBKbC6v6P3H6wR4N4H/gpEFoC7x3RYCzbw2BuURdhT7plyjj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758167675; c=relaxed/simple;
	bh=3XfCopQd4i5yW5bVwmX1kh0LOkX0fazDM7dJ2IJcfho=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HNwUyAD7tI9zNJD/em+uwy+5p/u0EjZm2UH9pt5mfbo51vgJkX3xX4JgAVNRjW35J/4rjsOryoqpdBbJFRsuPOHFV3LmJpc66omEfllSxkFqACsNAZPhsjZBy6tJdtyta9MZ7/2Wm/zENEL1y7JOp9ySj1aBRaMlf7hrFjkXyRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AoMMzUQL; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AoMMzUQL"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso329300f8f.2
        for <outreachy@lists.linux.dev>; Wed, 17 Sep 2025 20:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758167672; x=1758772472; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3XfCopQd4i5yW5bVwmX1kh0LOkX0fazDM7dJ2IJcfho=;
        b=AoMMzUQLlSw29p4Uh1hyIS08fuVzAEvFLeMipM0MD+HSo/ygIwNhXP+btdmDyfQfZL
         UTRD2h7GxpctPN1EaueXPQwF7Q/aaFW/P3P+8y+Li0vnduDDCPrwxBJcLXpZPxs3G3kb
         03+OWSBDstj2y2FJ2Exaja0Auj93z2xffkUkCj00gSEjwYoHcBYKLhdageHi8eq+lInc
         K0WKZzPqFyLAawWZETZrJ3zrXLujrhwfNtVLiA6ELqmWRk6ZEXpzOp7JeleGx7QJT24G
         q4sAB3Sdb69SudwIA8kc67DHZcjHBdBmwc61DK9lzGxLwEJ9bsEs4wi3w+VWIXD44K3t
         kNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758167672; x=1758772472;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3XfCopQd4i5yW5bVwmX1kh0LOkX0fazDM7dJ2IJcfho=;
        b=olodAL+W+ErF66eT5F7Ig414fT7XXPqCjQ++4PbQwesCz0hAQM2O3nv90Y9osz6jwc
         nApQJ1mYvxegsYuePKwqIR7IjTkC7iDDivysilEWR2u1vKT6gFm+mJPbNt1NhTJ72Lzz
         mryOUyNavb7fnmpvd4Z1//ZT4TXY0miRs4DF5/dxsPlQlCfmvM3v9j0SDuMfvytb7Apf
         Q6lyDgmpfaS2YTRlRAH/M3S4+5Hb/Ezd1q6JLJCjhIXmNCWUsvLl0FlDAXbSwkXx9Vpa
         N5b8mruOfVQoCW8Rd3FEzz4wOpvaqQjkaji3Jxpfe3z0BrpfYLNosU+22J5VN3yF1zHJ
         kKLg==
X-Forwarded-Encrypted: i=1; AJvYcCUHv2D3by55YbVIpHvfGvzfKUgslMPoLagTZ//PI9I5aukspsjyltDiqzxnbottIOrVovmv40ONPis=@lists.linux.dev
X-Gm-Message-State: AOJu0YxMvjRvfn+d2Fz9YQALC5ADjTKeuSwat1dKX51bTfmUP8YvRxM+
	OGe+eShBLqgk+lLYrEC0s6NmrnRwy9ykIGjvDkTsXwwR+QN4+cXRXoe3
X-Gm-Gg: ASbGncs8x5HA//8Nv/kILlV5RMhzwRlze7EL9tXsEKoYHnr6QwQDxL0tl8U8zUxppwl
	CSkSIfg3gaXaCADO41TvcIBSkPiUc8UMogTsDzfyOQGk8ZtoUhdakuECaWouNw8zkZFWVhLnYw3
	vTa03CvhvPlDJrXTM2uxsAZa30FzpD7XXug3PCpFvlSM5nxFhYS2pVnjxY3DNFc+/TB13JzW78F
	fsJqtnRV57zUCuYxmncJoe3hPZEIcZFHVhOqzCGy+RX4i7tGDd+Jd7h78eanG2LZmoUU0NoY1mm
	c2S81L899P+drFRpw6zcRmUo8BsYy7gv1J3bHvn/5EZvpb2P/w8uICj8ayxqwdKzmdoSMyykbJx
	yovCzUp2+OVa0WDRF3S80n2C8dhZpUeJijaraMv97UhK8ylBrNhYZ7Q==
X-Google-Smtp-Source: AGHT+IFthg8S0GIpBBgk4yCB3r83zDTb/FGwmZ5PpBJXMsXK+POjYicl7IsKVg4OFAhg4drPTInOOg==
X-Received: by 2002:a05:6000:240c:b0:3ec:dba5:b65b with SMTP id ffacd0b85a97d-3ecdf94e6a0mr4196818f8f.0.1758167671638;
        Wed, 17 Sep 2025 20:54:31 -0700 (PDT)
Received: from [192.168.100.3] ([105.163.156.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45f32085823sm53266515e9.0.2025.09.17.20.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 20:54:30 -0700 (PDT)
Message-ID: <214450ad06322d199e1ec625575fca7f69da70b7.camel@gmail.com>
Subject: Re: Kernelnewbies help
From: Erick Karanja <karanja99erick@gmail.com>
To: Miguel =?ISO-8859-1?Q?Rodr=EDguez?= <miguelonrm1@gmail.com>, 
	outreachy@lists.linux.dev
Date: Thu, 18 Sep 2025 06:54:17 +0300
In-Reply-To: <CAFVdgP3OS1+_7qQcYM-8jy15PQubt+uV4W4BAJU-gYj29SpkYA@mail.gmail.com>
References: 
	<CAFVdgP3OS1+_7qQcYM-8jy15PQubt+uV4W4BAJU-gYj29SpkYA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Wed, 2025-09-17 at 18:25 -0700, Miguel Rodr=C3=ADguez wrote:
> Hi there, I am following=C2=A0this tutorial
> https://kernelnewbies.org/OutreachyfirstpatchSetup
>=20
> When running the step=C2=A0 "Building the kernel", I am getting the error=
:
>=20
> HOSTCC =C2=A0scripts/gendwarfksyms/gendwarfksyms.o
> In file included from scripts/gendwarfksyms/gendwarfksyms.c:12:
> scripts/gendwarfksyms/gendwarfksyms.h:6:10: fatal error: dwarf.h: No
> such file or directory
> =C2=A0 =C2=A0 6 | #include <dwarf.h>
> =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~
> compilation terminated.
> make[3]: *** [scripts/Mak
>=20
>=20
> Can anyone help me know why it is failing?
Hello, have you installed this libraries=20
libdwarf-dev and libelf-dev?
> I am using Ubuntu:
> $ uname -a
> Linux miguel-linux 6.14.0-29-generic #29~24.04.1-Ubuntu SMP
> PREEMPT_DYNAMIC Thu Aug 14 16:52:50 UTC 2 x86_64 x86_64 x86_64
> GNU/Linux
>=20
>=20
>=20
> Thank you,
> Miguel
>=20
>=20

