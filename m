Received: from mail-oa1-f67.google.com (mail-oa1-f67.google.com [209.85.160.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C43D1FA4
	for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 22:49:49 +0000 (UTC)
Received: by mail-oa1-f67.google.com with SMTP id 586e51a60fabf-d6e29fb3d7so11364781fac.7
        for <outreachy@lists.linux.dev>; Sat, 30 Apr 2022 15:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5n9Fz8Zsn8kPakCtiFy0jX4c/yVGfPmnfdVJ0koknD8=;
        b=YaVFwXh5LEvYeAB5+m7Tad7PmiN+RTdrCRvfLNFnWulLQEJRnnLal2XTv9SA6Mwri8
         FtGyo2+u7RpMtKxD6cqtAcC5FTWgDdRBs3eto49Baf4OofUX36qa+mVlPF71LydVA02d
         kfHPGy+Ln92iHjbMelittAProdxO98VJHHXGhbB1M9skiw+ScvgX/vymH+xgpN9ZUwI8
         y45rNYD7KC/4aqvqnLGAUFbdXFCn05d7+AGaV54gXTIJT7MDI+gwI9am9DnIYuFxUcRQ
         +UtaA/dkukq6WOrAR4X+AZRcYenwQWtTX0cOl7mq26kN3WgUEia9LNSXGlFvCGDYmJoY
         A/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5n9Fz8Zsn8kPakCtiFy0jX4c/yVGfPmnfdVJ0koknD8=;
        b=a45CWWX/WArXXN1Kionp00rZVEdEAhIXHVoMFA1cfTATReEICFxMryCLC972EH6VOF
         CYrjXSldeWefbtgP/C8v5B7biieVrKkhgKIt3mcYz5CGqzWapTPpENZRqiu1oONQ6pLz
         I7oDRh0hrqZWIbecTddDdbnVmCVAzb6tn7HgYH7dVml5EF8mDHqLWbat2CcavF/uUHFL
         mvTTD1XsWGWblMiVpX7kjb2lVUM3tXP0P7QjrnlEjFXViMLyJKOY+A+BKIfCu+2kSJSm
         VRQ46xtPy9Jyl5vN2Es6QYJARY06gQYD8MWfNnAiuU0WU2db9QERVGMRzG2mq0XS1x4H
         B6ag==
X-Gm-Message-State: AOAM531l7DAWNvGoLsDULvQD/CLjh/inDPFwpjuEmLdUKq+V6NZ1W/YN
	IhFjPv5IGCFtU7s3QDwhzy4=
X-Google-Smtp-Source: ABdhPJw0Y7gSX1YwjOGVuarx6SapQCkzTDTX19qalfZFeF7ZdoFwAHVcZTE6a4FoaLBiwg/maBt2kQ==
X-Received: by 2002:a05:6871:79b:b0:d3:4039:7e7c with SMTP id o27-20020a056871079b00b000d340397e7cmr3981788oap.121.1651358988394;
        Sat, 30 Apr 2022 15:49:48 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id k18-20020a9d7612000000b0060603221254sm1286001otl.36.2022.04.30.15.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 15:49:47 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v4 0/5] memblock tests: update style of comments
Date: Sat, 30 Apr 2022 17:49:35 -0500
Message-Id: <cover.1651357434.git.remckee0@gmail.com>
X-Mailer: git-send-email 2.32.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These patches update the style of comments for memblock_add_*(),
memblock_reserve_*(), memblock_remove_*(), and memblock_free_*()
functions to match the style of comments in tests/alloc_*.c and
remove extra spaces in those comments to conform to Linux kernel
coding style. This completes an item from the TODO list.

Rebecca Mckeever (5):
  memblock tests: update style of comments for memblock_add_*()
    functions
  memblock tests: update style of comments for memblock_reserve_*()
    functions
  memblock tests: update style of comments for memblock_remove_*()
    functions
  memblock tests: update style of comments for memblock_free_*()
    functions
  memblock tests: remove completed TODO item

 tools/testing/memblock/TODO              |   3 -
 tools/testing/memblock/tests/basic_api.c | 392 ++++++++++++++++-------
 2 files changed, 278 insertions(+), 117 deletions(-)

---
Changes

v1 -> v2
PATCH 1: 
  Add a comma
  Move separator outside block name
Squash white space edit into PATCH 2
PATCH 1 and PATCH 2: add a colon before memory block visuals
Add PATCH 3: update style of comments for memblock_remove_*() functions
Add PATCH 4: update style of comments for memblock_free_*() functions

v2 -> v3
Add PATCH 5: remove completed TODO item
Add changes summary

v3 -> v4
PATCH 1 and PATCH 2: add Reviewed-by tags
PATCH 1 through PATCH 4:
  Correct grammar
  Replace references to first or second (block/region) with r1 or r2
  Add references to r1 or r2 as needed for clarity
---

-- 
2.32.0

