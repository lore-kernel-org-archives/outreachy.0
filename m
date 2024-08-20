Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B288414B96F
	for <outreachy@lists.linux.dev>; Tue, 20 Aug 2024 04:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724126958; cv=none; b=CBnMkrVpqZzvXvjSzfzf/V2N2/A2SXwQTxTKFSJ4pmK7xQ4VROtM/oWZJFTBnRm5BenCEEsrr8a2k2KMuYCqvsIiJo5+eYBQl8zMlY0rPRYhhKSshM8hWrsXPHou7y+sNpw3lr/eGOuRBz8fO2Bk50VNjXDRkmIjj/ms+eEt9Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724126958; c=relaxed/simple;
	bh=qRPnWBN+aRkuCOCgKm8uViF3Giq/poveOpR1CdqWrMU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CcxJBT0VULYe+0FVm5dieIN9kj01uhVJ0gME42MTUHI3gby/zKBGmdUg4E+V25TCrwVPuYaJ7K+P33L0Bs0f4IIPnJEJEKFMhgrrTiw1JYviqS2KX0m/0dOHVaG1dAb5km/EvaKvbIN0/udmP67x/wkVK+NId+VciXQhB8turj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ro+LwBdH; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ro+LwBdH"
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2d3c0d587e4so3473117a91.2
        for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 21:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724126955; x=1724731755; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkieDk+FChNj9tKCMLqWBbRnnkZ4Xuwb4Wx7nlGq+Us=;
        b=Ro+LwBdH4wHQpf+9W0/QT+HbqMwYxVbrZui3Io94MSRwcc4OWVEkCRSb0H7ak6RC4K
         BzkzZP1u7uylnwdKs1KJ6eDfx0h+2Z4kl73ITOU5EcAqaOSPPQZQAFiyApAM7wK6B2qA
         iOG3FOsRckUjCFKj4IWao9aX7yeKUtHW3yPYIEbpllUGIIAAaBWofI458AaBOG+c5okA
         Fe8rA4X2u4BKitvbtdkAuehDk0IlWEYO3PFDFVejinzDZSJAMnvuzI5BaHX31gernFZa
         R4767NGqQWPaOw9Mcg5dnCSfIc7Y3WQLPHMC2g3mLmGxBl1BYXeyqLAM9YH3RHaEBJ9k
         YbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724126955; x=1724731755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkieDk+FChNj9tKCMLqWBbRnnkZ4Xuwb4Wx7nlGq+Us=;
        b=f8n+4YfoMrGgyoQdIXN3jAa7y4EV13OIqIfxyAge2AQ6VklE39r+tMaoPcw8cAMrRy
         z3SLvXf9/efxxugHcXRhecd8kjPVGH/dO5tgo4VcvdXs5V1ZwtdDHwbsEevpQV/NqVPX
         gt05N0l/aeSDsm+5irfC2qv3XPIQbq9Ufa5bGfqvke6AL7jlLueuoVF+pz2yZamWtTzA
         MP7SEaBBk28902BFK9A5eurXci+Q9AlvVhIhaUGQR3fCHmNYg0ZF7FQtqDspm7LfkNnt
         emlwuM8yD1Ui69+97ax8xcOWS2KfBhwrJLehqSHQ7WtsMYqufQuOs83sdm1Zx6DYqcWE
         jk/w==
X-Gm-Message-State: AOJu0YzcK3MJ4qslAffhXbDA0XYxgBlTsTs0Rg5JVQx8qiz0tHRXbZ1c
	//isHGJlzrXjcXB6LSOi5zXjSWy0YXhoRjhpSUVod+9oSnFDIrkswOjn9JpH
X-Google-Smtp-Source: AGHT+IG2tkC7cclM4VN1VNh+HlN05uhyYyM4ch38fJSYPmGuUzykPsvhWAQFTSjytvBJ7vojTHPBsg==
X-Received: by 2002:a17:90a:d904:b0:2d3:c5f1:d0d9 with SMTP id 98e67ed59e1d1-2d3dfd8c5b3mr11955322a91.25.1724126955208;
        Mon, 19 Aug 2024 21:09:15 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e3174bfdsm8149652a91.27.2024.08.19.21.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 21:09:14 -0700 (PDT)
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
Subject: [PATCH v10 6/6] Landlock: Document LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET and ABI versioning
Date: Mon, 19 Aug 2024 22:08:56 -0600
Message-Id: <417c242b839740d5409798b5becba183d4956dab.1724125513.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1724125513.git.fahimitahera@gmail.com>
References: <cover.1724125513.git.fahimitahera@gmail.com>
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
 Documentation/userspace-api/landlock.rst | 33 ++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
index 37dafce8038b..89a2580a2bbf 100644
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
+not scoped. If a process's domain is scoped, it can only connect to sockets
+created by processes in the same scoped domain.
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
 
+Abstract UNIX sockets Restriction  (ABI < 6)
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

