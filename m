Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A840B15CD42
	for <outreachy@lists.linux.dev>; Fri,  6 Sep 2024 21:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658225; cv=none; b=bF/UGx76lVextBDlcC9EQKdW0lI5pVSapOlQgzx3fG3mfGb5XTHpU7FTXOaOxCS5RKfhCTMObhDEuxB60O9hOZ1gksaUaAcYoIKvlqXe7DO0J3tx3Sacok6DfXo6g1J1q5XNCEnsqJqEhU2YAuj4uMiwpdAdCTCeMk/2kNVwXAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658225; c=relaxed/simple;
	bh=bElnKQofCAY+p/boD/vxtSPmvt2QWu/imirBWf3UgRo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n1OAaJ3L549wHMGU6wEDYFGVW5Dz7wYPX1K+n3UZoXuFnes6Y/R1rUaTsUlhu9mzSQL4eW65ortBx7q1zdI5Ba88v3PjWrTnCTkd/ivxBrkBA+NtoBppX/R36vT0P+501G9fy3xQ1T0Cf+aGrfyZTToMojTsU8GGKwAjhB7ftd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gymh9hX0; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gymh9hX0"
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2054feabfc3so24119365ad.1
        for <outreachy@lists.linux.dev>; Fri, 06 Sep 2024 14:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725658222; x=1726263022; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AK65wUPtnvGMD/yVvdcqm/At2jScfUF7HQejuo4N+EU=;
        b=gymh9hX0CBoGdBNWvC50MTdYUtCnzF7m237ZC1O6TR8sf6U/2GeF//NptSFVZE/9zG
         9iimm6h6jqavATgpJ57hx3+bhoBPMamclvvt3VT3/aDkbqIqb6ENcdNWuHw52bHIXTUI
         xZUdsFrOTW0wYmmwI6mkvFTo92yB6dp5X+wSzDn2++L4XKuapXU1LF+3REUVEDWWrcqn
         8Btgo9kigz+1x5HMFR4MuMtwf4lUT4dOySxprTmnSWbk9/qVdEIRl76rgGNbJ9rVnaiL
         Wqtqbg7kpWRTthxJX2Ywel6FtWzRk7gTDy/avntr06UGLRPCQTMexc6PMLlVBhgRltt7
         FzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658222; x=1726263022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AK65wUPtnvGMD/yVvdcqm/At2jScfUF7HQejuo4N+EU=;
        b=pIP262KXN1kGWWspNp33mpySyMpomHEKclWD/BWV7zNj57HtdfzFgcAJwthiSpFKte
         1yvu8vTyls3+RZhSVJN/Vrieai7Gv0rPkoh1oHUz878fr4gX125CHCYIQCYq/Y+kLsuM
         T65mgQJH6G68GgB89LvpIck0YK7ia6HICIPaICoP+uIDSo9abGQs0U4PPXyk7Zki7Jnb
         Xl88RxKrxNUhYZvgXnx9l3EvZrmjXr4vy4CF6wk6Vy0uv0vmsmxchXMCAGQcBGMPBtcE
         KA/FNG07zApZvGj0MsXuk5Xuf+2WkwET5U4QspQT9Azw/atrcq6cnMiJVpPkv9POoDOv
         ZaKQ==
X-Gm-Message-State: AOJu0YzUCcpxpGkQ9Mv3NnvCPuJoNRvYDqOzeKGMOKjRfKiEjCfXhlrB
	GAu5GJlGsbn4eVn022YIU0iL2Qq+pebptQGFkizL0jB/zlDJ+EglVZEOZtlW
X-Google-Smtp-Source: AGHT+IEDfS8XZHaSIjFR2D/Uhvuv/fnpxsuxJtjyzWagdGZHGaUqv1bNz5wGU4hHfQV4rxOlTWlsIw==
X-Received: by 2002:a17:902:f788:b0:205:56e8:4a4b with SMTP id d9443c01a7336-206f04e1a86mr45554685ad.2.1725658222626;
        Fri, 06 Sep 2024 14:30:22 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea67bd1sm47081065ad.247.2024.09.06.14.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:30:21 -0700 (PDT)
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
Subject: [PATCH v4 6/6] landlock: Document LANDLOCK_SCOPED_SIGNAL
Date: Fri,  6 Sep 2024 15:30:08 -0600
Message-Id: <dae0dbe1a78be2ce5506b90fc4ffd12c82fa1061.1725657728.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1725657727.git.fahimitahera@gmail.com>
References: <cover.1725657727.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Improving Landlock ABI version 6 to support signal scoping with
LANDLOCK_SCOPED_SIGNAL.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
v3:
- update date
---
 Documentation/userspace-api/landlock.rst | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
index c3b87755e98d..c694e9fe36fc 100644
--- a/Documentation/userspace-api/landlock.rst
+++ b/Documentation/userspace-api/landlock.rst
@@ -82,7 +82,8 @@ to be explicit about the denied-by-default access rights.
             LANDLOCK_ACCESS_NET_BIND_TCP |
             LANDLOCK_ACCESS_NET_CONNECT_TCP,
         .scoped =
-            LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET,
+            LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+            LANDLOCK_SCOPED_SIGNAL,
     };
 
 Because we may not know on which kernel version an application will be
@@ -123,7 +124,8 @@ version, and only use the available subset of access rights:
         ruleset_attr.handled_access_fs &= ~LANDLOCK_ACCESS_FS_IOCTL_DEV;
     case 5:
         /* Removes LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET for ABI < 6 */
-        ruleset_attr.scoped &= ~LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET;
+        ruleset_attr.scoped &= ~(LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET |
+                                 LANDLOCK_SCOPED_SIGNAL);
     }
 
 This enables to create an inclusive ruleset that will contain our rules.
@@ -320,11 +322,15 @@ explicitly scoped for a set of actions by specifying it on a ruleset.
 For example, if a sandboxed process should not be able to
 :manpage:`connect(2)` to a non-sandboxed process through abstract
 :manpage:`unix(7)` sockets, we can specify such restriction with
-``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``.
+``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``. Moreover, if a sandboxed
+process should not be able to send a signal to a non-sandboxed process,
+we can specify this restriction with ``LANDLOCK_SCOPED_SIGNAL``.
 
 A sandboxed process can connect to a non-sandboxed process when its
 domain is not scoped. If a process's domain is scoped, it can only
 connect to sockets created by processes in the same scoped domain.
+Moreover, If a process is scoped to send signal to a non-scoped process,
+it can only send signals to processes in the same scoped domain.
 
 A connected datagram socket behaves like a stream socket when its domain
 is scoped, meaning if the domain is scoped after the socket is connected
@@ -575,12 +581,14 @@ earlier ABI.
 Starting with the Landlock ABI version 5, it is possible to restrict the use of
 :manpage:`ioctl(2)` using the new ``LANDLOCK_ACCESS_FS_IOCTL_DEV`` right.
 
-Abstract UNIX sockets Restriction  (ABI < 6)
---------------------------------------------
+Abstract Unix sockets and Signal Restriction  (ABI < 6)
+-------------------------------------------------------
 
+<<<<<<< current
 With ABI version 6, it is possible to restrict connection to an abstract
-Unix socket through ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``, thanks to
-the ``scoped`` ruleset attribute.
+:manpage:`unix(7)` socket through
+``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET`` and sending signal through
+``LANDLOCK_SCOPED_SIGNAL``, thanks to the ``scoped`` ruleset attribute.
 
 .. _kernel_support:
 
-- 
2.34.1

