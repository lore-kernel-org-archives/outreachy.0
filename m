Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA7F6BFC7
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 18:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723746584; cv=none; b=Y8NNKYlfoX47g4c2L4P02I5Om1sulCmrPECU7tGWTkTWdVoUXQGxyNGlYAzQ5Bll4xOpEIaVGvpSJQmWkrcfM3uxL9MFjvmF0O/TcrBYfFxVJCRXXrFncpFHNpgs0y6Oq43UaxWX3iX7fSuUgilUnxHvl5NnfPLvGOM0L/ZE1PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723746584; c=relaxed/simple;
	bh=yO7162N4YLtU2/brXvyxJHhtffw2+I3lhuH775R20WI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TNnHRPhhSSju6yULuo9Cm1huMgqSRmHY6mL3ZspnUu/7QgVauQlJKUsYL2KWiV1q+wecEa+W49i8faJItoNwWhPWPQBDUaNyTw8GXVJiJTbk2Cps7K/EuwUycsbGY3sZuJWKaf/ViGUwMXQ0nA1HQAMK9+2WQJCx8pAjMPL0UJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qiv2K7B0; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qiv2K7B0"
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-260e6dfc701so858245fac.3
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 11:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723746582; x=1724351382; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J8sgbfdFOBV3bkG4ieD0q/AsDipcY3APfDNOmRhHFEE=;
        b=Qiv2K7B0BFH2vK89raNQCNcbaYb8oUjoei3XeSbKA1lSLxy2eBcUkZd3rcspOkQfrf
         PazOzYuqwDAarlv2cXVfK86h/nSwkRDVPz131k/DSbJLabUs6u0bUj0zhVwg+UBkM67d
         O01Rr0ga4bN3JM58uvtGBiB4J288jnkrEEJ/d9KSBVlNw7PBiXdLmWjaAv6aaWxD5OTD
         551f52tynU6pNb/y8W944zfsqwb0YSgG2QIOG/7w0SoxUf9xJhHp+ZqTPox2qZm28UET
         gkAur/d2+Xp821Zr5aUvQmWq6NPe9TbJPA+wMTSZntgQtCRmnDnR8R+Ubls1b8yfAnFO
         7K8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723746582; x=1724351382;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8sgbfdFOBV3bkG4ieD0q/AsDipcY3APfDNOmRhHFEE=;
        b=jFsAV5InGLEAHcwTTGYlgsEKw8HfJSw2SaE5HUTLM9b+LHWc+/n38/K3GckjSQ6frz
         5XKAE2qLLShT8f//Qe0KuYSQqp7roamkOkQMBeuYZZC13NOLN12TNKLBIVdJZ1xmljsx
         2QgDJLj5dHJgi8kRUHWQRVAtWBLSrYcEd4XstkfLb6LnNTZz3EY1raqsuADShUPC7y0o
         dyy594y0yNwPXkHRMBK0OAfq2srMlSsI1g2Rc6TXXaRFOI/2dVhqBG4AgFfRT0u+ibqG
         GdbvxBJeveQzlgkVVDuEd3jQk8a9XovrUFag5wLGCyvDdXB61KfBEq3aF8LFH8fAWjiH
         f95w==
X-Gm-Message-State: AOJu0Yw2FMMLO+Ypom3Vfumdjsmpt/fBJ8qZPRFN4jq79B1v2NDl4GKh
	8lNhX9g4WB9WIFsHn42vxEBTC/Jk9lMZ7Oh69OAy0xxPrKvd73frN9EgGrMT
X-Google-Smtp-Source: AGHT+IGSG5seZMR1+T+WdGh9WqTgjPnjbmJNRK41twGjcjwgdhrfvAarAHV/rx0xgm6YlFbnuXXWOQ==
X-Received: by 2002:a05:6870:d187:b0:260:fb11:3e49 with SMTP id 586e51a60fabf-2701c569751mr409173fac.45.1723746581516;
        Thu, 15 Aug 2024 11:29:41 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b6356c76sm1431683a12.62.2024.08.15.11.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:29:41 -0700 (PDT)
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
Subject: [PATCH v3 0/6] Landlock: Signal Scoping Support
Date: Thu, 15 Aug 2024 12:29:19 -0600
Message-Id: <cover.1723680305.git.fahimitahera@gmail.com>
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

Previous Versions
=================
v2:https://lore.kernel.org/all/cover.1722966592.git.fahimitahera@gmail.com/
v1:https://lore.kernel.org/all/cover.1720203255.git.fahimitahera@gmail.com/

Tahera Fahimi (6):
  Landlock: Add signal control
  Landlock: Adding file_send_sigiotask signal scoping support
  selftest/Landlock: Signal restriction tests
  selftest/Landlock: pthread_kill(3) tests
  sample/Landlock: Support signal scoping restriction
  Landlock: Document LANDLOCK_SCOPED_SIGNAL

 Documentation/userspace-api/landlock.rst      |  25 +-
 include/uapi/linux/landlock.h                 |   3 +
 samples/landlock/sandboxer.c                  |  16 +-
 security/landlock/fs.c                        |  18 +
 security/landlock/fs.h                        |   6 +
 security/landlock/limits.h                    |   2 +-
 security/landlock/task.c                      |  54 +++
 .../selftests/landlock/scoped_signal_test.c   | 331 ++++++++++++++++++
 8 files changed, 443 insertions(+), 12 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c

-- 
2.34.1

