Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E455786D
	for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 16:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711385252; cv=none; b=deCLI8579HWokXg2Se4Dueu6GtPYsRM53Ywrxrlyrt5AuI4/ASihmv/6lGCHn/b0qJ4XWCmIDxbPpgdwhboy9z0mUX4VfWSWUIreuCZKzr2GtM0tTbyxjGu6GzxbRU7doufb0VaRSfLpW5vzLQESlr1KSgDv7ugkJej+ojFFFo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711385252; c=relaxed/simple;
	bh=BzmQG/Px/KyN+Q5+GYjwqwJFqqaQf2M+VgCSPEUu+Uc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YNn4dt1PogF24lyBOLjZWjz6ty+HsCJ3DtduPADCInTcF0rHx+mMF0di1B/PBQrGw2n0/hInA4syl4QoIrQ4Bv5DT4f2ceq29eUjNEcjNaFDeOcPLHM7LGU4LGjcLS6PWdILorRQIY1KgQJv+EuggPrIqfsYmlnozQiPwwch1QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WhK4S1nu; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WhK4S1nu"
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56c0613307cso1917993a12.0
        for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 09:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711385249; x=1711990049; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BzmQG/Px/KyN+Q5+GYjwqwJFqqaQf2M+VgCSPEUu+Uc=;
        b=WhK4S1nuwCCieaYhH6GWVJrzPN7fjo2vAavbkAwm2iZxVOEowUvJF0z3OyNtKKXmww
         REEOJY8F5Goj0xUNuDCmFmYO42i8pw1BcwtqFcGSF8DenqKenFvJDOBUUDU7FUU7HdBH
         w5wAk76cpUC2dsQrVkGxHzO3fd68IwTqtSCtl5epsYEWJAlZhcw4wqp9jOooWc/yKK/B
         CWAuBpQ+HR/mHfUE+6pW4zk7joAFvZw4nzCwo0auGn5GP0srdJyp3BhOwoqIQSIt6EGY
         +ZtXlU+owa+9/KdPVwQPL8gsPCNpCZlitY8uqjspA7JEcvJlHtFp1C+dIFPcJYIdkPkX
         rj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711385249; x=1711990049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BzmQG/Px/KyN+Q5+GYjwqwJFqqaQf2M+VgCSPEUu+Uc=;
        b=gj9nODrW94VvruUrzfE20SUaO5X5e1MBtKgeI06mbWTwbUJ0JiW6P6VDDN0x6nS2/0
         XhhKebG0s+AhzzZTCUgDXGtU3GZ3ztE2e2il+udMEG48CCR79OFdth7bNwgt4Nqkguay
         9NvW1YqghaQaquiKhJNPp4NhbYFn0q81Gs0Jv92oVx8V5zCCUttZ2JuYQ+3CDIhtaTFR
         926oi5zpBsiyfi00jOVW9knd0mZ8fvT2+65QucCnp7tQrWSmYOwh8eAI1zElYbJ/Gjdo
         gniKI9kKkoVEN/+8jZInDSjsilWaz8zOMzIa2lQhZg0YVUzL7M+W8lujdavipdOapgxx
         Z3iA==
X-Forwarded-Encrypted: i=1; AJvYcCW6FTaS4J8WLsURML8Kme38kMmX4ca037Z0zEnpBURmM3mTYSEsPHa0qwVVY+jO5J9zN4ChytoZ7ikIUlAhAnPVngSae3IrJISI
X-Gm-Message-State: AOJu0YyyAVBIYZS3wfk1TuJBY3e4vb9X5mwAKoFRALQw2NBW6K6JUgL7
	T85OgUvQZ7GuZCezPmF/5idR/8eULH97P4aUlTd7ER7EJjX8VEW5
X-Google-Smtp-Source: AGHT+IGk24sO8BijgK9ZnRRhZlIv4DNCXFChzDBCSM0lUsh2yFZp6XLC4Fv73ldVOIm/7nhaN+v+WA==
X-Received: by 2002:a17:907:7214:b0:a47:4fed:514a with SMTP id dr20-20020a170907721400b00a474fed514amr3997353ejc.52.1711385249077;
        Mon, 25 Mar 2024 09:47:29 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id hy8-20020a1709068a6800b00a46c0191306sm3214320ejc.213.2024.03.25.09.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 09:47:28 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: mic@digikod.net,
	skhan@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH 2/2] Add liburing dependency for io_uring test
Date: Mon, 25 Mar 2024 02:32:35 +0000
Message-Id: <7cf9a10efc44faf7fc4b3f8c75056296296bf797.1711331521.git.dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1711331521.git.dorine.a.tipo@gmail.com>
References: <cover.1711331521.git.dorine.a.tipo@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This commit updates Makefile to include -luring in the LDLIBS variable.
This ensures the test code has access to the necessary library for
io_uring operations.

Signed-off-by: Dorine Tipo <dorine.a.tipo@gmail.com>
---
 tools/testing/selftests/landlock/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/testing/selftests/landlock/Makefile b/tools/testing/selftests/landlock/Makefile
index 348e2dbdb4e0..ab47d1dadb62 100644
--- a/tools/testing/selftests/landlock/Makefile
+++ b/tools/testing/selftests/landlock/Makefile
@@ -13,11 +13,11 @@ TEST_GEN_PROGS := $(src_test:.c=)
 TEST_GEN_PROGS_EXTENDED := true

 # Short targets:
-$(TEST_GEN_PROGS): LDLIBS += -lcap
+$(TEST_GEN_PROGS): LDLIBS += -lcap -luring
 $(TEST_GEN_PROGS_EXTENDED): LDFLAGS += -static

 include ../lib.mk

 # Targets with $(OUTPUT)/ prefix:
-$(TEST_GEN_PROGS): LDLIBS += -lcap
+$(TEST_GEN_PROGS): LDLIBS += -lcap -luring
 $(TEST_GEN_PROGS_EXTENDED): LDFLAGS += -static
--
2.25.1

