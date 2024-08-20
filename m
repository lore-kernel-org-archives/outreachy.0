Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC3B73452
	for <outreachy@lists.linux.dev>; Tue, 20 Aug 2024 04:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724126953; cv=none; b=JuF8gXltxRRYiCOHt4go+WLWBFgaZWHD5iERfGS/XYMJ1GPCcXz5KCSJSgfcPZr62xih+q19gDQ6FWLekCkAqKHkCD036X6dC2nXMD+6WmPbgeag+4IR+hVgcoP/PDCIggm0g65zbpIjpxBOxt05Z/A030PfjV6VTlHPY2H5SDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724126953; c=relaxed/simple;
	bh=liI0lPS/VOlwLeNGo34KdmRPUfwYpXaRm4y0I446ccw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uSc8pWh8hezZ/dEJ/Qg3H0KnX/pOP7nifAqWKecbYBh90Eiia/xis/wzY3Tb+sghmu66Ef6Fg+ujUOkD+EVg2CEt6zG3rZ/nRSirJRZgqMzmkxsxiN0znkDpGwE8qw636DMiopuTSV67s632jgVbyguk2yTK0nXhYdDcqphEqIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KTVYytpq; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KTVYytpq"
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-7a264a24ea7so3747082a12.3
        for <outreachy@lists.linux.dev>; Mon, 19 Aug 2024 21:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724126951; x=1724731751; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=paDt3+snKheW0hTbgqIvLcV2+jGv0GbAWHframJxjhg=;
        b=KTVYytpqGSkz143gyO4FmcfDGCuENQb/rELmxNJAIli5yRKe2fthc4TEv2CpXQl4pF
         0KzvEzvVxls2T7c0sEfcDrw14V6MRvHOcI/n+hLdRXvRl1VdjUhMyp7U8g79PRntD6mR
         PKXPGx3OSRpwhq3EU+lh3wK12WrdqDUeVFrbuzLYkWnHvpGmCgUx8+g7jM71ze4Z0RLk
         /exNDNUoiUNjI9X1JGmUWo5v7TC/zDSk+ktqs/PUUV0Yk1oOORvex5Nn1DutEr/PDwTP
         A38uRhxRLDVQ0QnQStdGXzYDbnW9NoqzpFAlDj63zhnKQCiOYRqlt4w3ceIr7fjI5Zb4
         fTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724126951; x=1724731751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=paDt3+snKheW0hTbgqIvLcV2+jGv0GbAWHframJxjhg=;
        b=rIqW8u13Cb60jCTT566a018oX+R9IFjcvDK8bSadHkp6/l/bxlWywUinTYH7vq1JT4
         lT2WqA1KNl19FURiRv1dbioKSBmfcoNRnQVNJnwoVWOkLPZSwKzmTNfxSoLvymiva1Wl
         n8QV3uWkTup/K4BT/LYW4E9ff3q1JJ1K1+06LAjEVhOLJtxlpenA6Q829hBsOLVCM199
         cze/taRiOKnQlW53cUGkZn3a57YIVkhBOuvZD3JZQWdOvshEao7tNuYxMnka4nby2MhU
         w9Of3wwC3srpLA5WXS1IJJPb1Nf/2FJuBjm0sJIZahB43Qtd3CRgom1dib+91+E0aT2/
         YDbg==
X-Gm-Message-State: AOJu0YxiK/0Mmx3d0ivZDJfsW17vtANe4aCjBae7rkj2+wmy0TUzLidl
	vsCRMpehyrTHWU1o+l39JKMFyy+XcdxgcT1JDX4xjIR67+2gbX2VsDC8yXVw
X-Google-Smtp-Source: AGHT+IEHHfOQnuhnS4Ryh29PiVGt/7mGXs60KFI2kapkV31k4eUwIcTARhn7p0wUR/42CH3nBxhSSw==
X-Received: by 2002:a17:90a:c28b:b0:2c9:96fc:ac52 with SMTP id 98e67ed59e1d1-2d3dffddd10mr15042723a91.26.1724126951114;
        Mon, 19 Aug 2024 21:09:11 -0700 (PDT)
Received: from tahera-OptiPlex-5000.uc.ucalgary.ca ([136.159.49.123])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d3e3174bfdsm8149652a91.27.2024.08.19.21.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 21:09:10 -0700 (PDT)
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
Subject: [PATCH v10 2/6] selftests/Landlock: general scoped restriction tests
Date: Mon, 19 Aug 2024 22:08:52 -0600
Message-Id: <6c0558cefc8295687f8a3a900b0582f74730dbb2.1724125513.git.fahimitahera@gmail.com>
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

The test function, "ruleset_with_unknown_scoped", is designed to
validate the behaviour of the "landlock_create_ruleset" function
when it is provided with an unsupported or unknown scoped mask.

Signed-off-by: Tahera Fahimi <fahimitahera@gmail.com>
---
 .../testing/selftests/landlock/scoped_test.c  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 tools/testing/selftests/landlock/scoped_test.c

diff --git a/tools/testing/selftests/landlock/scoped_test.c b/tools/testing/selftests/landlock/scoped_test.c
new file mode 100644
index 000000000000..aee853582451
--- /dev/null
+++ b/tools/testing/selftests/landlock/scoped_test.c
@@ -0,0 +1,33 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Landlock tests - Scope Restriction
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
+TEST(ruleset_with_unknown_scoped)
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

