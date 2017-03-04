X-GM-THRID: 6393736323263365120
X-Received: by 10.28.156.67 with SMTP id f64mr240073wme.4.1488657743139;
        Sat, 04 Mar 2017 12:02:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.201 with SMTP id q192ls234499lfe.35.gmail; Sat, 04 Mar
 2017 12:02:22 -0800 (PST)
X-Received: by 10.46.69.7 with SMTP id s7mr1339106lja.18.1488657742079;
        Sat, 04 Mar 2017 12:02:22 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h62si398425wme.2.2017.03.04.12.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 12:02:22 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so5734496wmg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 12:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kvQJVNNAq71rMoV0wbt9hw1+Z06FKsVEz9vXZw4C9AQ=;
        b=nZBezhNGy8opCSMmtDeARiIqx0ovBMl15rCKxntmzCu3v38CoH6RKxh2EHdGhXqT82
         C1+s9Mofz7FEx4r+SK5XcjXC8lJeYJ63cL+Qcz+yhQlqovRXLtMmLxK+rulfiyMcSIJb
         L6UgStYObuZ032n9/7yVh1yXn7y1PI3K9nbU7dR52Cwr9NhptQE3bNpSbrxmQMoC0zgy
         jOxQ7IcuqBte5bKJX+Y70SugCfwI+KDdTSVR9sXCOP6c7Jr2ebbiBnQwUPg4MRDPqWnA
         rMKm+iCqqq+2HMjzh1Mw75pDRfWJEkmFr0QWY4xVM3jzu82TVimagO28PJpfwszTHkdu
         tDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kvQJVNNAq71rMoV0wbt9hw1+Z06FKsVEz9vXZw4C9AQ=;
        b=PvsSNEjNqHaawCzstqRHcZWxJo1/61jBKiCER6NfyndObwzzGlC9/uWN0tY5UKzQLn
         kuqtU8DrRl5IHL9ygv/qrFZ3QJIoJmzew3yi6PPv0jxWhA7QHSCyMDqB51rhTSLYKMuK
         bNfkuSzq9B4CwqVLr2dJDVCkfPUjCOE/4SY9WbmQEptsGx+fOQrDdQQ+LUNFnGhI1EG3
         gIe7hP8lXtWcDupzmrTDkDVUwLHdofzZwjadWx5pJK9iL0W0iIV16aT5V51822PAClsl
         7PUbjIGrUPKrYKl5pfYEp/RHHrVxWkVUXlet5SD+7Uldk6qEy/5/avvZxFX8oiNfxw55
         LvZg==
X-Gm-Message-State: AMke39m6cE6ciBtIEmerJ5iuDfa9cdlVKCfM8tmamWDTqVOAHF7LDSAZvnlCdvfD3yHuuw==
X-Received: by 10.28.87.6 with SMTP id l6mr7263442wmb.109.1488657741839;
        Sat, 04 Mar 2017 12:02:21 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id u11sm8909119wrb.45.2017.03.04.12.02.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 12:02:21 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 0/2] staging: vc04_services: Improve code readability
Date: Sat,  4 Mar 2017 22:00:46 +0200
Message-Id: <cover.1488657258.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove redundant error message and refactor conditionals in order to
improve code readability.

Narcisa Ana Maria Vasile (2):
  staging: vc04_services: Remove error message on kmalloc() failure
  staging: vc04_services: Refactor conditionals

 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 225 ++++++++++-----------
 1 file changed, 109 insertions(+), 116 deletions(-)

-- 
1.9.1


