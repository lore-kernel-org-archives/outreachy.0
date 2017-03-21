X-GM-THRID: 6399861794390671360
X-Received: by 10.99.7.5 with SMTP id 5mr14919282pgh.49.1490083940694;
        Tue, 21 Mar 2017 01:12:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.66.83 with SMTP id i80ls2635151itb.6.gmail; Tue, 21 Mar
 2017 01:12:20 -0700 (PDT)
X-Received: by 10.99.0.8 with SMTP id 8mr1252631pga.95.1490083939966;
        Tue, 21 Mar 2017 01:12:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id r66si3203213pfb.7.2017.03.21.01.12.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 01:12:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so24045294pge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 01:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K6fVu5PlJNy3xoXwQ/0bWrTh/RyBTM2rOXVyjekBFng=;
        b=In81vcWcpXE+ebBOwVYL0rs02V1r4+v9lq+vFr6U32LrZkuEreagEBNgoYILbP2cRR
         7pKVpNk1JWEfoz5hs6y6mrLoyYOI8GfjiEQ2B4kkzrAtdLffF/3+lObtZ8vIw3+JIGGH
         Ap3YY8yCiIkijDBmA3tHqtLblqeb7zuUN1VSTWduhJKbTXZokFp2Kn/HQwvP6NZU1dw0
         q2iTn87Rz7m/b/t6keuW12amoiJvcAqWZsFHWV2DN26sPGQ9AAiIvndM3+VQZCEqktwk
         bFhHkJyACh2NGn24jjZofb2N7focCeSuim0xXxtUFhW9HZ3ciwYKmLhFeLq6mjOCt8S/
         UNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K6fVu5PlJNy3xoXwQ/0bWrTh/RyBTM2rOXVyjekBFng=;
        b=RzyOVHF2fVvTScfXsDpKSNpS4dJD6ybF5+YwamvIO+QZXfiBfksbFMxN3DS9FXwd9f
         0tPt13HZTzjOlcs/j87gr+q4cNhEPgHxlNo6HJeLsnEwLkI9xHBoWORIYmwU1zdH8bKz
         RHpoef6vJGF9UvDmPaj7owALtGaaMDFvUHgEcOM5mTf3dT9/ZLwTyg8zJuxGKtFfTz8N
         1FE+fCzpGSZzfkhL5Zz6xnUcrv/ITdeMNjgRa6CKEpUuy7uctlIb1vDzDUv44f2cf7qR
         rd1PKvhoCTs+2hIkl3v+zvnYL11FkmrPazGut043XjbX/ybBLE2eetgE+V+C7efUDOnu
         vUBQ==
X-Gm-Message-State: AFeK/H193zX0puiaCwFvAeAZXTQ0+RuhiBh88a4kOu7wqw8NncNhYIzSrLb7w6PBkAW6xA==
X-Received: by 10.99.124.75 with SMTP id l11mr36153829pgn.46.1490083939782;
        Tue, 21 Mar 2017 01:12:19 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z25sm24992902pfi.28.2017.03.21.01.12.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 01:12:18 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 0/7] staging: speakup: Multiple CheckPatch issues.
Date: Tue, 21 Mar 2017 13:42:07 +0530
Message-Id: <20170321081214.25231-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (7):
  staging: speakup: Moved logical to previous line.
  staging: speakup: Remove multiple assignments
  staging: speakup: Simplify "NULL" comparisons
  staging: speakup: fixes braces {} should be used on all arms of this
    statement
  staging: speakup: Remove multiple assignments
  staging: speakup: Moved OR operator to previous line.
  staging: speakup: spaces preferred around operator

 drivers/staging/speakup/main.c           | 76 +++++++++++++++++++-------------
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/speakup.h        | 12 ++---
 drivers/staging/speakup/speakup_acntpc.c |  2 +-
 drivers/staging/speakup/speakup_decext.c |  6 +--
 drivers/staging/speakup/speakup_decpc.c  | 26 +++++------
 drivers/staging/speakup/speakup_dectlk.c |  6 +--
 drivers/staging/speakup/speakup_dtlk.c   |  2 +-
 drivers/staging/speakup/speakup_keypc.c  |  6 +--
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 drivers/staging/speakup/varhandlers.c    | 18 ++++----
 11 files changed, 87 insertions(+), 71 deletions(-)

-- 
2.11.0


