Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0B115442D
	for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 18:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723746588; cv=none; b=eeIax9P5D8uSfnaJkVfrGHAE2yK0VhSC5KnP/1N3g81s7uJbfdwsjJumONOm+zkO8U/VMNkmQ2lfsA3HapAQM2l+Ya28ky3ckt0vcxYntB++Gh8GccOIgX9vGq5hd5uUtIJNDe1q0v3btaWpDAQA2KK/0e7lg9fvpvCqshf/gPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723746588; c=relaxed/simple;
	bh=qnk7k4HDDGkZoFSO8IpFZuu5vCiPAJLRX3jzzWccaYI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OM9BpKZjQN29E4xLluQ1XHFlyruWj5DZ6/XGp7wA4/tfnETtQdHMNnopBs0QfvIDVDVJJ+DU6tgsqo5ASiEPuL0gt30CUKVn+Dj2B0YJNB0dZO5hyMOGC3yDvS9TSqeOC9m4jksrQsXoU4UQrLgTiEdRzoP7KAKX/nUWh7d2zFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G6rATpSM; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G6rATpSM"
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-710cad5778fso1025473b3a.3
        for <outreachy@lists.linux.dev>; Thu, 15 Aug 2024 11:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723746586; x=1724351386; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sB8A2+Y35t17lg44SzaxZqI5HJVqbqkWh0aRgxli2G0=;
        b=G6rATpSMvux2ak+nVozz2TH+YNkZsEZ6ZKR/rlGcx2LmbRimFs3ze3+/oMhUliGSe3
         M7b5scZAVgCNi1PwSJXGcPZIjG0SO2DtdnIQq2btarWrK8X0vynaOgjmofxMj8a4/w60
         7V2XmpbzMq6fWKqpMuGOMYrSyMARyrHh/Pg7iZS7/DnlABZ+OGL4Zym6P2WJg3mrQmsL
         YN/TbBg0ZkAHquFdFKC7Sq+9nXTGLfqn+2lqepfQTEIruiZA102xyLLXqsQlWbCLXqtt
         xy88iLwFcmhKh8hlvZ7ySqmC8KmMp2QpfAFncIPgJ6O9nyKuuPhfQVtvdJMjI4JrSOz6
         POFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723746586; x=1724351386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sB8A2+Y35t17lg44SzaxZqI5HJVqbqkWh0aRgxli2G0=;
        b=FBIOByiyosatE+ry//dAYdls0rY2J23+LIdCSnV4OuD7nmWXxElPvxifGSUteJQdn0
         wDXKaygmmQbcLV9Xo0UxIFIPYMobHc1xCX9el9KW3Pk4W4w1ZujaIgGkqjl3triHRylW
         nQnQa4DU9e5jOkLzXkZFrpGz0xhZxdEiScKsME0p4XX/xMuNQrIK6QoFNS9p3Jhdcg/I
         eNAXIlaB2Ld/Z2Kg0D9zxUd6Jr5vBB0DybE5Qsbkx14pUfzYFEOFF6BZVbPf+lMUfQui
         IRsmNCJ0QuhRAvw3TQR9Yot+sYzQh9fokTkjfDV6mH6fcFzgk8/1GLwAenk3PhGylnu6
         RFNg==
X-Gm-Message-State: AOJu0Ywup+55aU1r+xiGa87Nbr69Az85tcksNGVJrymSR8nBkmJuUSgQ
	fiC64BTR6hFMQLqVsxFwmTDnxXLydEoJDaTzCJaCdJHtPlNHvAudMXbwg+Xj
X-Google-Smtp-Source: AGHT+IHhUcnSE4tNQTfofPuCwTWx0qmX/19gly0HrhSf4hLYSpIm3FPQoVdv6nfNh3SJzMM92aglkw==
X-Received: by 2002:a05:6a00:2192:b0:70e:a6b5:d80d with SMTP id d2e1a72fcca58-713c4f34736mr806264b3a.26.1723746585898;
        Thu, 15 Aug 2024 11:29:45 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b6356c76sm1431683a12.62.2024.08.15.11.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:29:45 -0700 (PDT)
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
Subject: [PATCH v3 4/6] selftest/Landlock: pthread_kill(3) tests
Date: Thu, 15 Aug 2024 12:29:23 -0600
Message-Id: <f9ddc707873b30f440779feb1f284fc2a4aae40b.1723680305.git.fahimitahera@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1723680305.git.fahimitahera@gmail.com>
References: <cover.1723680305.git.fahimitahera@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch expands the signal scoping tests with pthread_kill(3)
It tests if an scoped thread can send signal to a process in
the same scoped domain, or a non-sandboxed thread.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 .../selftests/landlock/scoped_signal_test.c   | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/tools/testing/selftests/landlock/scoped_signal_test.c b/tools/testing/selftests/landlock/scoped_signal_test.c
index 92958c6266ca..2edba1e6cd82 100644
--- a/tools/testing/selftests/landlock/scoped_signal_test.c
+++ b/tools/testing/selftests/landlock/scoped_signal_test.c
@@ -10,6 +10,7 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <linux/landlock.h>
+#include <pthread.h>
 #include <signal.h>
 #include <sys/prctl.h>
 #include <sys/types.h>
@@ -18,6 +19,7 @@
 
 #include "common.h"
 
+#define DEFAULT_THREAD_RUNTIME 0.001
 static sig_atomic_t signaled;
 
 static void create_signal_domain(struct __test_metadata *const _metadata)
@@ -299,4 +301,31 @@ TEST_F(signal_scoping, test_signal)
 		_metadata->exit_code = KSFT_FAIL;
 }
 
+static void *thread_func(void *arg)
+{
+	sleep(DEFAULT_THREAD_RUNTIME);
+	return NULL;
+}
+
+TEST(signal_scoping_threads)
+{
+	pthread_t no_sandbox_thread, scoped_thread;
+	int err;
+
+	ASSERT_EQ(0,
+		  pthread_create(&no_sandbox_thread, NULL, thread_func, NULL));
+	create_signal_domain(_metadata);
+	ASSERT_EQ(0, pthread_create(&scoped_thread, NULL, thread_func, NULL));
+
+	/* Send signal to threads */
+	err = pthread_kill(no_sandbox_thread, 0);
+	ASSERT_EQ(EPERM, err);
+
+	err = pthread_kill(scoped_thread, 0);
+	ASSERT_EQ(0, err);
+
+	ASSERT_EQ(0, pthread_join(scoped_thread, NULL));
+	ASSERT_EQ(0, pthread_join(no_sandbox_thread, NULL));
+}
+
 TEST_HARNESS_MAIN
-- 
2.34.1

