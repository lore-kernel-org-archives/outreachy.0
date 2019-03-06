X-GM-THRID: 6665247866619953152
X-Received: by 2002:a17:906:1959:: with SMTP id b25mr788798eje.16.1551873950035;
        Wed, 06 Mar 2019 04:05:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:9257:: with SMTP id c23ls457787ejx.2.gmail; Wed, 06
 Mar 2019 04:05:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqyqzaf4HiOVjh1eq502gZ4nyTo4NKxsbc6CcvXIasRQ7QNbESXGuqyYmtC/zeaBJJ0+jSHr
X-Received: by 2002:a17:906:1959:: with SMTP id b25mr788792eje.16.1551873949208;
        Wed, 06 Mar 2019 04:05:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551873949; cv=none;
        d=google.com; s=arc-20160816;
        b=qs1naJX/O8j4vZLhpKj0YXYHGpmmh4qNG/aKcIt+vLsKldkloUF0RwSFOeHLRLf0P1
         RTfC2M03NadTxAfVmRxLOVkQE/OLA28VVb9MMW0/CCWEusLUmDuwhEm9MneID1fxB6YG
         8YdpqGGNL88ymJX2MQa/Kj4BqEvOusgC4Dj6GG4unaGHC+6jwbccuo7PZ2CzVGnVpX6y
         1GKmOVHuVRpH5LGRZtXH4Cr2vPuke+j9Ih6FSQfCtjM5BSs6kVVgz4xGGzEtKaWEUbLe
         hE2Stw3NFuspCzkLoXX4NF4UVvdqqR9jaXnfRpYtz02N8zvYgjsm8WZ6iIzX9GvqfGfo
         JTqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JrvjiOF2X1fLPmXUCU6iud0542/j8j0uvuKD3yjPSoY=;
        b=sQEgsao0UDoAB8Jgt5+89esk5d7H30RB76eSEVQVE9I8Mwxm4j09Dg0KQJPlW28kR7
         ZcgycDc1PVj/1MYrGblBIMlZcuk/2id/HJK+JtR13kbiokDxYZGyRebd+nB8IYh2Hkdy
         GzMtoPccawBKhmCRNmrwZ+l1C+FkU4Q4Ue252P4y0l7q1zhY6vqN3QLJVaUK5Nzm9587
         J2btVwNTJC2/DNEkOXhOpPiAdfCVsH4d+3s6VJg0QZS/kMfdPma3mG9/y6KD8rh2xbF/
         5pntn0jLvvCJMAV3a/mepNu1HGCOYrnCwF73/YrRE7tPIRzsFXRq7DTdDOoCIWak/roL
         j89w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRIt1H03;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id a7si73971edb.1.2019.03.06.04.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 04:05:49 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VRIt1H03;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id d17so13090506wre.10
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 04:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JrvjiOF2X1fLPmXUCU6iud0542/j8j0uvuKD3yjPSoY=;
        b=VRIt1H03dkiI9i/uaRN6wZJIIhFihERFtv9jEimETQY6HtTq+e+CCNhCJBDDU2tku2
         LZV+6zLgFGc5ByRY9NVvdLobJSPB/htIWksGkrZNPkSi3bt7Lha1iN5jPVg5aBvU87TS
         D16utRbTeuuYfhXnefPHL3rrgF/pdKXVgtozeWkgMrUWamdtv5pF8SH5V5kMAPYt6Yz9
         hwbi1CSm8zSCTrNHvJU29w8DPduleBWhHxBYFWkFrKrGyvXwb4VE4hUOZZWHlpVAttUn
         QjEBlFtNp1mVJ4MqeZAQtbaJTXW4Nz3Q1nJYKD7Pvtj5nBfCTtXZMTim6dqYDQl4Le0f
         fDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JrvjiOF2X1fLPmXUCU6iud0542/j8j0uvuKD3yjPSoY=;
        b=hhYT2GMZMGKXLNLh71x/ciXgZpdOZPaKm9mBQK9aTxnjmaGRUkhnh7GyW5voEWTCOY
         vBd8pd1g0dGsB4Lem28zIWLmkKSMBDq6R5Op8dtP1DFbHxos0PsXF/a6uWrXbt6RZBnf
         JUnO22FpAkM18LRQRnBDz0L5wX6aqm2ITHWXiTClkU0mAAKIGvCUQLcu39SBGx52K5eP
         uVkM3Fnw2W/OHIjdX0DDu+nsW9upzDixyDqFBV5u7FunrpvbtRNkNeOhkEKZpcG2EPLD
         Hc5SejRkZYUPTj8vrLX05X83/I8jJf5CmDvgqW58yMhanJiUbVee4EkYwnxDpGL8BXZu
         fhbg==
X-Gm-Message-State: APjAAAU5RiHllouQOw3ZPMn7RuXAhkZWNgaa/ClDfbHGwh2gDCQq6/a7
	9QbvYZEpsG37s7dwYWlxFYA=
X-Received: by 2002:a5d:4412:: with SMTP id z18mr2683653wrq.111.1551873948863;
        Wed, 06 Mar 2019 04:05:48 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([141.85.233.104])
        by smtp.gmail.com with ESMTPSA id o18sm3339366wrg.40.2019.03.06.04.05.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 04:05:48 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v6 0/2] staging: vc04_services: bcm2835-camera: Fix two warnings
Date: Wed,  6 Mar 2019 14:05:43 +0200
Message-Id: <1551873943-31719-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4


These patches fix the following warnings:
-Logical continuations should be on the previous line
-Avoid multiple line dereference

Changes in v6:
-add driver name in all the patches from the series

Changes in v5:
-add changes in cover letter

Changes in v4:
-add driver name in subject

Changes in v3:
-add cover-letter to patch series

Changes in v2:
-make these a patch series 

Daniela Mormocea (2):
  Fix multiple line dereference
  Fix logical continuations warnings

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 51 ++++++++--------------
 1 file changed, 19 insertions(+), 32 deletions(-)

-- 
2.7.4


