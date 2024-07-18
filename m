Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB7D481D5
	for <outreachy@lists.linux.dev>; Thu, 18 Jul 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721276154; cv=none; b=rMhTCPxAGSUI//dMNVzkx1qADifedJs2+z9yFsL/eueyjYbprUVHi6YD+N4CC+ezNWTEbAX+9zJOgFcFp4keAIbwkDWwsfogb2YrC0NNMQhdUsqE/q8zaup3thOfzmlCw3F6FWABe/uVmGjztbC8xITvXJwqBnPSVVcZZAaarLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721276154; c=relaxed/simple;
	bh=U1skI0/owqu89TPWoLBxrMB2fOvZuZ6/wD+ec3esMxU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZR5qUhYb9G7tJHTFFPKwEj0QT/wRWUmFubJriXpkR0fZItnl14SQMnjnE8nEUaKOLKWMRvzfMiV8XCUgYCYU5PDsLBF/jx5uakaVfmWjrh9HP3JeltqZzhFXOB/eGufC2bHC04vtqqbQd9neYFxUwmQ7y2MpKetLbjTt76fuAXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Er6phaUe; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Er6phaUe"
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fc658b6b2eso617185ad.0
        for <outreachy@lists.linux.dev>; Wed, 17 Jul 2024 21:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721276152; x=1721880952; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K4AZApuNWuMCTq5fWJPFQbHeMwMdXxcGaz7OzmTbO1M=;
        b=Er6phaUepDxGSSIN7igtAKVjwI7FkziOZxKmJiLitxaMm/hmEsto16udTPL/qkcc5R
         1MwXJqO5NvDE0MCO9elzDppbETHOC+ISml7GEYVVj3uwWV3PlfCuzgZcbeN6lMhiaHQ1
         ydguCJ5CHs6E/jnyW4DmMj5Rzg8ceuA/Bh1Xi3ih29z2MHiEubMByd2wHX37R0pFalZK
         ZQL70FS17YXE537vpSKjy4VdH7Am8eM4iZtdSG2pFE8ISNzKgYdqQwhpRlpTfj8Z/AS9
         d301NGyXaJk81H5JGZzpvg5GvAU9ivbEPF8U5OhHs/+dIwJeAZpWEFOPAOizbecrXXbb
         2dcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721276152; x=1721880952;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4AZApuNWuMCTq5fWJPFQbHeMwMdXxcGaz7OzmTbO1M=;
        b=wOl3F/hjVT7PGR56cXDOgmElyC7UhFFKerjLSLqru36PPZGHoJixhDAeo4k2y6qnPQ
         qss5wr0DDg7Y8L/8qZHMANeZ2eJ3NTfE/QSp/PcIsMw/QNGf7cbaGAcWHDXukD51MlRY
         ZYOPyUVwMs0fKbaYoRUYPnzhZeRc2dgXcbhm74oS76EAYKst/xKl2GWm8TEmNkM65n3Q
         9GNBKXFEWBMEZi2gJVjrnGzSWxyO0isEZnaSH17a8zMZdliUHSX8isbnx2WffaFRuiE7
         7ekvqBnQH4Ot9H2gq/VMToeDUGcup6CPCOgm/X/7++lEXKAjTIY1rKvtugyWd53LCK1P
         Egfg==
X-Forwarded-Encrypted: i=1; AJvYcCWXfuYb9zObxB3y6E8tuILtoHm6iUgL9VWdmijdYId3wnOABh2pBaN5uOoQM6ziMt/goDI1vSHgx2D8uz9kj21IpxjMX8UeTS1y
X-Gm-Message-State: AOJu0YzuMRMMF9KOMkVy2xc2MrxhQm/p4gIT/1d+ieNqfQyITSYJeyTW
	GhpY6cSNRSCin2qgBAwikkQqGCVlPbSqImHLWZQxPCOz7kXyno0HWK9OEzfn
