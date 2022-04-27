Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4517F5
	for <outreachy@lists.linux.dev>; Wed, 27 Apr 2022 18:38:32 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id m20so5097012ejj.10
        for <outreachy@lists.linux.dev>; Wed, 27 Apr 2022 11:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k75/spXS+k5a5+DVquVFeCXg9KobdD3U49dRA56k3UQ=;
        b=JLJR2+S/v6It9gJr/TiqMLTTFSv6DyRzzADGLWON1JCaOTnKzH1+VU8NynzjGGEipx
         IlwiMQmQSKbsYYZe2TAFZgbSeO1Iq2WRI84k2hkmS2IpVtJszMvFtZQSWdoaIZ17hVOw
         WmGVbkfKSC2S3Xgkjxyk6XF2dvpCFcHT9541Hr4aYXwUXRLvUaYcRBxuC7jVD5OwGJDj
         z4YbZyRk26qXUV04MGxMJaonQm8WpIderszxaLStgxJxo5mM147I4snLrhdjIx1Zi0RV
         VQah7SZoLbHghWu1MBCQsIcP2UYYt7X/ORDcNTIXwlk0qdjmhnxNnLmlUB4eKqNAB2vu
         KcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k75/spXS+k5a5+DVquVFeCXg9KobdD3U49dRA56k3UQ=;
        b=BYSdy4B4btzrjrgLsx0E71PrPxW0Pw6uVp9BMDUJBvcJucmY1qBsRiTgY4gd0pio6w
         5H+RoaXDySUbjjEq/YihX1Wg1tkD1/gFqLJRfsQmegi3h7s0IpEWzEZM3tAQFeuoKYRs
         O2YYtsnPEg00nsCsQRKSNbjZBblbIFuEa7gf9WNoVVhIBJPPSOEMmCtb8pGlLBULry8b
         /LgSLCO0g1yRqXi4moLnwZSCLxG1VGb9GoRX8hQx5D44ZPikbRkY53mZ3GRW+pYMV7bP
         pBUEG5Lz46jhHD7DOiSzxX/Pw1PVT0ELvZ9fdp4cv1YWooj6aPwmjGcM81JW8Y8AgbKs
         6fwQ==
X-Gm-Message-State: AOAM532nA4eFHMquSQCE7JVAeNElm0bBRZxCYtAhsValgeJLtmm4+IPP
	lb8oiqy4kNhZhHJ6Jz9BU9o=
X-Google-Smtp-Source: ABdhPJyqxAnZeuQdR1Pu7yQd2w8qzvmFZ+4CsZFyBpbjMJsQDuf9u3iTk+0FzzF16gNHyfq2yp+3/A==
X-Received: by 2002:a17:907:8a0d:b0:6f3:a595:6136 with SMTP id sc13-20020a1709078a0d00b006f3a5956136mr12551715ejc.54.1651084710853;
        Wed, 27 Apr 2022 11:38:30 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id ig8-20020a1709072e0800b006f38f2e9ebesm4691667ejc.64.2022.04.27.11.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 11:38:29 -0700 (PDT)
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
	linux-doc@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>,
	Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH v3 2/4] Documentation/vm: Include kdocs from highmem*.h into highmem.rst
Date: Wed, 27 Apr 2022 20:38:19 +0200
Message-Id: <20220427183821.1979-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220427183821.1979-1-fmdefrancesco@gmail.com>
References: <20220427183821.1979-1-fmdefrancesco@gmail.com>
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

