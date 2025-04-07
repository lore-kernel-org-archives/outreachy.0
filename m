Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A39B18641
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 12:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744029892; cv=none; b=X1X8nZjKHwDHVqSkAOwsWWe4UJ8tCYrQD1m76dmTZ2d9/PeT5IN137Fj9VnTX8Q5rGRu8MTGM0X9aAnd+xUYG7Q7EfaRehd/vS1zCS7sFY3FOtRmOtMM95Yr1IQUfcvVquk7c0EImMakxwI0neUAkrqdkKC8TnZVYP8nOdGwuW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744029892; c=relaxed/simple;
	bh=3LDCsVhI07thsOR8oQPsXHqEdUcUnH4F8Umut/NQjbM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HVAlB5oFOgiQWXe7kNsT3JPAOZN/j2EBGqwRQWD48CxhNjoEK2OYfmrM0EwnnwKPKn5/9RP/q/2oZSDi4FAMyvygAZvENBEJUbmpue5d5rXMNFWkBUP5F592fIaFNABhRKhgAObBKvKZHmxCY9aftpaLB5YVDQK40alinV55C+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LOPokPZU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LOPokPZU"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso46614565e9.3
        for <outreachy@lists.linux.dev>; Mon, 07 Apr 2025 05:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744029889; x=1744634689; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3LDCsVhI07thsOR8oQPsXHqEdUcUnH4F8Umut/NQjbM=;
        b=LOPokPZUgnrG6X2vr0oTtGFrZDbwmfTD3MjJAgLgpthVH3jZlmfSdkSCcen/cEFeTo
         Ij7SoU0OPt9UCVErijA15e71SvaSdCgQJXzQ5OAxvQuGs5vptHREW4OijqCIM7J5dUrR
         z0dFcEBQe2CzeY8V7YJSanKOSzz2qFtAvD9DPzEnjrouTrx5yEluL3NwWaeZ861o4muC
         wNSsPqdFo7ZtAex5cu+VFWm0f6/Lsh5A+pmcdzjHZIWaEgu+Hs1JdfXnu5awtaEv6Ccb
         VQMYz+/P5Nor+T8vDG6rmEE8y+puXamea4gq/DSKEdNcfrr3uu8wPHj+kAOm1csf7BDV
         UbDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744029889; x=1744634689;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3LDCsVhI07thsOR8oQPsXHqEdUcUnH4F8Umut/NQjbM=;
        b=pDzXtXL/kDogoJnOXwOhCaGCT0fbx105wy4ZAMnAIWF7ohXWHOaEK09A8MXrjzbXLa
         wCqYZtfmtHfOgiLZ0/TWMhHJEZVWhQC2I6kqZSa2a7ULVphql4DJB8ZK0MRtqnO508hP
         5xSALtso2dHCqkOjQR84Qa0DOT0xOJca4Irms+qNf7B+kQRgKOKUyFX1JWviKpH+Lt8R
         GgWjmBvCYAgk1QCEMi4KtnrSzafnnVyDnSCjL/bNPiTMy5oDA+ZUvi+Bv4Zp7HJYSR8d
         cgYf5G2ewQoVvVKmHG+6upEG8UIYLECwafyMwSWt4ZdsXEbkKL+tXHNSM49/X+epgN3M
         LVvQ==
X-Gm-Message-State: AOJu0YxWY0Yngx82zl1omaEzfiv8KwTGZZtUJOIzXltPXiiH/mnDi/ZL
	BMNCpAb5zoDT82MfOHAkFOrfV/iX3sOBmNpJyEnGaaU/2iuNK03WK9HBv7Je
X-Gm-Gg: ASbGnctej4Z0gDIHCF3kAMK9FNAVCFOfxkCAb/FwEa4eUkZpvTg8qpAprvUwdYkBR+1
	M4hLlMtdLrV3z+tI+3LSo49EMt1yIvDJC71VI4XtjyH21aTI1PZ8vLxF+92VEZlC2dv5S8XBZu9
	L5MuNCIP4GPo+LDTvl2xNA1UsnMFfKg5P9Q8/IoTYwZxf1P6SXX83SdtFrimJ/oKVyrjJOyZzph
	BKN/gXh+hrGcQuBpbmSypXtE/3V0ICO82iehJu1Brvlk7wpoDEooNN7rInUU0sQpMJcYYcP+7yS
	ptPs/EQIWCDWP1cnr3eop9/zNgQ1VybwgIOehWrB2JlCsrNKjDnqSKCCrCa9wFsQSA==
X-Google-Smtp-Source: AGHT+IFAZDmDT1UAO+PnhM/m8xSYITY1NhTgpng1UjzR9tszUj6zBJbPXTc6U18RhZ6mo/YyKuTJXQ==
X-Received: by 2002:a05:600c:1989:b0:43c:f470:7605 with SMTP id 5b1f17b1804b1-43ee06400a5mr82213695e9.12.1744029888636;
        Mon, 07 Apr 2025 05:44:48 -0700 (PDT)
Received: from [172.16.8.120] ([197.155.71.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d75ac6d66sm5684459f8f.14.2025.04.07.05.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 05:44:48 -0700 (PDT)
Message-ID: <2f76e93e184020317aa87d8e6cd67fc41ba10e03.camel@gmail.com>
Subject: Re: Local-variable initialization semantic patch update
From: Erick Karanja <karanja99erick@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev, Dan Carpenter <dan.carpenter@linaro.org>
Date: Mon, 07 Apr 2025 15:44:45 +0300
In-Reply-To: <9f6a8d2a-5829-3adb-3324-8eeeafb61038@inria.fr>
References: <844b0916a2198527090255a2b065bffda9084188.camel@gmail.com>
	 <9f6a8d2a-5829-3adb-3324-8eeeafb61038@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Mon, 2025-04-07 at 08:32 -0400, Julia Lawall wrote:
>=20
>=20
> On Mon, 7 Apr 2025, Erick Karanja wrote:
>=20
> > The original semantic patch had deficiencies in handling
> > local variable initialization, especially with function calls in
> > declarations.
> > This reduced readability, obscured side effects and made debugging
> > harder.
>=20
> It is best to inline the semantic patches in the email, so that
> people can
> easily read and comment on it.
>=20
> Also, please try to be more direct in your comments.=C2=A0 "had
> deficiencies"
> is not informative.=C2=A0 What was the problem?=C2=A0 What have you done =
about
> it?
> The log message should be a guide to help the person receiving the
> new
> code to know what to look for and to find out what is going on.
Hello Julia. Thank you for the review and I will make the required
changes.
Erick
>=20
> julia
>=20
> >=20
> > Suggested-by: Greg KH <gregkh@linuxfoundation.org>
> > Suggested-by: Julia Lawall <Julia.Lawall@inria.fr>
> > Suggested-by: Dan Carpenter <dan.carpenter@linaro.org>
> >=20
> >=20

