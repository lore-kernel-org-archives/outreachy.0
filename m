Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C33A2C1A5
	for <outreachy@lists.linux.dev>; Fri,  2 Aug 2024 04:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722571395; cv=none; b=U0ywF5EG1gPj7udDDmpEel25S11Kgu7HeY53AyVWNSlwdRYT3t+Wps8RcWHXz3W+I0reftBiLrTAAQYCP1TA5xbdERhYtbz81ca6NgiJYoVq16vtX/DCxLiL4gcrHsphPAOfa0mNINOiwXsSj7XCxqsEZoIwaFh/mxwfbVmO/ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722571395; c=relaxed/simple;
	bh=a355BilX6jKKKj0H6k9w/Vm9ilkMy24RIIwkHdsbVvQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jbXTG//CXMP1FCbJBM+NA7c4IN/wyURna/PAssyJ9mHpgxKihI8yHYesDY7mvocDc/jMaaJyLs9prNBwQ4Z5TLjHTfbw520WmsAANuDLRCdiMUgAQhFN08n3dJNNpgC5ioMI+QmbljZivudKLhrC//QE+xWwgkO7WzhUsjeWy5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ga3rrPGN; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ga3rrPGN"
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-70eb73a9f14so5786311b3a.2
        for <outreachy@lists.linux.dev>; Thu, 01 Aug 2024 21:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722571392; x=1723176192; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DRxrTMmH8N1DYXk4ty1+L/H8I5vVdXfCPChLU7yZPwk=;
        b=Ga3rrPGNKHO0L5XM58QiKbVn/VBiDQbSZru9+YZmDJaCG2qQqrFATJscfz1YJMWMcm
         QcvrmSDusZznRSdfIE9o1SmrzIOGOpp2hfpqfRjXa9NXTbnLjZMPFnP4J7gJK/Aq1ULD
         ygKVg/eksNvC8R+yWNloz0abp004xFkQzrHS3ov8oSBKyaYwnzTM89i8lRWDSHGLwsaD
         kCTwLr++gL9pA5oZqAlcIeG8FgDLfTg20X/hienQ1Du0SRK6z/Eaj4O2EgHh6Mu8pYWp
         zqFR7OCs5dgnmILe3IBRx4CZ4NoeQmyHn2rbw21qNIU4g93d1dvILjAEduV5F4B3BOVh
         vpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722571392; x=1723176192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DRxrTMmH8N1DYXk4ty1+L/H8I5vVdXfCPChLU7yZPwk=;
        b=wst6Ao1M2gOfgbP7MFMULUa7cuv7YSc6a5vYau7BYh/MdGOAAEZng1M9JF1ii/2K7O
         3pzpxhozZtMKQzdT5TcFEDnjKPMXOWUasAQx+I0JJrGCpGu1PUIYTJNLShx1U6BwFIym
         SZ9v9rwoqiq2KLOJ6kxFn/gtgdDfzYpDSnWVxj6JWpEo0GStcwMXhOcqUF4MVNwk7Rio
         79lAfpefy3OINjPUzG5CBfbrByvRC9CKV54ZpfONGfT6ntPIi6pni0VXsphZ921gFC4k
         LSmQIObB93TCYy8KLH3t8b985Uu2uzlk+BLFzPwlKluwYbw+49zj/39vI0hrqzidht6z
         gckA==
X-Gm-Message-State: AOJu0YyW1xmXkVHgc2fvtttRwA+ZWl8B1AciUmHk5r2KzsAdGOKP2Tyu
	vrkJSgTM3iOaGiHk6h2r+nQb2ZVPJsk4UPeqvo6DmS5EKW+QZgM9jxKfHdfw
