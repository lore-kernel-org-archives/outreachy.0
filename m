X-GM-THRID: 6395538220161957888
X-Received: by 10.157.25.3 with SMTP id j3mr5946257ota.99.1489143037377;
        Fri, 10 Mar 2017 02:50:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls6795418oto.31.gmail; Fri, 10 Mar
 2017 02:50:37 -0800 (PST)
X-Received: by 10.157.2.226 with SMTP id 89mr6902354otl.72.1489143036994;
        Fri, 10 Mar 2017 02:50:36 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1707283pfx.8.2017.03.10.02.50.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 02:50:36 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id j5so10415271pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 02:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=R7qCzBZkR9oSk4j8aSntN9shzCyO+AFz3JS+E+8Q5Ic=;
        b=kfcJFpvgkIhXtpp6ReDXbp0otZs9Lles14B1zVSgwl0TPop9qJxr4m8UM3K0qvFWmA
         b6W+mPH3yT0fl4fpPsFBVM0sSAFtlsQO/bS05OUzmmsild7Q/gJS3590/vZZX0mD3pbh
         3xUmO6LLk3EDvbVMXOlbt+ZHCfCa+uxNNoB+g7etrYUNY7KB4LIjghrQNR+uk2Ihecg/
         ZCAlzXgK1fWgJoo/gvUQNv2n9G973cQTKQNlb3BdIcpva6AKvs5B+o3ES/2dJ3fvYOsO
         sa2PY1kpd93hPG7++Oz2vFoxFOu52ruTZC6iEeHpOC+SiFUDnzoEbjIGdHAaKU4Onnjt
         BiQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=R7qCzBZkR9oSk4j8aSntN9shzCyO+AFz3JS+E+8Q5Ic=;
        b=FuHqL8DdGDMPUxSb7iSLDuzS7GFqvzEQ1oIh7/YnlNDExKwwFZGyKLN19smelkowDW
         tqrKBTnkmkkxZ6x0S3/ASbd8D4iy/6fi+Dt6b0xR8X63eHWqBydk7YGVWMEOEuALKujX
         PzKRF7XkzvaWbPgt7bwDrDBYpgM6SVQnP1cHMPRV9xuZUNrba9NNp1h0HJZ+qEYzmMZ+
         q5M7r1fdg6/eBlCs0WrXulPz2zmSn98ETStb61sv0Uyqn2FqfPRdfNQ5pKTidM0SyPhP
         nPAhgjEVNtHtEEXydZERXQOSgD3OSaRLseeuciBnU60RxiccAP5y+f/7G7xLbCAga5AM
         UwCw==
X-Gm-Message-State: AMke39mHIMs3qmq8Smam77xwXReBb+3CD/nQXFPwe8NJ1uM2XWaswRsM+OysaRDtQadyKw==
X-Received: by 10.98.72.199 with SMTP id q68mr20064654pfi.152.1489143036746;
        Fri, 10 Mar 2017 02:50:36 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r67sm17876457pfb.125.2017.03.10.02.50.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 02:50:35 -0800 (PST)
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
Subject: [PATCH v2 0/2] staging: speakup: checkpatch guided cleanups
Date: Fri, 10 Mar 2017 16:20:29 +0530
Message-Id: <20170310105031.2144-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (2):
  staging: speakup: Placed Logical on the previous line
  staging: speakup: spaces preferred around operator

 drivers/staging/speakup/main.c           |  8 ++++----
 drivers/staging/speakup/serialio.c       |  4 ++--
 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c |  4 ++--
 drivers/staging/speakup/speakup_decpc.c  | 14 +++++++-------
 drivers/staging/speakup/speakup_dtlk.c   | 14 +++++++-------
 drivers/staging/speakup/speakup_keypc.c  | 12 ++++++------
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 8 files changed, 35 insertions(+), 35 deletions(-)

-- 
2.11.0


