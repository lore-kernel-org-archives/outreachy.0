Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32134084E
	for <outreachy@lists.linux.dev>; Tue, 20 Aug 2024 04:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724126951; cv=none; b=GeRdXmsnUIvQ7KC1Zyi5pRloo3uSlF/Nft/4P90TVyfNb5T8Y7tPqom+3NindiEB5vZhR7PY3DPAhkjOuHjVGyE6KkUvCr31AbdHcuzEQ6NN3eHtyX0mRGiVxWMctEh+SIH+lgCXC9Gmb2EH8QocDYrH39CS4/XObC9sQgj5uDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724126951; c=relaxed/simple;
	bh=722SrbrU5FYgP/rCyWOB/paH8DLrpPvaWd+6+O/GNKI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=kvywCKqRgm1cmzJYglzMij1MOje56+3HjfkvYvWg1rJyf2Q19hBoWC9Cj+d5mPRYOKz9UGoTLuKIQ9u4iVvXvh7Dh3ogBoVNHITuz/wdyVtfUNstNyqX7xpSEfFdILz/1hZAqRv2LB70rUEfxXJ0tDQIxZkL3JJFvFASe5Pl4oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BkTjrfFD; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BkTjrfFD"
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2d3b595c18dso3730498a91.0
        for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 21:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724126949; x=1724731749; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VBYYwjNxkH2Y1cBz1QAcJjOLR2oZ87KEXbLeXrpaRGM=;
        b=BkTjrfFDqannSYVXu8/5cxixnjSmtwSwFR6HA/sFyIPswrozdcAuHzwHcCVpTmMc/a
         TGWJ0en8NZfeuzXHJZNmEPceapM4QR8hjdY+fYpM1zXEwfi4sKUTSiyNWraJo6jMFZET
         RI1Qepu8PWd1Yhbj+d40eBppbztcAatVaDmIP1892WgUNraxV8PUBaqZtnvk/JQFAPQW
         /Fl5nR0aDK63A1Zf7Y/Wteh94h4azJonnJJQkYaSde+VPZ24ZcBbmVg8qlpmBlzm4K9U
         dVoMY8nxKpJliJNSgGglzaWSVdjxijhfrQUm0ql5O4k9Q6uJ++SqLugd6NLmeK7hfLzp
         GHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724126949; x=1724731749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VBYYwjNxkH2Y1cBz1QAcJjOLR2oZ87KEXbLeXrpaRGM=;
        b=Am+XSV3qbM+K1fHugbvbUxKHn3/0igPNzKIB/DZSq6IMn6w5yHbBj46gCnxevcXmac
         /Mh0phR25kRybh5VjozkvADEZeuvjCp53rUVb4sXTcUEJR6BlsbuHgG5UJKvSV1CRJlU
         XnuV1htG/ZVT7WQz0Fm4G5+vH5sqxy/7FDajnvuv5vEB0xp0hKCxE6tFm6lXHVRJlvbB
         2FI7GcXUXn3qF3X7qq1AN8K8Hx03g6PPiWQ/lAyDUiLepajlNMugbFHnXcwFDo4iYiCH
         lGHBfiV0MStB+iv9bw/YQaHFIJwALFeLcIHphwq9gR4rMAgFBjog8x31QpTrQN484fJ2
         3i8g==
X-Gm-Message-State: AOJu0Yza6tr7wuo4po9qngO3bCCdqtkG7w8V4AIh6+tbYtI70j7UNzcH
	jnCUSBVlaIEII9+s5nGek4Y2Fq7XjEg4LhUZca0TMRVNeBBPguVzolgJ7tRT
X-Google-Smtp-Source: AGHT+IETFymxJ8RD0sGkskYUpuypnOlax75HpUcfIv9lVAy026lOUBXDBs8DpOa5LgcJ9ZOiuk/ZsA==
X-Received: by 2002:a17:90a:b308:b0:2d4:27de:dc39 with SMTP id 98e67ed59e1d1-2d473218371mr2577275a91.6.1724126948740;
        Mon, 19 Aug 2024 21:09:08 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e3174bfdsm8149652a91.27.2024.08.19.21.09.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 21:09:08 -0700 (PDT)
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
Subject: [PATCH v10 0/6] Landlock: Add abstract UNIX socket connect restriction
Date: Mon, 19 Aug 2024 22:08:50 -0600
Message-Id: <cover.1724125513.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch series adds scoping mechanism for abstract UNIX sockets.
Closes: https://github.com/landlock-lsm/linux/issues/7