X-Google-Smtp-Source: AGHT+IHktciSu4iKx7zcFVbNktYsYHY4XS0+bl/4S7s7XP2g1yKVjzJEwtc7zwtohxGC40IodBPXDQ==
X-Received: by 2002:a05:6a20:2444:b0:1c3:a760:9757 with SMTP id adf61e73a8af0-1c6996b9b49mr3523239637.49.1722571392202;
        Thu, 01 Aug 2024 21:03:12 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec41465sm542099b3a.60.2024.08.01.21.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 21:03:11 -0700 (PDT)
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
Subject: [PATCH v8 4/4] Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI versioning
Date: Thu,  1 Aug 2024 22:02:36 -0600
Message-Id: <bbb4af1cb0933fea3307930a74258b8f78cba084.1722570749.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1722570749.git.fahimitahera@gmail.com>
References: <cover.1722570749.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Introducing LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET as an IPC scoping
mechanism in Landlock ABI version 6, and updating ruleset_attr,
Landlock ABI version, and access rights code blocks based on that.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
v8:
- Improving documentation by specifying differences between scoped and
  non-scoped domains.
- Adding review notes of version 7.
- Update date
v7:
- Add "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" explanation to IPC scoping
  section and updating ABI to version 6.
- Adding "scoped" attribute to the Access rights section.
- In current limitation, unnamed sockets are specified as sockets that
  are not restricted.
- Update date
---
 Documentation/userspace-api/landlock.rst | 33 ++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
index 07b63aec56fa..d602567b5139 100644
--- a/Documentation/userspace-api/landlock.rst
+++ b/Documentation/userspace-api/landlock.rst
@@ -8,7 +8,7 @@ Landlock: unprivileged access control
 =====================================
 
 :Author: Mickaël Salaün
-:Date: April 2024
+:Date: August 2024
 
 The goal of Landlock is to enable to restrict ambient rights (e.g. global
 filesystem or network access) for a set of processes.  Because Landlock
@@ -81,6 +81,8 @@ to be explicit about the denied-by-default access rights.
         .handled_access_net =
             LANDLOCK_ACCESS_NET_BIND_TCP |
             LANDLOCK_ACCESS_NET_CONNECT_TCP,
+        .scoped =
+            LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET,
     };
 
 Because we may not know on which kernel version an application will be
@@ -119,6 +121,9 @@ version, and only use the available subset of access rights:
     case 4:
         /* Removes LANDLOCK_ACCESS_FS_IOCTL_DEV for ABI < 5 */
         ruleset_attr.handled_access_fs &= ~LANDLOCK_ACCESS_FS_IOCTL_DEV;
+    case 5:
+        /* Removes LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET for ABI < 6 */
+        ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
     }
 
 This enables to create an inclusive ruleset that will contain our rules.
@@ -306,6 +311,23 @@ To be allowed to use :manpage:`ptrace(2)` and related syscalls on a target
 process, a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
 
+IPC Scoping
+-----------
+
+Similar to the implicit `Ptrace restrictions`_, we may want to further restrict
+interactions between sandboxes. Each Landlock domain can be explicitly scoped
+for a set of actions by specifying it on a ruleset. For example, if a sandboxed
+process should not be able to :manpage:`connect(2)` to a non-sandboxed process
+through abstract :manpage:`unix(7)` sockets, we can specify such restriction
+with ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``.
+
+A sandboxed process can connect to a non-sandboxed process when its domain is
+not scoped. If a process's domain is scoped, it can only connect to processes in
+the same scoped domain.
+
+IPC scoping does not support Landlock rules, so if a domain is scoped, no rules
+can be added to allow accessing to a resource outside of the scoped domain.
+
 Truncating files
 ----------------
 
@@ -404,7 +426,7 @@ Access rights
 -------------
 
 .. kernel-doc:: include/uapi/linux/landlock.h
-    :identifiers: fs_access net_access
+    :identifiers: fs_access net_access scope
 
 Creating a new ruleset
 ----------------------
@@ -541,6 +563,13 @@ earlier ABI.
 Starting with the Landlock ABI version 5, it is possible to restrict the use of
 :manpage:`ioctl(2)` using the new ``LANDLOCK_ACCESS_FS_IOCTL_DEV`` right.
 
+Abstract Unix sockets Restriction  (ABI < 6)
+--------------------------------------------
+
+With ABI version 6, it is possible to restrict connection to an abstract Unix socket
+through ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``, thanks to the ``scoped`` ruleset
+attribute.
+
 .. _kernel_support:
 
 Kernel support
-- 
2.34.1

