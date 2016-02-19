X-GM-THRID: 6253009211887714304
X-Received: by 10.13.248.4 with SMTP id i4mr12663502ywf.20.1455892159389;
        Fri, 19 Feb 2016 06:29:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.9 with SMTP id gu9ls85131obc.57.gmail; Fri, 19 Feb
 2016 06:29:18 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr12480985obi.12.1455892158930;
        Fri, 19 Feb 2016 06:29:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id u66si1733300pfa.2.2016.02.19.06.29.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 06:29:18 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fy10so51183374pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 06:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+Rznu1p+co2eJTj6LXUGfmduREqyppTeFSThY8FjomQ=;
        b=JspsF/Jkhbxke2EKNqTYevXQJquSZmmeCYfqG3WXHSCiLaXcPQZfrT9jqlLhuiEkvq
         ckABO8SrRwIvbtROliWgv4l/A91uEQZWDvjkjib/hneFNrLzBcwNOrEQ1TlNcs3+ZSvs
         y9Ho+fYI9mKSnfY/QvEccccsgJrIqcWJkJaK1jCG3t1QGhAWQorhBwbm5hwZ13rIsz8w
         I0VyzcKMnXu5ANn/gIGYxq5vx3ik6j11ruDuVxsNT7fW7ZWLe4fJGXvGwfp9cgqt/kVG
         81P5PvLh4e6iGHtXIP1E4Y8Cw2zxvOC/0xs1WjMGoh4bySLNn/DRnys6EW0wyHUHNrQK
         Kb2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=+Rznu1p+co2eJTj6LXUGfmduREqyppTeFSThY8FjomQ=;
        b=A+SwTDxxGe9KZDSFeS0Z5iIXw4hQjD654Grn4MNrsqk/J2Iy3oVA5jx69jU4gVbUVB
         zBY1Ix1hbjsut+JZf5abDYokxLLHb6Y3gffdW8DorinqaGl+kzAF0rY/7yT/s12Svhuo
         3kVDUIVW2PzaY2EoSTThHhMcaEP5du+55MryFHe5CzhUWZVsrkrHweE+YkhPMwLlp0mg
         jzlEtQcit92ZaDxaUBNsp1UHiwEad7iDdoPxK3LzvdZy1LKaYCg4CbNm5+ZPh1dwmQFs
         9orGwJv8XvhO0N9a6TV4gmAYyGlv0L7LLx7otd3cPbgO+VQIPDsZNTYoAN4mknCY6DiG
         +RnQ==
X-Gm-Message-State: AG10YOQ5WCTYjdqkCUU3tlC+QMcuOgzfuw+C/VEQSWJIQ+39gu3bk9l/lV1QPWI+FfRNVw==
X-Received: by 10.66.124.170 with SMTP id mj10mr18605871pab.92.1455892158623;
        Fri, 19 Feb 2016 06:29:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id o90sm18344619pfi.17.2016.02.19.06.29.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 06:29:18 -0800 (PST)
Date: Fri, 19 Feb 2016 19:59:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Merge three statements into one
Message-ID: <20160219142909.GA10262@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch merges three lines into one, removing if branch.

A simplified version of the Coccinelle semantic patch used to find this 
is as follows:

//<smpl>
@@
expression e;
@@
- if(e)
- return false;
- return true;
+ return !e;
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6655/rf.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index ae10da2..f32d18e 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -518,10 +518,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
 			break;
 	}
 
-	if (ww == W_MAX_TIMEOUT)
-		return false;
-
-	return true;
+	return !(ww == W_MAX_TIMEOUT);
 }
 
 /*
-- 
1.9.1


