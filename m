Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AD67A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 12:55:44 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id i11-20020a9d4a8b000000b005cda3b9754aso5387117otf.12
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 05:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zm9GfdANLktexLnSc2t2HLTF4hneluEodUT1P1kDEsM=;
        b=hqpExlYNzkwIX37Hy7SHOLnExYYUGG8vNf/6n9iAKjl5YQzWvYMgOOIuE2PmHkVlId
         8p2hIYnz2HLmhSYdOwsAzjY/APN2BXnUw/+SINDligXdzFGG3E1vx0GomViz5E701Hu5
         +YXaVWJpR0D9lTq8jjEGNXIAYwlJNJ0x0VaJxyrxdsa7mWwQTsd1yMHq/havwPdPp8lH
         gE6GLCQsPBCZFgC0GGJHYFfoFUfQ8JMLuORrLRTgNl2GvXnwkUPpoTK9WNCU9xaO6yCF
         AN4YMsRpo4Ng/fPi9zygy3b0diFDQQtg3fmBU5p3mJJNKSkssyLATjOAy6FeI8xFj4wc
         ctLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zm9GfdANLktexLnSc2t2HLTF4hneluEodUT1P1kDEsM=;
        b=5LCPKyJwvMzJImNGUxZ/JpT3n10PyYwWA7uyyG+YqpN3snE6yNT4y8qV9kaNilGrFt
         vh51FKHF0csa6amAT0mA50hzwzZv3r9SuoMUWxCNTixhJBiAH0ifNXmCVWQWZ2GLg1eK
         nNXKrEyIyrYQgwXPvOESnYHzJA76nQdx/+C2AEFqJD6ZXlfcLI1pk84dMd1BXWKieLSt
         LXrIyNugWb6rp1aDZ3pz58lJf+y+iBmeJfjzF8sUq4PkjaGxqjmc8mi5IXtZptUThDA0
         gCQaRMLPhYv1Z8AICGJG9DmC5iKpT7a1Hz0DSlJ78z53aqBMUXM6bBmwhm0th+9EwpHp
         E3Ew==
X-Gm-Message-State: AOAM532dLXBP0WYC8+bxEQoXmmNYxwuuPw+IRbP+F4CjhbCy24zCPOeN
	kb9jmpFpf6OFCTnrUvV10tU=
X-Google-Smtp-Source: ABdhPJyNyko5expXH8i0LaM0d82/FWE6LtI1dFtVxCQad4UDosaAE16fqf3aYknTT7loeHX6IM4g8Q==
X-Received: by 2002:a9d:7608:0:b0:5e9:5b29:bef8 with SMTP id k8-20020a9d7608000000b005e95b29bef8mr1628062otl.368.1650632143462;
        Fri, 22 Apr 2022 05:55:43 -0700 (PDT)
Received: from bertie (072-190-140-117.res.spectrum.com. [72.190.140.117])
        by smtp.gmail.com with ESMTPSA id b5-20020a9d7545000000b006054e5f6703sm691686otl.31.2022.04.22.05.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 05:55:42 -0700 (PDT)
From: Rebecca Mckeever <remckee0@gmail.com>
To: outreachy@lists.linux.dev
Cc: Mike Rapoport <rppt@kernel.org>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	David Hildenbrand <david@redhat.com>,
	Rebecca Mckeever <remckee0@gmail.com>
Subject: [PATCH v2 0/4] memblock tests: update style of comments
Date: Fri, 22 Apr 2022 07:55:34 -0500
Message-Id: <cover.1650631746.git.remckee0@gmail.com>
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
coding style.

Rebecca Mckeever (4):
  memblock tests: update style of comments for memblock_add_*()
    functions
  memblock tests: update style of comments for memblock_reserve_*()
    functions
  memblock tests: update style of comments for memblock_remove_*()
    functions
  memblock tests: update style of comments for memblock_free_*()
    functions

 tools/testing/memblock/tests/basic_api.c | 350 +++++++++++++++++------
 1 file changed, 256 insertions(+), 94 deletions(-)

-- 
2.32.0

