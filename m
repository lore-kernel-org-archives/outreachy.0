Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3F5138F
	for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 21:25:06 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id k23so12022827ejd.3
        for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 14:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zRInxovmtEp5kO7w1NKMCyeNmmaZA+H9IsO8MYD/nxk=;
        b=KN3k7n1J89F5FoVzgUechS/8skSrFw6kWMc2q1ASXXL4KXv8dVB+FxsubPDqxVFGXE
         3A/ANpJs9MTx0T4NUzDWUu6HdoEF+FtABc273Ca1TW5enA32DJ/U8omw7xy01MtlngGI
         lxtWTL5KgGJQcTh8VSbRtPgRwIslY1m2+Mn9EUwAUebUjUZzE98LAz3+sCc/pXr58Yqj
         L1mvHY6oBYsokOOels/Wm0CuusmPEyRdo/HC/pHUBVQNFrbw13GOGaBEwQ5kV+wRlmEY
         /347sGz/0QD6KpTP7yCOUBO/acX1rktqqNI0BbnedLlOnBviq0PfO1rJ1lWnG4PEIEKj
         tySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zRInxovmtEp5kO7w1NKMCyeNmmaZA+H9IsO8MYD/nxk=;
        b=tI2D4V48FX33/OhoE7/7ALTXl+IwC7Ro5mkSsuSo6vSviBQinp4h73PwFNdtj6IMWv
         YymrQkAiFsmTbPEIuPrnITQokEm67MJdDzAfl6O6owJqlTzKiRQN0MwC+cyySsed18H8
         M0It1yP6xtZnMWtenyWpz2tmVBGLsBHRsVb1ukv/0JAjrUbHIuvcyu26g1+7ongAfN9P
         it8eSeIlhoTQq7um8ndk6HW9oTViIrmHL/pxQc7HBvWb31vASmcT/mAK0/gWPhw43h43
         +y+h/329UaxSZj0i9LcyeiMJcXKsIdNy9+yMbJHeuy2FTAC/X1+/zWNoReDUQypbKh61
         LtIg==
X-Gm-Message-State: AOAM533Yxv+yTdkNOIfWuzJOoBDQXQcEBMXtlkfYB1gp7SmKata4c8Nh
	VqwE24Xla0zaq4xVfZRUIBE=
X-Google-Smtp-Source: ABdhPJyps6JAZvGLNCALZ+xOu3cOWTimaZltmVZngEsBX7uAGmmNMQAy5qaL+rn1kwIdJ5q7+wXk7Q==
X-Received: by 2002:a17:906:4fcb:b0:6f3:b710:9752 with SMTP id i11-20020a1709064fcb00b006f3b7109752mr14085271ejw.445.1651181104913;
        Thu, 28 Apr 2022 14:25:04 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id ze12-20020a170906ef8c00b006f3ef214e68sm37147ejb.206.2022.04.28.14.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 14:25:03 -0700 (PDT)
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
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH v4 2/4] Documentation/vm: Include kdocs from highmem*.h into highmem.rst
Date: Thu, 28 Apr 2022 23:24:53 +0200
Message-Id: <20220428212455.892-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220428212455.892-1-fmdefrancesco@gmail.com>
References: <20220428212455.892-1-fmdefrancesco@gmail.com>
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
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Thomas Gleixner <tglx@linutronix.de>
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

