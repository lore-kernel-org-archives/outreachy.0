X-GM-THRID: 6333026531051307008
X-Received: by 10.157.56.142 with SMTP id p14mr48991otc.4.1474522643112;
        Wed, 21 Sep 2016 22:37:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.211 with SMTP id 77ls5809692otd.49.gmail; Wed, 21 Sep
 2016 22:37:22 -0700 (PDT)
X-Received: by 10.129.154.196 with SMTP id r187mr42712ywg.54.1474522642838;
        Wed, 21 Sep 2016 22:37:22 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id u139si8140ywe.5.2016.09.21.22.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 22:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id t67so4285586ywg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 22:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6XdC/z24iQvj+jlWaAbWtlpWKfS2E0fPFvJRSe54mQs=;
        b=ik+LtrJDwuUJK341LV4YBgdE38HO+j6z2A+FSfA0U6aa99WcpGrSbMFVQv3nm8NCM1
         3CXHDfmhtQ/x4aNVfBH90/bEao97BQCtCx/IBmprqg3QtKsZtow7m5Gimot83qaV22sN
         EPEfvSSR9fPwDJIYAmqlwS1rF1lrO7OdkHLvKIYqETHZ11YljmEexrna+iuwpuhoMaya
         ts+TAC7Oa0UrC+lDAFWgeydd1vzY/ndZqfm0uEspfRK2jBZUn9ZQB+FIw2scTsZhRRGS
         5iWiujBYetBrAJAUxTUT8T2TF3DDNslttfyzMKrTLyondH800hYu/MAsQ+MKz/RZ/HaD
         VdqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6XdC/z24iQvj+jlWaAbWtlpWKfS2E0fPFvJRSe54mQs=;
        b=i2j0rG6UX0vmzhJSzhI1NmXUcNLDe5aQ9T4S0lfLjdPPo6XsQLPaUEa8VojajzDPBN
         2WxJovHfV9kI9gL4dBxwspdkCSu3eN5hEwCzKQu+o98JKtPkRKlSc9S6EHy1rlFKSAn7
         qyX40vxo90BXy0t8s6jaXEcE1H9oXp4rXNITbEIxepRfQNgptZg68t6FI3DzdI573FA1
         IvfjTWCUCN4QG1fqYut+l8vhoPvbGdDee2YdXR2o3PDy9YUoXBWiTGQjGKGJhn4jtha2
         VxieaSgRpC4OWgYWAQNU11PWXNqiF0GxtB9MceZg/Ihz36o/QAG0vLULz9QYpuqoKCmx
         LIUA==
X-Gm-Message-State: AE9vXwNfgrtFU5flzMG+JqOcZ93SPD+mLIfx/jzuVvmrnnCwziRUGcehWbB88MG4MXQcWA==
X-Received: by 10.129.41.134 with SMTP id p128mr124234ywp.154.1474522642613;
        Wed, 21 Sep 2016 22:37:22 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id a68sm53302ywh.44.2016.09.21.22.37.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 22:37:22 -0700 (PDT)
Date: Thu, 22 Sep 2016 02:37:19 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: fixed block comment trailing
Message-ID: <20160922053719.GA27381@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

Moved trailing */ to a new line and added * to subsequent
lines on a block comment.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 87ceebe..4e6ea76 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1297,7 +1297,8 @@ typedef struct hfa384x {
 	int dbmadjust;
 
 	/* Group Addresses - right now, there are up to a total
-	   of MAX_GRP_ADDR group addresses */
+	 * of MAX_GRP_ADDR group addresses
+	 */
 	u8 dot11_grp_addr[MAX_GRP_ADDR][ETH_ALEN];
 	unsigned int dot11_grpcnt;
 
-- 
2.10.0