X-Google-Smtp-Source: AGHT+IE89WGHF6zhVB1Wo0uchAQ3vvWGFzOEJsdiKRmsm4DKPl2YocYWq1TxHWGxltp2Fr6Wyayu7g==
X-Received: by 2002:a17:902:c94d:b0:1fb:5808:73c9 with SMTP id d9443c01a7336-1fc4e676606mr33999065ad.33.1721276152529;
        Wed, 17 Jul 2024 21:15:52 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bc38dc0sm83152785ad.215.2024.07.17.21.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jul 2024 21:15:52 -0700 (PDT)
From: Tahera Fahimi <fahimitahera@gmail.com>
To: mic@digikod.net,
	gnoack@google.com,
	paul@paul-moore.com,
	jmorris@namei.org,
	serge@hallyn.com,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bjorn3_gh@protonmail.com,
	jannh@google.com,
	outreachy@lists.linux.dev,
	netdev@vger.kernel.org
Cc: Tahera Fahimi <fahimitahera@gmail.com>
Subject: [PATCH v7 4/4] documentation/landlock: Adding scoping mechanism documentation
Date: Wed, 17 Jul 2024 22:15:22 -0600
Message-Id: <319fd95504a9e491fa756c56048e63791ecd2aed.1721269836.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1721269836.git.fahimitahera@gmail.com>
References: <cover.1721269836.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

- Defining ABI version 6 that supports IPC restriction.
- Adding "scoped" to the "Access rights".
- In current limitation, unnamed sockets are specified as
  sockets that are not restricted.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 Documentation/userspace-api/landlock.rst | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
index 07b63aec56fa..61b91cc03560 100644
--- a/Documentation/userspace-api/landlock.rst
+++ b/Documentation/userspace-api/landlock.rst
@@ -8,7 +8,7 @@ Landlock: unprivileged access control
 =====================================
 
 :Author: Mickaël Salaün
-:Date: April 2024
+:Date: July 2024
 
 The goal of Landlock is to enable to restrict ambient rights (e.g. global
 filesystem or network access) for a set of processes.  Because Landlock
@@ -306,6 +306,16 @@ To be allowed to use :manpage:`ptrace(2)` and related syscalls on a target
 process, a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
 
+IPC Scoping
+-----------
+
+Similar to Ptrace, a sandboxed process should not be able to access the resources
+(like abstract unix sockets, or signals) outside of the sandbox domain. For example,
+a sandboxed process should not be able to :manpage:`connect(2)` to a non-sandboxed
+process through abstract unix sockets (:manpage:`unix(7)`). This restriction is
+applicable by optionally specifying ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET`` in
+the ruleset.
+
 Truncating files
 ----------------
 
@@ -404,7 +414,7 @@ Access rights
 -------------
 
 .. kernel-doc:: include/uapi/linux/landlock.h
-    :identifiers: fs_access net_access
+    :identifiers: fs_access net_access scoped
 
 Creating a new ruleset
 ----------------------
@@ -446,7 +456,7 @@ Special filesystems
 
 Access to regular files and directories can be restricted by Landlock,
 according to the handled accesses of a ruleset.  However, files that do not
-come from a user-visible filesystem (e.g. pipe, socket), but can still be
+come from a user-visible filesystem (e.g. pipe, unnamed socket), but can still be
 accessed through ``/proc/<pid>/fd/*``, cannot currently be explicitly
 restricted.  Likewise, some special kernel filesystems such as nsfs, which can
 be accessed through ``/proc/<pid>/ns/*``, cannot currently be explicitly
@@ -541,6 +551,13 @@ earlier ABI.
 Starting with the Landlock ABI version 5, it is possible to restrict the use of
 :manpage:`ioctl(2)` using the new ``LANDLOCK_ACCESS_FS_IOCTL_DEV`` right.
 
+Special filesystems (ABI < 6)
+-----------------------------
+
+With ABI version 6, it is possible to restrict IPC actions such as connecting to
+an abstract Unix socket through ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``, thanks
+to the ``.scoped`` ruleset attribute.
+
 .. _kernel_support:
 
 Kernel support
-- 
2.34.1

