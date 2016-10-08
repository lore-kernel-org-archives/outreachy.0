X-GM-THRID: 6339007957624160256
X-Received: by 10.129.39.84 with SMTP id n81mr5829152ywn.32.1475915302158;
        Sat, 08 Oct 2016 01:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.134 with SMTP id h6ls2658231ioi.9.gmail; Sat, 08 Oct
 2016 01:28:21 -0700 (PDT)
X-Received: by 10.66.240.67 with SMTP id vy3mr5049814pac.45.1475915301779;
        Sat, 08 Oct 2016 01:28:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si6409272pab.2.2016.10.08.01.28.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i85so4094575pfa.0
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=K4bHgH7xX1BhgORME0FOeGAC+E1Oj3/9ORpLuvWCF08=;
        b=0fExY9KCm0BmcEFcl8vpkNfO3P3qXkmhGCrsRkh6oUz1Vmf8aY4xeTKt1OkqVPG2iT
         M3if6irWlMj5Z3fWHDhfo36Vxdar6JhDYAy7h2s8XfywSz/LyJ8oBOuo3KV36y1b4bbL
         KR44TzqpZKJvBuL7AO3khCP3chldVLpImB7+VDIf0egs7884hUQNkaw81Ru5LDMMbKlM
         VSnM8OKLYytv+bh/XBBGq/f7aSq4varpgdOPRc7HqH+OJ0oX2HY0zshC90M1I+EXVLuU
         ZUKEs/yR4Ay2wB2uoUbx7lUDs/buqpye4LO30p5D9EGuGbdoofsFQJp+ACops+7roCj9
         A5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=K4bHgH7xX1BhgORME0FOeGAC+E1Oj3/9ORpLuvWCF08=;
        b=bHHFyI223RbqXDF50Zk12SxGfJN1P10AQlOBX1Wc+oXylEuF+bpr+rwKV37Esnc0Fo
         8hG9CaOf1LZ2tlfGK0YylbwuvAJZB0vVgAhQdGGRgNsyC2SNTqQ7SxGCBQMhB2MBxnOK
         v7kJSkLCqKRyRtc0SFKRPiei92k4oDvgJqM+eli61awnQ7ojtxlwNm1lgUAaVfsFXQHl
         qQlZHasj+ebteCI28+Yq45/bOsKs5qxzQWnOGgs0J1jaQL00BkD8i0uCDHxw1o+fiOKa
         vkSy3WxNGEn6wDZFGl+/8gTEw6a78a1yGtwp/PrgIF/bM0hCL+hpHfR6uvTZpL55Ww8O
         LnWQ==
X-Gm-Message-State: AA6/9Rk8wj4M3X7fKz27QeREa2nJZHbfr4W9kIK+cxBuf5c0G9h6rSw6pWiETogFNPZo2Q==
X-Received: by 10.98.97.70 with SMTP id v67mr18623783pfb.52.1475915301604;
        Sat, 08 Oct 2016 01:28:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id tj8sm33283859pab.16.2016.10.08.01.28.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:28:21 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:28:18 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 13/13] staging: wlan-ng: renames ANL_currFC to avoid camelcase
Message-ID: <20161008082818.GA11030@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Renames the camelcased variable ANL_currFC to anl_curr_fc in order
to fix a checkpatch warning.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index e00ebf3..612f928 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -457,7 +457,7 @@ struct hfa384x_downloadbuffer {
 struct hfa384x_commsquality {
 	u16 cq_curr_bss;
 	u16 asl_curr_bss;
-	u16 ANL_currFC;
+	u16 anl_curr_fc;
 } __packed;
 
 /*-- Information Record: dmbcommsquality --*/
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index af75f6d..4825beb 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -375,7 +375,7 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 			qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
 			qualmsg->level.data = le16_to_cpu(hw->
 							  qual.asl_curr_bss);
-			qualmsg->noise.data = le16_to_cpu(hw->qual.ANL_currFC);
+			qualmsg->noise.data = le16_to_cpu(hw->qual.anl_curr_fc);
 			qualmsg->txrate.data = hw->txrate;
 
 			break;
@@ -1950,7 +1950,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 		pr_debug("commsqual %d %d %d\n",
 			 le16_to_cpu(hw->qual.cq_curr_bss),
 			 le16_to_cpu(hw->qual.asl_curr_bss),
-			 le16_to_cpu(hw->qual.ANL_currFC));
+			 le16_to_cpu(hw->qual.anl_curr_fc));
 	}
 
 	/* Get the signal rate */
-- 
2.10.0


