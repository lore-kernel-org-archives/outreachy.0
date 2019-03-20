X-GM-THRID: 6670524587430641664
X-Received: by 2002:a9d:635a:: with SMTP id y26mr3110269otk.53.1553102536488;
        Wed, 20 Mar 2019 10:22:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6417:: with SMTP id h23ls877622otl.3.gmail; Wed, 20 Mar
 2019 10:22:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQk3eW3+HaqS7usH9ym1ibin18BWWIkZ6kLQqoqV7Y6RAVIaZD9VAdOlVFrCb2iSz/DKbY
X-Received: by 2002:a9d:7302:: with SMTP id e2mr3058483otk.54.1553102535900;
        Wed, 20 Mar 2019 10:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553102535; cv=none;
        d=google.com; s=arc-20160816;
        b=bD66pT+CUiBtGqf08DKpFZEIQfBfW8bSmTy+5pJYD4P3MxfSEd4epesOoXgEwc6+5m
         mTKVogLAa1Vo531WAnSJA3eBU2Zyim4JcWZH8biALDXXX4pKbmXJfcKtKPv23wwrRonA
         IGf7TS851S153monTRA+HvFq1ZetfsTt43qr/qBdN9b5Kb80RL6TlkeXglqAP2mH2wQ9
         +ssHriVjPpKGDmmXSxcrwQp+mmTIl9f1x/5YQcDCcF1jn+Fa4AIFn4Oq3vIkZeIG06P5
         BSc/REDDR+6I5m3bjcsTFY2ffEI6bMdjCaMRwOPQRlYOmSRSZX9WgHczYc4zFU/Y+65I
         n6xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=1jIas14cfWJ4gAvQjg0x4HQjvo2eHn23TSCRcSS9F9c=;
        b=Br1QNka7z28BCNcjNuP8xp5cHCLYscb+l8uAgOSsczGuMBdEP81UmBEVFDxYDSkCAm
         JeYhdyyscwdtoZFcQt/Af0tt2anJ0tL+qawMoNxbas9/wa8T+x1y1A4Q+t3I3R3sNmVo
         s0z2ZpRLnwL8uBypnNmHHw97yJp53ISRsyvdo5VKbim4CBNKrcZ8IyUwtXzvbSIYPJpp
         Xczk2dSRbIhreNZCg2LzYvVJbvuqwaBWzloWVhOQ+65/YpMqByPmdgLVCK3+OWoPNcTb
         dLcWbJSHCqaRZvD+alFQPnVPNjm361+rmmIJGNzrZgFD5EiXa83wA0Z2fzN7XQj0tL1y
         V1dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YNTuL2GI;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id m3si134849otc.3.2019.03.20.10.22.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 10:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YNTuL2GI;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2a.google.com with SMTP id p17so2711764iol.7
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 10:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1jIas14cfWJ4gAvQjg0x4HQjvo2eHn23TSCRcSS9F9c=;
        b=YNTuL2GICgpeMt/40v4GdZi1UIPsUfZK4hsFPMXYq3aELg4C+odbv7h12457GkTSyL
         D7Uu/dBZo5AysmkhIbxwDFGNUm+BThtkV6CJ7jPeSFyS4CUrDnvNLRCU/1ZCNMqUgiXF
         2y4c4w2YzWLRn97w955RZpSWYni2iVz97N8uDkhgec1x6vFypIUmFTp4n8RtETykC/Cd
         /bpGpAX1HovSoKtneqBXlEce7OwKEbPfG4hgzAH0k6kslMRl2axUZuw9wk4lJ3hS0KFm
         yByRKDvuC81p8kbNIt2Fb5kQ9na9MT69oOcJ/hq37HN0AjWDunnWC7DihgxiNdUOTk2G
         R1WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=1jIas14cfWJ4gAvQjg0x4HQjvo2eHn23TSCRcSS9F9c=;
        b=djVxmj9oY5DnjixAeEGIuEIhvK+34lYLFHTP/hFgK/lpwZYQG5UULwOrf8MlJvMfsr
         zTZ4V+M15CjWuaERBheWcOl96K6J3rDAqm+xKC2rTED0/8MUhZW7wrAREgP+fGxpiIWd
         p5JgLh+FDVTzoIPIMbeB9F+mIwa9DOi7JHtXOtvIc5jDSvoa57aYUGMG2jgHu9gRW5Ri
         9WzUD/24YeTANGvWpBAXFYlNTVd89NVCSHXjTWWha0rOf1TImYNCJBwdEGk7q5W1gmSl
         VtR4PstU7Z18kT09UvsbgLL1owC1s36Swo0zTWlz1LJV9QqCFj8WS5ekyNuRckcAejDL
         w1Iw==
X-Gm-Message-State: APjAAAU3Iynb71UH2I847gh7uJ6YHPie6U2KK+hcGvSdSTZtmIFvn35Y
	zA/WmjE9u83eGvrYPY6mrwu/vkCkn1G9
X-Received: by 2002:a6b:7112:: with SMTP id q18mr6555639iog.5.1553102535690;
        Wed, 20 Mar 2019 10:22:15 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from Test-Virtual-Machine.mshome.net (CPEac202e096223-CMac202e096220.cpe.net.cable.rogers.com. [99.244.27.167])
        by smtp.gmail.com with ESMTPSA id g186sm1497978iof.41.2019.03.20.10.22.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 10:22:15 -0700 (PDT)
Received: by Test-Virtual-Machine.mshome.net (Postfix, from userid 1000)
	id 3711064657; Wed, 20 Mar 2019 13:22:14 -0400 (EDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: wlan-ng: malformed SPDX-License-Identifier
Date: Wed, 20 Mar 2019 13:22:06 -0400
Message-Id: <56aaa0231a140e99ac024570a95c860890c3a58a.1553099252.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553099252.git.brandonbonaby94@gmail.com>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>
In-Reply-To: <cover.1553099252.git.brandonbonaby94@gmail.com>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>

Correct malformed SPDX-License-Identifier so that it
matches Linux kernel comment coding style.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 6261881e9bcd..75acdfc30f6a 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1)
+/* SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1) */
 /* src/prism2/driver/hfa384x_usb.c
  *
  * Functions that talk to the USB variantof the Intersil hfa384x MAC
-- 
2.17.1


