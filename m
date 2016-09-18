X-GM-THRID: 6331735722653908992
X-Received: by 10.157.41.212 with SMTP id g20mr3000478otd.73.1474222103872;
        Sun, 18 Sep 2016 11:08:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.74 with SMTP id l10ls3039083otd.44.gmail; Sun, 18 Sep
 2016 11:08:23 -0700 (PDT)
X-Received: by 10.157.45.115 with SMTP id v106mr4601656ota.45.1474222103457;
        Sun, 18 Sep 2016 11:08:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id e66si436710pfk.2.2016.09.18.11.08.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 11:08:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so5863294pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 11:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=R3GMmut7qVkSPkAD7Mj5aqp355r1T+fyg4MN8vu1xOw=;
        b=pKM4QVWK9cj7/F1nMRVSHUSXekTlYJbQ+MZa7kRvj7/waoGAIbjMsIA4ztvs6eSlNr
         azIDXY3WpkA0HZKYnge41DA0Dya2BOyiqRqfjyb3V0ykBi9OWlTX8eyxVOzn034brnph
         5fp1lo7Jg8GcSKq3GqLnC4RhKQKgJPUSgKEpHozSypqzc+UJfziAPoVUiB58wD1IT4TW
         laRGtpAIqJNur3ZSUtzX1GhF0rk4ced7N8KLXFdq4ljDQuwwbGl9ISfh9aMspoZQHtEt
         UzgX9k3sRxWV3MZGJkaoRXz+pwXoBL1iyT5N6E5LkL0DGeRS3Cc3m2vks/9ClrNELm9T
         hgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=R3GMmut7qVkSPkAD7Mj5aqp355r1T+fyg4MN8vu1xOw=;
        b=HNec0/BfxNtuX42ULu7Gf2q7Rz+DEe6PQdq0LmUW7sx/JxprhOaR1/fcIW31UdUUIZ
         LNpaQoiY4PzALoLJ+4C/uGqslvabVJzk6by93+jIY2OYRDiPAbapowy73Q4FM0jPoUt8
         DcYTg/jducwBF2uACrDrYruFR0rjGnNZpInHs44Df5aehWp9lOw030qSCkpMGpZN2k/2
         NIEtnDWEbt4y6BiqMOeK7QbXeZkRYjDO8pHMV+K17D6cZ0gUa7PWsjQ0wvd6uy7ycE4u
         KRHiVoETnS9IyRiziRqE7Ht4g93xLXFT277gOl5uSCrvBe1EuPNB/EG+x057aVRqdMgn
         Nxlw==
X-Gm-Message-State: AE9vXwPRUAE5Cxs1VutlOzm9A7xvwWXNHA49R4Xkqt6+50Kw0rJ/W6YDySMFByciZhUtbw==
X-Received: by 10.66.249.233 with SMTP id yx9mr27051546pac.165.1474222103268;
        Sun, 18 Sep 2016 11:08:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.93.227])
        by smtp.gmail.com with ESMTPSA id sl9sm17728702pab.22.2016.09.18.11.08.20
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 11:08:22 -0700 (PDT)
Date: Sun, 18 Sep 2016 23:38:16 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: lustre: Use sizeof structure *pointer over sizeof
 structure in kzalloc().
Message-ID: <20160918180816.GA4562@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index 4965d15..5eed33a 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -657,7 +657,7 @@ restart:
 
 			goto restart;
 		}
-		*och_p = kzalloc(sizeof(struct obd_client_handle), GFP_NOFS);
+		*och_p = kzalloc(sizeof(*och_p), GFP_NOFS);
 		if (!*och_p) {
 			rc = -ENOMEM;
 			goto out_och_free;
-- 
1.7.1


