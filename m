X-GM-THRID: 6251307568261496832
X-Received: by 10.31.47.131 with SMTP id v125mr13535605vkv.11.1455495964296;
        Sun, 14 Feb 2016 16:26:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.137 with SMTP id h9ls1676902qgh.22.gmail; Sun, 14 Feb
 2016 16:26:03 -0800 (PST)
X-Received: by 10.31.169.130 with SMTP id s124mr13542904vke.1.1455495963829;
        Sun, 14 Feb 2016 16:26:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id g136si1867698ywb.5.2016.02.14.16.26.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:26:03 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id y89so100846470qge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 16:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EkBKJQ8ycxUCkf9xo22dUovn8AUJYSZdUS60Qi1T5ZQ=;
        b=GnlDe5ENqsaP7DAKE7C3S4g1M7fCw2tyOqscrDoszeVUIIRArDCV2aeok1E5EdYCoJ
         JKokOC8qlSMch6b8ACHnRvZIxEJRgxjziZuBqcrXYnMzHtF+BzaliWwdBmPIYgprIYLq
         B3kCR4V6HUo0Ho5RKHrEuw2TROvQxOLahWK5a/SAl8l6n+AP6wnL7DBR4qAzgW8JdAJx
         jqMKwoHoAMchVVxk8/s/B/OIqXgODeomxhHFkmg3Qj9u8QW6+6FYELr6WBNJXpw9Tj80
         /tvsmVAs8Ol6Alv/RTztEMICDKr/4wyyljmAPeBDBeHhLSjEmauIWXWK3WoiC7oXJBZg
         U9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=EkBKJQ8ycxUCkf9xo22dUovn8AUJYSZdUS60Qi1T5ZQ=;
        b=WU3kZyFxXwprPDH2wz6RCdxXYkHhfAjog+6vGIH3r4O9tivUJnycpNWVD+lF4iZjaI
         lClMTr+yLQI2vyCcVRcWz4QrMzIziGVNWz5MnDtT3rbf/ddx2iamrXN+zaBWNfZLUV9E
         4eT47zTtEzz6bWPI6BeNZLfgOqcUlX/BHAEzskEzfj8Nz6xlwxJ4l9jckx8KhSyKn2i9
         hKo7dJRvMMfOwET6anGZJduHNZXrN/xWK3VeLSagDL7wxQzSNemvstr+PWOJhqyZdyJ5
         YQ80itOb1uakCWH/qmBz4GXeV4zGulQBv4v5xjprSjspu09fpypoIWVLlZH5biURxC3m
         NkQg==
X-Gm-Message-State: AG10YOTMK7bEerMUDkVim4xiIhVIBRNRXYMF5JJhK3idH8KUlLsDgBK8PKSHLmyoIAy14A==
X-Received: by 10.140.231.80 with SMTP id b77mr3607019qhc.56.1455495963697;
        Sun, 14 Feb 2016 16:26:03 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:1481:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id 139sm10099811qho.2.2016.02.14.16.26.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:26:03 -0800 (PST)
Date: Mon, 15 Feb 2016 00:25:23 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Fit function header on the same line
Message-ID: <20160215052523.GA3265@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Improve readability by fitting all parts of the function header on the same line.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/vt6655/rf.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 3df430b..ae10da2 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -612,9 +612,7 @@ static bool RFbAL2230SelectChannel(struct vnt_private *priv, unsigned char byCha
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool RFbInit(
-	struct vnt_private *priv
-)
+bool RFbInit(struct vnt_private *priv)
 {
 	bool ret = true;
 
-- 
2.5.0


