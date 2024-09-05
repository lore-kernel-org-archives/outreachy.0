Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412E73D6D
	for <outreachy@lists.linux.dev>; Thu,  5 Sep 2024 00:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725495265; cv=none; b=edfVS5iefW2zYbUnt5B7FG83J/7xmOlJPh64w6/17FugiRAbQTeY4JfF1ufNXOQ+VbBFMgJKDsqmk61E3pQR5oZ/EWGqF6YyFJ8QLeHaGZwJybGJPmEHz8fCrVul7FScL8B+KjC58JrxOvqYpSNJ+Q6U72bB1PeJnDxGOFQWH+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725495265; c=relaxed/simple;
	bh=Ph/b40sS3y4vA24Edlt58Zs6hPW4jW+bVh2lWBLifRM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h6/Tsm1R7ZzXcIFu6NwdKtXVUCIYgnuQ6J9OH3HrIsyRyXd2fH7akl+vOVAgJ9jOdK/2kxt5v0fRg4YiclWxDFB6xBGyvtc7Lwu2K5nFsiVD8dJdY398WO+yeAmX/fo7fl7EEzFU8p7V00wJEvPRISsNoyxUnA/xo0M8R1GSFpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XC3LhoJ0; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XC3LhoJ0"
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-717594b4ce7so174611b3a.0
        for <outreachy@lists.linux.dev>; Wed, 04 Sep 2024 17:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725495263; x=1726100063; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m9Qxv0MhIUJqf7Mc01izOPbAr1VqnmVdpgZRy2Cr4ZI=;
        b=XC3LhoJ0Zvojahaqjlp2/NcAIPK2bhWnH4Jqgw9DmBJLvz0a4vMXK3T2zrdWKOF8lZ
         /qvTT5Z4pWfH74hcSCVe+ZRlBbYmUvLBac+J1G4jofHe/fYqQfVPCknot6rLJG31Q683
         T9CG645lF8ZIF0pRhUyXVsaSZeTmMSrHn3E056CEDE4mAV0KlaW16LLjkZk1S5812VSd
         reiG1hdl4epE2WMzQMe7jStiFUXEXWnLLhkRhUwhxUm/sJGkUD9SeWW7EUyQgJigDTfY
         ljIaX4qUjc2wA8v9C0z/VDIq4Zsx+Nmf0Dtr7/RrqEtDg22r083/gX3LffXcSE73IMZI
         O/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725495263; x=1726100063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m9Qxv0MhIUJqf7Mc01izOPbAr1VqnmVdpgZRy2Cr4ZI=;
        b=GH3iYji4SJoNpVq3ZBt1qeT/3lvLbsnWNJgyTNhrn8Kf5f8TKXxCHh9knaoH9kNz/j
         g2FsDj5vdXtX9xvkCH69FbPV15pCLWAEZmCbekF0Ls6FYmHZRGVTQbfDkGSGb4z4xj8U
         /5OBA1Lj9YO5nMrWFOPX9BHOtdWFCJwxKWVCyKKwB/S7dxojG9XcQMjTD+0HvIylhB7a
         bKi3XC6sdtvYZMilS42GYcNPZwlICUrvqCDBBsoKy7+xvna1Eqob2bEhtYUQ/XmzVTk3
         MNU31Dc3edqYdEBaJ6GYf3un9u+Z4GVjBc4SZtEG9ogxBKmNuYvvH14jDbLg8SoocGwG
         mdYg==
X-Gm-Message-State: AOJu0YwlyVFIiaKdV0O76aOG6Pun4HpKxiC8P3lZjB6MweS45cJlxpzD
	QNmQ4BizZjldEGyKH7VFuoHjiqj6cE97kEpmrnAqBCP9OX08rPYe4O2nxez5
X-Google-Smtp-Source: AGHT+IFTk2+yaksGZJTPn3s9d2vWrrUKU5MF3evxgeD+PJnTeRY/a6zvlgXjEuhIQl+mqfGqMYLOPA==
X-Received: by 2002:a05:6a00:2193:b0:70d:ca45:a004 with SMTP id d2e1a72fcca58-715dfb68c18mr26407717b3a.13.1725495263022;
        Wed, 04 Sep 2024 17:14:23 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71778534921sm2159781b3a.76.2024.09.04.17.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 17:14:22 -0700 (PDT)
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
Subject: [PATCH v11 2/8] selftests/landlock: Add test for handling unknown scope
Date: Wed,  4 Sep 2024 18:13:56 -0600
Message-Id: <74b363aaa7ddf80e1e5e132ce3d550a3a8bbf6da.1725494372.git.fahimitahera@gmail.com>
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

The test function, "ruleset_with_unknown_scope", is designed to validate
the behaviour of the "landlock_create_ruleset" function when it is
provided with an unsupported or unknown scope mask.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
Changes in versions:
v11:
* Change commit subject and apply coding style
---
 .../testing/selftests/landlock/scoped_test.c  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 tools/testing/selftests/landlock/scoped_test.c

diff --git a/tools/testing/selftests/landlock/scoped_test.c b/tools/testing/selftests/landlock/scoped_test.c
new file mode 100644
index 000000000000..36d7266de9dc
--- /dev/null
+++ b/tools/testing/selftests/landlock/scoped_test.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Landlock tests - Common scope restriction
+ *
+ * Copyright © 2024 Tahera Fahimi <fahimitahera@gmail.com>
+ */
+
+#define _GNU_SOURCE
+#include <errno.h>
+#include <linux/landlock.h>
+#include <sys/prctl.h>
+
+#include "common.h"
+
+#define ACCESS_LAST LANDLOCK_SCOPED_ABSTRACT_UNIX_SOCKET
+
+TEST(ruleset_with_unknown_scope)
+{
+	__u64 scoped_mask;
+
+	for (scoped_mask = 1ULL << 63; scoped_mask != ACCESS_LAST;
+	     scoped_mask >>= 1) {
+		struct landlock_ruleset_attr ruleset_attr = {
+			.scoped = scoped_mask,
+		};
+
+		ASSERT_EQ(-1, landlock_create_ruleset(&ruleset_attr,
+						      sizeof(ruleset_attr), 0));
+		ASSERT_EQ(EINVAL, errno);
+	}
+}
+
+TEST_HARNESS_MAIN
-- 
2.34.1

