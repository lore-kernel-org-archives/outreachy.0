Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE4A212D86
	for <outreachy@lists.linux.dev>; Wed, 10 Jun 2026 00:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781053110; cv=pass; b=ngwmXH7TrJfKEPs6o6KLeY6dazjGxAGjRSyBhvyZWLPxPykggK8H3LrUkQJInECGGrEiymX89xhg0cXun+UZatKMEs5ZSFYv7WYjRpwE0AIAF471jsFrQUhiZQwVQ9lMLYp7W6r+tbkN1Q4EWNVD4JI2JblSHf7Rf1l+SmEIQYM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781053110; c=relaxed/simple;
	bh=Tpl6l8U6i2ihTMI8RqZ3xiY20L9OW4IKGRcDKrG5+6Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mN/cGuDI76YLNE24ECiYay+yGr7TSRWhx2LVNmjyD4bkItCfU5kpZC78qHbTt8fn0Ikn77aYFDMHNwE5rzNIjXgcxHzXzZigYEFy7Mz13+Iw57BquzIL+gI4CI8tBFrjiiilE07wX9eVbMrzLeZjsbMTxPZZpOfJWsgqllse1a4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xsw9HcVy; arc=pass smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xsw9HcVy"
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-becfa735b9aso825188866b.1
        for <outreachy@lists.linux.dev>; Tue, 09 Jun 2026 17:58:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781053107; cv=none;
        d=google.com; s=arc-20240605;
        b=XO9LNSBi0ENcFRk8TmCgq959yT/LLkui+CbNUAan/vPUfucVwP/OULFE45MFQVGVkC
         DLdoJQngmGSTD699GomAyWrmc0YUUz3bDFj6j6gLbidmpukJ5T2SPCN1sAybF1O6Cq7G
         eAlFRRrHwo4KulKdUNZ9lybmhQtsXYgxBc9PwY5L+hMoR2E1UHfGGwlbGjjUbvYxvEPm
         MFQhW1dnnOO2kD+4b7G3pzkv81CGaIPXOZJKXyFJMAdA2n+9r0YIBhFVded6I53TD4iI
         ahZ2G0Jud8UVp2kdCRZ0wt7LXyoNzkTS+QxSigTjh3BwfUe5BcFNB1T/tZW+Ao3DEISF
         Tr7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tpl6l8U6i2ihTMI8RqZ3xiY20L9OW4IKGRcDKrG5+6Q=;
        fh=C3tVq0G5Fc+gLL3zMgWIkI8j1Ee2mfmiKW7DK/q3hqw=;
        b=gyMv2nfnVum0lLCeIQQZ8EL09I+6Em/by8nMCbPoZhQKVkurqU7rzatN4hosof6BLo
         IjkEaJ6gpV9XUii5hqExpte0HQP/IRgA9bPotbZPsrWcwBM1PZt4/4C+Ah/XRw9xBEbC
         tjWxpDcGDtEDkfEbz9MnJoltN2GHrHhrPyHMlYiHPu4jNI0AgB21a3CmxbOrXotyhfIj
         1Lcc+U9pVCCrHBLKKSX8p+JcVGi8Tlvtro3YHQND9fqGuQQx+tjaszDkmfOSCgLXmAH+
         sV8Uaz8kS1A2iZpoLrMLLeUKOoS46XBd/WEQ6qJAKDTytbBme6T5C2jL6yp8rQvDsWC5
         t0Tw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781053107; x=1781657907; darn=lists.linux.dev;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tpl6l8U6i2ihTMI8RqZ3xiY20L9OW4IKGRcDKrG5+6Q=;
        b=Xsw9HcVyNg7j1i0ox9g2a0nYhlQipxWJO6F1dqWS5so7uvF0LMZwDK4kRX8GUUDvlx
         btJHaFKaLpQC8SQcH1HWmbAFKv/OeeRla67rUtq3GpUNANskYG2vEa9DRfAqF8pM5lZJ
         B4ob7wQ2jOmoE65VARAvLTzkL+qrVH7LA5yyHYbEm92S+WOSK2ESaqmqZudDeY4QZwJo
         gxCbtl0t5Jx9MAvgijyXpUO8hoAbqkLFDn3KWMw2/GbzeERw3nmRjidzuW5F4vmXM6Rq
         rEEnI31s1Uu2ZhWkT48ab1Nj7m+1Ca41L7zFHWgvA8MPiLhxqrR7GboO4r1dP30Uvnsu
         KyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781053107; x=1781657907;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tpl6l8U6i2ihTMI8RqZ3xiY20L9OW4IKGRcDKrG5+6Q=;
        b=r6d3zaskRmkUtqmL3PgcTfj84vfKv7dxyeMf2LVPl9IVCn/XYly7baYtP001QxE0iC
         sIIg7TeUzTcE0c/L4ouctPB49GUEP/NW55B7auhdnk5/sH0tM3RGmLuof5CpEztykai/
         1ToSfR14GtQaoJpboXCp84xSzwTZKAgKdnEggAiHXUReJzqnZ32f8me5hXu5dV/kWrQg
         Z70PaXqa5U+NlDT+dsfQNIhMxNFamJwKGzFwMwbn5dGfGiSNI5fGc3xzieg+1nmTdnqY
         LcSknDhnOMA5Fk2S0m1WwZ54QE1G5NranMJeNOL6QRmuvvOYSBR3rVuuPrtgkm+BJ978
         qDtA==
