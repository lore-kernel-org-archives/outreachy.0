X-GM-THRID: 6399107209686417408
X-Received: by 10.129.87.15 with SMTP id l15mr3530488ywb.0.1489908250467;
        Sun, 19 Mar 2017 00:24:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls1466740itb.21.gmail; Sun, 19 Mar
 2017 00:24:09 -0700 (PDT)
X-Received: by 10.99.124.80 with SMTP id l16mr6410308pgn.158.1489908249476;
        Sun, 19 Mar 2017 00:24:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 190si675935pfv.3.2017.03.19.00.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 00:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so7787955pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 00:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IGYNRpUzGa6bg+37iKx6sJBg8IIpDxzQBiYGKgOEQwM=;
        b=JH0Q1vLuECzZk6eHBeIoemrlq4j/nIMehGuYyqAWGJHGTV/WDlTKFJoBSKc2MZQTcT
         Fj5hGSX1BNUN9Xte8V2+TKT6JNjM8Ud4xFTm2wTR2TeF+6OAT6I4MXCkND5p5bhuhOO9
         J/1/V0cEit/b5IuzqncWo3FpdwL0f4BdGNu9RGBYhlRHGKAT/iNU0YtkpT8CVHjEiIex
         lmUx2FOUh5WpjSbSA0b87YtKWKDbG8slTdn3N9sXSarR5QemGgfGM088rsaiKbF2a6aa
         nGXKBbxPpiXYvNDn/VtfD/++UPfB7j5yaQ3K8/JHhJyFqCnxt77etwPYa9t2cHNDq95p
         0apA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IGYNRpUzGa6bg+37iKx6sJBg8IIpDxzQBiYGKgOEQwM=;
        b=DXg/X3evt0LnBsleHAMozJWrG9pcfFYHG8ZN5NY8k240pY6zSSP4Q2UXZJhTGPr+IU
         JQVg6fGB0fSQMx/RNRhSJJnSQowmErcoSAPo0ZVc4Usyw/6yAvJYQSLuLNazh0YpIWpK
         hUe8RzIDPZcUhLZT+ttbq4HNMsNMpUEKhrcVZnrP8D3wQKcXOfK9oCLv8NIVbBsJJyll
         dMX8I+HTwauuVyP71CAr8yrZroUU01IWDB4o7WXg9b7WwEeXsEzrgxT4gzBwLbMk1oYb
         QcYZqjaUVmxgW6gLwrz888pDvrOSAPHeJ9BY8aGLaGAGaIa+GDDAkjQoWz93mFZ/N2gp
         qljQ==
X-Gm-Message-State: AFeK/H1FrL45EV2K8cZYugrezMHk0mysd8iZtzdwx1RFjAI0cpmG9VPoNojJmRD1wJtfWg==
X-Received: by 10.98.99.196 with SMTP id x187mr25748935pfb.168.1489908249253;
        Sun, 19 Mar 2017 00:24:09 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g78sm25985341pfe.5.2017.03.19.00.24.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 00:24:07 -0700 (PDT)
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
Subject: [PATCH 0/2] staging:speakup: Multiple checkpatch issues.
Date: Sun, 19 Mar 2017 12:54:01 +0530
Message-Id: <20170319072403.10354-1-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0

Improve readability by fixing multiple checkpatch.pl
issues in speakup driver. 

Arushi Singhal (2):
  staging: speakup: Moved AND operator to previous line.
  staging: speakup: spaces preferred around operator

 drivers/staging/speakup/main.c           |  8 ++++----
 drivers/staging/speakup/speakup.h        | 12 ++++++------
 drivers/staging/speakup/speakup_acntpc.c |  2 +-
 drivers/staging/speakup/speakup_decpc.c  | 20 ++++++++++----------
 drivers/staging/speakup/speakup_dtlk.c   |  2 +-
 drivers/staging/speakup/speakup_keypc.c  |  6 +++---
 drivers/staging/speakup/speakup_ltlk.c   |  2 +-
 7 files changed, 26 insertions(+), 26 deletions(-)

-- 
2.11.0


