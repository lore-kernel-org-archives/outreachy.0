Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232A9381EAB
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 07:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792393920; cv=none; b=l9HNyHLknTpWWKbw0++WhHKhuunZHERxV61EqeZrbBNezJwRf2PtRVIVJ1iC+WWTE0qb2SC1vuqMoG17rQNaFhCz/cqyNWrE8Racoc27ZO71gzkbbEYvICBoGPktUA8jqzKlmwdtK8rMbA0d6GO7p946lZRTH1dbcJa1KysEQ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792393920; c=relaxed/simple;
	bh=f59ywmtVFYnZ4Aq+pryFem0695sG6gmNqlHEnXTKRdw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tooWkQBNeC7ALSTZuDl4UbdAsYNVu7ODsgoac0X4U4Hk7ruU6zcajCql/x4YKQAcb/usdelDEUjWxl7yfq/TKFHna8WeygkWU4iD4meNkX3lEj5zwHHoLCZR1J+nXl+wGx9jHm3+o0GtHpiCZBjHl+YWKMe2gogl0PAEbrqcjUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nlWPIFhL; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nlWPIFhL"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4a19cba5c14so18961095e9.3
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 00:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792393917; x=1792998717; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=0LfHoplEjhh4tbEt4TC5T5vqwj4BvFm1Yvwx89OeZD4=;
        b=nlWPIFhLQKTF+DQk9Zh7udoD/ELSgeAle4nr49/IpskuyTrnGNVvO+fPumkKPecd1t
         6lUdFHnLy2TF6lxvh2aeJoOpbU6UidnbMO460TS9HoWoCE/0IGonG8RdX3cJkIjyMqR/
         Vz4IPP+ghfNg+tCM74GIELNMW2jLn4segMP9M/tOwUIHvpAio6lvMByfnXZMARV6q7x9
         bec3QzeDdC8piD4tJvRoQ6QN32goiS8tsOaHOlJ1ocDXNSDe93I7S4cEK0oOzOENqufG
         mB9/ou1yDyoAkxLOyhWsFXX9I10/5qcZr/716NL9EDUxUtyP9xL+3mxb58VS7vwNddrN
         9lqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792393917; x=1792998717;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0LfHoplEjhh4tbEt4TC5T5vqwj4BvFm1Yvwx89OeZD4=;
        b=fxYRZ0wz1D5O7aOSu1EK9bDBLx1B7tvdQw7EJpXJ/ZknLAoKHQI0IOXCbYxr4zzNuq
         T05ynsFPCmoZWLh7sdUZzFaJp8GFunMlv412fnRnqC1ucioquG2e7uxEBygsLf4V/e7d
         TD/s+FdpEQGTtuc/7wdhfxF++zgqfojn7faI7jlNF5swaG99atnKB6eYThuJuGSGAMrT
         G1UlsqAHTphDH1/FKznqoHv4E0zZuTWzoqLmxnz/r02EgWNBqiO92Mc90ZKeAnO/eIHZ
         xLINTisS6wHG/Bhc6wsLq7CbYZzdgnUf37fYdxK38x/8zrwOiQfYy6Ecb49jXnX/BnyA
         JL5A==
X-Gm-Message-State: AFq9FYJZ2dwNAmDO30ts8AevXcOEN6VKU0GSDjB2G59NfaOYdMJyaySo
	V9PsKwtZLv2oHJsPUvY37B9zJg/PL+AJyLu5LT288xZo5S0k4rbjY+sz
X-Gm-Gg: AYBFou3qN5s25KcNThzloAt3qevFDIhA0QNRBsLi+pt1BYULZCk+ZO7zhRxGm043VNe
	r4tzD53hZsAb68HsJhClYxcIO6YYanW+Dj4ezTFDoqooUeJ+rw7t/7gqzSdDwNp84J2y6xLV1wU
	06/phnkuYwmYYU3feYQlqeDm1VQwBB6JbQIghOGmf/Wyg/felnX9HvxEaGcXx+A4cYH88qyH7ka
	yU6/7mfq1mQTqKPey/70+wKaJMkzCyBhBPc8Nccn7KZpSd2JYkJFbg7zhmlJyPrAGUuMuU2+0Qi
	BO1H+F7cpxOyKU5BC7ZjA9BXHuD/W1dP7bR1nOsNP1VlfGpYfEWCGinwow84zAQ2go+eQ2Kb7mx
	bpq2JvSy2u0UHPldKmefX2wkOyOMQFeGbAg1mhgRY0jlhz7rgsvFDOZ1iugxjEdMOnl0A7qCnpk
	G1U/gMgzo/0WUWdQG1c2BwfPb0xlWzWONbrApaOd4szOuo0chiERL76zL5OAGgiphdKm/d59SWb
	3USo5dSxIANiMSM30POYd+6g6PTgnrElIL+ZME3F8P60vUWTC2I1Q==
X-Received: by 2002:a05:600c:c8c:b0:4a0:bc9:28c6 with SMTP id 5b1f17b1804b1-4a1d7643dadmr126374435e9.34.1792393916919;
        Mon, 19 Oct 2026 00:11:56 -0700 (PDT)
Received: from ?IPv6:2c0f:f5c0:520:5f56:3dd:2725:4098:ccfc? ([2c0f:f5c0:520:5f56:3dd:2725:4098:ccfc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1e3ebb3aasm169594565e9.0.2026.10.19.00.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 00:11:56 -0700 (PDT)
Message-ID: <ccf48fa6a433c225c95299d27c7ecfac8a644887.camel@gmail.com>
Subject: Re: [KERNEL NEWBIES ACCESS] ComfortOyewole
From: Comfort Oyewole <coyewole7@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Date: Mon, 19 Oct 2026 08:11:54 +0100
In-Reply-To: <3942ed9-80c7-7a66-c61f-88f6142dea1b@inria.fr>
References: <8e80fdd3bd43a3ac4e90085d3b33174e87af62eb.camel@gmail.com>
	 <3942ed9-80c7-7a66-c61f-88f6142dea1b@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

-----Original Message-----
From: Julia Lawall <julia.lawall@inria.fr>
To: Comfort Oyewole <coyewole7@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] ComfortOyewole
Date: 10/19/2026 01:25:57 AM


On Sun, 18 Oct 2026, Comfort Oyewole wrote:

> Hello Everyone,
>=20
> While following the steps in the Outreachyfirstpatch documentation, I
> noticed that the link referenced for the Linux kernel coding style is
> not accessible here:
> http://elixir.free-electrons.com/linux/latest/source/Documentation/proces=
s/coding-style.rst
>=20
> I=E2=80=99d like to propose updating it to the official HTML version on
> kernel.org, which is accessible here:
> https://www.kernel.org/doc/html/latest/process/coding-style.html

Thanks for the report.  On what page do you find that link?
I found it in the Git post-commit hooks section of the Outreachyfirstpatch =
page. I see that the link has now been updated to the .html version.
thanks,
julia
