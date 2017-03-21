X-GM-THRID: 6399916000486096896
X-Received: by 10.129.62.40 with SMTP id l40mr16822147ywa.67.1490096561162;
        Tue, 21 Mar 2017 04:42:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.2.76 with SMTP id 73ls2717085itu.13.gmail; Tue, 21 Mar 2017
 04:42:40 -0700 (PDT)
X-Received: by 10.99.152.68 with SMTP id l4mr4365430pgo.84.1490096560414;
        Tue, 21 Mar 2017 04:42:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si3336108pfb.2.2017.03.21.04.42.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 04:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 79so16067351pgf.0
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 04:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DCY6pB9xWL6Cnc7OtHhPAYX1BAL68a9SF6bomiJh7hU=;
        b=gLUNutvUqZVJJVZt67WtAdFWnqFQjdIFnOXxP9HDaEccSDaAGIoiwl7QSei9bLy0ZH
         zHpcflknNTa4D9Hool2m9j+b9Kfs7HKYGBXLTng9z09COdihFfqeSUFrFfiKQ6tMKKGL
         1/JOLhTz/bX09XungGdex7e7TRn9zff3GFFbK4vOVjh5C2mYYGDjzzrvehhbizaEyFQS
         jM4ImsyLVlpA7vi4mcB5fm5fP5ywKL0ood3vLJMyHPgUjrH0Yo7z1tTxoksulpZN/Dn+
         IA5Yr3A0G/BQ/GxInfWoiJD7Jh1TY47p9x4QMO//WCyeTRw22OWJ1lbNhLDg+ME+yM71
         So7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DCY6pB9xWL6Cnc7OtHhPAYX1BAL68a9SF6bomiJh7hU=;
        b=j4c/CdRjXpxjg/DykVmvCrZ20VJoD59XVzilqnIRf/9vigyKl4GXyA4nsk9/FgtYiU
         N9NcGtt3G3Pr5ABAQVlURHCfBceCJROO97ZMUJxUX6515RgAz3BjtBQmi4fxt5U9Lw+Y
         unoiUjnKBw/AQaUIG/EvC6FRVuhr25B8587nVERSUYYmaZytZZecaayP355t/aGKYzHr
         UBh1qe4lhZ5fuBRbgm4rXFGYeNzWV+bI72BplCelKSaA+8Aw9ofJQRc+HZa+TcbaM+U3
         7S308XOBPLMQW5hIwHUNdtRpCBazTnQdwCTqe72Zj3el+yZE3Lq/Qo0RCpTlqZZQqr19
         KY/g==
X-Gm-Message-State: AFeK/H2mIGmususyGIDyfjkNc8TIpo5elHJHUX6yljrM9o0Oeyd38xoOLC8WGoQQ+Vugww==
X-Received: by 10.84.137.169 with SMTP id 38mr48004019pln.125.1490096560242;
        Tue, 21 Mar 2017 04:42:40 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t82sm5308728pgb.13.2017.03.21.04.42.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 04:42:38 -0700 (PDT)
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
Subject: [RESEND PATCH 00/11] staging:speakup: Multiple Checkpatch issues.
Date: Tue, 21 Mar 2017 17:12:24 +0530
Message-Id: <20170321114235.1638-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver.

Arushi Singhal (11):
  staging: speakup: Moved logical to previous line.
  staging: speakup: Remove multiple assignments
  staging: speakup: Simplify "NULL" comparisons
  staging: speakup: fixes braces {} should be used on all arms of this
    statement
  staging: speakup: Remove multiple assignments
  staging: speakup: Moved OR operator to previous line.
  staging: speakup: spaces preferred around operator
  staging: speakup: Removed Unnecessary parentheses.
  staging: speakup: Simplify the NULL comparisons
  staging: speakup: Match alignment with open parenthesis.
  staging: speakup: Fix alignment with parenthesis.

 drivers/staging/speakup/fakekey.c        |   2 +-
 drivers/staging/speakup/kobjects.c       |   2 +-
 drivers/staging/speakup/main.c           | 110 +++++++++++++++++--------------
 drivers/staging/speakup/selection.c      |   4 +-
 drivers/staging/speakup/serialio.c       |   2 +-
 drivers/staging/speakup/speakup.h        |  12 ++--
 drivers/staging/speakup/speakup_acntpc.c |   8 +--
 drivers/staging/speakup/speakup_apollo.c |   2 +-
 drivers/staging/speakup/speakup_decext.c |  10 +--
 drivers/staging/speakup/speakup_decpc.c  |  26 ++++----
 drivers/staging/speakup/speakup_dectlk.c |   6 +-
 drivers/staging/speakup/speakup_dtlk.c   |   2 +-
 drivers/staging/speakup/speakup_keypc.c  |   6 +-
 drivers/staging/speakup/speakup_ltlk.c   |   2 +-
 drivers/staging/speakup/varhandlers.c    |  18 ++---
 15 files changed, 114 insertions(+), 98 deletions(-)

-- 
2.11.0


