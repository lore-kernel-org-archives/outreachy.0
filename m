X-GM-THRID: 6748514042587906048
X-Received: by 2002:a05:6830:1f1b:: with SMTP id u27mr220133otg.269.1571260868644;
        Wed, 16 Oct 2019 14:21:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:1291:: with SMTP id g17ls14527otg.11.gmail; Wed, 16 Oct
 2019 14:21:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwzWJxzpy0SOEsfwrJGAxG9fkA5aY1q6S/NVFAms85E+Tq2fdAUtlolsOcDqBt0NFb/fi0E
X-Received: by 2002:a9d:5e12:: with SMTP id d18mr265996oti.220.1571260867706;
        Wed, 16 Oct 2019 14:21:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571260867; cv=none;
        d=google.com; s=arc-20160816;
        b=BWxW0bLNuok9mh4bNKmNn+nY273AnCZ+Y+WXQgNq3hIcFRcoAHzq2PeqslGTq9qUCX
         wo4+uVNUlK5cyTkBirHO/BKInTjpKXbIRqAXSkOEbTbPZRkhmO+bAfDgngaQnm3B+hm8
         hR8TetCIWVovT1okCNyOYz8g3ND4NWe+rXkFFV2bbJRMcUSmB8w03oPVP9jEk6KWNjKf
         pwN1D3z3bIIKfaKaZxws55ODg49FPOmqCI7F4VcaYRZs+t9zLb7KRL50qHfbwbATzb8t
         y49RV8+/VtnCm3fi+8bATp2fp46yo300tWvkZD2gl5hRhGWWKkEcTGNoBoQViHAqpp3k
         sZjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0rhAnKOo/oMxtcCuFgcmGghvoB/1INvT8sGdJFnTwS8=;
        b=jqKkAS/UODu2W4CtViWcpqVss9VdsduJHG5ZMKTIMxrcy0xJDJJjCwz/XnO4oQseUh
         3A+vLPddOLCNH/m7LStWze5KtSEcRkZLmpRg0YVF/De/t63TR2pRTTCoN/SYJUnoVH+S
         f1u+miukjhfZnLiOFjbSXEYey/f2QMnlzGgK4R8xBxJFGppw0WkTiW0TNsL1e9lwydYy
         U4A8Y6xtCETe2dnho2elB9kyHkSp/bwWfQMmd8HyeJfXVMBfGMtdzj9KlNc/jEqP1Wr/
         DYzDI3uMkTljbw7etGxplpqLSJ1F5IvnZoSzgFWP5AUaCM/ooVdb4bOulaeXDF3jD40R
         EHZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rWvglMxn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c136si14983oib.4.2019.10.16.14.21.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 14:21:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rWvglMxn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id y72so166616pfb.12
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 14:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0rhAnKOo/oMxtcCuFgcmGghvoB/1INvT8sGdJFnTwS8=;
        b=rWvglMxnOw+KN7x4RUP7VNvN2BFevNwc8V8DzgZAJJCSp9fw+J++cMrsli5RPfsC8H
         8e7BHscEIAF+Z3yKZs/8HhCjb89it7f1okGfKqitnHR7ImaNPcdb+QBm/JnWO6RbP+RW
         XN/ZjNEa6LjdZ0pPdw6FAjlmLEGzwied1yZ+hUh090kzWFlhn7Asd9LMqOUhVkJV0ltG
         +WUKCsK9zTPn0Te9AVx0PJPfuuIzTQgs4r5Vcv+45Vv94uqRJm/2TJykx+Kq8Jl8gnmc
         Mj69cLWWhV5cMl1r4A9RTDj5yjlgjHk47C9BURQ2TAr7/TwMQUutDiyUdHhQ7zC8y94k
         ZNew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0rhAnKOo/oMxtcCuFgcmGghvoB/1INvT8sGdJFnTwS8=;
        b=lR6F//InaWs3sP6I/7ZdxqdMXHS4G2pMwMDDC+PqEhRHKdUb4zoXYU4XTIwXubXxyH
         yQVz/4ej9mRD5jI4pDAtlESAxvTUeLokgDEcw+At+3Ke6ztwLL8YpgVr5deecpUOu0AF
         3uD+/nPIq3IFncOHPrQ3zT5MTjFZrLnLqRfIKlWfyrXEcOVZsqHmAeIUaVpRyv+3fTcG
         fBSIFPNjaTwoH7a7l++EIM+nyzQgZGBZk1GGDcofDAMt9mTvC+xi6Ujrr93OjLLFYbnl
         8633ndGnFWyVmbBTVFQQyfrKL0JryXbyLrMH+68mFM4DPGINP5zQjUtoI3A7HyZCTFMB
         Xjdw==
X-Gm-Message-State: APjAAAVnsxQuKmHYSc5sWL1El4nnSYjrnCMHAjSBj+taeyGsHzjmv940
	HikPT6vLoCWTnbJ0nGOIuPU=
X-Received: by 2002:a63:10d:: with SMTP id 13mr219624pgb.173.1571260866997;
        Wed, 16 Oct 2019 14:21:06 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y66sm25787857pgy.23.2019.10.16.14.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 14:21:06 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 0/4] Edit CamelCase in sm750fb dvi and sii164 files
Date: Wed, 16 Oct 2019 14:20:44 -0700
Message-Id: <cover.1571260724.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset edits CamelCase naming in a group of dependant
sm750fb files.

Jamal Shareef (4):
  staging: sm750fb: Edit CamelCase in ddk750_dvi.c
  staging: sm750fb: Edit CamelCase in ddk750_dvi.h
  staging: sm750fb: Edit CamelCase in ddk750_sii164.c
  staging: sm750fb: Edit CamelCase in ddk750_sii164.h

 drivers/staging/sm750fb/ddk750_dvi.c    |  68 ++++-----
 drivers/staging/sm750fb/ddk750_dvi.h    |  64 ++++----
 drivers/staging/sm750fb/ddk750_sii164.c | 185 ++++++++++++------------
 drivers/staging/sm750fb/ddk750_sii164.h |  40 ++---
 4 files changed, 179 insertions(+), 178 deletions(-)

-- 
2.17.1


