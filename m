Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD5438B
	for <outreachy@lists.linux.dev>; Thu,  5 Sep 2024 00:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495263; cv=none; b=Tha1SFcxe+42LOxtnJoA2y8C8MntPgn84sl5iODk93wAM0W8RhDa9g5rqhbAgcvhWwwKOtz8ezpQB1rjcjZiWg7SdNzGc/KXnHQd7x1ANSqr5Sc8U4UY/abt5C1sjfMVaWcARarur8rRWBahgHlRW8bVS2wmOTszM1UR4LdVzmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495263; c=relaxed/simple;
	bh=qhfENanhYlqO+Tb9devw7AVXsZcEt1vJt7XKABJZUp8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=I8JIfHBPwDrJ08JAdQ44y+3hu0CMcN6cmjIyQZ0r1OYMgjZ9PAAxCLoMDKjQJUNNh8kq5k1JQdudRHejYVPpzNVz1Cs60Iusu/XLQ/lfLXkp4nenVRRKvuYkktdA6Lmvq9h35pHjPgSGMv8qvud2Ge3rSarCXNBCX1iTpixOHpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D3m8SivF; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D3m8SivF"
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-717877183a2so154535b3a.1
        for <outreachy@lists.linux.dev>; Wed, 04 Sep 2024 17:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725495260; x=1726100060; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oAeF4Hyg0coER913U25Eksuz8dAnYzaOfEwRiEEL0qE=;
        b=D3m8SivFSgWUp2j72x9I8WkQAvGynh0Swt+71rcX0TshtiYwzOF+h6ZlAgWE344ziI
         KBD5a7BWJC0Gnm7v/4yu0rWcEeiaUanKbzUMTfPd94DCTKVtdYTPhqZX7ygzZmuqnODh
         SykwYr8r7UciG53iIESNGwimDu0O0wXHGGgCeD7pb0xzUHi8JuIjr2zKosVBkcLG2ZdH
         8+7Ri/bxe41glBx4ZqK7qwTbUeruQRlsnxF5+fpCp1jJKwQuJONzOPwqQxFLsatAsl0V
         XSOrN3z0WHKmITqKC9nFdvTkPv5c+X4bwVKij4qIROpW0Z+IFZPi3fxeYvJQq4AWi8cu
         H1Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725495260; x=1726100060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAeF4Hyg0coER913U25Eksuz8dAnYzaOfEwRiEEL0qE=;
        b=H/8U0ruDcQtPfG9pwr87J41YTR6MefDUGvo+Y3WCpJQdhUq1M/HJL9HMlmzRc54Ixs
         c4L0mqK6C2DnEXpoP1ZKugrjsW0EaA/peoIoCxfn7erwGDSDlb01Dw6nonYPzQmW+o9z
         Wraa05ddESPiTXU6yoMm+mKlaj0ZNw3FnJ/VyZHAPUVJaj32/PYJhh9k75eLJWSh1Wup
         q0Y69VIwwRq1Ev+lXYrwZsLgNs6FeOCU+4boZ/3BmcM7o4u6IGtSPbsuZuDSBb1+iR6c
         GbMB7BvQpiqXSM+irCM+IWBDlvd3MQoC+2+kjHCLNv6Ox76RDCFmEdiMMFQFUo2LA1jE
         i+2Q==
X-Gm-Message-State: AOJu0YzanubNh5r/gQiW11Nc0iQhEkyjFlkS8FLd7ikGXNPmq29lEHSs
	ae2kglxlTZMsHDEzpJ4J6eOKmfsNrxeTUDmqDIJo3n5shK0ilr6ROAlaJNHe
X-Google-Smtp-Source: AGHT+IHyfjWhUvFw1Huv+dk80Us3saRElnhLngJ5hOHA40vi4UsdUdntl8ZeyERi10edcXy4+Dwz1w==
X-Received: by 2002:a05:6a00:2d07:b0:717:87d6:fdd2 with SMTP id d2e1a72fcca58-71787d6ffe0mr2767467b3a.4.1725495259874;
        Wed, 04 Sep 2024 17:14:19 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71778534921sm2159781b3a.76.2024.09.04.17.14.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 17:14:19 -0700 (PDT)
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
Subject: [PATCH v11 0/8] Landlock: Add abstract UNIX socket restriction
Date: Wed,  4 Sep 2024 18:13:54 -0600
Message-Id: <cover.1725494372.git.fahimitahera@gmail.com>
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
abstract UNIX sockets, we introduce
"LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" field to specify that a ruleset
will deny any connection from within the sandbox domain to its parent
(i.e. any parent sandbox or non-sandbox processes).

Example
=======

Starting a listening socket with socat(1):
        socat abstract-listen:mysocket -

Starting a sandboxed shell from $HOME with samples/landlock/sandboxer:
        LL_FS_RO=/ LL_FS_RW=. LL_SCOPED="a" ./sandboxer /bin/bash

If we try to connect to the listening socket, the connection gets
refused.
        socat - abstract-connect:mysocket --> fails


Notes of Implementation
=======================

* Using the "scoped" field provides enough compatibility and flexibility
  to extend the scoping mechanism for other IPCs(e.g. signals).

* To access the domain of a socket, we use its credentials of the file's
  FD which point to the credentials of the process that created the
  socket (see more details in [3]). Cases where the process using the
  socket has a different domain than the process created it are covered
  in the "outside_socket" test.

[3]https://lore.kernel.org/all/20240611.Pi8Iph7ootae@digikod.net/

Previous Versions
=================
v10:https://lore.kernel.org/all/cover.1724125513.git.fahimitahera@gmail.com/
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

Tahera Fahimi (8):
  Landlock: Add abstract UNIX socket restriction
  selftests/landlock: Add test for handling unknown scope
  selftests/landlock: Add abstract UNIX socket restriction tests
  selftests/landlock: Add tests for UNIX sockets with any address
    formats
  selftests/landlock: Test connected vs non-connected datagram UNIX
    socket
  selftests/landlock: Restrict inherited datagram UNIX socket to connect
  sample/landlock: Add support abstract UNIX socket restriction
  Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI
    version

 Documentation/userspace-api/landlock.rst      |  45 +-
 include/uapi/linux/landlock.h                 |  28 +
 samples/landlock/sandboxer.c                  |  61 +-
 security/landlock/limits.h                    |   3 +
 security/landlock/ruleset.c                   |   7 +-
 security/landlock/ruleset.h                   |  24 +-
 security/landlock/syscalls.c                  |  17 +-
 security/landlock/task.c                      | 136 +++
 tools/testing/selftests/landlock/base_test.c  |   2 +-
 tools/testing/selftests/landlock/common.h     |  38 +
 tools/testing/selftests/landlock/net_test.c   |  31 +-
 .../landlock/scoped_abstract_unix_test.c      | 993 ++++++++++++++++++
 .../selftests/landlock/scoped_base_variants.h | 154 +++
 .../selftests/landlock/scoped_common.h        |  28 +
 .../scoped_multiple_domain_variants.h         | 154 +++
 .../testing/selftests/landlock/scoped_test.c  |  33 +
 16 files changed, 1709 insertions(+), 45 deletions(-)
 create mode 100644 tools/testing/selftests/landlock/scoped_abstract_unix_test.c
 create mode 100644 tools/testing/selftests/landlock/scoped_base_variants.h
 create mode 100644 tools/testing/selftests/landlock/scoped_common.h
 create mode 100644 tools/testing/selftests/landlock/scoped_multiple_domain_variants.h
 create mode 100644 tools/testing/selftests/landlock/scoped_test.c

-- 
2.34.1

