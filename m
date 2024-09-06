Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5392215ADA6
	for <outreachy@lists.linux.dev>; Fri,  6 Sep 2024 21:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725658221; cv=none; b=oDtzJP6Yylngp/94tbm6GiqWxouQa5g+ejAl83CDqt2mOHek7ijXi3DWV8huSiQSDjLGOVTGYBmKxXLMczxGKIUcJlxXpTtGf6VT01KJzgEmkClwJOim7IimTGlSd9owYYygnvLvu5U+S10Hvv9Bi8BGsYJpUodWXK4Wo+Y0aWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725658221; c=relaxed/simple;
	bh=OQW6FWTTeP/odGH5xBbHF6QQMouh1FibutawAbL3TQ8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=D9AxCwV3YKzN9m94EyJ1XIZiJmgDkW5D0uRVlJR5gT/Z0Lvfrg5oiqRRIt06nvs1gP5nkmWVPlos+NuXYu4u6bEPWv3FeYHFxyr1Sg2PFfJyDa1DzI/n0HJRMnHXbTZchRiZX0oiWgS7UzRaRuNy3pQ1xE85Lpht79o1WQw9vJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TgECvW6c; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TgECvW6c"
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2053a0bd0a6so27912795ad.3
        for <outreachy@lists.linux.dev>; Fri, 06 Sep 2024 14:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725658219; x=1726263019; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+RDbmLG5ftR+4D9+bzNx00wKA7Lfj8/VBn2Mhtp0TI=;
        b=TgECvW6cTUd/3BNSX/YVoTjgvn4lgDZji7lH7UEHHi7s2/FSzXnHPJBu8xkiXIe5C8
         8fWHjGHdiE7WsesVQMeYOkenYdreDpyaefqWTZuHz0fCoPDTD3v8YoXeb3yzV9hFr6SB
         ZZ+155x4JTibL64/XHaGhXawDQcJKgSkFidxQYTmxw1GbVAgD432bjra9rZg3fsAvIyh
         liqfVS2vtMWfOFP67cBqqH22KcLVwrCj/pWukVH63z4Egg3qwTVj18KuxxM6O+ARspoA
         JEIPNMpkbsG34vi4J0K+VmChhEJgcFpaxysINLpIWPztuTQ+XjPeqWqLR9IUVY3Rwpi+
         jsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725658219; x=1726263019;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u+RDbmLG5ftR+4D9+bzNx00wKA7Lfj8/VBn2Mhtp0TI=;
        b=Jlrkbj5za9YL6e8gEIZO+A8FWyNFTK/zNDSsVvuA3kSK+TatcBIAPgHC+1ih9weh1n
         nFdA6hDZkIx4TbH3d6DNzKv+kGPZKvgNpX1VEa4yofp4a/DYTfaNO+qeJpsvBvZR8a2l
         aJPy763Ulg4xfvWg4DPHACnveltU8kVNDkJToUelhARxbFfeXD8i+UBmwKmRf7/gjHDu
         +eGm0CVQ9KQUnwt1zm6i15+icnWkgvmzHoW0haZT4Mk16IpyLnjlSasDcFMbS07CPLPL
         4D1NLUhik2C13nA7oR+ci4WgoXixn8vt/9CQO2UTS2nlhPVX/y6zDV1b01FO8BTPkcP3
         7kJA==
X-Gm-Message-State: AOJu0Yxstm6W+vAl/st2WdbzXRAMqul7AFKfSFrmBLCzRpDIwzw680Pg
	vl/CERTi84lWU+sjTqOm/9vT7FOoVwd98GyoMmr51wzhM9zvNgNa+HLgjnQs
X-Google-Smtp-Source: AGHT+IGM3JZ+Lev8wxl9T4KEhEMpWi8iBiesB0op2Ql7krI1fjunce8/lAR3UJf1Cl6z4rgpt8lV0A==
X-Received: by 2002:a17:903:41c9:b0:202:2cd5:2095 with SMTP id d9443c01a7336-206f04f6845mr41217845ad.18.1725658219131;
        Fri, 06 Sep 2024 14:30:19 -0700 (PDT)
Received: from tahera-OptiPlex-5000.tail3bf47f.ts.net ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea67bd1sm47081065ad.247.2024.09.06.14.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 14:30:18 -0700 (PDT)
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
Subject: [PATCH v4 3/6] selftest/landlock: Add signal_scoping_threads test
Date: Fri,  6 Sep 2024 15:30:05 -0600
Message-Id: <c15e9eafbb2da1210e46ba8db7b8907f5ea11009.1725657728.git.fahimitahera@gmail.com>
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

This patch expands the signal scoping tests with pthread_kill(3) It
tests if an scoped thread can send signal to a process in the same
scoped domain, or a non-sandboxed thread.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
V4:
* Code improvement, and removing sleep(3) from threads.
* Commit improvement.
---
 .../selftests/landlock/scoped_signal_test.c   | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/tools/testing/selftests/landlock/scoped_signal_test.c b/tools/testing/selftests/landlock/scoped_signal_test.c
index 8df027e22324..c71fb83b7147 100644
--- a/tools/testing/selftests/landlock/scoped_signal_test.c
+++ b/tools/testing/selftests/landlock/scoped_signal_test.c
@@ -9,6 +9,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <linux/landlock.h>
+#include <pthread.h>
 #include <signal.h>
 #include <sys/prctl.h>
 #include <sys/types.h>
@@ -222,4 +223,50 @@ TEST_F(scoped_domains, check_access_signal)
 		_metadata->exit_code = KSFT_FAIL;
 }
 
+static int thread_pipe[2];
+
+enum thread_return {
+	THREAD_INVALID = 0,
+	THREAD_SUCCESS = 1,
+	THREAD_ERROR = 2,
+};
+
+void *thread_func(void *arg)
+{
+	char buf;
+
+	if (read(thread_pipe[0], &buf, 1) != 1)
+		return (void *)THREAD_ERROR;
+
+	return (void *)THREAD_SUCCESS;
+}
+
+TEST(signal_scoping_threads)
+{
+	pthread_t no_sandbox_thread, scoped_thread;
+	enum thread_return ret = THREAD_INVALID;
+
+	ASSERT_EQ(0, pipe2(thread_pipe, O_CLOEXEC));
+
+	ASSERT_EQ(0,
+		  pthread_create(&no_sandbox_thread, NULL, thread_func, NULL));
+	/* Restrict the domain after creating the first thread. */
+	create_scoped_domain(_metadata, LANDLOCK_SCOPED_SIGNAL);
+
+	ASSERT_EQ(EPERM, pthread_kill(no_sandbox_thread, 0));
+	ASSERT_EQ(1, write(thread_pipe[1], ".", 1));
+
+	ASSERT_EQ(0, pthread_create(&scoped_thread, NULL, thread_func, NULL));
+	ASSERT_EQ(0, pthread_kill(scoped_thread, 0));
+	ASSERT_EQ(1, write(thread_pipe[1], ".", 1));
+
+	EXPECT_EQ(0, pthread_join(no_sandbox_thread, (void **)&ret));
+	EXPECT_EQ(THREAD_SUCCESS, ret);
+	EXPECT_EQ(0, pthread_join(scoped_thread, (void **)&ret));
+	EXPECT_EQ(THREAD_SUCCESS, ret);
+
+	EXPECT_EQ(0, close(thread_pipe[0]));
+	EXPECT_EQ(0, close(thread_pipe[1]));
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

