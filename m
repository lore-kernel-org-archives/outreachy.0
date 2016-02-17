X-GM-THRID: 6251650339458514944
X-Received: by 10.194.172.40 with SMTP id az8mr49785wjc.3.1455698931305;
        Wed, 17 Feb 2016 00:48:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.200 with SMTP id 69ls911575lfr.13.gmail; Wed, 17 Feb
 2016 00:48:50 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr51674lbc.6.1455698930728;
        Wed, 17 Feb 2016 00:48:50 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id s141si1242265wmd.1.2016.02.17.00.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:48:50 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id b205so145184467wmb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5BK8uX8xVPuYfgx5f/WO7j63DB801PuANcE3lVyawmk=;
        b=KyuXybVdOiOBsx4yhRsWAF6C9XvyO8IvnKPRQ5IsZaseV0SsY9aL3pJ1fAPsu55zPB
         DqSMgFQ1uES0rJiljEXd0AezM2XBmPQWhebN1THG5Il4TFlHYj3M3D8tvJD8YwpHFTU7
         o52e3/RSYCmnCkoRgs2af3txMqb0n5FcKmA6G/0Fm2BgemHgF+E4fIc5mEehnpkLuuET
         JGvQweLoy3froGGUonyprW+wY9JAdlyWYGIQjlZrL1qeZHHUdh5bFcZMbiZmGWkFIqVg
         XgpXGaaWGJEaS5t0eF/+9AiLAnGtkLFMNBpa56Zg4xZEQg2fLcx14PAokVdxaobK0DfT
         RhVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=5BK8uX8xVPuYfgx5f/WO7j63DB801PuANcE3lVyawmk=;
        b=JpdKb7cz/OmOyHl6v/QzHaHBegE5SsUfH7itS/G+yZFqFaP7zupjiIq2aMYKTFXhAp
         tyEpVnGN5rLPNGBSjteiC960C/IhZrFw8ABuqVtMgGWDU7oWhqaIuKVLT0GKCRUz5SsT
         Ojo3KmPLXZ1n24yadF85VNElT1ueEhgqT4Qv79ApOxkzKeILcQV17v/8q9LzehwYbEjC
         nwkiwj9KWFrfE1Uv7pRdDFy5N3I9dfxlqTfHFnAWj5JdpBoSkXE5YLtXYcKoPxQrzvyQ
         HI81ayFllXIa0RAcBngn9D5wDAn4w22ynqupe3+TmRB87dC7BWw/w7sY90vebszvjNwE
         b5Yw==
X-Gm-Message-State: AG10YOQQjX7xK8IE01hXFNs7S5QBm7b2i6xSj2sTLC9YjmbgmATRZel/KXkaZNmE0wWZLw==
X-Received: by 10.28.17.81 with SMTP id 78mr2275735wmr.84.1455698930620;
        Wed, 17 Feb 2016 00:48:50 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id e14sm1951305wmi.21.2016.02.17.00.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:48:49 -0800 (PST)
Date: Wed, 17 Feb 2016 09:48:47 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/7] staging: netlogic: Fix multiple assignments
Message-ID: <88877656659f999f82d983b6c8f9cca7e99a746c.1455698124.git.nevola@gmail.com>
References: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455698124.git.nevola@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of multiple assignments in a single line. Checkpatch found
this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 00b45761..425ac53 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -265,7 +265,8 @@ static void xlr_make_tx_desc(struct nlm_fmn_msg *msg, unsigned long addr,
 		((u64)fr_stn_id << 54)	|	/* Free back id */
 		(u64)0 << 40		|	/* Set len to 0 */
 		((u64)physkb  & 0xffffffff));	/* 32bit address */
-	msg->msg2 = msg->msg3 = 0;
+	msg->msg2 = 0;
+	msg->msg3 = 0;
 }
 
 static void __maybe_unused xlr_wakeup_queue(unsigned long dev)
-- 
2.7.0


