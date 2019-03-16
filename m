X-GM-THRID: 6668974051336126464
X-Received: by 2002:a25:2f44:: with SMTP id v65mr3803733ybv.2.1552741520562;
        Sat, 16 Mar 2019 06:05:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:3d0e:: with SMTP id k14ls2689669ywa.4.gmail; Sat, 16 Mar
 2019 06:05:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNIkxYvMu6MijTcQcG7iyno03BLrtwU0nSYsogW5Ik98iIIgAErg7XUTnIUHZ8zCPM4Vlr
X-Received: by 2002:a81:3296:: with SMTP id y144mr4125891ywy.22.1552741519639;
        Sat, 16 Mar 2019 06:05:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552741519; cv=none;
        d=google.com; s=arc-20160816;
        b=w2+Mydzoal3SaaqM0/6eb5klK4uY/r1nGyRUhAxWbAr7KiaO97lYQ0Fp26EoInJ8hk
         XOafn/zyO/Iae9SbTXnBHZ1ENrXjWBkdnMfnIh0jdyP47okQRx8jGIkBY1fwxZgGdr70
         l3yzWIV3SAyjYIn1ZrtZsz/xbG4KX+oMpUDIkTl/YpVWXFKCp5YR73In953idokO5m4s
         HCdxAJ9cULkqGnhlU6GK7l8RfJlr2mDN8HBKZ4Ii7ra32/6dbKmWsn1xgQXCJcvKe+3k
         IQWUB/US2OkF67AS6Hq43DaUvddgHa0r+BKah9Ea7YrfzO10zstVEy0DcBwqIQlowMo2
         tm4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=rzTEVrwMrwu7YS8njORz48haG1z1yuYEUOfRhU8I7hA=;
        b=bz7Ra/1pXw2xj1N5a7EYfe2PGYbM5GYIwbT5KziWfM4hq//kZFFk1mtZI0NfVVDybf
         RsVTKi0UUgCY7ACb+f6dfydORI7NEM++FAicOR5H7J8AcAWFE0dpCZTOJRxSoq3XZsnO
         7f+pnlWOs3AWf4RiX5oJerx8FtAXAX/7kQr7yopmx1j82upP4fCLG57eqwKjG8QTuWrg
         roBxO37tcsbGim/9JK/nO4uNjX3FbuIgPWyvMGCncWUM2s8U8CQ+Er3LlOHGMH1+8LoC
         pVzwewLcszhaPAte5iq7e63CwRqZeEWVDhEqwqr2GYzueeEEdC15JHK8lVEDeGC5e7/u
         oBzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=szCWa4yN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 209.85.210.52 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com. [209.85.210.52])
        by gmr-mx.google.com with ESMTPS id i204si182387yba.5.2019.03.16.06.05.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:05:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 209.85.210.52 as permitted sender) client-ip=209.85.210.52;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=szCWa4yN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 209.85.210.52 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id g1so10724388otj.11
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rzTEVrwMrwu7YS8njORz48haG1z1yuYEUOfRhU8I7hA=;
        b=szCWa4yNv8lGAAS9M2VGOp5bDLgi76hmNOLEMwLpnkHrUfoC56t8AtOOd8/TGDgYwN
         3FK4/iomWQmwQkYwDAzosar5ITHLHoN/MzLQ0dXaZo7zT+5Qts0x5Uxvy+10QZBw+Ld8
         7vviZPve6ERh7zCOt58LtwjelWK3j7jRH7wcZdzai2Rix6vuHwOk8r4nsrn7ppbpSLav
         MZJPuABACZtxF0f4yIiP2pD5r0uS+V/pg4Wj4+lq96kDei0v2N53XN9fP71KBGQhzVre
         sWhhl7flLhC7tPuyu0JQRCGmIrdDRxHHroxV4oN8zbaXE3RoOd0qycsI8FEKmsvnS0Iz
         F8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rzTEVrwMrwu7YS8njORz48haG1z1yuYEUOfRhU8I7hA=;
        b=m44ZQLz/iGssV3SR8/bb6p8uemNTWlfHK+JrDANbQbi7JAlJUygOKVx5WgIzmmld+m
         K67xwF90g6+6zq4+kbuJz8Cn1u57xghSjlNZxEheg3qFJex1AhjQC3Mxyk78YcSBpzgO
         fLrL0075QMxorX1OprvqcszaFchtkGiT3s0DNMKYgLM7mOH0aJx+KJA7/ShV/X3dtgY2
         cQcqficNYFFD2dnvLQEKe83OPXyLL8Oek3VKSsz59hGTzkiEt7snXX9g8fUYZAzGUaTG
         2mmFpG4hiSwBCn1GNhiOFT4M/uAuhvJCleGbUSVlMEDW0kVal085pb2oqhqJbGJ3Gkzv
         2cgA==
X-Gm-Message-State: APjAAAXbqY5YHsa5GsMSqZ0uL1AtWYKDdq4NH1jkTOIM4QOKV77Dk+hG
	G73pFWhU7luiiriMI+Tpdgs=
X-Received: by 2002:a9d:67cb:: with SMTP id c11mr5591201otn.103.1552741514618;
        Sat, 16 Mar 2019 06:05:14 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:432c:603f:14f8:e32e:7b1b])
        by smtp.gmail.com with ESMTPSA id 3sm1809424ots.75.2019.03.16.06.05.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 06:05:13 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 0/2] Issue suggested by Coccinelle using ret.cocci
Date: Sat, 16 Mar 2019 08:05:09 -0500
Message-Id: <cover.1552740889.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset does following - 
1) Refactor function and check return values
2) Remove function and replace return types

Madhumitha Prabakaran (2):
  Staging: rtl87223bs: Refactor function and check return value
  Staging: rtl8723bs: Remove functions and replace return types

 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 24 ++++---------------
 .../staging/rtl8723bs/os_dep/osdep_service.c  | 10 +++++++-
 2 files changed, 13 insertions(+), 21 deletions(-)

-- 
2.17.1


