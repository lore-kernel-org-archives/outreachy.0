Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728961474CB
	for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 19:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711914902; cv=none; b=P3XchFYZXO5kzrzJgP5OnrlmW77wkrfVZNTzQj3faLIw9BnbIY2OQgMeWLivXHSBv9ZGAvrmU73OhqB4MG7VpkxPgs4TlvtM1jh0DX8YGYIaH3UY6o+AKQ8pmuyAwCjvXQGsFSR57v9nDiYeQr5yedSuH8Md5SDBLkq/cTRgn/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711914902; c=relaxed/simple;
	bh=5LxCPankOnMz9lPZbTM+Dt3/cv+bjZcY1JZE0DhWo/M=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=P6o6DtcFBHxaVF/hk0IXIn2HU48immPgKuHzPNNDZESnXR5Iot8uWfOzAb7VAhSA/K50cpXUxWLnvneXkbYv0dKBHmhO7prTc9gJNvTtn3uxamJc6L7bsUwjxN3mcSW8Tw4s9JNvRSe4D2GRCViyHMAKS96HMEF+ewJO8r3cyx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eQfqagkv; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eQfqagkv"
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a4a393b699fso522361166b.0
        for <outreachy@lists.linux.dev>; Sun, 31 Mar 2024 12:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711914899; x=1712519699; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5LxCPankOnMz9lPZbTM+Dt3/cv+bjZcY1JZE0DhWo/M=;
        b=eQfqagkv6vBMesL5hGGzLa0FEzcopbw2PRV3FW88uo7EAzSXw2v0Uz267C5T8HOKIw
         De4GIRM3pgqewsSS3nw+0mREwd3t6eGGCH9wTfr/NaGTjAxhoo5fA9I7egboEU7TmGgm
         /rU7OjONUjrTGf46+RP37Q58yZddXJy/kfSdKC0oDGWfvuSV7neMlL97WrxDR2ASQE1L
         TpaOHtJZz3OKufqXCXlQ06VEHlHBt8E9q7yB7NjCfM0jm7uUP3hF1xkIw+O2GUkxaAVs
         8BCNlGfOTSIwD0EkOGsAoD3vawdXg2LdNdiJ5sfW+kSdXZplDlEDwiM4j5RWEJE6qa9p
         uZ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711914899; x=1712519699;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5LxCPankOnMz9lPZbTM+Dt3/cv+bjZcY1JZE0DhWo/M=;
        b=hL+gxx+TvbwJpe5TUAEViTtsIF/PzmLcxYN8aO860ALookqvDdyx4HYymHJp7t5Hhg
         eFyWp5bqhs/nFBtpJU2v3nM8Xo/KYyo41q8Aqw0QnRdKk54TuCdEyKEkaneRBGXlTxOE
         AU5ipDXDzHDxPWiIkuHFA48iXWPmSp9+ynuG6zCKGupajsm0yaPzqmZejdoGQdU5u0+O
         MoolGAh1BjF895uU+wq3Rrv4vxv1SgAkaOLjkMWZgHCUvhpZpVCdWAmgTqmDulsX4+qJ
         8mXxbFNRF2INb2mNfzpoitCacWqpk++lP5Ko5FSe977tRZZRVUwphGwhYmmnu01moYoX
         NwdQ==
X-Gm-Message-State: AOJu0YzQheu0ZTjtU1dq8mVR+hKfYRjIwz5JEjOqns9eMGV/qcw15hYo
	ZmwCiTCcbnNe7TcsmVlm5LLoh41jeZA+lMW8uyoCKMMtWOUfZaf7M8sTkrCIkjz/OYv39L5TyF8
	cDBkFUoJFV7GPTS+GoPWgwN4tcKGNvwDoar1E/A==
X-Google-Smtp-Source: AGHT+IHr8lNiHLu2AtA0LJwd8lfmuRgz8AjjqhVEKw1J6mVrPuCUCmA1/2PdET5a66jnL1sJo/Dqj1C2duc33TT/4ro=
X-Received: by 2002:a17:906:c2c7:b0:a4e:2dbf:2eb0 with SMTP id
 ch7-20020a170906c2c700b00a4e2dbf2eb0mr6360239ejb.38.1711914898498; Sun, 31
 Mar 2024 12:54:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Saasha Gupta <saashaa1122@gmail.com>
Date: Mon, 1 Apr 2024 01:24:47 +0530
Message-ID: <CAN=P6FNRiaog4HZY9vG-067M_+3oG-FxMb2=rKaYmD_+8jRVgg@mail.gmail.com>
Subject: checkpatch.pl script is throwing errors for the code I have not written.
To: outreachy@lists.linux.dev
Cc: alison.schofield@intel.com
Content-Type: text/plain; charset="UTF-8"

Dear maintainers of the outreachy team,

I have made a patch for this issue. I am able to create the patch with
`git format-patch`.

However, when I check my patch for errors using the checkpatch.pl
script, it throws errors for the code I have not written. What should
I do?

Sincerely,
Saasha
