X-GM-THRID: 7024064041486123008
X-Received: by 2002:ac2:4579:: with SMTP id k25mr3375026lfm.144.1635417351981;
        Thu, 28 Oct 2021 03:35:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:31d4:: with SMTP id j20ls1880004lfe.2.gmail; Thu,
 28 Oct 2021 03:35:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4H5IS0hZK8PNHQSb1Xd63viQhOI1EO3hHmsp11X+aXXh0pEgkyXSNwe+NWMBfJEC549Ru
X-Received: by 2002:a05:6512:39c8:: with SMTP id k8mr3214308lfu.81.1635417350415;
        Thu, 28 Oct 2021 03:35:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417350; cv=none;
        d=google.com; s=arc-20160816;
        b=ID3noMhuiLWSkfFr+T/wbN5ahvB5hCNIkeeaht5C5Tmg3qAcXUrxd7+zdmj6b9i8Zp
         M0i90RxNwbEzhgiSD0jT9ezeezJyS4nNhgwfzx6WS/P6iv470cOorQVUXNPrQaFKIvHW
         5r3i0UY/bAHcicmXOIAr97UMrq9bE7WAobEM3XQc+Vyk8aon25SFY+Cd21mCTwuiUPfM
         tH3jxSS8Meq+lJvCl7sR9fKHNko48q+pqt1vXIBRwtw9wv76Uoyq7UOxeNUV3YrUr07y
         A8i1BpunEz3xtg1OMLprsWWrXWDELQr9fkiu9e7QvHs345Z5OCRW8ESp/gPU3vkeKToA
         9VUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QAaMfHwdtZJ2KjW1qioIa8NnTSpvgBhACsmEL5jElvA=;
        b=lRAknUIkMtZLCBmD618uIWQrfHmKEYIvV+RvVxPHKk0zDBaiHx4UTYVHtRrgkYcgIF
         Sl/P5YPGMV1iUpEENMuZ2dZ0ga4B3JvgqXpdiKtNiRKLPJh0IxXF8lLWtVdti4iwIs0/
         WQ5wnDXlF87MF4ZIcK0Qf5tdBKx0Hu/9yyzriZfHSN/uu4nd2OsVis6oE8Y3mT+IXSgV
         B+loy39HkrlfB5rtO/NpFefiBLQ6PzAXeyPYjlorRUL5QDYNhg51hf6WIWkG093I8oA4
         xBMw4OnrXVcf+Zq7OhajD2kFp84xbvwc7Q0rgJF1mBZOE+XXePLfUXclECU7fahZXEQx
         YzIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SrXsuaZw;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id f20si153103ljn.4.2021.10.28.03.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:35:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=SrXsuaZw;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id k7so9254092wrd.13
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QAaMfHwdtZJ2KjW1qioIa8NnTSpvgBhACsmEL5jElvA=;
        b=SrXsuaZwEiK6GtpGMoXABWAl6voqIoao+Yq95iMx4d1OyRMCXPtTxr0n9gAnl2oMmN
         7tBxoWyyTRWngHQuEAbaBbTi4pF2oH1CV7w+HS9q7XebDP15brABt9MDshafkqWdOaKc
         uL68FjAKJMpKT21DQOV1JAsaxynQQ9HrT2Sbs/OgBQbID89OYM90wAcNG0tA34U9/ilB
         HDPbSCNS76EFk4i5Uo4OYuRR38doXyoOZ+jp9jhAqWyvz2tZk9nSWyt6WJjefq0KX0bY
         P4ZRGRei7ZnUeL4uqh4Ro+x+lW2EAGaOq/hQ1QbdoDH+MabS5R4Pt81++glWth1ndQrn
         2RWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QAaMfHwdtZJ2KjW1qioIa8NnTSpvgBhACsmEL5jElvA=;
        b=SAip3MeecLfCfKJ3uO32FvNttxzGp7A6lh/squadtpq6SIezBVJJNhtzwOKEVyq4Ey
         8V0LzKoefnHNi39UhgbiQRyfsaAwudHogecq9WJhfZwS/9Fam/eG4F+4GySen05DdgYa
         NIokGEVOEtjmF1pQJ8FwR7QE3lzUwRyaGHpzRZl7CIWTaqxl3NMEhxbm2X4fvOiVzTup
         px8cUH5sx9PjdtIyKTNluZLzPpRUS8SZXEYUOnVXGvdnEN2P7fucSZHBKU7sWuODAexE
         LtwEO+9dnA606YBNt2JdVTeZfoG3ntHI2iO1x0RPOfCeaFY7U1FF4OJ7IBt5OBJcGbHM
         rlxQ==
X-Gm-Message-State: AOAM532MgD5OKr1YUmL+g5ZdZT6f8vjskRA+Mr5aGVifijS2lHQdquMt
	xZxYRqQrRjZO+Pkxuqm2jQqN3zC0kVu+JBu/
X-Received: by 2002:adf:a387:: with SMTP id l7mr4399996wrb.214.1635417350063;
        Thu, 28 Oct 2021 03:35:50 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:35:49 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 0/7] staging: vt6655: Fix line wrapping in `RFvWriteWakeProgSyn`
Date: Thu, 28 Oct 2021 11:35:30 +0100
Message-Id: <cover.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch set is a series of small refactorings of the function
`RFvWriteWakeProgSyn`, now renamed to `rf_write_wake_prog_syn`.
The work here allowed to shorten lines marked by checkpatch.pl as
being too long by:
  * introducing two new temporary variables (`idx` and `data`)
  * rewriting a conditional to switch between two modes of
    AL7320 initialization.

In addition to this, the patch set renames the function to align it with
the kernel coding style and updates the function description.

Karolina Drobnik (7):
  staging: vt6655: Introduce `idx` temporary variable
  staging: vt6655: Use incrementation in `idx`
  staging: vt6655: Remove unused `i` increments
  staging: vt6655: Introduce `data` temporary variable
  staging: vt6655: Rewrite conditional in AL7320 initialization
  staging: vt6655: Rename `RFvWriteWakeProgSyn` function
  staging: vt6655: Update comment for `rf_write_wake_prog_syn`

 drivers/staging/vt6655/channel.c |  2 +-
 drivers/staging/vt6655/rf.c      | 41 +++++++++++++++-----------------
 drivers/staging/vt6655/rf.h      |  2 +-
 3 files changed, 21 insertions(+), 24 deletions(-)

-- 
2.30.2


