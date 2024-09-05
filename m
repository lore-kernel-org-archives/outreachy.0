Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F09C184E
	for <outreachy@lists.linux.dev>; Thu,  5 Sep 2024 00:14:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495273; cv=none; b=dUdAbaBRzaByMpkbeDW6bMHHuljq4fNFWZx0AfqUPOhGDbbMNiPK5QxiA4PE6+trzj5tu53ibf+jIscoiPxVLSbOr5tf+BQvYC8gXRJy0l72MU7tk8KzNZf1zf6zYIXD4gXPMaRGLg4g+P9q6X1ZC38HJbRoYfi7Jwjkyn6Qsn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495273; c=relaxed/simple;
	bh=n6AgMjmb2jzjsD5uIIArajKwcjywOgVITJCK0KBH+y4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eJqdNRABhpGoFuVX1mDL99uqnb77op2kLyGLgCcx6jCXRMNy2SsP/qCf8Y2nyYEvoUap/Nbfw+QL1QhrZ29+5dZNPlSaJCDpv8O2v/LBOda3k3lbElPtpfwTRXBKlPL5cGzHlh8H8iT1u8p3PvCyDny9pJkipBtS8PqpPkG8458=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eQVQKmEP; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eQVQKmEP"
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5df9c34c890so137437eaf.1
        for <outreachy@lists.linux.dev>; Wed, 04 Sep 2024 17:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725495271; x=1726100071; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uGMSf+BOMvZ54AzTEvMeQPkYD6qUwye83VZEdQAhs/Y=;
        b=eQVQKmEP7VYKoV0dyr7Y/b0qwsZhfnEVWAlNuD7Qu2haKXTbWrD0YRBniv8DLUMXct
         o0WMUsgsNcUouPKvLCCqs1BLsMud5ddzHnqOI9kuBQkhampmGW8Qq36FeBMwnhWGnlBA
         fZj6U3cK9CKTqAcJa0qgj86Etqqnp96YQxLcf/6duzW+hm2l3zSHHqgft6FXPgWjlaVl
         FSJru+7rU4Zj3EYVLscG3vClyjAcaTMNsxgCK8hO6d/vt4dVfGucFSkRAHqr9/fYLRpj
         95ucxlCQYeOC3xN0bc/0AOfte/cQykwJy5HaKh5g1x43LQ6MoTIODmZ7vzjLPegMrcEG
         sKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725495271; x=1726100071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uGMSf+BOMvZ54AzTEvMeQPkYD6qUwye83VZEdQAhs/Y=;
        b=OBB+JOr1Wp0Es6/qyds+aaWAJJZAGP48mxBcVWYEZGOV/O8muQq2u5llx12r0p8jze
         oVD8k2dutw/6tNX2aukj0X+Hu3tBrqNSt+aM25SjNrY3JJN10wHvtaQ7gVuD2wPI58p4
         We+b+Sa65QA/NifT/qOpZp5dgT9kaEyDxrjJhvkOn9Rf8Lo3Fxcz3lek4KvD0l258RtI
         RzE6KfIherL2wsULc1rjbgDbXx0p8elDXn1pKDHAkn8wc/IYFrR23D7RysaadXhjZ8Jk
         nLQMfo/ZI8YQMrHXkT6SNtdaGFWAlvyKBCMCzPV8p+tcWi0F2ZFSipZLDiWex2uOtDPz
         4A2g==
X-Gm-Message-State: AOJu0Yz5S4ymgC/APzUiPbquksAOrPK/vLjevuwY/tE2xHJ/eTFaz2DK
	3IKXfN3QoO+3h4PoRoEvEWuITkdSZZEim/Vc6NsgKDm4axbTNtmTedC0bgA3
