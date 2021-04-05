X-GM-THRID: 6947727064751407104
X-Received: by 2002:adf:e4c7:: with SMTP id v7mr30425618wrm.245.1617643764363;
        Mon, 05 Apr 2021 10:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls2955837wrv.2.gmail; Mon, 05 Apr
 2021 10:29:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrEaJs8V7YBW8d+bi/h1TVWfDEu0kRZx2WLCDW1n/YnabCuvAnP6GzYuHCRCQiKNZIrkTb
X-Received: by 2002:a5d:4d89:: with SMTP id b9mr13688769wru.356.1617643762901;
        Mon, 05 Apr 2021 10:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617643762; cv=none;
        d=google.com; s=arc-20160816;
        b=I4CwEqUdmALClWZl4ShkM1R8Db7jYf8x8rRGY6iYMj6rIMnGja9MyLaD+2rIFNHWE4
         8pFchThBhY/LSkFdwr8xT2dGmfAEwR8+sJj1zlXmZpq8GbtVIrv6Tsq4euavaBJy0r63
         ca8ehH2Vwd016f+2rrclg5H4vEHbvvWSgplIwKefHI9XXCvaqbIvEqRKRIdzv/juyCuG
         +xNL7hskY0BtizkQMsM5f+GYUJbocmJRV24qbAO2crGkk+fnigLU4ulGFGkU4K6ix15F
         +W74KYW8zzIttrHMQwVbTY5RR+KNKYerFJ9xNddYdwqJDKLn5TVH01jhvoUIsnoj+SeZ
         JPgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=islgxB5cX7ryyAEWQujyZ6yBo7lGXTDZIsEo+AqSaLI=;
        b=gYCDeg8Xd7qKO/9nxsJJ7gar2d9RP2Ye2U/Q+gfSVq7plJOaURFKmcW+6M7M8ZG5aO
         BUrVp+gs/jiaQkc4wszdDjkpt0QxVhsJpSz/WhJ4YaofyWlF+Zr6m/SjEh1Rr++DG1fz
         G70xorxfGNYfoS6lsxSrRgpBvFQkL2A1be8fItskKfSGdzlXHEqSjaBdbz+sIa2LDntQ
         8NRcQWjSCcQzGdoyPL3G8vDfUKSwz1GIjI+V+7U8ipkSiGTPE+QNwyadBjPXpYAeJ3sM
         ywnM312+cl+6D5DElkScyxYxS1dUPJqunlWWdCyyu3m2QaH8YaPEU+qUukL+PAd5P/vn
         RkLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o32v2vqh;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com. [2a00:1450:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id k4si532956wrc.0.2021.04.05.10.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 10:29:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) client-ip=2a00:1450:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o32v2vqh;
       spf=pass (google.com: domain of martinsdecarvalhobeatriz@gmail.com designates 2a00:1450:4864:20::42a as permitted sender) smtp.mailfrom=martinsdecarvalhobeatriz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42a.google.com with SMTP id x16so11519480wrn.4
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=islgxB5cX7ryyAEWQujyZ6yBo7lGXTDZIsEo+AqSaLI=;
        b=o32v2vqh2JB2QYn2BWTwMD4LCIFxgyvadEJXKeNx02aw3z9umZ+J0PvTgWXVCnevv1
         wVg5BT6WxgPwfuZdlwkwD/5vUrCpfKz2stpoKVd7Y6LdUdAV9rjZuFSYRynZqQekY2QR
         +DB9+P8k8fappSrY4B2GwUzEKWkE4hDUwCLg9hk0mzsDo/90i7RcknEbzggN3ltgm1vQ
         iDZtN2mGoP0NE99xwCiSX1ygPfdGrf6EDDEU8l9/H4u6bUC2u4kiBWctJNJK9L70W7hF
         9m7guE2sI9tRZIDvzovoouvvjBfGlFR8//NdroUCBZjA5iVGEMdNsl0hw+F+tIYt83db
         7FGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=islgxB5cX7ryyAEWQujyZ6yBo7lGXTDZIsEo+AqSaLI=;
        b=gQ5mntUoXQzE271czV3UDdYcatxpuzp/DkdAaqNvbaPkGVu1HwnDsNuUEf2N86t4rR
         pIifZkDChb/pLFHENimwdKx4/oWazLSgX7NCs0CTlk3Pk8x6bOCZdgBj7HFza4Y7khYK
         9VMsrIBvxINE3MBRT1YnURZh81U7dAtR4cVKm5SBikK/JJpxdg2/mUTBN9Uvw2ooDDDV
         Ap5WPnWBxJMLaM6E291dXPlInvFVgBIxYxG4SL8czhwjJy9cSDtGB9z/P9gNEvHQJGND
         A8O3JfvC6xORHqJffKfVvwKNRZ+3XkQtjH09457mIXhUDyey+6v6D7EeXkIp3+uyjYDA
         UAEg==
X-Gm-Message-State: AOAM530WhDnUaeNZrpzQpFDoQKnDnPM3mNwTzsNJw4tyAaYzdOyqAMaW
	gTZ6ZbShRWbL0+maYV652rs7pF2Sos759w==
X-Received: by 2002:a5d:5256:: with SMTP id k22mr30836945wrc.162.1617643762740;
        Mon, 05 Apr 2021 10:29:22 -0700 (PDT)
Return-Path: <martinsdecarvalhobeatriz@gmail.com>
Received: from bcarvalho-Ubuntu.lan ([2001:818:de85:7e00:9a5b:98e6:2174:bf29])
        by smtp.gmail.com with ESMTPSA id x1sm17858699wro.66.2021.04.05.10.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 10:29:22 -0700 (PDT)
From: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: rtl8723bs: core: Patchsets cleans up in rtw_ap.c
Date: Mon,  5 Apr 2021 18:29:16 +0100
Message-Id: <cover.1617641790.git.martinsdecarvalhobeatriz@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Patchset of cleans up checks of "Blank lines aren't necessary before a close
brace '}'", "Lines should not end with a '('", "line over 100 characters", 
and "Alignment should match open parenthesis" in file rtw_ap.c.

Beatriz Martins de Carvalho (4):
  staging: rtl8723bs: core: Removed extra blank line
  staging: rtl8723bs: core: Ending line with argument
  staging: rtl8723bs: core: reorganize characters so the lines are under
    100 ch
  staging: rtl8723bs: core: align arguments with open parenthesis

 drivers/staging/rtl8723bs/core/rtw_ap.c | 137 +++++++++++-------------
 1 file changed, 62 insertions(+), 75 deletions(-)

-- 
2.25.1


