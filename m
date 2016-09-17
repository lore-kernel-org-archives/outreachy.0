X-GM-THRID: 6331277743473295360
X-Received: by 10.129.121.70 with SMTP id u67mr11995509ywc.2.1474115472286;
        Sat, 17 Sep 2016 05:31:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.42.87 with SMTP id t81ls2057200ota.36.gmail; Sat, 17 Sep
 2016 05:31:12 -0700 (PDT)
X-Received: by 10.13.209.3 with SMTP id t3mr1413648ywd.131.1474115472001;
        Sat, 17 Sep 2016 05:31:12 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si3515411pab.2.2016.09.17.05.31.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:31:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q2so2151523pfj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 05:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P2Xf+iW2AC6on0z6PuQg+U6wQg0fA16cxP9qUL44lVQ=;
        b=F/fOhkXFHyaz6FdRjGo6cQGhkBDD3n/F/OpRJfoe6+w+5eWoWz3JwBwW1/oT+TBbnD
         gnTwyqI6VNC7mSQVChBBbNa7t5ywuFHDo1TTNmYew1m7Tj87A/1lmaH//Ih4TZrcpm7L
         QelORak6GQontZgPvfxCBh47f4RODJneRN9MaDN+jVCsak2Zo1ONI7kloHXmkv8RY6zs
         gWviQr/RSgq5H9DQk9iQMXb/03NRspEpEkcywFt/JF5rr4Dwj8JQhHisE941usfEtBtU
         99rKHtPeaqCsF8KryotQbMVFbsmKi236wvy5+LJ4YyQRmLh20KTe/AUsoi7+SSkisLqU
         /8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P2Xf+iW2AC6on0z6PuQg+U6wQg0fA16cxP9qUL44lVQ=;
        b=LPpJzEvzA4kYfwvnCFkr1xVV02G3brW+GD9GEJcX6lcDxyDFN5aMqOQCrUL5oKJIgC
         tmg8Yz9wQwkzSbv+E1kq5uMsx4lgPY+XfEp88hBK2DYvAIYJ/3UrC33dm/TJJJuLDUxa
         BWwnGMs/ZKfBOP+CpxRcZEJXwrGFe7JTfALCIyoxVfUeDnRpJk0+yeh4xjK0UwEHKmag
         ZfArp/F4BmpVaM8yRoI9gHZ52wwTpYtgQ9Fzy6PGjQp8XzB0C08y1R+CWuAONltMbsAh
         MKq67IAAv6hT4cfr206ixGd2SstT/HA/JKFKKpTwEOCGlzehVUxIDEkuaLvXs500VtRb
         0eag==
X-Gm-Message-State: AE9vXwNrhZ4OHB5E8N+slNzO/4nXdnvJQDlXHNzHiW0l6SAxIQP7l7WJudOSbQhaQX1SPA==
X-Received: by 10.98.137.145 with SMTP id n17mr17282724pfk.170.1474115471618;
        Sat, 17 Sep 2016 05:31:11 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id ya6sm18992653pab.14.2016.09.17.05.31.09
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 05:31:10 -0700 (PDT)
Date: Sat, 17 Sep 2016 07:00:54 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: i4l: Return NULL instead of 0.
Message-ID: <20160917013054.GA14842@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Return NULL instead of 0,if card with given driverId is not found.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/i4l/act2000/module.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/i4l/act2000/module.c b/drivers/staging/i4l/act2000/module.c
index 39a8940..6a6c911 100755
--- a/drivers/staging/i4l/act2000/module.c
+++ b/drivers/staging/i4l/act2000/module.c
@@ -499,7 +499,7 @@ act2000_findcard(int driverid)
 			return p;
 		p = p->next;
 	}
-	return (act2000_card *) 0;
+	return NULL;
 }
 
 /*
-- 
1.7.1


