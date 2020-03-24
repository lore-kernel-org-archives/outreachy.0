X-GM-THRID: 6807521221589073920
X-Received: by 2002:a2e:8e77:: with SMTP id t23mr17091132ljk.221.1585046759509;
        Tue, 24 Mar 2020 03:45:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5310:: with SMTP id c16ls555702lfh.1.gmail; Tue, 24 Mar
 2020 03:45:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvbdNgVK9iV4jxhyOOED1yC+H1nd4mO8DvXFoGbmEW8+Mh2LkAiSefYrtaQLKvXS6fDdyTo
X-Received: by 2002:a19:761a:: with SMTP id c26mr4452079lff.190.1585046755837;
        Tue, 24 Mar 2020 03:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585046755; cv=none;
        d=google.com; s=arc-20160816;
        b=JiSjyLtkGAeUn5hMGtfp2gFrsInoRaeFf38bFsa1bhds7AiEF1a0hZEUsFQ7bjq8u+
         jVMCKGhaXDyJjvqJfd26JIBJDx8JUxWbiV6LuBZ7Z+UmjGe7gHz7Oab9gtdJNhcLFuAa
         DuDHs0tpY+zdSX8MLDGLHoa6vx5eRhi7JEh2kBF68N/eLz0DJwGR6Iz0x3YknoJs2duk
         pJtfQRSOdGY8GyDVuzL1b5TjHpziecHXrbxcd5pQQbwOqpG8BP0C61GNKDw8SmuvB4y+
         RRnL82NOAB5d0mvxSf3xq5S1XRlfCOA924KxaVIz25j5e1WyDI3JvyvUa/Ot1zpo8Wl7
         3aQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/QqinTwK9y/8ZmT+B97uqwvtRd1RXGWOsp8+L8QiSRQ=;
        b=q7QXS95lrMgo/EQAhwIO6GmwGqHAOJ2etq0R2a9Ru1ACHGylAeWBviACKBjDhj+v8R
         i1mNF+E3FSqsb+xUwz56mtPvmG55Jag2/KvskUgs3JhD/hXFLkjZCTaV7NMtTMHz+qjV
         ici6Uxp2Rct5J9Tp2mtptDF0NPkvqB9L0fQQTKPvL1IwoE0zVhlUeiUcWDSLUTY2U+zj
         T33+3FKjVU+noGqaSKMxSCRCHZrjfQ+NPn8t9+7oDgZYvQqaHpHUvfBpV5C/52sXH9Sa
         reTjn0+fTGm17jy+hXh6XhGKFXhsUsPB2DbJ889sITJOFnD7cFsJS5EHgphKwi5YqGrx
         NuZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QW7bCxot;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c15si824862ljn.3.2020.03.24.03.45.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 03:45:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QW7bCxot;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id m3so2894760wmi.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 03:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/QqinTwK9y/8ZmT+B97uqwvtRd1RXGWOsp8+L8QiSRQ=;
        b=QW7bCxothCvZaFHyNjm+wQfGd+DLWVUpr3D9U5QYboMPyf2NaU3THO+hf6mA00SvM/
         HA6Jc0k9p4zB1bmZZD3g7ENHiW3CatF2CBqtbmIsxCvMoRv/vrTq14uLmIBTBfbUORVu
         SN7utmAehu5WexoIc4rWaCj17mdS1wbqfLqkTRC6rVfDIhessW9dU0be+oOviBoVheyl
         o385S5c1amL9v/Gh3Sz10cQJekDVugrKJhETZbeFx/0wdWro5T3hOiNyorb7NkSKpctN
         XASXOjDp+nIMTFs1gUOzVjeJ/dGor45DONpuT6YTXJpkVR2qn90mYKOrwSkd5AcBq3sp
         um/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/QqinTwK9y/8ZmT+B97uqwvtRd1RXGWOsp8+L8QiSRQ=;
        b=ndyqDuR8p+7yG+7AhU7wk5E7sP+ei/P4tKHwNSOc0tlKgyBUB5siFY1y1+wBGQ0Q4q
         gANL1XhWorKhnGsnpTMF8yLFDG4hfwR2mFqHX5aYiwF3uxyHhfpV5YHYqSUpIk79PFeI
         IDZBvKA64fUi0ksDHIqkUowCgaA1oU3hFpGYOsHlktRWFvAYna78pqE2as36q85r/64X
         wJS9rC0CzhCzq5FJKPncwidbjSmgjaLqaept/Qi+Mh4opkQGxo4vLJlxHX5yo4RlothR
         Za+iwVyleihvXIIDzg0ejc1/7PxWtXvfk8+fUXX8bES1ZgiumgDJ5yGk6zwPcQeZpF7Y
         xwDg==
X-Gm-Message-State: ANhLgQ20iV32UzVlCwxU9mB90VWeyX/gwyisElgRpTq1x+X7iUylXHUU
	zO+Ccs8goK0Ij2fMXnSCo++tH2sXOYI=
X-Received: by 2002:a1c:2c8a:: with SMTP id s132mr4776385wms.22.1585046755265;
        Tue, 24 Mar 2020 03:45:55 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id f1sm19009025wrv.37.2020.03.24.03.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 03:45:54 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v3 0/2] Staging: speakup: Misc cleanups and code reformatting.
Date: Tue, 24 Mar 2020 06:45:47 -0400
Message-Id: <cover.1585046066.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes to clear Checkpatch.pl CHECKs of
proper use of kmalloc(), and adding identifier names
to function declaration arguments.

All modifications made to match coding style and
to improve readability.

Changes in v3:
- Adding Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
  for both patches.

Changes in v2:
- Drop the first patch in the previous version:
        Staging: speakup: Avoid multiple assignments.
  This code is better with multiple assignments.

Sam Muhammed (2):
  Staging: speakup: Use sizeof(*var) in kmalloc().
  Staging: speakup: Add identifier name to function declaration
    arguments.

 drivers/staging/speakup/spk_ttyio.c | 2 +-
 drivers/staging/speakup/spk_types.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

---
2.20.1


