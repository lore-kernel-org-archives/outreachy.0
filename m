Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F03C47F5D
	for <outreachy@lists.linux.dev>; Wed, 14 Aug 2024 06:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723616581; cv=none; b=ndII/dNZiM9fZOEG+ZL/nwFXnlKaaUZklATY8ywtcf5VVPa2Z5VCm0svOKpkbJUO4T9U5I4nIKnNdA/X+gwo/MKGMbhYjxbQ+HJbkyqA3CS7RNXIUIlLpJLx+YYMZmp3Ajp1Y+hfEjsglOSjHB+SJARONtOHT686cqzoyRU0u3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723616581; c=relaxed/simple;
	bh=zL+qnPL1jO2zhvpEIpxLqlOnW6CEZ9PD7cHRsrI7EA0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=BUgcyI6Y/Sknt+ktBo+jfDXPv/31ClQ1rUe6bANLFrF9u5ZEGVZ421pTdkbBeonI2jx2arNzjPHdzio7AsyRnyz9uWc7zapp46IYppzQaUduiJ0fF129i/c6SJ4N4vbCii2OxCJxGP/imeyHpA/RxLlcLkf1h+G3kgJrC0Ao478=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KCOa5BUw; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KCOa5BUw"
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7a1843b4cdbso4327529a12.2
        for <outreachy@lists.linux.dev>; Tue, 13 Aug 2024 23:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723616577; x=1724221377; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t6qpq46Cmtk8VQ38Im8rdWFCBv9ylccY5eUMWeEbdM0=;
        b=KCOa5BUwjQsHLH9BogKSqmHTu9QCex2vD4AF30m8xPKEVqlX5vZAbs0+qj/NdfBsMa
         7WssQWY3vIC79gWzPBwIwfc9iqPQD9wZJuzMxtUVm+VfUBxx1G0uTw0uHWi1wqRR5OFU
         mSGy//O061bw96eiHs930HAoizWb7T6iH5lbd/vKOhaosMeUa8flYd8bJb+dpNYc8I+Y
         QvSrC6R1qxfZHv8pLy2ENz+pEysN8DryndFFsAO38nt4YyavQTAFoMgeBoSf3TFBuq6b
         jXZ7N9MHboLeDv9MvunnyzXhujkIPatqDqMEkdQ3s6RfdfskYYSc4SAQ3cF2wE0Lus26
         KaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723616577; x=1724221377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t6qpq46Cmtk8VQ38Im8rdWFCBv9ylccY5eUMWeEbdM0=;
        b=Sm0ETMR/wrmvVpeVjHB4pYz2vWg6bHalCrsz9nMKMSxRdz6VOQTlJqLAWMBTzz+vVE
         VE/vkAdh2EKnfREWJzhaJgkrNMY8v/PKRoj8pLvw6jhYIopjahzJFQXmUeo8MVQ2xqTA
         o1jx4wGlQ+bLEkvIi4BdmnkKA1ZQc89XccvUG/IN8Rc+/JE6Qak5DIgfYUBLYn/ZzvZ6
         cmh+oWvb1jDE8Mwp37exWmzO3dzw24N0HkRYs5fjzr8OCInkigusj5pRr8Yk10HJtx+x
         unduBq8NjBXTlIrVp5TlInzCr9LKM1/W+o8UDfgi4IF2dBac1MBgCkjThsa17c5QWIbh
         imlg==
X-Gm-Message-State: AOJu0Yyntmf3lzl7HtMNw06FZ7WGsY3DREoX7nIZPXozRhU9fDDkwX+P
	rSUxzCnHupuqfD4pIDUIg+amQBlGKwICscunJZ8tnhy1GFHmf/O6+7c5OTR8
X-Google-Smtp-Source: AGHT+IEM+cQkNQYxKAzkEIN3SXPl5pEpGF0VS4xS43WkOmnpmzPVe0bsCIM7q1PBWtzTRnWKOVOufQ==
X-Received: by 2002:a05:6a21:3a81:b0:1c4:214c:cc0d with SMTP id adf61e73a8af0-1c8eaf80489mr2271288637.36.1723616577336;
        Tue, 13 Aug 2024 23:22:57 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3ac7f2120sm728811a91.31.2024.08.13.23.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 23:22:56 -0700 (PDT)
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
Subject: [PATCH v9 0/5] Landlock: Add abstract unix socket connect restriction
Date: Wed, 14 Aug 2024 00:22:18 -0600
Message-Id: <cover.1723615689.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch series adds scoping mechanism for abstract unix sockets.
Closes: https://github.com/landlock-lsm/linux/issues/7

Problem
=======

Abstract unix sockets are used for local inter-process communications
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
  unix_sock_special_cases test.

[3]https://lore.kernel.org/all/20240611.Pi8Iph7ootae@digikod.net/

Previous Versions
=================
v8: https://lore.kernel.org/all/cover.1722570749.git.fahimitahera@gmail.com/
v7: https://lore.kernel.org/all/cover.1721269836.git.fahimitahera@gmail.com/
v6: https://lore.kernel.org/all/Zn32CYZiu7pY+rdI@tahera-OptiPlex-5000/
and https://lore.kernel.org/all/Zn32KKIJrY7Zi51K@tahera-OptiPlex-5000/
v5: https://lore.kernel.org/all/ZnSZnhGBiprI6FRk@tahera-OptiPlex-5000/
v4: https://lore.kernel.org/all/ZnNcE3ph2SWi1qmd@tahera-OptiPlex-5000/
v3: https://lore.kernel.org/all/ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000/
v2: https://lore.kernel.org/all/ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000/
v1: https://lore.kernel.org/all/ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000/

Tahera Fahimi (5):
  Landlock: Add abstract unix socket connect restriction
  selftests/Landlock: Abstract unix socket restriction tests
  selftests/Landlock: Adding pathname Unix socket tests
  sample/Landlock: Support abstract unix socket restriction
  Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI
    versioning

 Documentation/userspace-api/landlock.rst      |   33 +-
 include/uapi/linux/landlock.h                 |   27 +
 samples/landlock/sandboxer.c                  |   58 +-
 security/landlock/limits.h                    |    3 +
 security/landlock/ruleset.c                   |    7 +-
 security/landlock/ruleset.h                   |   23 +-
 security/landlock/syscalls.c                  |   17 +-
 security/landlock/task.c                      |  129 ++
 tools/testing/selftests/landlock/base_test.c  |    2 +-
 tools/testing/selftests/landlock/common.h     |   38 +
 tools/testing/selftests/landlock/net_test.c   |   31 +-
 .../landlock/scoped_abstract_unix_test.c      | 1146 +++++++++++++++++
 12 files changed, 1469 insertions(+), 45 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_abstract_unix_test.c

-- 
2.34.1

