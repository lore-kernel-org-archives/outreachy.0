X-GM-THRID: 6397088114020450304
X-Received: by 10.13.202.133 with SMTP id m127mr16778721ywd.37.1489438143354;
        Mon, 13 Mar 2017 13:49:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.10.39 with SMTP id 36ls15881348otg.33.gmail; Mon, 13 Mar
 2017 13:49:02 -0700 (PDT)
X-Received: by 10.237.43.36 with SMTP id p33mr5253041qtd.46.1489438142971;
        Mon, 13 Mar 2017 13:49:02 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si3352174pfx.8.2017.03.13.13.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so19499521pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UGPK9Ubsiuxzyb88D4oEJxBr5ZtvWJE9/JNfRyr4MBc=;
        b=tBq+eSDtvfgO9jxYsvQB62VTZirXMI/3zdPsFc9uPLDBotRD9ZHOOoMPlVCpONr/Xe
         ow3W4ApLwbLZ4dTHOL54h7J2o+A+qYh0a+ce/3tpQ6oOmDxFX+wU5nABMq4IGrupS+1f
         LsTdECa2GEcQbzrSyYgDru8flAr5Pl3qwwhmp3FXa3fDAQHw1KZgEpOnEUsV5Zc2QpnL
         9HwRgawnbk5U1OFkXLFKFH6m7x//KoK2tu7mFQGXMy3yws2wn8dr4Ju2l3sfbIyeRmb9
         AQfY6LGT5xugptOuMIocommyeYw7iAQb7HxPayqZInDLnxfAOP1Au5S18fyq2FIoBh07
         XPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UGPK9Ubsiuxzyb88D4oEJxBr5ZtvWJE9/JNfRyr4MBc=;
        b=IiHpOTIqtq6rvX9R9g/Xztn/8/omp041NSuoRfxSaV4cdGtMxgtqPD/S/JOTFilg1i
         66Crq06thNHqyTxwQVZlDw7j5lZDsL4hySHe/TS6OZSJgvuQpG5j5rVd9XSf3JQuoJ+L
         mY4mSWon86nvbml6s6NSvq030f9N1TudN75dWqr5IAxetL4BZMy4Y7fm0IkNWDbN356j
         w25MwBbDNnuK/l5luY6MVD1+rn91xeP+r5yRr1T5HQtKig8QqQHdaFtxhSJyWyKGJ3wt
         KUlZf5BTaQBedEC/3ohetr4Jha7w7HYsy/4O2zooxuFp8GblPkLxQGm7LVRljCOVCh/6
         cACA==
X-Gm-Message-State: AMke39lraY7hnk4of/y2LVHkwWX9zhM/MlGMV9H//25/JF0ZOC3W3+gDS2PvuOm1jxRJdA==
X-Received: by 10.99.101.197 with SMTP id z188mr39595324pgb.164.1489438142740;
        Mon, 13 Mar 2017 13:49:02 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b190sm34233588pfa.110.2017.03.13.13.49.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:49:01 -0700 (PDT)
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
Subject: [PATCH v3 0/4] staging: sm750fb: fix multiple checkpatch warnings
Date: Tue, 14 Mar 2017 02:18:46 +0530
Message-Id: <20170313204853.24675-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix multiple code styling warnings issued by checkpatch on files
in sm750fb driver 

Arushi Singhal (4):
  staging: sm750fb: function prototype argument should have an
    identifier name
  staging: sm750fb: fixes add blank line after
    function/struct/union/enum declarations
  staging: sm750fb: Alignment should match open parenthesis
  staging: sm750fb: Remove typedefs

 drivers/staging/sm750fb/ddk750_display.h |   2 +-
 drivers/staging/sm750fb/ddk750_mode.c    |  83 ++++++++++++++++----------------
 drivers/staging/sm750fb/ddk750_mode.h    |  20 +++---
 drivers/staging/sm750fb/ddk750_power.h   |   2 +-
 drivers/staging/sm750fb/sm750.h          |   4 +-
 drivers/staging/sm750fb/sm750_cursor.c   |   3 +
 drivers/staging/sm750fb/sm750_hw.c       |   2 +-
 7 files changed, 58 insertions(+), 58 deletions(-)

-- 
changes in v3
 - change the subject of the cover-patch.

2.11.0

