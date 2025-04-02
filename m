Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E14F231CAE
	for <outreachy@lists.linux.dev>; Wed,  2 Apr 2025 07:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743578145; cv=none; b=Y9IN9FhSpO7VOG2n0iGZUl+rJd5J1QxaeVM8Ej/izCUI30mMJPN9JlE85uEru51oJeKYflpkINW7btfkJlUD/gKa8K9NdFmSXZ3U+9C28FEEG6pcTsmC9Ow/4QF6QRzSZUQSrsB+e+q1w5O9R1e0zFsQMz9ga/WhYaBpPwjN2i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743578145; c=relaxed/simple;
	bh=O+84DvDHtgxK5D3MIv7SCDBPh3cyrlTHbLDYVYXgMY8=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XdRWSpMB5SVIRhe8KClfLjRl7oEzQjsMmFvBeAgamlAElfYo2VA6YfaK7o7UbwcISBc5I+lYIWUfXXPbUneYGfZKKl9IGMC1t8JZeTMNjVceqw/LNR9PyTVGNJ/yZVnbXApjBZYepVxkp20sS2SN4JdM3ic9i9GwOYR+SaELcds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QNQCrC1P; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QNQCrC1P"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d0782d787so41823755e9.0
        for <outreachy@lists.linux.dev>; Wed, 02 Apr 2025 00:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743578142; x=1744182942; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+84DvDHtgxK5D3MIv7SCDBPh3cyrlTHbLDYVYXgMY8=;
        b=QNQCrC1PvkdLyulRsAqo2ehxrF+joXBQq6XyjNtELzHNixS5lxzzTev3BYjfJXCY6e
         Xe5DznOH8KI8Mk1ZLsNJBEZ2Rf0JapnMK91zBj9dgXTntUDHCLm/QmeHgoYKBVUS6zAo
         u1Z0Pt2GC6NRw/0lx+zZHtRsJqreBIxFQNRcPbOtxJ3Vn08jUS9PUFmvTQwWxq1EPe1J
         1vHyAo1wSMTlsWCG1oCC22m24QnjDNNPxI3H8rgllTZytIg74fDfN/+qqbrw/C++mpty
         G3vGGIaRw8/rIhRBVMuZsXdZwdAtN36MeXzqLxmszsbix58ypINngldtGKlPS8rFBD0b
         Boew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743578142; x=1744182942;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O+84DvDHtgxK5D3MIv7SCDBPh3cyrlTHbLDYVYXgMY8=;
        b=LZvXs/Ro7ZCnJDECoK16VAayaPFP9vi+x+BcfY3NiadOi2CAUWTHWkYbnTqmFu7+Ka
         579X0z+iN3piGr08ckfrANNjehCOPJYf7WVocbDmR8cFQMiuTXkZrWDftwDbpa+Uol8C
         aZmFb+/2N1mpbVJZl05bkzcFMJqa5dpFoC8lC+roFUbkDN+vpV2l8T6T0n7PczJqfazk
         OKcvkCgfr6VqssEUGo87EFHLRVh+uE/VSJscTDuDEmhk6kkTmEXDgpKg1jHpSxB5mzbp
         cfnHRv9JF/dw7jaJ9yedIeIULfv7Dde/kTg0RRf0ajEVTGD2R5tuAxVRE4s5YePiyp20
         +M/g==
X-Forwarded-Encrypted: i=1; AJvYcCU35YcESytIOGfBvRD3ujUvGyRwdGwyZtiEMysNtUdwuywhDuGtaZsIBmB0CCKwqE71L2fPn1geZvA=@lists.linux.dev
X-Gm-Message-State: AOJu0YxTyJH5Dx1chvaiBmp3iI2aIf/iJCeIvbNZv8SIEGFf2V2jOe5u
	I1xQG0hPFRyWcY1nslukgrWWROuvNAwPYE1E3RLO6VDwmXfd263F
X-Gm-Gg: ASbGncvg8eIa9DScovqxSC19Qn+LAuhOkZBrvSFnlNmWafkpOciUr22qM12/yYZAYq9
	UVoEYi17CAtG2MGT6MrDgwqh6KAFm51LCDCEGYBruToB7AEbLz519uWSkamPx/NHBmvTqR2veQi
	mk/cuNNWM9ZupC1fWUAKkB9ATDpJe0xyHN5r4JxkaMq4uRKS3McfC60EbIrQNG15T1zi5cI56xm
	CcAr10u6qZIeVenyNMHpSi0LML9K8uSyR+GTDyliNyOSieuNx/zctnK+LYaHvZtDU4JrCcwib5y
	CEAxbkzEvgK4XYtMmSxflRNkbXMqy67b/11biXUW5O0QOxwsaEge5dA=
X-Google-Smtp-Source: AGHT+IELp0yDEG0CEOq310v5UPBDfVa6/iRictyGHNXD3TXuDucZxf46d9NREFhM+vDF5l905QJ6xA==
X-Received: by 2002:a5d:47c6:0:b0:391:2c67:7983 with SMTP id ffacd0b85a97d-39c12114efcmr11423099f8f.39.1743578141576;
        Wed, 02 Apr 2025 00:15:41 -0700 (PDT)
Received: from [172.16.8.120] ([197.155.71.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b79e37bsm16379275f8f.61.2025.04.02.00.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 00:15:41 -0700 (PDT)
Message-ID: <7d2e32b800eb14343084b06ed93a2e5070426011.camel@gmail.com>
Subject: Re: patches
From: Erick Karanja <karanja99erick@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Date: Wed, 02 Apr 2025 10:15:35 +0300
In-Reply-To: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr>
References: <cd684867-6bd3-f7ef-9672-6513e0efa336@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Wed, 2025-04-02 at 08:43 +0200, Julia Lawall wrote:
> Hello,
>=20
> Please send more patches.=C2=A0 Greg has been busy with a conference in
> the
> past few days, so it's not necessary to wait for feedback.=C2=A0
> Generally, I
> will send some feedback if there is a concern or suggestion for
> further
> work.
>=20
> If you have sent some patches already with no issues, try running
> Coccinelle and sending some patches according to the suggestions.=C2=A0 I=
t
> is
> not necessary to send such patches at a large scale.=C2=A0 Working on one
> file
> at a time is fine.
>=20
> julia
>=20
Hello, Thank you for the update I run one of the scripts you sent
earlier and found that the suggested changes were on a struct defined
in a header library. I would love to check further that truly this are
boolean definitions but I can't access the header file. How do I go
about this. Thank you.
