X-GM-THRID: 6392976893088366592
X-Received: by 10.107.51.81 with SMTP id z78mr5070764ioz.51.1488480924275;
        Thu, 02 Mar 2017 10:55:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls2271601iof.31.gmail; Thu, 02
 Mar 2017 10:55:23 -0800 (PST)
X-Received: by 10.36.116.193 with SMTP id o184mr2212833itc.40.1488480923456;
        Thu, 02 Mar 2017 10:55:23 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y90si34678pfa.6.2017.03.02.10.55.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:55:23 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e66so1860953pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HIFThPiO+Uv5lwTrXE2ieWilUvxn7oOGH4M6qXtIZwQ=;
        b=RL+aLjaQ0s+OPN9WnvKdL+QnnnQnO7wget3Wojjdxb7MvUu6bPL7v6IK16Z/duoiFq
         WsM4KKmd/bSoslGq7F7Z6gPBin7EUpXDYdFTNTg4eybnDer1KdNLZpI9z9b16jwYn+Kf
         ITgxrNChnCh3JAMukqwNaK+5mrBGDiX1c1k8pI9mzIAIsKXDquDPYSOLgKyXTdXMP4pP
         JKmD6dfV+oe/e91lrxzU0qQF8BEUNum+JKev2hTTzIAjGjL9v1TCAN0wYkA+4tl72Ech
         6wrLNrtVV9SDxxs/g/4Gq2B1WFPjSCAP77rQVTFvqgYSle5vcZVApB0VuKY1DQNot8BN
         QjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HIFThPiO+Uv5lwTrXE2ieWilUvxn7oOGH4M6qXtIZwQ=;
        b=hTWk8bC0VTS9Odrcq77Jh25Yj2kfdY4yE8zJW5RBQumpRdgmPDPMGFIL9cAMayf2G/
         znXIhpkgaf1k6n4gBhvZsl+DvUzOQr6qo9Shr9VNL3SFTn7b9ZVs7pQsiNpg6ujqHnDB
         W5LC+6tnRLXRoy3uADTqVUWfwGMggRkmssFLToRL3MWA6l95ZeOQn9SZPrxg3DA6CB0a
         QZdoCfsrvJ2IeSoxGwWYPTrESxd7U3zKgwgjc2wMoMF3MOtdVkZVvmGoF27p5ZOXe68P
         EF7fMd+IDXQ6XK/tB6yVf8jgpExQWMZbFd+thhImC0qevsUzyC6tPsCGBNdHbJDRjtyQ
         Te7Q==
X-Gm-Message-State: AMke39nvKOfO1tMJJ3I3bGTJt8G09Cj1Lz3C4Xneu7rOhf6R3sdBSAf0p+CHzLDXi2X8rQ==
X-Received: by 10.84.236.70 with SMTP id h6mr20908459pln.173.1488480923219;
        Thu, 02 Mar 2017 10:55:23 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d68sm18518169pfj.92.2017.03.02.10.55.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:55:22 -0800 (PST)
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
Subject: [PATCH 0/4] Fix multiple checkpatch issues
Date: Fri,  3 Mar 2017 00:24:53 +0530
Message-Id: <20170302185457.14812-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (4):
  staging: speakup: Placed Logical on the previous line
  staging: speakup: spaces preferred around operator
  staging: speakup: identation should use tabs
  staging: speakup: Alignment should match open parenthesis

 drivers/staging/speakup/kobjects.c       | 16 ++++++++--------
 drivers/staging/speakup/main.c           | 10 +++++-----
 drivers/staging/speakup/selection.c      |  2 +-
 drivers/staging/speakup/serialio.c       |  6 +++---
 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c | 10 +++++-----
 drivers/staging/speakup/speakup_apollo.c |  2 +-
 drivers/staging/speakup/speakup_decext.c |  4 ++--
 drivers/staging/speakup/speakup_decpc.c  | 22 +++++++++++-----------
 drivers/staging/speakup/speakup_dtlk.c   | 16 ++++++++--------
 drivers/staging/speakup/speakup_dtlk.h   | 10 +++++-----
 drivers/staging/speakup/speakup_keypc.c  | 12 ++++++------
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 13 files changed, 62 insertions(+), 62 deletions(-)

-- 
2.11.0


