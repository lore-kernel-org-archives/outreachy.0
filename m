X-GM-THRID: 6398937623266590720
X-Received: by 10.157.24.27 with SMTP id b27mr10412361ote.36.1489900800805;
        Sat, 18 Mar 2017 22:20:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.66 with SMTP id 63ls1297030ith.16.gmail; Sat, 18 Mar
 2017 22:20:00 -0700 (PDT)
X-Received: by 10.99.105.5 with SMTP id e5mr12243065pgc.0.1489900800057;
        Sat, 18 Mar 2017 22:20:00 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si2008669pfz.1.2017.03.18.22.20.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 22:20:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id r137so9301776pfr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 22:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kQWTRiTD1acLnzWX7NP1YE4GVab++WxTKfgZr/4GP9M=;
        b=B2sk0//q78HA/IcFy7gFNrA0Wn0FNcdGRnXBgA4ooDsDXIRseNL/ctUIrt8CnwCXuP
         ds4YDS+agajWeM8HQ2RgQtct7sBzlixtMyPtcJcwyIM9oA5Wnqh288xXugQbuqoq9vSd
         tyiG71+fgHO6SY4DDfuqjadfwbNg/zawAtNUbVjj60SdylyMafuzi4WL4XPI5ixAGyyW
         sBrMWKHht6xtn2y3EwApZ+EHGvphK3fErfP+WipqIAxIy44wLys2cuAk88SDktZAo6al
         wgknCSLdIBOmgCCmk9EZANbTItqBgqmPbDGbZnyY0TErZanUM+n+vSUbOySO30NQngii
         q09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kQWTRiTD1acLnzWX7NP1YE4GVab++WxTKfgZr/4GP9M=;
        b=ZkiosY1yQlLGM51kl4Wjy3NQqjQLcOqT1ZYTBHeiPF4ysDJo9wZ2V8TtdOUmcdghJ8
         /F1uqP6yxC0FS+/TV1y5YXoH7w3ubZv15Ng/v/Guhi3R9+TwCvaQmOF4kHemQyK80CNA
         EtzopAJNuvqm2pX4x0XukWFNch0DNJf0rNqqQrNoOW5Ykhi61BUkwYIB0t4EVNs/3KRB
         RdxSnjvCT00Mt0A5p8mOaC4ynmXMrvp4ido25tnyeQS+TNvKHle/Vy+HgiY16Mj3/0AC
         XlT46ySDOjOVMakAixJ/hUhX4bZoOq/QihHHVzd2B8FyMqFua4h3bIntPBRgCmMLSkNX
         wVtw==
X-Gm-Message-State: AFeK/H3dBt+nakHxGjCiOGSJaCNvXDZv5rzYKBUDaqPq6hjKJY04da1X0zWJXIMfUksQTw==
X-Received: by 10.99.140.69 with SMTP id q5mr24192847pgn.179.1489900799888;
        Sat, 18 Mar 2017 22:19:59 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b8sm25669341pgn.6.2017.03.18.22.19.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 22:19:58 -0700 (PDT)
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
Subject: [PATCH v2 0/3] staging: speakup: Multiple checkpatch issues
Date: Sun, 19 Mar 2017 10:49:47 +0530
Message-Id: <20170319051950.14650-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (3):
  staging: speakup: Moved logical to previous line.
  staging: speakup: Remove multiple assignments
  staging: speakup: Simplify "NULL" comparisons

 drivers/staging/speakup/main.c        | 30 ++++++++++++++++++------------
 drivers/staging/speakup/selection.c   |  2 +-
 drivers/staging/speakup/varhandlers.c |  6 +++---
 3 files changed, 22 insertions(+), 16 deletions(-)

-- 
changes in v2
 -change the commit message of [patch 1/3] as was wrong
2.11.0


