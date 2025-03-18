Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150E0145355
	for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 13:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742303815; cv=none; b=E53rKt5PDI2llHdnoo9Jxd16dRVlpy6TBTouNskqXO3dTk1tIL9WwjXakfp13nQRyw1gdM02TdznWku2wSb7h1mtpI0daQ6KvTKRa85Qt92WFg77BVm9JwNZ5nxjFa+ITurmFsVtbikR59X7DQfc83XAUKEijFq9TeJvc0ZrfrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742303815; c=relaxed/simple;
	bh=yHoCqsq/LU/Tqbq7Jn+ve+f71PBe/AwGwLnwn0KASTI=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=BmkYSxf4KCG0Dw2Oz1LA/Dd/SL9389Pc2+Q3G9YkLzE9SWq+9rlDPQgz95Tq6PzGGT5B0X9IC//bGnZu6Q95d0Jd5Lg1LcGh0/DEuvgfSvmtKr7ugA7eTp5O1jgeKzr1u7zGVOxjiT27/KqpSvds5hyMgfl++F9Z34qlSQXztbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kJzf2iIO; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kJzf2iIO"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf58eea0fso17325265e9.0
        for <outreachy@lists.linux.dev>; Tue, 18 Mar 2025 06:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742303812; x=1742908612; darn=lists.linux.dev;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yHoCqsq/LU/Tqbq7Jn+ve+f71PBe/AwGwLnwn0KASTI=;
        b=kJzf2iIOaBzZtL+LisTdRsvbse5f2Y9OMksUdxVmQFiiXnp3AyiJWNoWc+EF8XcVYb
         rto118VHZRpkd2GjbrpKxT6RPySHVAks3aoxbAqziiBlYZ61rlX1JmQ95it5IoPy8ZAo
         inwD5NyjmeNKoPjMg+cu/ZhF85PPQWbn536047A4RrEZCueOqdj24JQ5FENnVhbKsomN
         e4vkOPPh0Dus+cLsUooDVxt3IIGOWbGkK+magMF62HVfLC5xVIBO2Nvq6evLDmYwx78f
         hYWE0MoQOK7susicAUsRSuAIxeapKi9jmcKsPz3kGkQ2nh6ZwruDzXwrJImZlpCtqNhC
         Zb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742303812; x=1742908612;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yHoCqsq/LU/Tqbq7Jn+ve+f71PBe/AwGwLnwn0KASTI=;
        b=C7PGOcVnjzVzhQgJghzqBHGOO2Wl/Zb6wIwSnHDkFUIUG6WTChI/KOnhh6kulr1aCm
         TlJYItcmHZxlv6F4z1Pluayim3+z936fz611SnalSRFJpynOLNUsUX9Fy+knAi7Ksw3e
         87UJSd0eL56D4gaHYEjAreTMkUdtRdLEJeaz553sxSKwVhbUhaEOSuu0UVfW5ydMKaC3
         hYH7SS2w1SR3l7EUbeWQhWBaJvBLAKRtHos7+hBWw1PCzt6CkWeiMLaeHFqyQQ7HZwRs
         Ni+VAbHSwC7gbd4KLoBVcTsgTUlXeSRcyQCf4DMfuVn75r1gkSnzfq5ykLFIyULN+3SH
         29eg==
X-Gm-Message-State: AOJu0YxaDeT22qXt7kIUcE3cgL005eEKpSGL9xFGEgLkugmLCw62mo4B
	7efpzkBSR5EbmSKxkfxWqbt46+H0pka/l3TS5saW0w6BWDbnP0Jykc9X/8CS
X-Gm-Gg: ASbGncsP28wOmy2QJUypu+VidlvzbkjnRZUDT5/lPKxOKB2cHswgp8LqHesdnSZ60+N
	xK6TtPKazZfCUzzu5EfKyCBhXnJcnYtgqqzBEKSBTWPRK2/P3BIYyF9bHv6IISPyFnz780y2Blx
	yA77mYJc/heXvMuCXHboDUyK16PwsknA4pi++gzFAUodBFAfQnOOEz8devL0ej9zjKmRvFRq3TD
	ah9j7JG2YGNOddyggLv8RvVHHMHZLMwJJb5jyfBEwbeYw8a3wC0AP00716mP/SDltQ3jU13i8c2
	gFJkOECXdnk7SH+7frzE7GB7shjBoafP2FG918tfOmCu/iWzjTSVd75FXvdxBe1iDFn0mZJxRC5
	OHSUNVSi6rQ30t/YUUgFtvpyFgw==
X-Google-Smtp-Source: AGHT+IG9XobvUK4s5/KzuHmYGXxYxGH3+et3saraIM79+QZ4PpJnjl47jvyeVLcAvlPFvLPW/Bq32g==
X-Received: by 2002:a05:600c:b88:b0:43c:fd2b:823a with SMTP id 5b1f17b1804b1-43d3b9cc182mr22399195e9.24.1742303812070;
        Tue, 18 Mar 2025 06:16:52 -0700 (PDT)
Received: from CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM ([2603:1026:c08:121::5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d3adc4488sm14284535e9.0.2025.03.18.06.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 06:16:51 -0700 (PDT)
From: Nancy Enos <nicymimz@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
CC: "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>
Subject: Re: Hey Outreachy
Thread-Topic: Hey Outreachy
Thread-Index: AQHbmAXZpluOGptpSkGaEJsCB2hu+bN43cUAgAAB9mY=
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Tue, 18 Mar 2025 13:16:51 +0000
Message-ID:
	<CWLP265MB4434A3BBA3F92D5E1563E8B1AFDE2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
References:
	<CWLP265MB44344955383DB5471A968D8DAFDE2@CWLP265MB4434.GBRP265.PROD.OUTLOOK.COM>
 <ad3e8b11-f60-cdd-b393-2b4b3074aff7@inria.fr>
In-Reply-To: <ad3e8b11-f60-cdd-b393-2b4b3074aff7@inria.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels:
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Checking it out. Thank you=0A=
=0A=
________________________________________=0A=
From:=A0Julia Lawall <julia.lawall@inria.fr>=0A=
Sent:=A0Tuesday, March 18, 2025 4:08 PM=0A=
To:=A0Nancy Enos <nicymimz@gmail.com>=0A=
Cc:=A0outreachy@lists.linux.dev <outreachy@lists.linux.dev>=0A=
Subject:=A0Re: Hey Outreachy=0A=
=A0=0A=
=0A=
=0A=
On Tue, 18 Mar 2025, Nancy Enos wrote:=0A=
=0A=
> My name is Nancy. an outreachy intern in the contribution stage..lookingf=
orward to making meaningful contributions=0A=
=0A=
Hello and welcome.=0A=
=0A=
Please start with the tutorial:=0A=
https://kernelnewbies.org/Outreachyfirstpatch=0A=
=0A=
Write back to the list if you have any questions.=0A=
=0A=
julia=
