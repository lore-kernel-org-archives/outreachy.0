Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7092D1448C5
	for <outreachy@lists.linux.dev>; Sun, 25 Aug 2024 18:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724609665; cv=none; b=feAqoZrES1kzzKHFQtEBcZe0sp1Pc1rKg1x6c3qroq8NhKNqGA8jfGhPzdIM1SiozsHDhKuRShNG6aOpLPXPdIXcssBXikU8MqCLww6WRXoUfni5adSFUam8YPW8hnIoEuXiXhUcAmE4SprTppF6RYhn7qKXPnvfsaLUNkv+J5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724609665; c=relaxed/simple;
	bh=g+5Rdg1Rh5xkOSPlO3hepKbPB8YoZu26oCSPntMaDZk=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=H5ViJBak6lqIN4bgxjVwoUiMgY6MYM8/7XirTIgZBLyF5ylIwARSbM/3cIENsHZS7aMAHMCn/Q55wZQaY0+fp+TDM+GaYaVLqYgTkGxtM074uoqLq5DLI5oP1XpRZJ+4ux8yeCJIf06Vb5GzXW+v98UyPylblIIB94fCmMbpGas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l3Igtz6V; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l3Igtz6V"
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71433096e89so2961078b3a.3
        for <outreachy@lists.linux.dev>; Sun, 25 Aug 2024 11:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724609663; x=1725214463; darn=lists.linux.dev;
        h=to:message-id:subject:date:mime-version:content-transfer-encoding
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=g+5Rdg1Rh5xkOSPlO3hepKbPB8YoZu26oCSPntMaDZk=;
        b=l3Igtz6V1RQwR2VeD0nuBHN/BrCiQO4r9bpb5WARITfqM71XyW9NsrfrOdbO398WG+
         YuqiNRQMYmIE4BXtsdOB//Oqy3H7GYYHTgmnwMQzzPFYMXFDp053/oke4M8YsvXzFc20
         yi2HJHPX9d9wTpY4pVq77xnL3Ge/rWXM/mF2a9HQCPhT8FzYWEQefqAlrLJ6hun4SD5Z
         +hXs0CdD67OaGglmLwML643d0PqbCE5r6Y2OP7L1CJyb6ndjOpb3o11a5JFkc8yz5b6F
         x2kQ7taOPXDOPfNSZUHlkpVDQM6iBo2DGAiGQJLoEAWObYWTnR95GuK/kIsptUNnJ5HS
         C10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724609663; x=1725214463;
        h=to:message-id:subject:date:mime-version:content-transfer-encoding
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g+5Rdg1Rh5xkOSPlO3hepKbPB8YoZu26oCSPntMaDZk=;
        b=rcKobSyl5upt0aOdfhmKw/Cdl5H08iTkpfXfx78B8IfUxjpPUI3BhbQqmszDIBjPha
         iBHJf78gRG96ukgorE3z6dPI1HCoyN6lo4hnXigUvJOOmLuhPukdFLEMYsFnU9LqIEN6
         1JnYCvvjfM/ozhKJhYcQwVeRrZkl9amUHUM0cAhoXFfmjlzZVcC+dyf7HjDqu/5BG4Pn
         22GbfhmWyM30wNpY9+XLWxvk7FsmPTeddPKsFbSDlozVZFWvGkKg/3AAWwXZIeF2X3sO
         vmFTF1L073wE5qSNy9WGcADtUxiYaPGd4ChjmTKcnCjuEly2ShyK8QI5FPWGQELYtztJ
         FFfw==
X-Gm-Message-State: AOJu0YwOctg0pCDvSvFdxMcpJ4xe75vG4VwHjiDsdgem4rae0pfCzcZO
	G+eE3B4bxSIcd7zk/4q6vNwllSxGNk+TvDzsRWJQLSlQCZuWhdX+e3aniA==
X-Google-Smtp-Source: AGHT+IG4gx6hK99rI88aJ9pTSNw4pNNRYF400+CMY5Odj0B7Xt3TlPtqa75le/EXckwJydcyGVuZXA==
X-Received: by 2002:a05:6a00:13a7:b0:70d:1432:16d3 with SMTP id d2e1a72fcca58-714458938a1mr8759672b3a.20.1724609663229;
        Sun, 25 Aug 2024 11:14:23 -0700 (PDT)
Received: from smtpclient.apple ([2601:647:6513:fa89:4126:2972:7abc:2f38])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71438161895sm5680742b3a.71.2024.08.25.11.14.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Aug 2024 11:14:22 -0700 (PDT)
From: Johan Y <johanyege@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.200.91.1.1\))
Date: Sun, 25 Aug 2024 11:14:01 -0700
Subject: Hello Outreachy!
Message-Id: <BF30650A-4812-4653-82C1-1D6E6A4ABFAF@gmail.com>
To: outreachy@lists.linux.dev
X-Mailer: Apple Mail (2.3774.200.91.1.1)

Hello Team,

I hope everyone=E2=80=99s doing well. I=E2=80=99m new to this list, so =
just making sure I=E2=80=99m on the right track. Also, I apologize in =
advance if this is not the place for newbie questions.=20

I=E2=80=99m interested in contributing to the Linux kernel hopefully =
soon. I=E2=80=99m currently working through the Linux Foundation course =
LFD103, A Beginner=E2=80=99s Guide to Linux Kernel Development. Can you =
guys share any other steps I should take to get me to the point where =
I=E2=80=99m an actual contributing member to this team? Also, if you can =
recommend some good reading material to expedite my understanding of =
kernel development, that would be awesome as well.

Thanks for your time.


Johan=
