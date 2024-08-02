Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD32A290F
	for <outreachy@lists.linux.dev>; Fri,  2 Aug 2024 04:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722571390; cv=none; b=NAqVA4cXwL1BqaHcDVDiEmxqNk5NmQNp/N4I54UsEJ49fmP2ymEaAyE64upuLi0MYzqsEwDv6bydFoCSv3zqY9a75WTeW7w2YWG6nsTNkfAju79/P3iKZIRjapyymYgohVwdEwjnEFJyPaOLFlUMF0Y7FIjg9eBES101P4PohmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722571390; c=relaxed/simple;
	bh=+BmkYUY4FplYkQ1Fdo4rcSxasEfFGNdydNASNR1GMSw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=thTCcmuL+J9AnJE8zGmNbvIWabwDsa7GDE+oEixvYyltNBzhjsEBw4UjrTEg/vCJFBvNoJgntOVCLVvCndlsGkfPSG9QgO6Yvibytq5SpTWgd4Xn8OXAP23+w76z67U1Y0ywqdrzGVW1H8r5DIsGofc3dWka2yIrT5Twjs4Vceo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jyzDco9t; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jyzDco9t"
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7105043330aso2044943b3a.0
        for <outreachy@lists.linux.dev>; Thu, 01 Aug 2024 21:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722571387; x=1723176187; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=87jAKyalWQYEjkVcjCPIrit4kthuulRv/TtpkKf3Fj8=;
        b=jyzDco9tsGTNUppBp/tirHcHluHKCaVdmsqeJFlKRSe8GSGQhKcwBGoQ2YJ6wBno8O
         8DImdA5JFAJJtFh26ltEikJZ4RupRwv1XgL4u4TPz8mmeqRh/jZIDfTinZXC6cdcZi0Z
         4Vqgn+6kQDMRe90nCDXbAKxZWkbpPJukE9wN/osQi1Y7DZvEIu1e5ONPrZDHjZu/QZ7J
         B8nvOHg30z55y2B93XOCoc92c0tF2Qy4c9dBh5qrL91ZW8oM7TXRNW6B2/nPgIstOiYh
         zqrH2+HKz8CFS9uizNR68um8AY2bPsKZ646Af5vz08ilSCZWEvfu8vjr6coEeXH/jBLv
         KEFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722571387; x=1723176187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=87jAKyalWQYEjkVcjCPIrit4kthuulRv/TtpkKf3Fj8=;
        b=oXwDq1tZK8T2K+zDNMO+N2KJ0fhDCVIZczc9Q7vGczPHTEC9GTPnZ3iptIDINniRWV
         H9r6Ke9RioDUq5pJF5BnbqrJZd8Z+rj1fKZ95Nnb8/eeyMJOMaK0oOpgI37oEq9XidA3
         TBkzagDiZoRcj9Ujbsb+GesUu4q8J7IAEtrYuDGI3LoYMmXb9Pc7UzKSk9tDxO8yZTSC
         +xZtgxOzokLi54jSb9H4mDMxoP8Nk8KGmRnseoQR2e6SI/7GIi9Iuaen02NGTO54dIPX
         fCfj5wRhHyDnQLH+gvn4unotrr4DRawh0k54NM4/u2G3+/bLp+x6/H8ZGpG/+kTKvp/h
         Rh1A==
X-Gm-Message-State: AOJu0Yx/8XpuTSJIypI34xGEAl42ig8TEQfBnPyEaCnhri8yCA8Ic5ll
	6A00jnWVC0AKvZ+3jIDoT62YyNVKFCERDDFng5XcPmVPc23Gqk2F6WckpmNB
X-Google-Smtp-Source: AGHT+IG52+8kacj0yZdlHx1LB4HGbf8WZV2BUzSpcQgNapmwB0WeLFpk3LWzvr/d88yI0SuUgYUahA==
X-Received: by 2002:a05:6a00:914c:b0:706:284f:6a68 with SMTP id d2e1a72fcca58-7106d04618amr2607561b3a.23.1722571387151;
        Thu, 01 Aug 2024 21:03:07 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec41465sm542099b3a.60.2024.08.01.21.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 21:03:06 -0700 (PDT)
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
Subject: [PATCH v8 0/4] Landlock: Add abstract unix socket connect
Date: Thu,  1 Aug 2024 22:02:32 -0600
Message-Id: <cover.1722570749.git.fahimitahera@gmail.com>
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
v6: https://lore.kernel.org/all/Zn32CYZiu7pY+rdI@tahera-OptiPlex-5000/
and https://lore.kernel.org/all/Zn32KKIJrY7Zi51K@tahera-OptiPlex-5000/
v5: https://lore.kernel.org/all/ZnSZnhGBiprI6FRk@tahera-OptiPlex-5000/
v4: https://lore.kernel.org/all/ZnNcE3ph2SWi1qmd@tahera-OptiPlex-5000/
v3: https://lore.kernel.org/all/ZmJJ7lZdQuQop7e5@tahera-OptiPlex-5000/
v2: https://lore.kernel.org/all/ZgX5TRTrSDPrJFfF@tahera-OptiPlex-5000/
v1: https://lore.kernel.org/all/ZgXN5fi6A1YQKiAQ@tahera-OptiPlex-5000/

Tahera Fahimi (4):
  Landlock: Add abstract unix socket connect restriction
  selftests/landlock: Abstract unix socket restriction tests
  sample/Landlock: Support abstract unix socket restriction
  Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI
    versioning

 Documentation/userspace-api/landlock.rst      |   33 +-
 include/uapi/linux/landlock.h                 |   30 +
 samples/landlock/sandboxer.c                  |   56 +-
 security/landlock/limits.h                    |    3 +
 security/landlock/ruleset.c                   |    7 +-
 security/landlock/ruleset.h                   |   23 +-
 security/landlock/syscalls.c                  |   14 +-
 security/landlock/task.c                      |  155 +++
 tools/testing/selftests/landlock/base_test.c  |    2 +-
 tools/testing/selftests/landlock/common.h     |   72 ++
 tools/testing/selftests/landlock/fs_test.c    |   34 -
 tools/testing/selftests/landlock/net_test.c   |   31 +-
 .../landlock/scoped_abstract_unix_test.c      | 1136 +++++++++++++++++
 13 files changed, 1518 insertions(+), 78 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_abstract_unix_test.c

-- 
2.34.1

