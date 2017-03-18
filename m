X-GM-THRID: 6398937623266590720
X-Received: by 10.129.167.137 with SMTP id e131mr8665868ywh.89.1489868765885;
        Sat, 18 Mar 2017 13:26:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.91 with SMTP id l27ls9646148otd.41.gmail; Sat, 18 Mar
 2017 13:26:05 -0700 (PDT)
X-Received: by 10.129.56.136 with SMTP id f130mr11310174ywa.150.1489868765481;
        Sat, 18 Mar 2017 13:26:05 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si1905260pfz.1.2017.03.18.13.26.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 13:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id r137so8545550pfr.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 13:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mEYhdhSznd3R1/HBdpv5AfkNh8YyAvzqEfqRQhMm1vM=;
        b=TzXvnWJEj8zksE78rXB12kB0J52lonWgEfeDW/qgn+GVuM464WXE3cRPyShPMc4TDT
         1iLBNBCX0ap6AzLMgq42vwVGsydri43eeG7ah1f94PWnaQj+/oSdc0+e0PWL2rLxNxNr
         OUeyDaB6SB/GACdZiajjtPq/kDbU5RjpCmOPM5ezFMHwQ7d/2ETqarF//Iw6cQSKTtf2
         irGT+Z+2k/4ipr/aDysKN26bbgZfQSdlZa0G6xjmjwG9cUE9AhY4NLxsnv/8Ic6AQlnk
         VWU0OlOCZtmTEsepDx1qSxKiaHq9sSZOtyfnBLyAZ39+vSMFE8rLs19HAxFghr8R9D1Z
         Y3Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mEYhdhSznd3R1/HBdpv5AfkNh8YyAvzqEfqRQhMm1vM=;
        b=aY9UtI6L524FjyNB4E2VWDMml56jiYLHeOwBf3GOGX+0dNYaAhMkIeyxANFWUYF7Y3
         5mlx0ZJkRktxnqkB3MbgRxJ2PN2hfPpgm1AEg5nPvvBzAvVbiuuKDmZEBpoQyp02Oh2Q
         undvbmWMhdoHt3hrhtsLFzS4ZU+RpkqJoyEG6RDZDY+aLU8n07aO6XeHg7tHgEbfVBSS
         wmlqGTNGGI7g+i/QsHRqvmMLAPcCwvQIzDWRPIIjvKsd1jm/MozYQsKwVbr1ky04PwAn
         fIHI89pOzgDwMRhjiMpsTgX7tQhKi4KecJOd4lQ31ozajWEscV3MfEYG2Gz3u1/kV5hX
         H+TA==
X-Gm-Message-State: AFeK/H1braN52jQNeWzj6jMztXCACqJnk3nuFjFmBQeK/j9g97g0w5TOPW/ZcrLsMcKZaQ==
X-Received: by 10.98.59.151 with SMTP id w23mr23979803pfj.235.1489868765273;
        Sat, 18 Mar 2017 13:26:05 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b8sm24483744pgn.6.2017.03.18.13.26.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 13:26:03 -0700 (PDT)
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
Subject: [PATCH 0/3] staging: speakup: Multiple checkpatch issues
Date: Sun, 19 Mar 2017 01:55:56 +0530
Message-Id: <20170318202559.10886-1-arushisinghal19971997@gmail.com>
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
2.11.0


