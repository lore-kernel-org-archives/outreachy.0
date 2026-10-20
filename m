Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.remote-ip=209.85.160.44
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=fail;
	t=1792473913;
	b=1mKF8w8Ut+DtoqkHIwIFHScfYKxK1VBJDJ0vatERzMrYUManANGujtnt2nXoarHf8S4U
	 AkAZieSAMwKSUU55SBEn87sdOT1HKpI1IHj9sC4bfJc9SPLUEVfC1z4nIBwtXkL6/+0Iy
	 3NsGWWCrcKp0yuMh+hdkTmGA9UqtzblPIbYMK1QCQ0MjMQpLKTu8azVYnoymDCt089Wy7
	 YPGGd1O78NiFs7pf4Lo7LHBLUZanL/CDXt5TGi8dvXY7x7ggHMTEsPIhZTcSSe723TmZc
	 LAgWis/EfSjtV+z8ykl7rLFAFNLQBOgiC9LmIw6La5zcYv7/HUHyxnS518H6B7OxT4Q==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792473913;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Cc:Content-Type;
	bh=nhsHJr+n/n04x97xr+Nbbiokr2GVVYS+2fdncs6l/fA=;
	b=fTe4NWFlCTKM0Fptx6stRk64ZOitJ6CAq4CwVP6Z6voWx4PtYWd1lw3oBYVMCrWg/L5E
	 RePU7/i5JiP6nYKZnYR0TWa6Dyc6oW3rGOG0smmzArMd1QOUgmBklL2vhR3IQX/SUcVOR
	 NivBfA9pAwgD5nyItW6/nm0Nhw0Jbw82YOf7nYPprMwtJ7pN65x7F7hdgidz4HBaCFE8j
	 MEAdqLnzqysl4VjLfQVew7fN2mnxYEZ98RfI5eILjCbPs/Wf1YvIvsK4lbk4gsDlD8FSa
	 JwPWY3VHNbmyMHmDXdmv9ZBqjwuhCDrlJLBvr+LlJy2tGsaWv1Nu/EAM4FHmB5OoJUw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=G8GzblXV;
	arc=fail smtp.remote-ip=209.85.160.44
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDE9606A320
	for <outreachy@lists.linux.dev>; Tue, 20 Oct 2026 05:25:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3BDE9606A320
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=G8GzblXV
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-47b47de8b4cso2091293fac.3
        for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 22:25:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792473912; cv=none;
        d=google.com; s=arc-20260327;
        b=NUHDLpWCQ9mePjUYNVresZXT73VnrilqLYgfTQZLglyt/9qQ+CQTGMTjX/0Ss6R+Pq
         4sGPc/jqbhO/fNoKX6KjoU9/+Yd1ND9Sl3IFNDiuS6B7f99bp06Yaj3mz8LLFuMw8Zz5
         ORMqg3odRtlMiocQ4RHv9CJMsWsLjGgzven2nt2MT9u0vdrYjG+NKhEwBZQh5PkteM08
         Ala36xo7oF8OHzToTA0DSJBbCptsDojMDOM7Mv1K4CXY+c/vF/DL5V+HLIKa0Y+ko58K
         CHxicGNEi4Ea9wLVlXJO1mjULnwSs2PW8iD6QvkqUWhX4Y5H5GOFQhB9M/VGgSDj042n
         MDdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nhsHJr+n/n04x97xr+Nbbiokr2GVVYS+2fdncs6l/fA=;
        fh=9/exsoqcmAi1OPOPImyz7OG1cdIFGkX1Kdyg7+AOZ5Q=;
        b=Y4gAxK36mQKpvEDu0NLQNlMePxf900+ZSYJ+E0CqFXCSO58Qw1SXaWSEL2H0JnnHN1
         UXhJ8l2f/fnifcfDLsqjDD3y0trZkN8JJFgWjA3g/DSYl/SqMFATh/BrArPHmIML/z+Y
         xq81A5fgOkS/rrCRMp+/yZz1vqMn2vEzkNqTPsQmKESche9ysXFxhSiSYw9z8n3GXkU3
         B7O/3MHQHt5VSLIXbcl9zGmCft+3CV0G3eutHqgTRdsAY8+b+N85PpKdS8FE59YxF102
         6qY4xcU1/Y3p/B3nsYJwCwMUSidCLOeeeqeDkG/iDbUcxlNN61RqTNWF+Lhm5EdSeb6r
         ZJjA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792473912; x=1793078712; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nhsHJr+n/n04x97xr+Nbbiokr2GVVYS+2fdncs6l/fA=;
        b=G8GzblXVxcKvimg92hKo/GzVs+ddCbNYEZhNqpNENY26T7YwNVr/YNabt+LzWTxIk+
         WmolB/2/idQ42DCa3tMxSaZkX64IhvWa49dbqELQyozrepyF73ASmp569H1oXjv/5Hzd
         1Zd9HOrBn4UGSRJ7aYTAJ638yBRpI05R07xBQvVJk96zV+dG8ciryKwKVjdbXhH3J4D+
         UIVPC7ORCXHqPTeTZxcWQg8tQCzdcA1RhFirhBlOYhxDm2SOD440hbMUcTlMfFgcm7xc
         /ua2U+VfPVZNHzO0hOKbbs5zOf4KDNjVrqNBd3UN5YblJ4UYWr1adMc5r1kMyYbeRqGf
         kUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792473912; x=1793078712;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=nhsHJr+n/n04x97xr+Nbbiokr2GVVYS+2fdncs6l/fA=;
        b=gMPHJa0gi0uUbPij5UtRA5X3tO21psJy7LLJz5fo8bOZMpsrxso4vFPQFBWsoFOAgh
         u95uTYN8h/td1DbF0iwYrKRIgpV/llYV4HNBAHblXubmfJB4qOzmX+uhEGIcmTPg6S7I
         YeKq89aJq4FO6KZyXoNnZgk0zDaXAq44LHiORDPDMeaaQFJqSTNrmycJ2G1cZF6dRdmz
         MTjhJV700Mlt/HnMLmJNtGssi1HfPwppOuy1pAl4C8gA7Ib4/AdGWOvBxVFwhdxxQneY
         w6DJ1Yz46roIB95UJrp1Q8RIX8qqdkdupuG4SYQXPmxMh/d2SUh/jNiCMi4xhFkKQ7F6
         xj5A==
