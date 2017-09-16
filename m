X-GM-THRID: 6466329510613614592
X-Received: by 10.129.160.147 with SMTP id x141mr17724996ywg.79.1505559704948;
        Sat, 16 Sep 2017 04:01:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls8428165iog.38.gmail; Sat, 16
 Sep 2017 04:01:44 -0700 (PDT)
X-Received: by 10.99.60.90 with SMTP id i26mr16935130pgn.127.1505559704378;
        Sat, 16 Sep 2017 04:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559704; cv=none;
        d=google.com; s=arc-20160816;
        b=OKFwL4/rsPuQ0tCSEtFCIMradV7tXzxDi7X3CfRYl+QlHSbh+VR2mywmP6M3m1sBP/
         oC8MWl3RkkrZ4Q4GG/+jjgYeSouVQZzxk9+zccCp+1iHkOW3ICCePyiQthWWcTDEZOeb
         bS28tNShS89AXHNZe687jwsjSdny0Tlz46AQFtEnvbjQZrexsv4jQCu4da26dHQ5oWmr
         dUUBulptcTjjFu0TDlfekbcDyCuWuJg2ROouxH8MbKrDJo8uu1qPOguA61EfQuGEKwqB
         Td2UxQ2XdYOP3nJ4Tc+MYAhatQAEHbSXQkKEmxv9ZamWDlFvvhJLsF1l01vhJ7FSv1sd
         O86g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=YTng2gGmm0fl19G9OLGol8G8zKqAeoknRzrvtHhYCVY=;
        b=eurPv+sJGvueQU4U5uxmkyoiAMsZScYh696vPap0U/JuCqSUh60a4kN2y7mP+ERk6a
         tzwSDIViFdsa9NuR5yeYSAt6KIdqTcCpadbRfP4gM2KCFxxSco7qd487DXRoGr8NnSoo
         NhDFIhkiZtqW72pbZl3GyCWx0Kl7hDMLBB00F6/Mm+eE+Cd3zK7E51X2SIFQRPj7J89O
         IpP+t0rPE2DR9XeYXpEW+3sbSXWMHrom0L3puURPlgIhpYwiKC3bYJytdZ1dN+2iP+aP
         +DUqDc0QQ8uJawAJKczy8okrKouzdVkWfjglEbX8PQr0rKBMjAfFg7uEMGOCLgouAl2K
         5Bgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7mS6VU0;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 88si275612pfm.20.2017.09.16.04.01.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7mS6VU0;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id j16so2629110pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YTng2gGmm0fl19G9OLGol8G8zKqAeoknRzrvtHhYCVY=;
        b=N7mS6VU0k496S8cBxec2E/iMjwsSznudAfAg5EnWFeTZR+4KEZsQoHnMrHCelfjXe2
         ZV4/xTQkxeTdBGlZCIGC10WAk8qVWeR4LDf5MZfZAnhQsA/CtaMNP0YlUW1cHap1FYG2
         Epjf+4pTKmZpTz09MyTIDPi29r1sH0Bz5XZQxdf8hzvxaWlENJkbxt1vMja2xsIyr/FK
         YTS2m8c5ailuohW+iJRcTeOUOuL5p0p+as/ER9NauROy+sQ7bu9TkK1kwJ8nfrp+KtLY
         zfii3E83m6rOlUkF8xxj3aMlSGWclnMZCyQMt1AdsLA22pPViZ857yoUakeCf2yk5Z+T
         7bWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YTng2gGmm0fl19G9OLGol8G8zKqAeoknRzrvtHhYCVY=;
        b=lGTU91GqoSDQC3SbLkBDk1KPlvKzbVRsvs2lE5rTCRlertO3j97Xr9gIYsZI7Cpyzh
         4v0aas5kM6asD4VwF7x6QCNK8ebpegpj25nL/z1V+ifv3DOtYRDUr3y2tPLjxVJgdF+I
         i+D5hDUShVNqIWZvIzUiZU6Chm0IUBvtZb2VIb4hvAWlNLfH2jNrqiPbYCgIdQN/e84l
         xx6f/Y/h0EqGw3QQu61lqkWgDZUvLHPFSxMsw1zFkXLjRp1n6K2IVzxGYgmAIbmsFINQ
         DImBoBrQ/sOOzWWnLQKCHBawIjYNH7RWlbfBcn+MFJGs/enb6J9a8MsC4NMrZqqvtEFY
         G9EA==
X-Gm-Message-State: AHPjjUg5+AH4xjzonDtJDH8Q7IiyIag+sLltucT34wfCwMo/wUSObF3S
	JCznJ6cMaD3yJA==
X-Google-Smtp-Source: ADKCNb50yiWDm9zAOdDn7E9IgXPr0k+4F3kIAarOKO6JIh4kuyzej3GV0ZP68qE4ZhbrXWiTWqUPjg==
X-Received: by 10.84.217.27 with SMTP id o27mr30725483pli.339.1505559704122;
        Sat, 16 Sep 2017 04:01:44 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id e13sm6588274pgt.14.2017.09.16.04.01.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:43 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 09/11] staging: rtl8192u: add space after ','
Date: Sat, 16 Sep 2017 16:30:52 +0530
Message-Id: <0da6b662384c22b33aea69b7e35bd2cd7ac10deb.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

Fixes 'space required after ','', reported by checkpatch.pl

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 7cdcb75..f19aaeb 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1986,7 +1986,7 @@ struct ieee80211_device {
 	 * stop_send_bacons is NOT guaranteed to be called only
 	 * after start_send_beacons.
 	 */
-	void (*start_send_beacons)(struct net_device *dev,u16 tx_rate);
+	void (*start_send_beacons)(struct net_device *dev, u16 tx_rate);
 	void (*stop_send_beacons)(struct net_device *dev);
 
 	/* power save mode related */
-- 
2.7.4