X-Forwarded-Encrypted: i=1; AFNElJ+r0B3bMxsYT5dFPag1N5PZNFeG5AtbE7qmq9X7UCsVk3crfnSKGJYwSjAIHhLg5UwkvXY4A2NkfpA=@lists.linux.dev
X-Gm-Message-State: AOJu0YzJWZBjzvlK6Ujtr6Q/25VCROb+WLYFCIr7xF6eVXE9JGZi+7TH
	oqULyTXegGz3mgF413FnvfVpHJdZ4xoUdmWGVbR4x0uOVqbGFJIVFXCclqVqJdJUOXws2+WZsVw
	4YY6a91abTQy+aiGD1BTN/myb4QJmKgw=
X-Gm-Gg: Acq92OHUuLYY12KD1sO44JHyEc9zBqIGE7XP+5f2kRWCj3rIHM501r0+vU9oL4fQeXo
	LhfybYDJ1ToKLuA/XzDbxshSwlGkg8jLvZTtskKRfIckBY22oY/eja9ynvpm5GJ9zf3D6YAIa7x
	ejdu3kLiUTM+344tm2VS6BQ+G73QpVRfYQ2KSl+2jT3Q3/oTopPVZoNiGTHjAZjjW70WLS2rOD8
	vdKlKh/loQXa6DBQRF/ODVSRkNbydkAuNsZdI8NpY6WzRYdbHQ4jgmb4Iiea66SgsvP7kZ8Aup3
	5V3yAGukbj2ZbSI9WLyJuLgt2FSqc2cxBQ==
X-Received: by 2002:a17:906:8a76:b0:bec:da5b:5a6 with SMTP id
 a640c23a62f3a-bf370e6215fmr809390966b.21.1781053107289; Tue, 09 Jun 2026
 17:58:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20260609011736.17401-1-brockhaftner@gmail.com> <0d8d9f38-3cce-4da2-9ba8-f8e99f7b4dee@sezginduran.net>
In-Reply-To: <0d8d9f38-3cce-4da2-9ba8-f8e99f7b4dee@sezginduran.net>
From: Brock Haftner <brockhaftner@gmail.com>
Date: Tue, 9 Jun 2026 17:58:15 -0700
X-Gm-Features: AVVi8CeMcVJS6rxYbZttj4-L01-KcgRMD-E04JG978tAB95OThDR-UKWQ5st8N4
Message-ID: <CAAYiRaNgyHvtd34H1hR8wQk_5NYRB92QsnOWe9810mNYiZ6+8g@mail.gmail.com>
Subject: Re: [PATCH] staging: sm750fb: make g_fbmode array const
To: Ahmet Sezgin Duran <ahmet@sezginduran.net>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy@lists.linux.dev, 
	linux-fbdev@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On 6/8/26, Ahmet Sezgin Duran wrote:
> Did you compile this patch while enabling sm750fb driver in the config?

No, I did not. I apologize for the mistake.
I ran make drivers/staging/sm750fb/ prior to submitting, however I
failed to realize the driver was not enabled in my .config.

Cheers,
Brock