X-Gm-Message-State: AFq9FYIQr/+ZuD6GmvooEh5HTDfNf5arO1GD8aoVehwKrmrAcw/GtfYO
	NejYb+kFNvg3NACM31jctYBfXYDCCKfQCA17jBcPz62cZNwNW7SXp/2S24q8v+27xL3wxDCRHuw
	zfYZ2zCK42kOVaeFyZREai05pLa271Tg=
X-Gm-Gg: AYBFou3n/tFfL+ytKqDNfKV4vE5EvnUNEeASZ3RrodWpGK/R0bMi97LXvQoh+Bix9ge
	YIXhYAlEKyiQtv3KecYNCRsYqNfR6scEyrmA4/pgOqPw2AEo/tR1Mcc5ZniZQiT/C6QLfohhAx4
	9EaidGGnH4i138jEMrwDZMH9RlSOVNOln6wFe8jVk4M1iaNqH7xvPzgdpp4K//gANhppFMLXOuH
	ZQTYvd7WOqSrktqncmbC+CCYZIohjfCgsDELKIvRo4/8LsKuNLXUlMN6RygVPjLF8oK13slc42v
	g6wfdcTV8l+8a9xBNlBOY6lSa3U/ptAUEpgpV4KGWj3L3T7b2CGkoZ9GQl5/D6VBJD5qejEI0Mw
	7euCA9coSqLeQlH7L960QKM3ZYQWtn9GD8SnoNQ==
X-Received: by 2002:a05:6808:4f6a:b0:539:4d53:170e with SMTP id
 5614622812f47-53cd2592db5mr9061786b6e.43.1792473912142; Mon, 19 Oct 2026
 22:25:12 -0700 (PDT)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Tue, 20 Oct 2026 10:55:00 +0530
X-Gm-Features: AclHuK8pQMuWjRSd3iZJkBngQVOYEQ9vbdnDV_1PK6Po3xRqITz8RpsZ3HH2I3w
Message-ID: <CAFsBPPkyeYDUPGz5q6_VJqn4LK49PqFphvGjbCBs0N79H17sbA@mail.gmail.com>
Subject: Clarification on submitting another patch
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Julia,

I submitted my first Greybus patch, which received a Reviewed-by tag
from Johan Hovold. The patch has not yet been applied, as staging-next
is currently closed during the merge window.

May I submit another cleanup patch for review while my first patch is
awaiting application, or should I wait until it is applied?
Thank you for your guidance.

Best regards,
 Sowmya
