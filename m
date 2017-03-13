X-GM-THRID: 6397080703466471424
X-Received: by 10.99.251.83 with SMTP id w19mr16427290pgj.160.1489436417945;
        Mon, 13 Mar 2017 13:20:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.140 with SMTP id b134ls4450409ioa.38.gmail; Mon, 13 Mar
 2017 13:20:16 -0700 (PDT)
X-Received: by 10.99.8.196 with SMTP id 187mr17157987pgi.115.1489436416333;
        Mon, 13 Mar 2017 13:20:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id y90si3259377pfa.6.2017.03.13.13.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:20:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so19421907pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KTsjMvXie4Q1N/uQ5xwUCskG80c3mZMUNp16QPuHUf0=;
        b=BhJ5HQ1ZXADLZdveRWP4kY3sMe+fY6AeESEhCiBqoSq0SiHjwi5xV74KOcST1zt6WB
         kKDLILvpoO8hlnl96e6p+e6bcdAC3xzMolGvPD5IeUNqIjb8mH1U7AnJXx+NJL+DCeiY
         MCChNxwVzijcM/wI1O31FkhroC0NnZlZzeNRno1nlhOrnSWGo2mJR6aVEAF/mwPn5Sly
         nboB7Rl93bioqo3ieSGeFioQH/3izmr0mQJcyYwPPJrj4HKDbWUWPR2KkFjJNg9dKBVL
         hqTpCgzrMcqwz6VIE/EwrimQRdAqS4N7R3tZX8oouBQvAf6GOmteCvxbeeu+8HFIwWkE
         03ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KTsjMvXie4Q1N/uQ5xwUCskG80c3mZMUNp16QPuHUf0=;
        b=nGKz8AM8JYy+G5FCiaPtuhHwwdFOVu0tpSDmrM4n8VQ5360fTsjnQvfWHdNowrwg3P
         FAyyTg9mCauYtbnUtX/am/a9JVdDyM96rnAesFA/OvTYyQYeb2+0CceDIdcEBjj96ZKd
         Sl65RA88kXV4k4gwtLTVJ/OArqnRkS4ZHbSRk0alBSZ5Q1wNZIGkZSe9XKAUF18aSjQD
         KlVsSfZvX2eQHvhngW5gx+LqfLkgTJHuckQ+a4NyGGunZ1h7zlNRCrKdrqouXy9o7d/j
         /UdPvK3X5uicUomoJeup69k/RM1ko1t/vxNtGnB7srMgOdrJ7WCpJBnVreNbeC54t++r
         k8GQ==
X-Gm-Message-State: AMke39n5Jq4IvEh3s489s7Rke4J6UDHTCJBGkSvoNqQgjlaWUG44Whr4/nwsHJP5VYSZuQ==
X-Received: by 10.84.241.130 with SMTP id b2mr50946555pll.32.1489436416168;
        Mon, 13 Mar 2017 13:20:16 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k76sm34271005pfg.42.2017.03.13.13.20.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:20:14 -0700 (PDT)
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
Subject: [PATCH v3 0/2] staging: checkpatch cleanups
Date: Tue, 14 Mar 2017 01:49:52 +0530
Message-Id: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in drivers. 

Arushi Singhal (2):
  staging: speakup: identation should use tabs
  staging: dvb-frontends: removed code in comments.

 drivers/media/dvb-frontends/drxk_hard.c  |   1 -
 drivers/staging/speakup/speakup_dtlk.h   |  10 +++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
Changes since v3:
 -change the subject of cover letter.

2.11.0


