Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DECE12C49B
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 18:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722967879; cv=none; b=rNQ17VeUWq9RIwmxKZqhEGjEYr+d0jmnmtxykPx7l4vQFpweH5nzOgH3LT8ecLQQTFLpmfeJfvjbBV2TrW+Of4yOyHS+Zd0QrQpW5GVA2JWguvGi6/4icmj9PwQcNUP/43WP0JiE50jhihYtZ+iR+zuRcdFLgPC2z/iacvQubLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722967879; c=relaxed/simple;
	bh=0ewYccFC+gUsRirqVBgroPLIdoo7vvA0gP/+dnGxjmI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=uVJwcU0gNnMXh+GYxxnQDcWH86lIxbDCAi6ETgqekD+Q08/S2xQQFFghB+jNI1TtgCR3PZp7wRakPR3vLvbFOchAS/GOCHYn+OOwUDfFrHo0DXJFumNL+PLHmTBcMEF+UMLitOsF4D597aoaoLS/UBg2/foSA60ZU4cM/KfV5yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gqOlv75H; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gqOlv75H"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1fc49c0aaffso8042815ad.3
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 11:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722967877; x=1723572677; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0RBuTc6tLdIB/+vTHorcWL7vaqZKWklEKUMNzfbf8ug=;
        b=gqOlv75HJLftmcEI2zIqtzIN8SARvqEGflR86XwnuBFs4+DeuyiQro3PlgyC3W5uT2
         iUAzmh2xmAivB0G3OXZNDI+YwiG3ZwtqzQO3sRwkJQyBzHnDmKVsjSuVEaavxuI7o7IT
         yjTBmAGUb7PB7gzHZCy/VcA9mV8lvsJLLwxq4puan0aqf7GKSdyRoi8H6gDou2WQ6uX+
         +7vOQnLfn42AeCmpNCT0CoYbWaDYUEr7v5ez/gzMcMjnJS+B86YxG7xEa7Gyk9C0J+lX
         hP5srhpsdLhj8HVQZUXumz6G3PreCYkJbo2/NKtbXfcFnk6ire44WO4HS3MuzFYHrycX
         Lrww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722967877; x=1723572677;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0RBuTc6tLdIB/+vTHorcWL7vaqZKWklEKUMNzfbf8ug=;
        b=Z7CoKgZKr33ZGeBVnrv6Wm62yoziT9z+dwSZ9TWLGT1FO4a+587KsiNF/9qFsrDdYS
         vv2YuEqofxH6YA39zCLlw/FhQEJ8XoRc+5WzDs6+8bMrqDxLGcSC6hfmMcmCa8V8vMQP
         vEpzqT8UaEAUokUUoNyYd9Ahpp/5G6MqvqNahwGia5ljIwXMcdt8KzKuAJCVXGKqaHXM
         LGjULlOz9l54XbWVwszXbp9xaqFjX03BJQePUKT8dsH3SSmjZlqf1GLzBhFimsBZxE7Y
         cVq9u85IATnnVFyt3RzRdje5RQD5lyzmJUUzG3x4nMbmdoY6ByrL9PyC9wkTb9UTrfQd
         rQfw==
X-Gm-Message-State: AOJu0YyOpzGAMt+T4EvLQWETkHYqqY9wdYF7hw3UW16m2CPKCs/W56TA
	vl0GIJhO/5h1cEqe1Xya5dZsHZkIwqtXzsqPu+pJ01dIUdBBmjtspkMmJXfB
X-Google-Smtp-Source: AGHT+IEMFDWxG3XriWekADN9wxkPJTTGnTZ26Onx658MWf6fTZ3OlRburIFFPLH7N2CuvRHyAkCeBA==
X-Received: by 2002:a17:902:d501:b0:1fd:9105:7dd3 with SMTP id d9443c01a7336-1ff5750acd3mr176378275ad.64.1722967877035;
        Tue, 06 Aug 2024 11:11:17 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc45b51esm12829504a91.32.2024.08.06.11.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 11:11:16 -0700 (PDT)
From: Tahera Fahimi <fahimitahera@gmail.com>
To: outreachy@lists.linux.dev
Cc: mic@digikod.net,
	gnoack@google.com,
	paul@paul-moore.com,
	jmorris@namei.org,
	serge@hallyn.com,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com,
	jannh@google.com,
	netdev@vger.kernel.org,
	Tahera Fahimi <fahimitahera@gmail.com>
Subject: [PATCH v2 0/4] Landlock: Signal Scoping Support
Date: Tue,  6 Aug 2024 12:10:39 -0600
Message-Id: <cover.1722966592.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds scoping mechanism for signals.
Closes: https://github.com/landlock-lsm/linux/issues/8

Problem
=======

A sandboxed process is currently not restricted from sending signals
(e.g. SIGKILL) to processes outside the sandbox since Landlock has
no restriction on signals(see more details in [1]).

A simple way to apply this restriction would be to scope signals the
same way abstract unix sockets are restricted.

[1]https://lore.kernel.org/all/20231023.ahphah4Wii4v@digikod.net/

Solution
========

To solve this issue, we extend the "scoped" field in the Landlock
ruleset attribute structure by introducing "LANDLOCK_SCOPED_SIGNAL"
field to specify that a ruleset will deny sending any signals from
within the sandbox domain to its parent(i.e. any parent sandbox or
non-sandbox processes).

Example
=======

Create a sansboxed shell and pass the character "s" to LL_SCOPED:
LL_FD_RO=/ LL_FS_RW=. LL_SCOPED="s" ./sandboxer /bin/bash
Try to send a signal(like SIGTRAP) to a process ID <PID> through:
kill -SIGTRAP <PID>
The sandboxed process should not be able to send the signal.

Tahera Fahimi (4):
  Landlock: Add signal control
  selftest/Landlock: Signal restriction tests
  sample/Landlock: Support signal scoping restriction
  Landlock: Document LANDLOCK_SCOPED_SIGNAL

 Documentation/userspace-api/landlock.rst      |  27 +-
 include/uapi/linux/landlock.h                 |   3 +
 samples/landlock/sandboxer.c                  |  13 +-
 security/landlock/limits.h                    |   2 +-
 security/landlock/task.c                      |  43 +++
 tools/testing/selftests/landlock/base_test.c  |   2 +-
 .../selftests/landlock/scoped_signal_test.c   | 303 ++++++++++++++++++
 7 files changed, 376 insertions(+), 17 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c

-- 
2.34.1

