Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65F2535DC
	for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 16:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711385247; cv=none; b=cUp92fgYvK5k4DKmRxoqbIiG8K71kZwxvMkmwiYvCkfZnJ4U2owR7sjPuQEF5VEb04jBk0LG2CExwSMiAmlm6nwRrii+dSlBqI62OX2jBmEVw5epfmsEHGztm9Z2ZF5IhHp6z6B7dFSGutby29Av0bFRm6CPsQ75ZKVkhffYleE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711385247; c=relaxed/simple;
	bh=ddzvS/5ZwX9S4tjtmBO4KYs2ZVQG3AKW/epR0GzOd8U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IQvi8tx7UvmAA85XEkiympwJy2xmAEk1MEGmTOjXfSJsvLdMf1hXbmjTB2QS99om4kKLZzL8LBdbYAPyRTIJIXKWNlVL+1fNUwsFEUjK1uq448qNSPz74HgtJUUvRhl1OMDctNgwkXTIRV7bWHLsAOFUruQ7TJiov0MQKFtazLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gnH6og/o; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gnH6og/o"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a44f2d894b7so559053866b.1
        for <outreachy@lists.linux.dev>; Mon, 25 Mar 2024 09:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711385244; x=1711990044; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zhVHVqgF70p+GgHDWEwDMNamlgO99oy8n+379PYKp6U=;
        b=gnH6og/ovsNZeEOrVKtN2PXLciM8X5DB5jcyQ9urgB7/N/T1vF9/5KrgzcismdRShp
         Jx1Q00k0sWs6t0vrQmaqz4+spgGUTA0FVnrgIJk7X9d5bUCMM0f3lXu0SgRovg8KNLGT
         8pBW1C8A5BoTlXsDNxvxx633Zw3ydTFAJ5ZpxufA/v3Zf6tyroChoV/NFO4ayn5P/EB6
         qtnNUAct/WaPXUc52Zq9l+p5Gc0S8rkdb5yVOgscozl6nydbQZ6oEsSpW5dz6nPqOo39
         e4NOFICi9YZNtKiJYTevliTWbo2knhU3QG7DqTzOnSTUs9/QUddJGr1dzWoej2sSmibV
         jTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711385244; x=1711990044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zhVHVqgF70p+GgHDWEwDMNamlgO99oy8n+379PYKp6U=;
        b=u42LSY9oPe4b6tjzFUbDAWQLeYsG6mC98KYAgAyhmeissLeps3U8eLTW/rqQeaiX9a
         Z76rLVhEQ2mivNJlzoYDUDaHEKc0nk+UJofEkVYBWREyqZd/e6qyKSlq8Y6aNmHN7S9L
         mbDadz9dVbYKTiPO93oxJvwqK1bnDmI0jzfPA5nV+ayYUGy7vYGxSgXTbTiZwNilqD6Y
         IPocja9dJyaBauFnKFkzbdjWl+TzVabroH3+K3gpO0lPFdOaPRaBHYuyr3K+zxYlyrDs
         PeiFrPlJDcgeNhU09IjvgyIGefQeItH7MV94iSOoEhwPWEuhbOUEE3NVV30opmll+3TA
         pCeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUW9eQEk+5eI3Z+4Bh4SqaVCT7rbFk52z52/xUSiIdTl4sk/AOx2qs2Ayj0xYNiWax1MsoaH3uVBeWJHyL6FQMZSWI/EvyJirLt
X-Gm-Message-State: AOJu0YwtIlUr+J24wSFIvVlmWkqEdXqTDUoGYwg/G5IORxip7AstIQwL
	mu/gPCQzDRH4PQH5T5G008cgGjVmuxOXrjUjsHFgw7bwscu9jeeY
X-Google-Smtp-Source: AGHT+IGGpHQTAkrIsni8hCTFctLRCGlo47+uaO9YGyLLSwg5i3sISgwLW8iEx3/L0j2Lx8azYBjd6w==
X-Received: by 2002:a17:906:3707:b0:a47:9b9:7319 with SMTP id d7-20020a170906370700b00a4709b97319mr202618ejc.15.1711385243756;
        Mon, 25 Mar 2024 09:47:23 -0700 (PDT)
Received: from ubuntu-focal.zuku.co.ke ([197.237.50.252])
        by smtp.gmail.com with ESMTPSA id hy8-20020a1709068a6800b00a46c0191306sm3214320ejc.213.2024.03.25.09.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 09:47:23 -0700 (PDT)
From: Dorine Tipo <dorine.a.tipo@gmail.com>
To: mic@digikod.net,
	skhan@linuxfoundation.org,
	outreachy@lists.linux.dev
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>
Subject: [PATCH 0/2] Add io_uring test with Landlock access control rules
Date: Mon, 25 Mar 2024 02:32:33 +0000
Message-Id: <cover.1711331521.git.dorine.a.tipo@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series introduces a new test for verifying Landlock access
control rules with io_uring operation, IORING_OP_OPENAT.

The first patch (Add test for io_uring openat access control with Landlock
rules) implements the actual test.

- The test defines allowed and disallowed paths for access attempts.
- It creates Landlock rulesets for both allowed and disallowed access.
- It uses io_uring_prep_openat with the rulesets to attempt opening files.
- The test verifies successful preparation for allowed access and expects
submission failures for disallowed access.

The second patch  (Add liburing dependency for io_uring test) updates the
Makefile to include the necessary liburing library.

This patch series improves Landlock's test coverage by incorporating
io_uring operations and helps ensure Landlock effectively controls access
through io_uring.
It enhances the overall security posture of the system.

The test has been successfully compiled using make run_tests -C landlock
and successfully verifies Landlock access control with io_uring.

Dorine Tipo (2):
  Add test for io_uring openat access control with Landlock rules
  Add liburing dependency for io_uring test

 tools/testing/selftests/landlock/Makefile  |   4 +-
 tools/testing/selftests/landlock/fs_test.c | 132 +++++++++++++++++++++
 2 files changed, 134 insertions(+), 2 deletions(-)

--
2.25.1

