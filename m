X-GM-THRID: 6668981360875536384
X-Received: by 2002:a67:7d43:: with SMTP id y64mr8432131vsc.30.1552836474058;
        Sun, 17 Mar 2019 08:27:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2aca:: with SMTP id q193ls2257362vkq.2.gmail; Sun, 17
 Mar 2019 08:27:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzjVFfCorb/wSFEOZf8Vl6PTD37+O/aFGpFuXZ/OnUq+KnvQhaCCN/B/neluKn21WQVrQYT
X-Received: by 2002:a1f:cc02:: with SMTP id c2mr8495239vkg.21.1552836473330;
        Sun, 17 Mar 2019 08:27:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552836473; cv=none;
        d=google.com; s=arc-20160816;
        b=W5+rW7YPK8K8TJFFeCenSa95o15n/25np5BExbsoF4Lai21m4m//MkDrK5S+6fV2it
         qPoaZSxC6imLv2knJYO2o0/oI5hlRsbM5er6RLm2UP3n+x6ZIuGYx7NdNUiyowHm728Z
         /coumfXZ/JLpEinB5yicqCPI5MWN/AKBbWicweKBMmXI4CZs+jsH59MCJG53HKJZ5gtf
         ogaIpQH99YVkgvCvynynFnCOIVqaICEL48zkwWsijwqqB+r/odUqFIVpPMuig7nACmrx
         inRHfbNV3uRo+yhKtXY/OtbpPAZbVOnRzGtr3EWHYhq9Gry4Q9XVhY2pTxHq1KwKg9GA
         PE/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=k6L8GHe6f4BcqS+Vh1I/NRMCWOGCVOc179PpvGFJNd8=;
        b=h2cbnYNDJfd7MY3cMGpQo/BcKr4QUNFyJjs6ogmaIFwsntyIHQN4AkiSQc+DZAlKR5
         HTBqXXHgeIXHf+gMTq5hcQyg0/noOOuN+Or/R6P3PzwGwGrC18DhKrxMyKbHtj1ARHUr
         CvOwdq8aUX5iEkrlke4l2ez/g6myon2uMNTl86Kk5HepJBpWiZ1CsIlCftTjwqETExNK
         RQaJNZ+VyMJtGEpDAORyWWcLfchk0H0OMqgGfM9c83mUMKHRwKI/qSiGSUyW0gdWrkNV
         6GaNM0y1q83kBFJ3mXgpBriX7iqEdYNbJjp/6PrkOkdX6TxUvjTN1pQhh1tpdYxuPdFr
         pzjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AWK6aGPR;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id x82si264148vkd.1.2019.03.17.08.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:27:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AWK6aGPR;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id v64so9547358pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 08:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=k6L8GHe6f4BcqS+Vh1I/NRMCWOGCVOc179PpvGFJNd8=;
        b=AWK6aGPRAFn1hG8Mn/JKccLol9kLKeX70X5pBo8fIRbrf5jkW/nfNlxviZ864HLIED
         KDhneVNWyIa6CmYwvnjMvwEXD9ubrbr/MpEMbpNxzkIr3p3EMaoPGGpiu62n0U8Aaa0m
         MdCH+0ApSyp6i+hjfDZjlRVrIYmw5NIJrjzsZ1ju6FY0tQmTObtkjrMT0c19OsA5R4mz
         +SaEj7vLS2Vx7NaeOZtHarzcbTTQcZGRFQXuH+PczyC9bSYbXhXihEjR2p8cY3i0CfED
         97A3WTMRz2nsdTMAO2zN5D5DtjNC8L6Tan3ccwgtZ1wFMqQteiJ2DOm9X+VPkSVfhAs5
         U+jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=k6L8GHe6f4BcqS+Vh1I/NRMCWOGCVOc179PpvGFJNd8=;
        b=FOXBBSaFxwdbPw9TLoi7Lay84nAnk3y45wmdBKP6fEeGzS15wm8TXm7eYZo1UQlSxM
         u8DB11jBPYpOHXn5dkTLY4LfsX6XTIUO9+uGFCUlrkCb2osXrlEcUetezGx2MVzGn7h0
         McJXgU6Lfwfp41/HAxRWGZHmluo1hVlDPEzFCzzq2err2ny57wOwB10uqp3kHi0w7i1A
         T2I8eLh59tSR3CVMwf/uCWo1D4V69rlW34L72QjYPDN1SCduOEUnHmexM+wP5ae5972Z
         h5vsMDrIGaJtyu/DPvbdoKP/7QIGz1yvLLgLXRSadKwoAQEsJwVbEF8+51PMJgOQQKbE
         wp3A==
X-Gm-Message-State: APjAAAWRMboxkVNVSW7Zj16mWjGMHOsKYHsrphmQEWJX93lvy/hQqFRx
	kLZnQlqh+Dnczl6LtbbPC1I=
X-Received: by 2002:a63:7341:: with SMTP id d1mr13580471pgn.405.1552836472495;
        Sun, 17 Mar 2019 08:27:52 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:24bf:4cf8:99c9:eab4])
        by smtp.googlemail.com with ESMTPSA id h75sm16294695pfd.150.2019.03.17.08.27.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:27:51 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 0/3] Staging: rtl8188eu: rtw_recv.c: fix various warnings and checks in rtw_recv.c.
Date: Sun, 17 Mar 2019 20:57:36 +0530
Message-Id: <20190317152736.16374-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

This series fix the following checks. 
fix a paranthesis issue around -> 
fix a space issue 

Changes in v5:
Fix the patch sequence number in [PATCH v4 1/3]
Fix the patch sequence number in [PATCH v4 2/3]

Changes in v4:
Fix the patch version number in [PATCH v3 1/3]
Fix the patch version number in [PATCH v3 2/3]
Fix the patch version number in [PATCH v3 3/3]

Changes in v3: 
Change the log message from the [PATCH v2 1/3] 
Change the subject line from the [PATCH v2 2/3] 
Change the log message from the [PATCH v2 2/3] 
fix a overflow of 80 characters from the [PATCH v2 3/3] 
fix a space issue around '>>' from the [PATCH v2 3/3] 
fix a space issue around  '-' from the [PATCH v2 3/3] 

Changes in v2: 
Remove "From" line from the [PATCH 1/3] 
Remove "From" line from the [PATCH 2/3] 
Remove "From" line from the [PATCH 3/3] 
Change subject line in [PATCH 2/3] 
Change subject line in [PATCH 3/3] 
Change log message in [PATCH 2/3] 
Change log message in [PATCH 3/3] 

Sanjana Sanikommu (3):
  Staging: rtl8188eu: core: rtw_recv.c: Fix a tab indent issue
  Staging: rtl8188eu: core: rtw_recv.c: fix a paranthesis issue around
    pframe -> list in rtw_recv.c
  Staging: rtl8188eu: core: rtw_recv.c: fix a space issue

 drivers/staging/rtl8188eu/core/rtw_recv.c | 24 ++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

-- 
2.17.1


