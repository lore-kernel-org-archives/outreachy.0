Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C491B85FA
	for <outreachy@lists.linux.dev>; Fri,  6 Sep 2024 21:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658218; cv=none; b=NKwDi9EjdqFwzBPF/tJ1d0ip/FxfI5ii8mZV4rjaXPxo9FQPwZ/v5dMyFY1nK4CvqqynRn6xWd4KX/Ik+sDX0ZHeS72fEsBdfuousDxa/OoFLS05AXQdVcl0PbrCuphUeHmK4Ep+dG1wTsfHG9t3DxwEEq4xEFIrKZJdKJYwwK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658218; c=relaxed/simple;
	bh=y+y0VlIllb5CtOz4Ek+InCMwxUKWOuc56I5A+WE7J8M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YB69YCIsBzZkakYM3MQBPOYY2kg1Zf164wfSZ+Q5BVOf2Q/K+5UhzYtZA8BLmflFQ0PSMnouw1r9WBptWVScsrQYLv6fozzsyliOk0cRz6MAMMMvT7LMzBZpQZJkrujkbpyiuhJ98OS6H2XF+jiKoVjpyKT2A+66dKc5Iir2Rjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DYvHMMLV; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DYvHMMLV"
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-206aee40676so23646085ad.0
        for <outreachy@lists.linux.dev>; Fri, 06 Sep 2024 14:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725658215; x=1726263015; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dsHQ5h54doNUK/ufVxcrXlo/0lcc6AzIgFEDd9yj2fY=;
        b=DYvHMMLV/zQBDJBDXJe1PUYiq63pqmADf2HPbtp63USqTYgH6gyvYXyFb3CkhPnecT
         2V3sxR0x+EQjo1vzvdXewP9hX0RFYoWe9jDF0t3FFJI3ZulBe4wVEhuKDSShrqz+0kK+
         oSbUvs6hkAnvCOw3gn1XcLWEFGb+SXPfNAHfkkKvoATGLFQntLkz7WMRfP0lO8iQgghY
         gtJGG77QUlWAql+69t8yFHnhaMar5Fxbq7STeW2juznhrDmWf+aNJ+dd2XgXsyvkt4Tr
         NcYInMzgCbLJIMGSLzV4CyauO7gP91s6J2o6KVBY3s53MCSUj5lqab3eE1wrZQZq2+ug
         ksCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658215; x=1726263015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dsHQ5h54doNUK/ufVxcrXlo/0lcc6AzIgFEDd9yj2fY=;
        b=X8L8M2emNh0KLNEW8SpYKctcK/Tq93BtX0+JV4BD3zcrrLkDXsihLOfaClb5yqlrYB
         gRVXwAH6DgkUrI5PZ/Q8GCuSqUpYbuh/SQiJTZ4qDS+juP5YCn5AN0Uo5Y/8arNXkJJe
         2Lsu61YDtWzpu19gpMtdyMZhv5O6BDX4jcg43D3fuJnLm4gMXH78jyQPrW93/niD7ADc
         y/WXLdKicoi96B4iWISeZzDoJFw7OwarB6HCJDJal0Ie7OHMFZ8FNeokof9YeZHfFLCa
         K3XPhbr3xFjEygZwjen/vz6Ge/eaSbsw2o9W7DK64nvBfMmKluJQ139+7EuTqPIkr81Y
         yzlw==
X-Gm-Message-State: AOJu0YyuiTvJyq1U0NSFcrhRiWmPjZC9Kltfqp2GuI9eHa76WXYgw+Su
	Y+eA9pxvXJB2SAgBekNzJabb+A7/6Ac/HV5YCEI+HH2s+U9M1gM+RgJTsAE9
X-Google-Smtp-Source: AGHT+IHlBPJGfsi7DG7bnhqRrXUVLLOWGqvqfg2nr5hiLVWfmhC7Cpgcyq8IeMIPowRRJIv/NNqkCg==
X-Received: by 2002:a17:903:18f:b0:202:cbf:2d6f with SMTP id d9443c01a7336-2070701f045mr12805625ad.57.1725658215407;
        Fri, 06 Sep 2024 14:30:15 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea67bd1sm47081065ad.247.2024.09.06.14.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:30:14 -0700 (PDT)
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
Subject: [PATCH v4 0/6] landlock: Signal scoping support
Date: Fri,  6 Sep 2024 15:30:02 -0600
Message-Id: <cover.1725657727.git.fahimitahera@gmail.com>
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
(e.g. SIGKILL) to processes outside the sandbox since Landlock has no
restriction on signals(see more details in [1]).

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
v3:https://lore.kernel.org/all/cover.1723680305.git.fahimitahera@gmail.com/
v2:https://lore.kernel.org/all/cover.1722966592.git.fahimitahera@gmail.com/
v1:https://lore.kernel.org/all/cover.1720203255.git.fahimitahera@gmail.com/

Tahera Fahimi (6):
  landlock: Add signal scoping control
  selftest/landlock: Signal restriction tests
  selftest/landlock: Add signal_scoping_threads test
  selftest/landlock: Test file_send_sigiotask by sending out-of-bound
    message
  sample/landlock: Support sample for signal scoping restriction
  landlock: Document LANDLOCK_SCOPED_SIGNAL

 Documentation/userspace-api/landlock.rst      |  22 +-
 include/uapi/linux/landlock.h                 |   3 +
 samples/landlock/sandboxer.c                  |  17 +-
 security/landlock/fs.c                        |  17 +
 security/landlock/fs.h                        |   6 +
 security/landlock/limits.h                    |   2 +-
 security/landlock/task.c                      |  59 +++
 .../selftests/landlock/scoped_signal_test.c   | 371 ++++++++++++++++++
 .../testing/selftests/landlock/scoped_test.c  |   2 +-
 9 files changed, 486 insertions(+), 13 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_signal_test.c

-- 
2.34.1

