Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A24E1373
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 11:19:22 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id v12-20020a9d7d0c000000b006054b51c3d4so865325otn.8
        for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 04:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WJG5F1c9fqj/wr2Dm5wuFgifS3sDXKnnxqiizhaJF0U=;
        b=laEs3ezzoHrm2mhqQ4zQL+tuZDbvzdp0DafFdDV7kD5WAw4e3oUFbD1V/b/VPe8Rzi
         FWvn9ufLGFddMcIAzzEJD8OeDlKPPeVCJ41dfzq9PyudWaZ/fIvW4se8Z2xe8FCWWIaN
         PGZCD9Er2l0f9YBfxDXIzPpbCptpOpR7tiTTSjbb5mJab00RzfTDcnI1SEkRqicE/VFC
         aQqOknlPryXvEt9BKWNViURa/uFNFoJBom9tfRuT5IhvBoCAKY0oDjrqNWTeGGDayV17
         L1piqNSwJ+TMUoi0JGxoCUsCOvU1X/vU23KdJRs3kIyQk/R9R56eYutqPM2dj6bd0pMA
         +SvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WJG5F1c9fqj/wr2Dm5wuFgifS3sDXKnnxqiizhaJF0U=;
        b=udjto1TeAgCYOdWL1NF0CbZ6ApNc1+Di8yj73+/xopEzfvhZNEc35RqzMrb8Ycf79c
         nlmTTW5eCAWUey8WLjBOdXMocoqOazzHv7aa+CV/GdJbwIAJL896/cfMRH2jSm+1IykP
         DoLdcF6hPz/Y2BgTewtYt/SEQr/DL5h6jECeGY0AyFASZIIQkfZ8fonRjuK2Y18egBHv
         pSs1x/l4HdVkihp2WYDz/zlPpf7Bwd/fhjpIbFIrxA7KOO2OakK2akbda5V4SLfBbGNB
         XDAqlnoEtF4Q+WtNHM1r+XnqCD0oG/+1SGC7J4WbAiFVJoQPdbygfaLPvTGFT2Ng1fyI
         RJEA==
X-Gm-Message-State: AOAM533eMCgcBRMCNjoa/P24yGMgBNn/0/K4myJXddoAHIgCRo2yV7Z6
	sHVxfZtV9H0I+zZNxlK0qzg=
X-Google-Smtp-Source: ABdhPJwxuQMY51Jcaz7rr8ou9omcP5is25BMVkmakQYtTMJyJqDYCJiRTght2PD1SomP8c4CVdY+wA==
X-Received: by 2002:a05:6830:616:b0:605:46c5:8356 with SMTP id w22-20020a056830061600b0060546c58356mr6616549oti.81.1650453561509;
        Wed, 20 Apr 2022 04:19:21 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id k22-20020a056870959600b000d277c48d18sm6508551oao.3.2022.04.20.04.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 04:19:21 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH 3/3] memblock tests: remove extra column of spaces in block comment
Date: Wed, 20 Apr 2022 06:19:02 -0500
Message-Id: <663c930475c3c0a32965024c1094d3288629a3af.1650452552.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650452552.git.remckee0@gmail.com>
References: <cover.1650452552.git.remckee0@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove extra space at the beginning of each line in block comment
for consistency and to conform to Linux kernel coding style.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/tests/basic_api.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/tools/testing/memblock/tests/basic_api.c b/tools/testing/memblock/tests/basic_api.c
index 834d8705ff8a..05448a25f1f9 100644
--- a/tools/testing/memblock/tests/basic_api.c
+++ b/tools/testing/memblock/tests/basic_api.c
@@ -303,12 +303,12 @@ static int memblock_add_checks(void)
 	return 0;
 }
 
- /*
-  * A simple test that marks a memory block of a specified base address
-  * and size as reserved and to the collection of reserved memory regions
-  * (memblock.reserved). Expect to create a new entry. The region counter
-  * and total memory size are updated.
-  */
+/*
+ * A simple test that marks a memory block of a specified base address
+ * and size as reserved and to the collection of reserved memory regions
+ * (memblock.reserved). Expect to create a new entry. The region counter
+ * and total memory size are updated.
+ */
 static int memblock_reserve_simple_check(void)
 {
 	struct memblock_region *rgn;
-- 
2.32.0