Problem
=======

Abstract UNIX sockets are used for local inter-process communications
independent of the filesystem. Currently, a sandboxed process can
connect to a socket outside of the sandboxed environment, since Landlock
has no restriction for connecting to an abstract socket address(see more
details in [1,2]). Access to such sockets for a sandboxed process should
be scoped the same way ptrace is limited.

[1] https://lore.kernel.org/all/20231023.ahphah4Wii4v@digikod.net/
[2] https://lore.kernel.org/all/20231102.MaeWaepav8nu@digikod.net/

Solution
========

To solve this issue, we extend the user space interface by adding a new
"scoped" field to Landlock ruleset attribute structure. This field can
contains different rights to restrict different functionalities. For
abstract unix sockets, we introduce
"LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" field to specify that a ruleset
will deny any connection from within the sandbox domain to its parent
(i.e. any parent sandbox or non-sandbox processes).

Example
=======

Starting a listening socket with socat(1):
        socat abstract-listen:mysocket -

Starting a sandboxed shell from $HOME with samples/landlock/sandboxer:
        LL_FS_RO=/ LL_FS_RW=. LL_SCOPED="a" ./sandboxer /bin/bash

If we try to connect to the listening socket, the connection would be
refused.
        socat - abstract-connect:mysocket --> fails


Notes of Implementation
=======================

* Using the "scoped" field provides enough compatibility and flexibility
  to extend the scoping mechanism for other IPCs(e.g. signals).

* To access the domain of a socket, we use its credentials of the file's FD
  which point to the credentials of the process that created the socket.
  (see more details in [3]). Cases where the process using the socket has
  a different domain than the process created it are covered in the
  outside_socket test.

[3]https://lore.kernel.org/all/20240611.Pi8Iph7ootae@digikod.net/

Previous Versions
=================
v9: https://lore.kernel.org/all/cover.1723615689.git.fahimitahera@gmail.com/
v8: https://lore.kernel.org/all/cover.1722570749.git.fahimitahera@gmail.com/
v7: https://lore.kernel.org/all/cover.1721269836.git.fahimitahera@gmail.com/
v6: https://lore.kernel.org/all/Zn32CYZiu7pY+rdI@tahera-OptiPlex-5000/
and https://lore.kernel.org/all/Zn32KKIJrY7Zi51K@tahera-OptiPlex-5000/
v5: https://lore.kernel.org/all/ZnSZnhGBiprI6FRk@tahera-OptiPlex-5000/
v4: https://lore.kernel.org/all/ZnNcE3ph2SWi1qmd@tahera-OptiPlex-5000/
v3: https://lore.kernel.org/all/ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000/
v2: https://lore.kernel.org/all/ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000/
v1: https://lore.kernel.org/all/ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000/

Tahera Fahimi (6):
  Landlock: Add abstract unix socket connect restriction
  selftests/Landlock: general scoped restriction tests
  selftests/Landlock: Abstract UNIX socket restriction tests
  selftests/Landlock: Add pathname UNIX socket tests
  sample/Landlock: Support abstract unix socket restriction
  Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI
    versioning

 Documentation/userspace-api/landlock.rst      |   33 +-
 include/uapi/linux/landlock.h                 |   27 +
 samples/landlock/sandboxer.c                  |   56 +-
 security/landlock/limits.h                    |    3 +
 security/landlock/ruleset.c                   |    7 +-
 security/landlock/ruleset.h                   |   24 +-
 security/landlock/syscalls.c                  |   17 +-
 security/landlock/task.c                      |  127 ++
 tools/testing/selftests/landlock/base_test.c  |    2 +-
 tools/testing/selftests/landlock/common.h     |   38 +
 tools/testing/selftests/landlock/net_test.c   |   31 +-
 .../landlock/scoped_abstract_unix_test.c      | 1130 +++++++++++++++++
 .../testing/selftests/landlock/scoped_test.c  |   33 +
 13 files changed, 1483 insertions(+), 45 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_abstract_unix_test.c
 create mode 100644 tools/testing/selftests/landlock/scoped_test.c

-- 
2.34.1

