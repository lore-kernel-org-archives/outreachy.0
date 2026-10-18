Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7289F320A04
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 14:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792333078; cv=none; b=pGSlXpNtfG8QZm3zqdrmrHFzF2CT8ZCKPPfMnq0/9Mqvkz3tJfUU7tIkOELnpg3DSaIbhpbqpgDOdK+1klDu0TtfLMjJ0sna1wn5ZB3Eo5c8M2yrrTSN3G5JnJ0hhLtQJeV5BDADFoFy9JYlf70BAXgMkim8kc8DIBzzQ6h5kLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792333078; c=relaxed/simple;
	bh=sMAGYXfL6F+KPL2Dc1+aS/NnJ49VuStS3WCXoMwzeQw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LGjKEP8cvlVi/Ug0cspn/KgJeyiyOwx0DV9TBQvAphy182BpRuw4NXT951pGwoYXhD2VMDOcYcE/Fbz1peilIYFKAi7qvTMGgROg6kgqOMRooG6/qiSmwKHW/txBgFYOlsRpgJIh4A5Y/WaakeEJAVu7jEHbdVhlVZTxRtz/uwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C21bJfyj; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C21bJfyj"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4a16af2a232so9752665e9.1
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 07:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792333074; x=1792937874; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=N5MgBRSHIYkyWj1heAuhLcTUma/UABuoBxMG8V8kVpc=;
        b=C21bJfyj/w0+ssx5yDeDvBcpRd00k7XNLwFUwz364UoIJh65GS/NkZ/+hTPdnQnr2h
         l5k1kPVnbKYdh/xDze2sdF0t9BbRnYdXXKOiqzD5Ip97PTS6mqYYigGngfDHQNDD+Qi8
         vTAEQYt2t3vmbOsEyb8RCHnXDE46pYSpvsFFzwQfJObVmhneRW6v90uZi5in0nk2YpCh
         V3lekkzdgiLR+8er5U/hRikl73/BDph7/8fnKYZ91P3Mbb6r0kJP3S9MJQ7dDe0ffP9p
         Qxiav92w67Ype8+ix8wiYslwtvF/msVNkb9OyqM3XOkLUH9aIsEYfqxf+pUKW+GujUQ0
         Cu6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792333074; x=1792937874;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N5MgBRSHIYkyWj1heAuhLcTUma/UABuoBxMG8V8kVpc=;
        b=t8LeXvKKcrN4zJ+kPIjb1r14ynytoN4x1ZixyVSYIWNMw908U2u7wy+k0UUEhYfCki
         +8NU28+IJpekTEoYcIof3tfhiGr8DT3eWMt6Pusv4++OOpESQ87Cls3Y4yK9/v+QMkmP
         M0Z67AhuTHoAakEqsyD511OkfxPUG4dTkIMMbYByDS1dGbxLEfVZVilpzAYhfADoSHHh
         FWkWiOhjh2oGsHHUuiGNRpw0BzcMKwoyX9WtZ7Zrw/NDI5ATIpLQgR3l9Ptb/VliA6cc
         DIzfRhMun4rF+a0TwMr6quoMZWd6o4Qq2Igzg2YwoegT1wDjr1tVtPs2kNkHZ6+aLQ2+
         rtfw==
X-Forwarded-Encrypted: i=1; AKwUvBypO1k3et+ne9FpGzDzm+LThW02Sz9KkqoSAqL9iednvxDTdUxVSOCmXiQGDNI0rST3igdzpINWeto=@lists.linux.dev
X-Gm-Message-State: AFq9FYJ6puxn8fnJFJV292RWMHSGQRNsdGbPxfbt7hTlshEMe1wIByRx
	BtZ2vLGlYN86hDa4WKuqVZpANIOqnVF15a/LDcULGlVT5kXbd5+nnHzF
X-Gm-Gg: AYBFou0w+rbkzTOxLaiTOWgFjZTVeowBardeP6TH1aHr6uFFPRJSVEklsEAgYPGTAtf
	OGPfP0T7mvZXgqVCkOCv1JUOmyP6wW/DIPiCfDBtA1uJ2k8qTlselrDVAW9pPD3iBx2saME+2A2
	E6kqP9jJUgzdSepK1XEjszrIYoohQfdS+eE1KfRTKYEkuAx4oQuMpUF1DWzJqIHwh4qHLCQElZR
	f26KF0jNX2azWGqwFMqhKox8aH0Bl3flaA4X2l+QprKHX3xGyCNpldzt8pi8ekwbahVvciykJba
	qg9j07xIh6cCaTbFgLwazDoF+3oar7BSHSoHptDYmdc51eZV2GZhz/PL5sm4H+IlGm1KW8uXdtg
	wu3pqUocr8LgZMW+C+Ouc6ds7+jaVol8W9v6JX1HDyM/KcCu0eYk1vOFkdPOoqbe9GQux5zjbIO
	ihvWJwUJ6aeHuDZyXj6jITY1sbX2qm7quT3x2aSiJ0KVCfL9SOGCv4FQPRAJa3ZzT4ufCyac1tU
	A==
X-Received: by 2002:a05:600c:3b1c:b0:4a1:71e5:9420 with SMTP id 5b1f17b1804b1-4a1d75f9857mr104356965e9.13.1792333074484;
        Sun, 18 Oct 2026 07:17:54 -0700 (PDT)
Received: from [192.168.0.50] ([102.91.104.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1df164777sm112503505e9.5.2026.10.18.07.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 07:17:54 -0700 (PDT)
Message-ID: <8a960200525367f0fadca6b83ca57273e469f225.camel@gmail.com>
Subject: Re: [PATCH] staging: comedi: comedi_fops: fix alignment to match
 open parenthesis
From: Comfort Oyewole <coyewole7@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy@lists.linux.dev
Date: Sun, 18 Oct 2026 15:16:20 +0100
In-Reply-To: <2026101838-factoid-filling-ce0d@gregkh>
References: <atTIKehBxn93Lcix@ubuntu>
	 <2026101838-factoid-filling-ce0d@gregkh>
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
From: Greg KH <gregkh@linuxfoundation.org>
To: Comfort Oyewole <coyewole7@gmail.com>
Cc: abbotti@mev.co.uk, hsweeten@visionengravers.com,
linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: comedi: comedi_fops: fix alignment to
match open parenthesis
Date: 10/18/2026 02:30:05 PM

On Sun, Oct 18, 2026 at 02:22:49PM +0100, Comfort Oyewole wrote:
> Fix the alignment issue in order to adhere to kernel coding style
>=20
> Signed-off-by: Comfort Oyewole <coyewole7@gmail.com>
> ---
>  drivers/comedi/comedi_fops.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

This is not a staging driver, why is staging in the subject line and the
cc list?
Sorry, I made a mistake while working on my first patch. I just realised th=
e staging drivers are located under drivers/staging dir.
Is there anything I can do to correct this?

thanks,

greg k-h
