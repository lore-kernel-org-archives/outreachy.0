Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780981FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 18:02:15 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id r13so11628038ejd.5
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 11:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PWSm35GKgzhZ2nsMVDxagYWw0p5o9vqwYX51NaxQrug=;
        b=XJsxSUUQc4rlVu1TWKgCPb23ms5Cf0+E/ldtQyI/Bnzra8P5sITAAQsvP55AunNBWu
         cAEefC/Y7EL6Rr54fEzFhBK7GaPER8T7/sPXZSQI8G7FPeNX6NAJImwJFqGRXZPfOTBI
         oTQIdm00ImB9obwuVpn0gVxYqN8faYmE4XkBubmwlicbJFI5tbcV9BOxBhicBOJTmHlE
         B6HDL2ajVcPSFVdRMoCAbX8fehDhEmqn2F0j/HZKUyIo/PO8V/LQtfffJTWitsTEqZm8
         Ch/JUgDH5ArKBS9zSJUZbXRN+NGBvBPCym7U6KBpiwdSGwXO66fCw30evrWskKtvNk/4
         Edug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PWSm35GKgzhZ2nsMVDxagYWw0p5o9vqwYX51NaxQrug=;
        b=Xn9pVaVKLYh1/7o931QZKo32ai7qzxYg8QDQHY06GZlec4+ZkvjqQTXrojiCs6al//
         oJ2hviUfQK25VztzhiH3rVEcevpjocA7KXCsgk+BoHsskGkTpT4oWy/Mn1JdiMNHiDuJ
         UPgqu+Nq5zYolnR3/t+2rehZm6JIY09DPfNTnQ8P4JfKhU+85X8JJ4ytZbgAxHiPnRk6
         NucYWOAQgvkliARzN9mhry82Emw5scrUgYpLBdhwKOyozOP6voEF4KOZZNLVLe3sXgsm
         AYRpQ0yuQl41Qx5m64JvV4UOuex5lMZUGImX9ci8qkwl3OCJA/LygjFGntpPD7LT3/Sm
         0WSw==
X-Gm-Message-State: AOAM530CjHEkZ6mY0PMa14lQy8myyE/arRBWvBCB6rFhmQaXHr/lzGgx
	PTwqNPvfDxFoULQYhL22bK8=
X-Google-Smtp-Source: ABdhPJzz3okdqpk4g83+Y1lh1AY/TunHBPpCllIQOGmm8GGTU+6kn2uQoF4Jy63X4AgO3F04jvzdEA==
X-Received: by 2002:a17:907:7246:b0:6ef:828d:4b49 with SMTP id ds6-20020a170907724600b006ef828d4b49mr705192ejc.172.1650564133850;
        Thu, 21 Apr 2022 11:02:13 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id l17-20020a056402231100b0041d98ed7ad8sm11836204eda.46.2022.04.21.11.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 11:02:12 -0700 (PDT)
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
	Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH 2/4] Documentation/vm: Include kdocs from highmem*.h into highmem.rst
Date: Thu, 21 Apr 2022 20:01:58 +0200
Message-Id: <20220421180200.16901-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220421180200.16901-1-fmdefrancesco@gmail.com>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com>
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
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
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

