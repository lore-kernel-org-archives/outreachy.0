X-GM-THRID: 6810515093003960320
X-Received: by 2002:a25:84cd:: with SMTP id x13mr14216431ybm.476.1585764228959;
        Wed, 01 Apr 2020 11:03:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d6c8:: with SMTP id n191ls106167ybg.4.gmail; Wed, 01 Apr
 2020 11:03:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypJYlht5ACes9xVsuTE4cf3s89McBhB/3q6erafj9LNUV3CqzbKB6giWI7MCR8IfU4rCuMhN
X-Received: by 2002:a25:d095:: with SMTP id h143mr2254423ybg.472.1585764227534;
        Wed, 01 Apr 2020 11:03:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585764227; cv=none;
        d=google.com; s=arc-20160816;
        b=pv2obe8R11nzYSRCnhuOwhLW9lnKb9/CPF8ndzZq2QKtm9kUIhIjhlMOHt2mpDK2DY
         2iMG9uAyWD378jXL+G03YC9ttqh8Bt0A/vcTJhFHBx2LB3awPQj2dA9bM6t2bMLVnw7n
         J7QL71gk85vKIOaD8GEqXCCc6876FDf+laGUNEPEAdyDsGgAl1wMYGp6DOY3V5f/q8/e
         N9Ep+Z+QgP6lIY/1EyUhqd2adu3+7jsbIH+l2DoXqNYqomQ5T8YebLpEHtDPbya9IReA
         z9cV55L95Z4HJLKdgVnONbxSUClmlBohQ+bdEPhRhR4P1CMKpWXH377gvLYFKJiijSQE
         Hn7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=JGh/bT8fuUxPj8HHIvOnKyr1Thwk/bnSK9+Z9/vkCPQ=;
        b=PXMxzcpKcEPCvAs07A+b2nqoAsEtB46fZQfyveOdvzuEgtnEaJq7OmkaSJk/D8Sh7/
         i1fNYzBuwD/sjhzjoY3SOg6wUtu93xV8iwuwuS0xgl4tDp+BHLtjJ//Ri6xnhqakylEc
         ZDUFd2PHOfJhjuLTLMwUDi6gBvTnImb6a6RvdeNkJk2KyNVEghwji4Hm01zBR7+2E8t9
         QZIz14cr8d1eyH/1MzCA9wt0MDh6tXuuB6BqnUUlRKjPI7Ug2z+RG1HAkD3VBCBkKpmH
         w2WsJwk23JXr4lnrbDeRS9EQRCmjtVSryMNXmD5G6mnKo33DsclmB54Agl14bwnjCmL0
         pRsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MsU90FPf;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id l1si239488ybt.2.2020.04.01.11.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 11:03:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MsU90FPf;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1033.google.com with SMTP id z3so366434pjr.4
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 11:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JGh/bT8fuUxPj8HHIvOnKyr1Thwk/bnSK9+Z9/vkCPQ=;
        b=MsU90FPfPpcxoPz6FN4nqogR/Lr/X1garj5DTFekku7TRYJXNCPiE3CNAJhuV1cby/
         kXQ0RpkmuR7DnZhdUpm9TwkrnsEOfLlq/+HTA9Hp4GkwzjMG6J9hhyYCa2fMB12oqHyJ
         KUoULyztquQf6NOHbV6cNGRMIC2Z3pC5XH2HVu0u9DFAT2zcudPI3F03XfSknQZwrH99
         0bcbk82It+KodCfdYXz56GNddzqF0cADZeEbOPkA3eZKVANR4Lin8QGcuB5KqZAfVGL7
         +suFgwA6/gIMSzvss528VGQLVIfdbRmtAdWuDN243UyRG8t5aUis5MSl1pflQCIAzUqF
         bMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JGh/bT8fuUxPj8HHIvOnKyr1Thwk/bnSK9+Z9/vkCPQ=;
        b=V6XPHh7teNWComUya+isrtgDHTX7887RzaKyGo3uIAtgfAexcpAOEUYz4KbXpM9HUp
         v9kBhTJX+MMcxzmohamk2CZEq9K4fvPbFR0nnPTuloxFLk2Zw8JRE21mq88wI9ICXW0t
         LRqDf2FRYvSSijfIv6Gmmq++YAYLBwgM769oKG/+WkfAv88y2PNDYdavnU6Yjoo+3fwu
         5Is2/1qOxiQ5WQJhMqcMZHbT26P3qgQ9orwy9k8X9h9Gxl7Uc274AptHHpKI0b7iEjr5
         asMyOK//vwjRvqzF2p7wlkJjpxnKr3jSsqCE5MGOGOsiWdYV9xfAWQHVKYBVU/d1Zm1j
         8HQA==
X-Gm-Message-State: AGi0PuYDztsMGrb3A5wTh+63gj0dTRxKCaR0EH/E+OXW71reQK8zG9TM
	c8HlyDhNg+DNDhIh1gcFAYU=
X-Received: by 2002:a17:902:ba08:: with SMTP id j8mr10223649pls.70.1585764226639;
        Wed, 01 Apr 2020 11:03:46 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id ci18sm2131896pjb.23.2020.04.01.11.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 11:03:44 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	julia.lawall@inria.fr,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v3 0/4] Staging: vt6655: Simplify statement logic.
Date: Wed,  1 Apr 2020 11:03:38 -0700
Message-Id: <cover.1585763457.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reduce code duplication and complexity within switch case statement. The
goal is to improve the readability of the statement so that the outcome
of the statement is more clear. Checkpatch identified long lines and
other formatting issues within some nested logic. The last commit in this
patch series addresses checkpatch warnings that were not fixed by other
means within the series. Some long lines were left under the rationale
that removing them rendered the output more confusing.

Briana Oursler (4):
  Staging: vt6655: Limit return statements.
  Staging: vt6655: Move rate determination logic.
  Staging: vt6655: Eliminate nested if else
  Staging: vt6655: Format long lines.

Changes in v3:
	- Patch 1/4 - 3/4:
		- Substance unchanged, add Reviewed-by tag from Stefano
		  Brivio.
	- Patch 4/4:
		- Add curly brackets per recommendation of Stefano
		  Brivio.

Changes in v2:
        - Patch 1/4:
                - Per Stefano Brivio's recommendation, remove curly
                  braces and unnecessary else clause.
                - Remove unrelated newline.
        - Patch 2/4:
                - Remove unrelated newline.
                - Change to a clearer patch subject and description per
                  Stefano Brivio.
        - Patch 3/4:
                - Avoid beginning commit description with solution, per
                  Stefano Brivio's advice.
                - Move declaration of len to the same line as other
                  unsigned ints declared in the same scope, change
                  recommended by Stefano Brivio.
                - Remove unrelated newlines.
        - Patch 4/4:
                - Change patch subject and description to better
                  describe change, per Stefano Brivio.

 drivers/staging/vt6655/rxtx.c | 119 +++++++++++++++-------------------
 1 file changed, 54 insertions(+), 65 deletions(-)

-- 
2.24.1


