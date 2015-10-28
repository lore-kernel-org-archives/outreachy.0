X-GM-THRID: 6210837635007512576
X-Received: by 10.112.142.195 with SMTP id ry3mr11304329lbb.22.1446073324263;
        Wed, 28 Oct 2015 16:02:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.66 with SMTP id m63ls12143lfg.102.gmail; Wed, 28 Oct
 2015 16:02:03 -0700 (PDT)
X-Received: by 10.112.144.105 with SMTP id sl9mr11196912lbb.3.1446073323724;
        Wed, 28 Oct 2015 16:02:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id g18si165096wmd.1.2015.10.28.16.02.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 16:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmll128 with SMTP id l128so1201091wml.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 16:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=bs+zxWypix/tiNDbsurXl0AwqSgYIPAu3Pz6OIr+stQ=;
        b=xJ3fVFDUgo7mcnULXlVnBtmfmf0gWfGeveP55AgujUObjjGTFB9ep55gsCSwKBPCnx
         ZYK/6eEusLKuL1xYuAJVTO/IcPUHG7vkcobgN0qf0dAoBM84LqqKZqHJTfXTxlkfdqHp
         J9bJkd+l6tOxmRH4/fHVUbNCxcZNVVze8i3tr3P35LLz+9aT0PN1M0EDAh+pzqttc4pD
         3w4eVErZX2IHnuP1Nng2Gb576dS5RkfulnBPzucsy0z4N5lep2xErY3zFeTGeyBK675d
         rp0RJnoyqCzTUtVcwRDcNpv6s5luN6KDRl7nyQ7VyIGxroc2OJisuk1SeZJLTv2Hj1Bv
         NaXQ==
X-Received: by 10.28.229.70 with SMTP id c67mr18809wmh.48.1446073323586;
        Wed, 28 Oct 2015 16:02:03 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by smtp.gmail.com with ESMTPSA id 199sm6138472wml.22.2015.10.28.16.02.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 16:02:03 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 0/8] staging: iio: accel: fix multiple checkpatch issues
Date: Thu, 29 Oct 2015 01:01:47 +0200
Message-Id: <cover.1446073162.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset fixes multiple checkpatch issues.

Ioana Ciornei (8):
  staging: iio: accel: add spaces aroung binary operators
  staging: iio: accel: properly align function arguments
  staging: iio: accel: change uint8_t to u8
  staging: iio: accel: add blank lines after function definitions
  staging: iio: accel: fix block comments alignment
  staging: iio: accel: remove unwanted blank lines
  staging: iio: accel: place logical operators on the previous line
  staging: iio: accel: add bracket on all branches of the if/else

 drivers/staging/iio/accel/lis3l02dq_core.c | 10 +++--
 drivers/staging/iio/accel/lis3l02dq_ring.c | 24 +++++------
 drivers/staging/iio/accel/sca3000_core.c   | 65 +++++++++++++++---------------
 drivers/staging/iio/accel/sca3000_ring.c   | 17 ++++----
 4 files changed, 60 insertions(+), 56 deletions(-)

-- 
2.1.4


