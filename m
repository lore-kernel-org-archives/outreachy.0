Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2067A1FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 18:02:08 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id d6so2422579ede.8
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 11:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lOywcq043Yv+FklAUr4QgDF+CZZ8Fm9pvDhYVpjnqBA=;
        b=eecx/nbIl/qVmAavXVH1QtBMm/WUTeluckxs1qc4tw1Y6vxZ86/xB7ozu/zgCvduHh
         1h6sr+60PV4OZotP1IkXl6PiEAO6jIBaH8I+wCyUWAVuROGFmk+qqIdqW4LbPAlpZDOd
         dwTlvsztPjkIOdF+CghH88DMzlav2RgUCJNJstXASPY5+WZjEyPHowy8F3Z0AZjYZA8j
         eGdVGE4cgYTPUAQ76zyWm/ThY828nVJNDGv6iAnDc19k8syiC7u1OGaCwnbT9ToLVW3V
         cZS1A8gsXDxltmFaNc7s9AG8ikNO/UkB9u+jaaBX3cCvL4co8zlPFmKAsYp71ZX99+vJ
         JMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lOywcq043Yv+FklAUr4QgDF+CZZ8Fm9pvDhYVpjnqBA=;
        b=zq3mR2gwkJqG82/LsbUuWiqrZqbGTMF4R0o87y+puQ8r+5/6RfPEi+gcnLsvs/rnF4
         i/ckDK2OXQ33sW0E828oHv2BrMih4vBMi0pBE/EL1/GPx+fin44TlVpC5MoRLp9KWlPa
         HrH0kaj4sZfUS19F9ywihpofzbaBSJ6Y/2Mh5DMEKv7sN1sUGJkbI/F4n5MZSPsqIkz+
         d1ujFZ7NeWqamMO/IqJObZVZTw+6BTa7ij+r2EoNBRdbR/bqnVrac18BFVY7Ar0CsdHL
         8t6ZfH/VolRJSVFmKz2D65J+wbpa2vkTh6oZXnKR7/MsVXmJlC8GbqVHRNdlzENsbp3P
         iVAw==
X-Gm-Message-State: AOAM532h1GfW5JGp2XTxoyXhg+FR6TMosXnvrs3QJ8ztATNGpAVO43bz
	I+jpAATdFb7nyA1qb9PaIXQ=
X-Google-Smtp-Source: ABdhPJwauNZg58tpQBk9hzxL0id6LFCJ4zvxpDL6xTFyXaXnoMUP7JB6yC/Zn52v1XcuKBIHi2gK8w==
X-Received: by 2002:a05:6402:3548:b0:424:2245:8d45 with SMTP id f8-20020a056402354800b0042422458d45mr815045edd.286.1650564127154;
        Thu, 21 Apr 2022 11:02:07 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id l17-20020a056402231100b0041d98ed7ad8sm11836204eda.46.2022.04.21.11.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 11:02:05 -0700 (PDT)
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
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH 0/4] Extend and reorganize Highmem's documentation
Date: Thu, 21 Apr 2022 20:01:56 +0200
Message-Id: <20220421180200.16901-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series has the purpose to extend and reorganize Highmem's
documentation.

This is still a work in progress, because some information should still be
moved from highmem.rst to highmem.h and highmem-internal.h. Specifically 
I'm talking about moving the "how to" information to the relevant headers, 
as it as been suggested by Ira Weiny (Intel).

This series is composed by four patches gathered from a previous series
made of two, plus two more single patches. The subject of this cover has
changed and the layout of the changes across the four patches has
changed too. For this reason it is very hard to show a valid versions'
log. Therefore, I decided to start over and drop versions (Maintainers
of the previous patch have been told to drop them).

Fabio M. De Francesco (4):
  mm/highmem: Fix kernel-doc warnings in highmem*.h
  Documentation/vm: Include kdocs from highmem*.h into highmem.rst
  Documentation/vm: Remove "Using kmap-atomic" from highmem.rst.
  Documentation/vm: Rework "Temporary Virtual Mappings" section

 Documentation/vm/highmem.rst     | 101 +++++++++++++++++++------------
 include/linux/highmem-internal.h |  14 ++++-
 include/linux/highmem.h          |  15 +----
 3 files changed, 75 insertions(+), 55 deletions(-)

-- 
2.34.1

