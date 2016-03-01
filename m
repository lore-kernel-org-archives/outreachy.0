X-GM-THRID: 6257131864000036864
X-Received: by 10.50.178.145 with SMTP id cy17mr617673igc.10.1456860520001;
        Tue, 01 Mar 2016 11:28:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls3151470qgf.25.gmail; Tue, 01 Mar
 2016 11:28:39 -0800 (PST)
X-Received: by 10.129.152.130 with SMTP id p124mr18209756ywg.24.1456860519528;
        Tue, 01 Mar 2016 11:28:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si4634157pab.0.2016.03.01.11.28.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:28:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so10950745pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=naR4svQphlE7vZKJIcn7x+1oKp1EwIjrtI1ZR5/GjTU=;
        b=KT70JtMGsC/2WCSXnlHuaYGDrAhfZjeH0UWn3hZf3eSEAqXVIlPhuQnrO6h67BRnDA
         RVLhagW990ScJiod/bxpLWxitkuCn3UmtZ5kKf9Jrpi4X3gV8oP1R9E0qhzjiUkRoXaa
         vkFTnH1uwGd2vGUAJpHyjiQCfHyCD/I3UGSONVdkzih9kdZZSSBqFnAFXypnlOxoP72w
         0KvmYb7dk9T6Wa5X3zE1Z/1jI2Pwwpe0lQ+k0zyhUImZ/vbFsYqFbxpemtW6KFlacTt3
         Xb6swftt6zj3YqoOejCKKWrugGo7JJjpdSa3ZHMMr0EaQfShc6jZvjpYDMrVxHpiWMQQ
         dxFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=naR4svQphlE7vZKJIcn7x+1oKp1EwIjrtI1ZR5/GjTU=;
        b=EEmsqn0YjJCyMd5k/CkxGNixuXGk2pC7GckE1y/tdeFnLm6Cc4BEUUJA7AOTDpJl5u
         FiyDbhVAIo8tk9Xl1SeDL3vZsTxWobFhwDevKtNdVc3+YuUjGcVg/m+OhtFAWVLSseAQ
         C5K7oDeH+GAnqqvAhocO4dfef9ExFFTbUaVJdYDtrMxANmjHRIrSUWDJQkhx1FmDGQZc
         i8rcH5wlisMov9RE0+WXRYN0ucHu+isCsN4GiH3QDBP+yxnTxB0hNCymL1vsQZgmM05q
         hbe8b4vnPlSohyGTvtIl8ZdXguvrIFe3F5VsJy9ivg4zPB9w5W36u235K9m+au3gkGJe
         Kbog==
X-Gm-Message-State: AD7BkJLrypO/hu1lQzJMN9UHHwX+lO+sw47xF9eMj9irVhwaez/MHxXd7ua4yl5fD/NaTQ==
X-Received: by 10.66.154.233 with SMTP id vr9mr32636295pab.66.1456860519364;
        Tue, 01 Mar 2016 11:28:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.97])
        by smtp.gmail.com with ESMTPSA id k14sm47389799pfj.0.2016.03.01.11.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:28:38 -0800 (PST)
Date: Tue, 1 Mar 2016 16:58:45 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] Staging: lustre: Do not print message if kzalloc()
 failed.
Message-ID: <778dc0b75f08d848f38c736895035abbb13a7ebc.1456830070.git.bankarsandhya512@gmail.com>
References: <cover.1456830070.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456830070.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v2:
* Remove unnecessary braces of if statement.

 drivers/staging/lustre/lustre/llite/llite_lib.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 1f3e8e8..82a1168 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1937,13 +1937,8 @@ void ll_open_cleanup(struct super_block *sb, struct ptlrpc_request *open_req)
 
 	body = req_capsule_server_get(&open_req->rq_pill, &RMF_MDT_BODY);
 	op_data = kzalloc(sizeof(*op_data), GFP_NOFS);
-	if (!op_data) {
-		CWARN("%s: cannot allocate op_data to release open handle for "
-		      DFID "\n",
-		      ll_get_fsname(sb, NULL, 0), PFID(&body->fid1));
-
+	if (!op_data)
 		return;
-	}
 
 	op_data->op_fid1 = body->fid1;
 	op_data->op_ioepoch = body->ioepoch;
-- 
1.8.3.4


