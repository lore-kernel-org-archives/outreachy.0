Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C10250BF2
	for <outreachy@lists.linux.dev>; Thu,  3 Apr 2025 16:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743696887; cv=none; b=K7/Ryk8I5UDNx1yJhOahr+ht1+BNY179/0fy2m0881frGGxx4EweZdM1bB/jLEqu0jC/dlyFhEX2PLSc/4ehUvUR9/NWMnKPDFTIoCHTs0/iRXHNtIiNTxrgQbpTtgG6DQy4XGuj+aOkJZkZ2I+TavI/y5dZ8es3CeVSbjW77vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743696887; c=relaxed/simple;
	bh=1fIF67zCLbcV2N8iN4s7/fno6ONrauMhD7KuQaRlJ68=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MUGTFY62MqQY0IC0v+DqRT1l6Is9Hm/38MAcW2sQu8sbd0jB2RgZfuCBjG4NIfHjCXzPpyeg3EfvjRc3K9VH5hEsFuw2VZyqGLejzPj617P4bJDSX5SWTE7aewok0rQXKnMMoiHYRLVX1lGMl/OZ4nlBSvFlqTgd5H12k0p0W+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I3Ff3g+j; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I3Ff3g+j"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cef035a3bso7996255e9.1
        for <outreachy@lists.linux.dev>; Thu, 03 Apr 2025 09:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743696883; x=1744301683; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1fIF67zCLbcV2N8iN4s7/fno6ONrauMhD7KuQaRlJ68=;
        b=I3Ff3g+jBeE/uts2ZAodk3Tqg0Jr9mf1m/rF71DUdE5AsfPYqMTIg4omrtTw0YAqv1
         HSOYP0zh1q2+XXPYK5cJNIkjxgyWwwtCl+FGgalQfTt3RfiiC2FoYcaLzCvwebYbEMGr
         PW2/CIh6cYKzfc5ljak9BpTcFdp5Vh9YuhGKrTzokqXG/MAkqPvW4a+iUJ2t1hXJYRS5
         ODe7ydmq3D1lPbkaGYg5SDsKrObXhd239TNlv7kxDHkgXukpkhAYm2Uzg8QptJYcu5hP
         UPjKnJX75OYgsSyIM5cIbJpSVcR9xXGYf9H8szUMq/oBn2IeEDNAMDypyQio0uYQLImE
         mC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743696883; x=1744301683;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1fIF67zCLbcV2N8iN4s7/fno6ONrauMhD7KuQaRlJ68=;
        b=I7fCR6DGIADG7EUgjD60N6p0BHLjm/uA4qHcUPFWI9kP6GhflVaoelQJMK2xPXj31W
         G5AQrYWhlvhO1dbMBIrNkz4B9S9DknWYf13oyZJFaEGf0f06rJjs0ea8eCb8CdEBPCWa
         l0xUnn7vFhu2df56Y+eQBYdvJVRiqg6RkzKpEecQnV7QJddtpIoA6zzlZnKjMqa5LgOQ
         AbB2M1LvhT+eqgFFCdIV3HyV0EiSdm/FJYRN0cBB93dPH8FHCnBblAJApiUc4hRq/6L9
         xi3VM/5NF2cgDCU1QbZgeX+HmsanRdbs6bHm8xoU/9PC+mTwPiU3Yxk/lqKYDlKN1TXM
         6ZPg==
X-Forwarded-Encrypted: i=1; AJvYcCUShKso8edjd9tFBzaI8wK+P+l8dI0pr/032aiEA5AQxOOPgEc5Avh13/dVgWHCPbSR77zgpMOVgD4=@lists.linux.dev
X-Gm-Message-State: AOJu0Yw6Rup+Dt5qOAetvMNS2MSARsG8TZXIbPa3rA3Zawc/nhuu0TG1
	qZFTWoNA4TdEyCPj/eNZdPUXceIy+tKIs+ZZSQW/l1PeUpEExx0hDTVBmDKE
X-Gm-Gg: ASbGnctGYDYsR1kSgCHtCkZmN1bd5ULzNFmqeSR+IKWrkcUtEIrHbCHpMUTe3MoxKAV
	3GUO5FRQSUXwWu+b+sZuemIW5pJ6qy/WLdddCTnMFOdCqg3r1UxwwuFiQUYP45l4D/8VeC39Lmk
	BDc1zuPd4jIcmtFLdEoVurWZwwPENWMieR96d+VG7/SjrJXPaNAqdSVE2lxXlOObvU41IBlRHXZ
	cHWwK01pKucbywgxenTmcpKoxjYZlm7OxSSTqPuAJGGoPlg180K7dGJ2gwPXLLdvnfvC287QA0s
	q32cMT2cj4e6a6MlrEoSw+4aWYMcF5ZOEmtM4uz6UNVaiVzRW7fCov2BhrQzVrg=
X-Google-Smtp-Source: AGHT+IHZF0b9YFkojcaZ+7OzKHwqR383VW4qJHJX09Vhy9UsgmICzuZhHauVRRWoZ9kZZ6wHUFch0Q==
X-Received: by 2002:a05:600c:3ca4:b0:43c:f3e4:d6f6 with SMTP id 5b1f17b1804b1-43ec15363efmr35389095e9.31.1743696882874;
        Thu, 03 Apr 2025 09:14:42 -0700 (PDT)
Received: from [192.168.2.40] ([41.206.42.66])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1795782sm25676345e9.26.2025.04.03.09.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 09:14:42 -0700 (PDT)
Message-ID: <67b852ebc7db33480187c369005a3c34158b4353.camel@gmail.com>
Subject: Re: patches applied
From: Erick Karanja <karanja99erick@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Date: Thu, 03 Apr 2025 19:14:39 +0300
In-Reply-To: <7ebfe5f5-d6b-bb13-795f-f7e61196cf99@inria.fr>
References: <7ebfe5f5-d6b-bb13-795f-f7e61196cf99@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Thu, 2025-04-03 at 16:47 +0200, Julia Lawall wrote:
> Hello,
>=20
> Greg has applied all of the applicable patches now.=C2=A0 You can check
> his
> staging-testing branch, and if you find your patches, you can update
> the
> outreachy application patch with information about your contribution.
>=20
> If you don't find your patch in his tree, please try to fix it up and
> try
> again.=C2=A0 If you need to resend a patch series, you should rebase
> against
> his tree and omit patches that have already been accepted.
Hello Julia,
Some initial patches have been applied but some have not which had no
issue. Should we resend them or await for them to be applied?
Thank you.
>=20
> julia
>=20

