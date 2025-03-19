Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583BD24EF84
	for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 08:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742371679; cv=none; b=njrwbvjRDZElLpIr2bJS57aq9P7iSVU81TqBcqubqqBk8wUUi/90plQYSNPqTCDtHPgg6sZItbKYO5g1/6Jcp8te+LmaNvvCDmIl7m/M1itMbYczj6aT4TbOQCHQpgzyPvl6sKJfZMFwFQWSPybcceCReqIVi5pot01kGZWs6Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742371679; c=relaxed/simple;
	bh=LG7QchgZo1L32SYZzgYZc4Jeijlyamb/kI2frkhMHNE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=KZVyGXE3ZvNhjyBj9AdH5g6XxHELon0fRQra1ScSJRIFX0i4szzx+a6SglIKKFRA31eKpPHFPuaUYgBR8kvQkSEKXH5nOSVAKUqUyQt8s6nIEuN4rkyM0hiIjwpmamhobHuieHqf37L3RyfjBdHFmgmnsbqtp+q/MtN/zovD69Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jojztuVR; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jojztuVR"
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-601ad30bc0cso291795eaf.0
        for <outreachy@lists.linux.dev>; Wed, 19 Mar 2025 01:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742371677; x=1742976477; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LG7QchgZo1L32SYZzgYZc4Jeijlyamb/kI2frkhMHNE=;
        b=jojztuVRezcbezzZekQMkRss5FrvZMIZ9etnEWcFs5/hN8U+6qUdp6/Wyy2cJIVQWL
         hROTRdXuG/nsW43wtDvnOg+1KN8FOD/eFzQCrzQs39bksuu7iru9pJ8c5aj29aK46N6c
         FWRGXm8/giXEUUo7Ne1rDC/nJ0DQdjbhVa+COSZrFg287Hcm/Mpvet2paQS3qv6OhJzp
         r71/m3fYkecl6xGfUY2mHT6dKhosLiZqvei5UbagSf6LOAzY9/xX28GgINoM6iPx6dUO
         jewvcfs5naAqG60696+AAseF3GIDsRxVbOZBZizdpXF/c3vlkecOb/kTLGfx8Z3F6sHh
         93UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742371677; x=1742976477;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LG7QchgZo1L32SYZzgYZc4Jeijlyamb/kI2frkhMHNE=;
        b=oyWhWaF3iJdsN0/JWs5qou9v3qrBMY5rHSHUbv6ukdL9FmYe030HThl3GaIMqvgOmC
         4kitG0ar9trjt6f9xM5ny9d3PqmzDp+pNrcpiRyX16lbFYcE4sdREtVE8Yj+KT+dmYD0
         UgSfEdXNsysGKa63nj0oh4FWhcI/xgjy4u5PpIZH/8VXT2gMi7sTnyK1z3m1fY6Cy+DK
         XyZARWBw8bvmtFYzbd6BSliCPyO+3e9Nc1N1BNTfyTsorcuzKGnoyTC67q2BBuZKBcK4
         THZiUiqlEp+6ew51hMxPZsiuLq3wJFSu+A5RUIAXLKhEKgaXnOWlbcapfLX5OD7q74XF
         iBTA==
X-Gm-Message-State: AOJu0Yw+4oV5SJ6JmKiV7OJOM0y+5aoEgFUu3MiPyvVkD5wV04Vacv5m
	0EQQs98gplqfng8SE6l6gHUoNWRY3u6GyH24AcfzjLO6ic1lvmTtDEJaIlv7kRAcDFy/eK+/d6l
	1uwkLZFgNYXscos/Vh/5ie/Bf8llnyDMA
X-Gm-Gg: ASbGncsRZZ7AylGeq8dM+sWe8uK9LwYT0/l9ZdV3FhMSwxN4kxK/iNGWXlXbJqvFXlF
	lFY8LLyO9mVpWK8gejC5Od9QLWfFKiKQmrNWH7i6BKi1c2p+ZbpszmlyW6lfpOHymeGqmssDIF2
	XvCt/OrAwacm46ILMoQaUvYqGQfIU=
X-Google-Smtp-Source: AGHT+IGmAXICDFKAsajIimyjzas7rAkR1iAs3jQ3vjaNO30Q3wsBFKc35vLszYYjWsM3kNQmQlyQy1J7qhPR5jpAzrs=
X-Received: by 2002:a05:6870:9726:b0:29e:5152:dab1 with SMTP id
 586e51a60fabf-2c7434f5b69mr1365153fac.13.1742371677002; Wed, 19 Mar 2025
 01:07:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: erick karanja <karanja99erick@gmail.com>
Date: Wed, 19 Mar 2025 11:07:44 +0300
X-Gm-Features: AQ5f1JoJl0zDbuRYVjCmlXDfvsmI-4t7mV1nO-hR3KyAZpCbj0qhb2on5GMCbn8
Message-ID: <CAK=KnqS9617NnkUkmuQeVBu50dQVApL081-f0b1MSMMt9QgF=A@mail.gmail.com>
Subject: outreachy 2025 introduction
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello community, my name is Erick Karanja.I am currently applying for
outreachy internship and I would love to contribute to the linux
kernel.Thank you.
