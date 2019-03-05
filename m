X-GM-THRID: 6663618170330284032
X-Received: by 2002:a67:fb13:: with SMTP id d19mr3103018vsr.8.1551826111137;
        Tue, 05 Mar 2019 14:48:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6805:: with SMTP id d5ls77430vsc.4.gmail; Tue, 05 Mar
 2019 14:48:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqxjQkN5S0j9SpNdpHHHHtSI8Veqf9e2v+3ygZZkViLEhc44o2LYNWsWv+nhIUJja4tYTgW8
X-Received: by 2002:a67:fb59:: with SMTP id e25mr3082843vsr.5.1551826110551;
        Tue, 05 Mar 2019 14:48:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826110; cv=none;
        d=google.com; s=arc-20160816;
        b=HS9BAcnPlraCd0J+cbWhX8xJlERXUqb7/FMo29SDYCLUH96hLsrXeSKjmKtPRPuJ9F
         ljI/dLIhIIMeY/LPNBkQBwI2sh2En7uc/1r7Xs/553253lSgkPSbYkjCfDIehKAqH7By
         Z9lkcm4SL90zzt42tl2rThXDiaJFVjCp89GEiJjuVinKl/0XpgEuFj+4kzD0dTeJYA8k
         f1dgMZ1HZm/1pwfjYjagwMbc4ogpTYVTM053xXHeB5Arts12LDxR6Or6RtOFuQmCmnzy
         Yj05dW4KhVvvGZiftmRp0RjpAZpoJDW5XLY0LGGjOyE6kk0npOg7QgtwQRIVhjK3sdlc
         P/LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=JXxPAsfFguWlRg/862o401u2DPgpU49TliUn7t5oaBk=;
        b=TBicK2CvPDJOzrDuliGT52iXQ3NGDDrfwD45DWWsEXHcw32aDvwagZyHs9Ot7AUqVm
         0WtkoX2VeTTFpYecAZvg6dnfkxPpw+Jxn65qoSkS6TC35PJzKnZJrCshEvtyKmZ73kEH
         0YqXi6xchSdcdSXw5I8kJP+8UQ3BWVR42petwyQtQkoiHCzdPdUtmt23fM5cIRYDRg8P
         Fj1Yg9vx1n0hiWxHztlGpSgFVUCmwjlq82Yd5XSg2PTbiwgRSMqTkKr0lZvdWwoEmUWU
         RlWR3fulTWxixTJqt6eLVgtsWqVrXP3en6lfT/QAUHviMu5YL2UaVMEoM2a/aDg6pLkj
         l/OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vi92LfHQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q85si580913vke.5.2019.03.05.14.48.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:30 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vi92LfHQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id c18so8928847otl.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=JXxPAsfFguWlRg/862o401u2DPgpU49TliUn7t5oaBk=;
        b=Vi92LfHQ4jNfl9INVb6I5ySzW3s5kcIaqWXLkKRr++ojz4SBHYMWdJ5+/nV+1EEkW9
         lTHmSfyuDQllj+HbGhF5Hg+ikCp+dfO8RnJuRwkLe4t3j0Ao0/4RaG17+jEOR+4L0v0i
         bsYkGhDbHW4vcZ2N/YYloANJYbZ4+haOdirH3E8YLWyLjJ1SR/yH3myx4xF12wUfyJ4L
         3xVmYayvVL2Oynsj3iPEQIOnyXWi2rj6wgsITNGYPgl10mWaNAxI/Il1Fu/En5QtRnw8
         4en6C5mQGMe7cvaC/SVcMPiTf+mhe063VSB7Uo82WvQWRQAuvlryjzokd9jLJveW1oDj
         +Uww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=JXxPAsfFguWlRg/862o401u2DPgpU49TliUn7t5oaBk=;
        b=aUPEgS5V7AYat5gWjUbop6kY0cko3NZCILACHU7F7qGm9o2NZzOmRYmMxi1QOmqQq6
         rvinRB/C5pqB3qHdVboYhKToRSeqRHVYzso6hJjmCzSb331fFSQ4cKFcXJ+1QTQNdNfN
         dpa+2raBjifzMBs0R/lT8AQtrNTZY3KMvFY1sLcXGx6SQq73jhzr7K2pZVAgOrzkfBe9
         jIxz7nzJy8B7C238PhmwY10EktaL6Xl5mwr463GwDnok9wig8l4OGwBSuMhiqP0Iz+Fp
         +ajkesIEkUVkrkmq0avCyId1lC2YyA+3rhhlcvlf+OtrfXhmOso3BUgKal02tIs8erIl
         mI9A==
X-Gm-Message-State: APjAAAWPm1pDYz73ZtaKeOMrvP6PNQuBqbEcfFfAEU2YH03nnPJMsYvI
	O8SRHUnIWC6E1Fx4ny3RvCY=
X-Received: by 2002:a9d:64c1:: with SMTP id n1mr2441602otl.187.1551826110201;
        Tue, 05 Mar 2019 14:48:30 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id g2sm4171779otq.24.2019.03.05.14.48.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:29 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 0/6] Modify checkpatch.pl issues
Date: Tue,  5 Mar 2019 16:48:22 -0600
Message-Id: <cover.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

This patchset modifies following -
  1) Fix comment style for SPDX License Identifier in dpc.h
  2) Fix comment style for SPDX License Identifier in key.h
  3) Remove unnecessary blank line
  4) Fix comment style for SPDX License Identifier in mac.h
  5) Fix warning line over 80 characters
  6) Align function declaration 

Madhumitha Prabakaran (6):
  Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
  Staging: vt6655: key.h: Fix comment style for SPDX-License Identifier
  Staging: vt6655: Remove unnecessary blank line
  Staging: vt6655: mac.h: Fix comment style for SPDX-License Identifier
  Staging: vt6655: Fix the warning line over 80 characters
  Staging: vt6655: Align function declaration

---
Change in v2
- Modified SUBJECT HERE for patch series
- Changed subject line for fifth patch

 drivers/staging/vt6655/dpc.h   | 2 +-
 drivers/staging/vt6655/key.h   | 2 +-
 drivers/staging/vt6655/mac.c   | 1 -
 drivers/staging/vt6655/mac.h   | 5 +++--
 drivers/staging/vt6655/power.c | 7 ++-----
 5 files changed, 7 insertions(+), 10 deletions(-)

-- 
2.17.1


