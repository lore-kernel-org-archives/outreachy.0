Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A5D7A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:33:27 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id e189so9015247oia.8
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 06:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=de5cYv9udGhvYDO7mNwHuK98M+en+qgo8AFwYs9167Y=;
        b=RcwvHmsLpebm7Ci3Xt0BAlj7oa76AW3bGWew8HCMNJxyK1SuDq2YGUAvG97nOq3Eo3
         KsAn8/JRYLPyhgAEfU98ydLP9sr7+kVoFWqn567X8F77dqtAG7xTwe0fG43/CgCcvSuP
         ehqXus3Ts+GejURjxBs5Rm6L9OZ9bIHh/rBLTGuif4ruJVxASyoKso1y87nxpfZkpIn2
         LAZSVjygJ88KEQjUXkUJvF87yuqNLlVvmUojOVtqkzG4IC/X4ag3AvJLwn3n0CgzHZCR
         qOT5f80Qii8tstUWxSnbyfRZFRdndFKnPHKpdJwn67x49JXv+qhogJjE1UhtR5aEXTSr
         NyZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=de5cYv9udGhvYDO7mNwHuK98M+en+qgo8AFwYs9167Y=;
        b=ObrB5C5N1sWTgtBtFQph1nsMzMIC6/c+JBGK7J1WyvI34JJWnjO9h4hfI85RX11kTz
         LRU4iFVF5I5Xi3XqzpdwCU9VWJRTfh9z74MwGE7aotO/ggVpzi7XP4YUyqEniZOvo7Bu
         FE/ARx7XHMD2YliLwiK+UeBRd/QSYliPmRnkc3jYifa5Etbj/8BA636i2tBQ0mr2hZ5s
         FkDSDPXOZmDk0q2r3YCkimiD2AV8kFp2wr+ru2MpNQK5Pb06+pxFlHSoOlwIWID54ebI
         C/J3zRWw7Nl4aISOoB06wqXUxsgrPk0rsdnbFxyihHfU2XuLy//jgqPpluUqOlWiquNh
         VhRg==
X-Gm-Message-State: AOAM5331Tt+/IeOhV0rvIzxfT55Oiv1SqoHC+gcmtv5PtOzd9LhrTNsm
	JHNsENfnhap+TNbt31v6AfI=
X-Google-Smtp-Source: ABdhPJzfVz3jSr2UPzaynpM2Jy1ECjorM1FHE4t1xa2lixCvgu3KZmnZ3G6+f6bpdTXu7Kccq4ASEw==
X-Received: by 2002:a05:6808:e8d:b0:322:bac0:2943 with SMTP id k13-20020a0568080e8d00b00322bac02943mr2234162oil.126.1650634406199;
        Fri, 22 Apr 2022 06:33:26 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id o2-20020a05687072c200b000d9ae3e1fabsm641007oak.12.2022.04.22.06.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 06:33:25 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v3 5/5] memblock tests: remove completed TODO item
Date: Fri, 22 Apr 2022 08:33:02 -0500
Message-Id: <201729cfd08cfe5a8681f815b4a423455263d03d.1650633253.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650633253.git.remckee0@gmail.com>
References: <cover.1650633253.git.remckee0@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove completed item from TODO list.

Signed-off-by: Rebecca Mckeever <remckee0@gmail.com>
---
 tools/testing/memblock/TODO | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/tools/testing/memblock/TODO b/tools/testing/memblock/TODO
index c25b2fdec45e..cd1a30d5acc9 100644
--- a/tools/testing/memblock/TODO
+++ b/tools/testing/memblock/TODO
@@ -23,6 +23,3 @@ TODO
 
 5. Add tests for memblock_alloc_node() to check if the correct NUMA node is set
    for the new region
-
-6. Update comments in tests/basic_api.c to match the style used in
-   tests/alloc_*.c
-- 
2.32.0

