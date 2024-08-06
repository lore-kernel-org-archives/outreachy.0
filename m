Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C183014A099
	for <outreachy@lists.linux.dev>; Tue,  6 Aug 2024 18:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722967884; cv=none; b=aT2dbOs4Lp25TwgX+K5vid9LcqifQGSlQsfg6Mzke1lJFj6WguXQ8UcC7OLUooj8iq8GsadnL1v5xbkoE+iSdLDhSiU4RgpiZenrNb+wpLgMZ0MAj5Vfu737Sh4GFjAWqW2KpHn1yqWgImFkTBFRXCjLWDYFf9f2UHSpmTkuL6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722967884; c=relaxed/simple;
	bh=q9QLkZ/H/j6QTqNueNb0kSZDd/RQJbs+z7t4FIClwzo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VS9Gq1xKpSmAZ1q7iRX0lIezHfJ21NZzRum5Q7EFteUOxyDG6voVtEMb7GuJgNKRgk4y5Zc2YJ5D/KpuyinKHVrc/Yo9eSZgChCQ1b0cmAvEc7KBl+NEJZ86Erk0Xgme+MaJd/BsLVSajxyZFRxO/rfzVlx3uHWxIXNw2IsPoDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MRrVxtr8; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MRrVxtr8"
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7a263f6439eso562716a12.3
        for <outreachy@lists.linux.dev>; Tue, 06 Aug 2024 11:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722967882; x=1723572682; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3VrsPTsD55P11qoYiWXSWqA/RANzLdJrHm5M8EK/YZ0=;
        b=MRrVxtr8ZjIuT4c8tfCiuFbX0f2JJ1QnsYaokN0d6FH+xtMbGaAMWoxo418Wb1am2J
         pfLXxKtLkNci2i9y1Grq8yoMwvS60rK2IFKsVi2fs3QfoPvvFWgO2fpvpKuHD3vOSiYa
         a6FocNoxO60/Fkino1s97eEfz7zO+maDdph4s1ie3r8r4jbf/Srpl3jbJzVj3aQdapyW
         NP+vweaaAPsQ/ZA2Jb8+uQlVCeR2/5pNNAgi4cqaQ2NlqEn3wRFHFddsk9xATeC22Qn5
         gCOiZD6cAfQ0VZsM0hkUW3R/thT+tbegs6ixls0bTom0jsws0UOxFbtZvNgRVI/Tp7GK
         cgSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722967882; x=1723572682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3VrsPTsD55P11qoYiWXSWqA/RANzLdJrHm5M8EK/YZ0=;
        b=ThRCkMggwgXPmIErljIvWhnpa0KrRuRi4XELzC6lfqp1kcbvARxgHELnRX1Ilpqu19
         7IqyPTNCvuAKXIbElGOTZvqjlKkS7OIefMkkzsO2HDnbCFnZrwWWj3j/kN1vWoTLPkg7
         UWnXw6rtOWKNnPUzOlLCzJPjQPtmDkjd+VDtw8IP1edbb9ItSvYT/aI626p99obUE1Fm
         2wrldsqBuaX+kgmhGmMZmlCFftTrsOS6j5Y8zYDHDR0JvcRWy69oSylMnPb59Jn/OP0D
         hpf0ayg7iPStj7xwsnj95JGSgZQxW3i+OkaifhiYyx+x7i+0063T3Cz9VlOicVexTo+d
         ptUw==
X-Gm-Message-State: AOJu0YzzB6GmEzja8aFkEXRiJYvG9zXPu6cEvgeTlcQlNn0VOAQA07dd
	f/cTmjsCDS0HS89oe2H8xemR5ags2ah58GAIn2Mf0C0eKiiXgnIc1djFujVP
X-Google-Smtp-Source: AGHT+IGiT+hmqoEULYz2BBGUi4Gw+UHaG5Qkj+LXdSF6TXcbaZb0t8t/rendJeJxdT7efNmVye4TAg==
X-Received: by 2002:a17:90b:4016:b0:2c8:8a5:c1b9 with SMTP id 98e67ed59e1d1-2cff94143f4mr15769258a91.13.1722967881560;
        Tue, 06 Aug 2024 11:11:21 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc45b51esm12829504a91.32.2024.08.06.11.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 11:11:21 -0700 (PDT)
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
Subject: [PATCH v2 4/4] Landlock: Document LANDLOCK_SCOPED_SIGNAL
Date: Tue,  6 Aug 2024 12:10:43 -0600
Message-Id: <e7d324cc4c256f8574b444c0c4c2899c78ed0c16.1722966592.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1722966592.git.fahimitahera@gmail.com>
References: <cover.1722966592.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Improving Landlock ABI version 6 to support signal scoping
with LANDLOCK_SCOPED_SIGNAL.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 Documentation/userspace-api/landlock.rst | 27 ++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/Documentation/userspace-api/landlock.rst b/Documentation/userspace-api/landlock.rst
index 01bd62dc6bb1..1923abfd2007 100644
--- a/Documentation/userspace-api/landlock.rst
+++ b/Documentation/userspace-api/landlock.rst
@@ -8,7 +8,7 @@ Landlock: unprivileged access control
 =====================================
 
 :Author: Mickaël Salaün
-:Date: July 2024
+:Date: August 2024
 
 The goal of Landlock is to enable to restrict ambient rights (e.g. global
 filesystem or network access) for a set of processes.  Because Landlock
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
@@ -319,11 +321,14 @@ interactions between sandboxes. Each Landlock domain can be explicitly scoped
 for a set of actions by specifying it on a ruleset. For example, if a sandboxed
 process should not be able to :manpage:`connect(2)` to a non-sandboxed process
 through abstract :manpage:`unix(7)` sockets, we can specify such restriction
-with ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``.
+with ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``. Moreover, if a sandboxed process
+should not be able to send a signal to a non-sandboxed process, we can specify
+this restriction with ``LANDLOCK_SCOPED_SIGNAL``.
 
-A sandboxed process can connect to a non-sandboxed process when its domain is
-not scoped. If a process's domain is scoped, it can only connect to processes in
-the same scoped domain.
+A sandboxed process can access to a non-sandboxed process when its domain is
+not scoped. If a process's domain is scoped, it can only access to processes in
+the same scoped domain. For example, If a process is scoped to send signal to
+other processes, it can only send signals to processes in the same scoped domain.
 
 IPC scoping does not support Landlock rules, so if a domain is scoped, no rules
 can be added to allow accessing to a resource outside of the scoped domain.
@@ -563,12 +568,12 @@ earlier ABI.
 Starting with the Landlock ABI version 5, it is possible to restrict the use of
 :manpage:`ioctl(2)` using the new ``LANDLOCK_ACCESS_FS_IOCTL_DEV`` right.
 
-Abstract Unix sockets Restriction  (ABI < 6)
---------------------------------------------
+Abstract Unix sockets and Signal Restriction  (ABI < 6)
+-------------------------------------------------------
 
 With ABI version 6, it is possible to restrict connection to an abstract Unix socket
-through ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET``, thanks to the ``scoped`` ruleset
-attribute.
+through ``LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET`` and sending signal through
+``LANDLOCK_SCOPED_SIGNAL``, thanks to the ``scoped`` ruleset attribute.
 
 .. _kernel_support:
 
-- 
2.34.1

