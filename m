X-GM-THRID: 6395635092352401408
X-Received: by 10.129.93.195 with SMTP id r186mr6384937ywb.168.1489099835119;
        Thu, 09 Mar 2017 14:50:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.205 with SMTP id x196ls77552itb.8.gmail; Thu, 09 Mar
 2017 14:50:34 -0800 (PST)
X-Received: by 10.107.201.131 with SMTP id z125mr4999380iof.94.1489099834296;
        Thu, 09 Mar 2017 14:50:34 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id y203si1115884pfb.0.2017.03.09.14.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:34 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id w189so33992642pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=c8SMWHG4iPNSFXzyoYmB9o2mJRWojhiMvKj9G/k5kI0=;
        b=cXvneQgOKZ7X11PdkWUn7BjSqaBd3x4HdeILd5nfthppJv3rJZdS0woATqwN6c93/d
         pFlAj91/wOZED3N+lw5cqjR+dL41uSBs4xd+bBbxTJqfbnPvK5Vf79/G81hiwxLcYapx
         Gz2arOZNxjRar8KPJqzoT8zug0465G03G1A+LzZhxgpV2oSWhW55UavtrDf8FFR/CoYa
         yk6Y6PS07SKTJIRU0oU4XVxZDHAxMK/s8MU/kD+s+Xf4dyqdRl8jX4nZc72NKMWcTAN2
         B/7iCB3/VouaNLWha3+a8ItisYqHblwXhiwx7d/N1eusG44fki4TsmTEqP663ZLQAAxn
         bG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=c8SMWHG4iPNSFXzyoYmB9o2mJRWojhiMvKj9G/k5kI0=;
        b=GOyV3aOMwdEvtWFBLe8+Tn8cPMSeluQwiqXbEIMkgQkXRGNmNSWMxFjkDZhIc/oBgx
         9jAeNLdMtDP6d7602WnJ3tAOZGyjLH68AxAQpbjbJFEJJLuR173DVP7UGaoMkvsiUUIE
         blkwcGQeLrjPYU62vicbaeo9mnhC4IBECCNokItmSeWN6UBSFejwGeFxOx8UU7xM17+o
         TRQuzzJjpoPAfeDLpvJpAB+8NUR6KNIJKHS+RMjecMdp4ubxsLL1jMLAWXhCXta1jY/p
         dO270vPhFvsW72apT7rC3NVNy2lidjKBrNl0K4tPcQ6MPtWpJiAkxka4hc9027YCTFjt
         vrKg==
X-Gm-Message-State: AMke39m64PjdN14ucHKKmZPRGL3sFeE9RM6jo68sIcvQRdzRqSlv5k/wb6vHXsXecF+5AQ==
X-Received: by 10.84.233.197 with SMTP id m5mr20793110pln.169.1489099833798;
        Thu, 09 Mar 2017 14:50:33 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y67sm14359172pfa.96.2017.03.09.14.50.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:32 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 0/7] staging: gc2235: Multiple checkpatch issues
Date: Fri, 10 Mar 2017 04:20:22 +0530
Message-Id: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

v1:
  -change the subject of all the patches of the patch-series


simran singhal (7):
  staging: gc2235: Remove unnecessary typecast of c90 int constant
  staging: gc2235: Add blank line after a declaration
  staging: gc2235: Replace NULL with "!"
  staging: gc2235: Remove blank line before '}' and after '{' braces
  staging: gc2235: Remove multiple assignments
  staging: gc2235: Use x instead of x != NULL
  staging: gc2235: Do not use multiple blank lines

 drivers/staging/media/atomisp/i2c/gc2235.c | 32 ++++++++++++++++--------------
 1 file changed, 17 insertions(+), 15 deletions(-)

-- 
2.7.4


