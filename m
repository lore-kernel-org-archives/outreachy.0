X-GM-THRID: 6339093426987859968
X-Received: by 10.28.47.136 with SMTP id v130mr153212wmv.12.1475935202533;
        Sat, 08 Oct 2016 07:00:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.203.200 with SMTP id b191ls961277wmg.17.canary; Sat, 08 Oct
 2016 07:00:01 -0700 (PDT)
X-Received: by 10.28.93.194 with SMTP id r185mr152843wmb.22.1475935201878;
        Sat, 08 Oct 2016 07:00:01 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w16si306544wmd.0.2016.10.08.07.00.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 07:00:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of laurana5@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=laurana5@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id i130so7058336wmg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 07:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8OEII8iuDYmT2IcENhlIY/njAKJBWO4acxkB+HuNlHE=;
        b=Mj2UidKGhyA404W11CRC/ggTRYVWAMGfqorXV34NNE/kIPC23HHt+hEemDoaPPAJk7
         q5vwgkox5FpoPBFSIcpkMVKDdMpa/MRlxACWuj/5v+L5gBIrKvfT/zLIGzT7nGHxrvtn
         3XX/rcI01/p+BUYo4kMbIbji7yFt3Z8fgR6d0pFVy7aiHxAPYOHTPNRRJbqQHx9adNd8
         zxnKenjyVXFdjAg33e4M6bmYMjc9llswQ2N5f9LVNLOp0hbEwekNFRas3kjsuvXw0Dpw
         0kHxtv7E9ZJurH1uZFOeypz9jSVcGq1DLgVoV+JkjEjHIBzxeFnKn/stUplXNzYB+IdQ
         UUKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8OEII8iuDYmT2IcENhlIY/njAKJBWO4acxkB+HuNlHE=;
        b=IeqWDb3NSzfdjCt216VU/NF42M18DpatLQIgA17o1DBfXD95Rylqx2fhZpgaaQG+SG
         017QsxWGM0ShhLLvlDFqzdoYsTHrcLNsYm0oh1C+D0BjGdyLE3tr+eYFiyB6oiDl3tGp
         M2GzhFVvuTkqV28m09QJGh2B45PNpx5CwlYYPsGN51YMqj72AriTPWxWj/oM0pJO+uNv
         hz/8NQXm43m9z/svisr9OVQun1jVv58aF45VCWXWKQmGdDyUAeBA3UVKZyHA+R9uZvFt
         uJF/9I+3bvgGomzXANhjdeDFJUsAi1zMcNCfT2mSTAtzfmiA1inKbMjX45SPxCBMAPjx
         0l5Q==
X-Gm-Message-State: AA6/9RkNKUoDGP1uVeQ8Ww3rwdDKj88dFZaF/8Ic7ST6+an/mQNWO0ab3LPv3t4VgAad3A==
X-Received: by 10.194.188.113 with SMTP id fz17mr25881089wjc.179.1475935201704;
        Sat, 08 Oct 2016 07:00:01 -0700 (PDT)
Return-Path: <laurana5@gmail.com>
Received: from kheixx-VB (240.red-79-150-62.dynamicip.rima-tde.net. [79.150.62.240])
        by smtp.gmail.com with ESMTPSA id e186sm8431990wmg.0.2016.10.08.07.00.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 07:00:00 -0700 (PDT)
Date: Sat, 8 Oct 2016 04:08:54 +0200
From: Keila <laurana5@gmail.com>
To: Marc Dietrich <marvin24@gmx.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/13] driver/staging/nvec/nvec_power.c Tabstop remove
Message-ID: <20161008020854.GA20114@kheixx-VB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixed checkpatch.pl error."No tabstop at the init of the line"

Signed-off-by: Keila Novo <laurana5@gmail.com>
---
 drivers/staging/nvec/nvec_power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/nvec/nvec_power.c b/drivers/staging/nvec/nvec_power.c
index fcbb0fa..b16c871 100644
--- a/drivers/staging/nvec/nvec_power.c
+++ b/drivers/staging/nvec/nvec_power.c
@@ -441,8 +441,8 @@ static struct platform_driver nvec_power_driver = {
 	.probe = nvec_power_probe,
 	.remove = nvec_power_remove,
 	.driver = {
-		   .name = "nvec-power",
-		   }
+		 .name = "nvec-power",
+	}
 };
 
 module_platform_driver(nvec_power_driver);
-- 
2.7.4


