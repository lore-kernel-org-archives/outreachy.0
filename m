Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452A92562
	for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 16:24:11 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id d6so13987404ede.8
        for <outreachy@lists.linux.dev>; Mon, 25 Apr 2022 09:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k75/spXS+k5a5+DVquVFeCXg9KobdD3U49dRA56k3UQ=;
        b=o9+2pBqWUis4C6ZmgeEt5DTfRXP576snfeynxz9Ldb7ffqC3x9eTcQ2TP0dl8TEupW
         rHiAmS/ZLdlYuA5KVEiPg0INBIPqtvD1zRVFVfoiBi8Yb9j2bfAyuOmjLUkibHyuCBm1
         phhllpn38RK6N48Gkijl4o0vHsbMNoCyjkA/QXisVu5//F6HOp4ZgIhacDVrvGujNZOr
         yvC/TM2VAJbPILhgMsgI4RwNe+wKp/PDZKY1NLf0s2V3L1FWYjKDCR2SkXJess0xTFku
         uqEsrCEj/nUBe/X4yx0wun5/MqGdMA+dvlxgy/j5cgQv0p62t6UnSe/xMd4pi58THbLs
         6iMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k75/spXS+k5a5+DVquVFeCXg9KobdD3U49dRA56k3UQ=;
        b=WtSb07SYQ0Ya+jHOLEcKRF00L8jXR+mcvL/Wrch/cKPHyJYIMkihO0W1wy3/F4eCA2
         N2myTIlBogGkXrK9p23riraQ6AghmupiOZuT18ETyxXK5C5ZCszQYkWb4gyG4uNWuRCk
         2ZIHuwdKLGjroud0OIvcf9QE9Un3tlWQ0XKOv0UJDFkKq54y56X6ya+9a+1nwxd3rUQm
         B3hM92t7+iLoO1Qw9UPBtT3+zfq53KKFRL7MvpHAuIzGIfn7xFFeC4c9z2XAtg+iEs4s
         yi8zP5Us8roDK44aO3px9jRqefhI7yZ6027fVb03ZdO8vQvrYpatIQTkr79GUNVl+Ol0
         LP6A==
X-Gm-Message-State: AOAM532yCW74zelsRSKlibEyrc5gdzrMr+uSNQhRhDU+SPUGCTyGaJYu
	RnADYgMNq4QSpLCx6QItl9M=
X-Google-Smtp-Source: ABdhPJxsVB07TMND4r1/D1MiuXyvmgzMTJcIRZOlK5oN4b3CUelM/Sd2DPPsgUpZiXdLG0i/3CyNnw==
X-Received: by 2002:a05:6402:51d2:b0:424:536:94dd with SMTP id r18-20020a05640251d200b00424053694ddmr20029040edd.191.1650903849582;
        Mon, 25 Apr 2022 09:24:09 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id s12-20020a1709062ecc00b006e8558c9a5csm3784122eji.94.2022.04.25.09.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 09:24:08 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>,
	Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH v2 2/4] Documentation/vm: Include kdocs into highmem.rst
Date: Mon, 25 Apr 2022 18:23:58 +0200
Message-Id: <20220425162400.11334-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220425162400.11334-1-fmdefrancesco@gmail.com>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

kernel-docs that are in include/linux/highmem.h and in
include/linux/highmem-internal.h should be included in highmem.rst.

Use kdocs directives to include the above-mentioned comments into
highmem.rst.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Suggested-by: Ira Weiny <ira.weiny@intel.com>
Acked-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 Documentation/vm/highmem.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
index 0f69a9fec34d..ccff08a8211d 100644
--- a/Documentation/vm/highmem.rst
+++ b/Documentation/vm/highmem.rst
@@ -145,3 +145,10 @@ The general recommendation is that you don't use more than 8GiB on a 32-bit
 machine - although more might work for you and your workload, you're pretty
 much on your own - don't expect kernel developers to really care much if things
 come apart.
+
+
+Functions
+=========
+
+.. kernel-doc:: include/linux/highmem.h
+.. kernel-doc:: include/linux/highmem-internal.h
-- 
2.34.1

