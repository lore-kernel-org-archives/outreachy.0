Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8189461
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 15:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743347604; cv=none; b=Lfr56WUVomjvh32i1LMCGf+lO4rlvhhZQ4+QjzBxh6oMTE6l5INH48iiq0Axqs9NFPmSsV0ZoxmA0U2pHh9Dhz6/gjIOnMcqEegHnEpo0FjjNvt41JLn3oNXVYsRtNay0fPVT34mZ1p7uv6S3EOHO6zpuqKez8M4Xa99IODyTqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743347604; c=relaxed/simple;
	bh=Uh6M8sQG3goMrT7WhteEAn4KhvMZKF2ktmsNkfHwJDk=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ub+u11uccXFCtxGl2YgPiFPt91SkZfyKNAaJJhDmF+hBac8FPFzFOY8KWMUUvT4rwiNcITkp4PEqMF9BPZKutJ0WzRngbhw1GSbk0iADIdQwoapbdeHiNg96z8yWiOXdjOUS9Xn4EVMaNX9DAzsyX9H8n5SU4Lb+Ho7pZz6azoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C2wl1S1Y; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C2wl1S1Y"
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ac2a089fbbdso664920866b.1
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 08:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743347601; x=1743952401; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uh6M8sQG3goMrT7WhteEAn4KhvMZKF2ktmsNkfHwJDk=;
        b=C2wl1S1YHMqYpC0GQZ626NAML6FTBV6Lv2SvGidywHuc0b8JoI9xnNHivK8l1Y9W0M
         G171x/aFvli7We5jnloNhO+V59chLPoeoLfN37oQnG2QdRtTwePuHX38iU+DaQHBCPVq
         gnz3ghPB5VE6JCbbfN+R4X0+T82oWGjpa+v2M+LglpPOBmoNpfjOYMP/gkrwMUsMEaF8
         bLpiHuQDiTqSI7jsbrsRJoZO6KQaRaaqP6qL69L69cLMtMqJdwUXZvq7F1RukYelqRXF
         QX09KGG80U09e6zj/cCHODqKF+rBuvaF/0ZpJgIdb4kfZU4hiiMLElYnnF4s8emN4GgF
         wv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743347601; x=1743952401;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Uh6M8sQG3goMrT7WhteEAn4KhvMZKF2ktmsNkfHwJDk=;
        b=ZBEKz/urLK/i0+y1pMixcGZigBD0kHA9lx1hUVcUlvWkzb5lfqKojBz0gfD0N6UAdc
         s4VWJ3PWmUamVnKl5Vr9sAmXQ1abrk4Zhee1EXQAJpvKh08EjzPVRjQMA+HdPJPjeaoF
         1DNqu0mSHyh57PXkRAvxe5E8LBDWHLbYgIq2q/gx0nKDgiChM9J5hHXZziEhcgAuw6w9
         2cvUkcqrRpAvUa8puKqEeiIascOguWfxO7lQMcJo07r5/KKryUCFNtXInWUXt0ShizSj
         XDbPlSs1fzfYTS9GoVvqdvNnWVlcP6fKAx0Z6OPMOP6Cm5nIoXdh0ytjHryrqLMKRtwx
         4ZZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXghvIwLCBCm8Cvn4EZ0m4fQoijJrAnbP/cCVi6srGWbLXGWW03aVvia2EkSkEUtjLrdiMqbHNxy8E=@lists.linux.dev
X-Gm-Message-State: AOJu0YyTNecAPxaM27NEySSJ0tah3q7tihV/xZWccll9K7gL47yKGAvW
	cHXQitQ9xcd6iUCWsK7pAAdTt8wMvw/sJ6CdQQmCoBDTKiJplXwK
X-Gm-Gg: ASbGnctCMMbiq8pOCDjuyLrxLyfXkAvXhk9oKyC/tQNNai9lfkWwypd90JJze776DkU
	AH9/TmXX0OvYuPvaHf1RdkbuGt2F+6iqgyifn8DwXb0Y2eoh/t/77GKQfDYlZHelmJ4lqwxBVOP
	8CR2N4pXv7f4uBlMX92wo3QhgP5GG7CQ1UGqIv4zSr2fJpAMtCEM3ymhm/Ea7WbQu1aINfbBJbl
	6kNJtxc/RqYSi43mvEMurzICq7pxxhuEw2UnW60rYKwabZ5Y22ukmioocIKvPabBCrzr65ZQK7k
	a65J3QpiqTbkfNGrXcJhKomOll5jA8DsQuqSQ+s5RI4xVeBB/I4/ilMa8g==
X-Google-Smtp-Source: AGHT+IEAVtYLxuLHhMEwnfA++hN3iBhWC6IwDH7V2gdQjgTgXSIvB2y3J5meoCtGW1KVaB1wBAwwlg==
X-Received: by 2002:a17:907:3daa:b0:ac3:b50c:c94d with SMTP id a640c23a62f3a-ac7369c0370mr507871366b.28.1743347601110;
        Sun, 30 Mar 2025 08:13:21 -0700 (PDT)
Received: from [192.168.147.251] ([41.81.177.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71922029fsm496067266b.11.2025.03.30.08.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Mar 2025 08:13:20 -0700 (PDT)
Message-ID: <3d694262a5f34ad063fa90741f6336e0a23627ca.camel@gmail.com>
Subject: Re: Coccinelle
From: Erick Karanja <karanja99erick@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Date: Sun, 30 Mar 2025 18:13:07 +0300
In-Reply-To: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
References: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Sun, 2025-03-30 at 16:56 +0200, Julia Lawall wrote:
> Hello,
>=20
> The actual internship project will involve using Coccinelle.=C2=A0 Some
> warm up
> examplesin using Coccinelle are available at the following URL:
>=20
> https://who.paris.inria.fr/Julia.Lawall/outreachy25/
>=20
> These have been pre-tested to ensure that they highlight some
> interesting changes that you can make in the staging drivers.
>=20
> Let me know if you have any questions.
>=20
> julia
>=20
Thank you for the update I will give an update soon.
Erick
