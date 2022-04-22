Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1577E7A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:33:08 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id i3-20020a056830010300b00605468119c3so5458105otp.11
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 06:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5XP4fJ6AI9bNtZNyc3f8poAVuF7t5smExe4sN8IlP+I=;
        b=Rkg4hoiOhuFqWTTCStiFTfQZS2ZqqSJIUkCGJlCDV1Io5sEqb/b6zLPkmAQZ3iuWid
         F8czCNbNfCoKOz0I+fJvMvZeiPWMFAY1jE78+GY2AjRQg9OWMu2f577mAxJf7i/mbN3S
         5SJb2SRhBbBN+HvNt4Jlr+fthzkx9ktF4pF4gix2v1CYw6SGs+b0LeeUERyk2FYlhkg9
         qB73exR4oOoAe1N2Cvma1fN49iAxMxXVhhGr/vzRrR1LfON0g8/m4lPrh8Zd6pzzr/Dd
         RaDtYwzeH+4fWeww0QsCCzJ3Khr3h40SwlxOGrGler8G/8vGiuns0Be9uamuija60ou0
         ShGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5XP4fJ6AI9bNtZNyc3f8poAVuF7t5smExe4sN8IlP+I=;
        b=kl92C6TXpVfZivB/hM4WU78hrIR3VzoiIue+aVCCwzzG/YhJW9toO/avovKxM8xDPP
         +XhaFmHRdYBfw7L47PSHYuxByRMharitVhhNTA5W/tZvGNZ3zMvcWWpASyHiBz81rHCt
         Dt+b5GIsInMrMR9T9kkyGAiZwWPgkWnXmd2OysCO+9xL66PSdwWhaFQ2a3dCw/SP/C+v
         6FvNahAVizOdeNKIgtcGF7OHUWHlVBHAtiy2ajY5I7zOusK8/1D/kVr+Sbdv7WHnhMt1
         +aDyExni4cRqJaomAX0zrcG6hacn96UuiWnzWuNtCv9Z9yGOMu56eBXhbtzedW/Xtbsg
         H3WQ==
X-Gm-Message-State: AOAM5326JqVcfIcAAe34cjFEZm/GBCWEDTErestknJNQgTNbtTHLbSqJ
	KgOd2DVkBk4Czrfb9nJ8LVo=
X-Google-Smtp-Source: ABdhPJztLlSzomtYdfFbLW3oDBC/unlSEQKTz3dw36/NxDDn5+baM+dCdhTam+rTk5K18i5tWDwfcw==
X-Received: by 2002:a9d:738d:0:b0:601:7f05:a729 with SMTP id j13-20020a9d738d000000b006017f05a729mr1666882otk.39.1650634388090;
        Fri, 22 Apr 2022 06:33:08 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id j5-20020a4a9445000000b00329dab1a07fsm771915ooi.17.2022.04.22.06.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 06:33:07 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v3 0/5] memblock tests: update style of comments
Date: Fri, 22 Apr 2022 08:32:57 -0500
Message-Id: <cover.1650633253.git.remckee0@gmail.com>
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
 tools/testing/memblock/tests/basic_api.c | 350 +++++++++++++++++------
 2 files changed, 256 insertions(+), 97 deletions(-)

---
Changes

v1 -> v2
Add a comma in PATCH 1
Move separator outside block name in PATCH 1
Squash whitespace edit into PATCH 2
Add a colon before memory block visuals in PATCH 1 and PATCH 2
Add PATCH 3 and PATCH 4

v2 -> v3
Add TODO edit (PATCH 5)
Add changes summary


---
-- 
2.32.0