X-Google-Smtp-Source: AGHT+IEFkBdiQ9mIrNMKcS7w3UIAuGCobjurYy6KLJ90BaABI+/F2r4VxGZAHpnI7d8X+tlZa9qy1g==
X-Received: by 2002:a05:6870:64a9:b0:277:e512:f27a with SMTP id 586e51a60fabf-277e512f84emr13912948fac.16.1725495270894;
        Wed, 04 Sep 2024 17:14:30 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71778534921sm2159781b3a.76.2024.09.04.17.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 17:14:30 -0700 (PDT)
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
Subject: [PATCH v11 8/8] Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI version
Date: Wed,  4 Sep 2024 18:14:02 -0600
Message-Id: <ac75151861724c19ed62b500cfe497612d9a6607.1725494372.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1725494372.git.fahimitahera@gmail.com>
References: <cover.1725494372.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Introducing LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET as an IPC scoping
mechanism in Landlock ABI version 6, and updating ruleset_attr, Landlock
ABI version, and access rights code blocks based on that.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
v11:
- Documentation cases where i) a connected datagram UNIX socket send(2)/
  sendto(2) data, but it is denied when the socket is not connected, and
  ii) a scoped process cannot connect by an inherited socket's file
  descriptor.
v10:
- Update date.
v8:
- Improving documentation by specifying differences between scoped and
  non-scoped domains.
- Adding review notes of version 7.
- Update date.
v7:
- Add "LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET" explanation to IPC scoping
  section and updating ABI to version 6.
- Adding "scoped" attribute to the Access rights section.
- In current limitation, unnamed sockets are specified as sockets that
  are not restricted.
- Update date.
---
 Documentation/userspace-api/landlock.rst | 45 ++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
index 37dafce8038b..c3b87755e98d 100644
--- a/Documentation/userspace-api/landlock.rst
+++ b/Documentation/userspace-api/landlock.rst
@@ -8,7 +8,7 @@ Landlock: unprivileged access control
 =====================================
 
 :Author: Mickaël Salaün
-:Date: July 2024
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
@@ -306,6 +311,35 @@ To be allowed to use :manpage:`ptrace(2)` and related syscalls on a target
 process, a sandboxed process should have a subset of the target process rules,
 which means the tracee must be in a sub-domain of the tracer.
 
+IPC Scoping
+-----------
+
+Similar to the implicit `Ptrace restrictions`_, we may want to further
+restrict interactions between sandboxes. Each Landlock domain can be
+explicitly scoped for a set of actions by specifying it on a ruleset.
+For example, if a sandboxed process should not be able to
+:manpage:`connect(2)` to a non-sandboxed process through abstract
+:manpage:`unix(7)` sockets, we can specify such restriction with
+``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``.
+
+A sandboxed process can connect to a non-sandboxed process when its
+domain is not scoped. If a process's domain is scoped, it can only
+connect to sockets created by processes in the same scoped domain.
+
+A connected datagram socket behaves like a stream socket when its domain
+is scoped, meaning if the domain is scoped after the socket is connected
+, it can still :manpage:`send(2)` data just like a stream socket.
+However, in the same scenario, a non-connected datagram socket cannot
+send data (with :manpage:`sendto(2)`) outside its scoped domain.
+
+A process with a scoped domain can inherit a socket created by a
+non-scoped process. The process cannot connect to this socket since it
+has a scoped domain.
+
+IPC scoping does not support Landlock rules, so if a domain is scoped,
+no rules can be added to allow access to a resource outside of the
+scoped domain.
+
 Truncating files
 ----------------
 
@@ -404,7 +438,7 @@ Access rights
 -------------
 
 .. kernel-doc:: include/uapi/linux/landlock.h
-    :identifiers: fs_access net_access
+    :identifiers: fs_access net_access scope
 
 Creating a new ruleset
 ----------------------
@@ -541,6 +575,13 @@ earlier ABI.
 Starting with the Landlock ABI version 5, it is possible to restrict the use of
 :manpage:`ioctl(2)` using the new ``LANDLOCK_ACCESS_FS_IOCTL_DEV`` right.
 
+Abstract UNIX sockets Restriction  (ABI < 6)
+--------------------------------------------
+
+With ABI version 6, it is possible to restrict connection to an abstract
+Unix socket through ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``, thanks to
+the ``scoped`` ruleset attribute.
+
 .. _kernel_support:
 
 Kernel support
-- 
2.34.1

