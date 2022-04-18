Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94577A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 08:17:45 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id u15so25558872ejf.11
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 01:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7KtsXjPh9lfFnODrrFCb9+TsBoLzX4dD8HDH0L28ETo=;
        b=qGvm/KPaMmFmxeZQ9Ci1YPmBGPqYHItSqLu2nR0o7qsOBNcHjBa173id0xrm17VBJG
         9SbkEWiHhoF7oPOJ8N+kwFWqBIUAjwnW6a1A56mOxc1woFJT2MDOGFJ3cMe6Ugfo/t2Z
         DUwHEPpRk8hncMUuxz0lykj9cS7afW2on5arFNggQqo8M2W6v1Gf7KBXuoQOB2sGb4xG
         qQEoMZSRDXbf6Wom/OCRdkORGdR6s+NHLG0loaaKYkezAJsPUrldfe2sNxEliP+owy/t
         sHTMBTybK6EeByHtu0SAwFaBJkcVTMfLBXpDpVKfBf0qnPUBcsOFWi1E90IZwpv9ncY2
         8BAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7KtsXjPh9lfFnODrrFCb9+TsBoLzX4dD8HDH0L28ETo=;
        b=4TiIgc3v0sfLgLBpYsxqFBMKD8vwzBUmqAWu9TbFXUHhwVxwwjBVVvA/GALCI3RTym
         FTXvHfo3L9ae2mzZvz7HP/v+hkNE5FFO3mJYjgZo0q/ejWfAuVVfhAHxjC9rjAOZ8yf0
         qqIfDV1vI+4JE1cfxiG//2oMn4wis1LXHI7iM8LwwyBRfEJ0wSLTA9dcCKl4dfB8WZBQ
         7kt8CFgO1sK3ewyCnxneSW23XXzZoESI2j9B6LhL7mq4WWYNKsdXp4aD7rEU3mN2df7U
         GM5pN5W6pumd0A/NEttsPOTbQJrp0cmY7h+ZgoX4E4ygvO9R/NWNSSf5wAhni5PWg5kF
         cNEw==
X-Gm-Message-State: AOAM530L4HMFF2kNIHXmo26g2/6ifgpCldesrfIDHsIqpv9fdiMriD3v
	ERzAOaqI3rbj4utqiBC85WI=
X-Google-Smtp-Source: ABdhPJzs0nbDO3Ua/XZPtya90bEQnjKykEsVRVQvWzz/925zERd1qCgU2TBxRtja+LwOMrTNL2p+hQ==
X-Received: by 2002:a17:907:2d23:b0:6e8:807c:cd94 with SMTP id gs35-20020a1709072d2300b006e8807ccd94mr8085785ejc.502.1650269864091;
        Mon, 18 Apr 2022 01:17:44 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id o5-20020a170906974500b006dfc781498dsm4346365ejy.37.2022.04.18.01.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 01:17:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	SeongJae Park <sj@kernel.org>,
	Jiajian Ye <yejiajian2018@email.szu.edu.cn>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ira Weiny <ira.weiny@intel.com>,
	Matthew Wilcox <willy@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	outreachy@lists.linux.dev,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH] Documentation/vm: Include kernel-doc from highmem-internal.h
Date: Mon, 18 Apr 2022 10:17:40 +0200
Message-Id: <20220418081740.21001-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In Documentation/vm/highmem.rst the kernel-doc comments are missing,
therefore kunmap_local() and kunmap_atomic() are yet undocumented.

Add a kernel-doc directive to include the above-mentioned kernel-doc
comments in highmem.rst.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---

This patch must be applied and built on top of 
"[PATCH v3 2/2] Documentation/vm: Include kernel-doc to highmem.rst"
https://lore.kernel.org/lkml/20220415231917.25962-3-fmdefrancesco@gmail.com/

 Documentation/vm/highmem.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
index 5dcee6233cd5..1a3e6a8f5d3e 100644
--- a/Documentation/vm/highmem.rst
+++ b/Documentation/vm/highmem.rst
@@ -161,3 +161,4 @@ Functions
 =========
 
 .. kernel-doc:: include/linux/highmem.h
+.. kernel-doc:: include/linux/highmem-internal.h
-- 
2.34.1

