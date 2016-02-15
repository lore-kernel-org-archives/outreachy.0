X-GM-THRID: 6251601192398356480
X-Received: by 10.66.159.167 with SMTP id xd7mr17800065pab.5.1455564329162;
        Mon, 15 Feb 2016 11:25:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.209 with SMTP id s78ls1533596ioi.84.gmail; Mon, 15 Feb
 2016 11:25:28 -0800 (PST)
X-Received: by 10.107.135.209 with SMTP id r78mr18187147ioi.19.1455564328636;
        Mon, 15 Feb 2016 11:25:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id yd9si306653pab.1.2016.02.15.11.25.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 11:25:28 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id c10so93337059pfc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 11:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6E9fH6KTiHuN1YIPNetJ/hITd7U5m34muayu1UuxXC8=;
        b=LmPm1h7daSCrEU6ZOGhpX2UJKBkQlZzbzth95MPndH9c2RFHmgbsGfjy0U15K7KUXf
         O6ZrsGULojhc6IN+LLZhwZ6XnBrDLyY55s96JpH1g5T1Et/fDAvLEvcuvzqXw+OkRCwn
         6g94ARF+2qoTaNA8Hfw4EXe4PeJQBdDXWmII1qgYxssYlqs4MS4CMKuHb095ZHiXjEGy
         DiTwlI9nuiDeDDlnCHfIGbv2fjwQWp/4RqgfN1NQnZM0UjnGt1DhyBWFq+Ug2xgLH0SH
         2yJ3ixjzROHZ0EbW///mKO3oecg+dCmgaTgcsh5le85nt6aijtpR8MkdAjftHM3qkJmf
         RQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=6E9fH6KTiHuN1YIPNetJ/hITd7U5m34muayu1UuxXC8=;
        b=ekdBFz4cN8VP/ecYr6XgRSHs9XMTf9BT7/1EcNnpWvTTBcvYlU7RDeY6m60/rveY3C
         jG6dmvRrdMEfT0EdjbtXiheRAtjYv+0f1KzTgGROJcRnq5emTMtaYIT+bo8G1lBb1R5h
         gMoVCGGY+DsiCN69Ff5pydHmyUgSShT7SDPA+8YOMi00u1WUX+Lm95y/8Z2BICa9e7kk
         5mFvZXsAZxwSt7gif3F5mMN4yQF1VPEjFnmN0VJ3CSTGCrHQxjNQZ7LxZJ7tvHrCAqkn
         HfDRiC3OlFB7Xdl1e5fpGoKcnjJsYnf7ZsfFQUTEKwzjjkB2bKMWhgjTkBIynwgiQZ8x
         FCSw==
X-Gm-Message-State: AG10YOT7Xp+aW01J7SMlFlbT91/bhOiBUQ7hoMP3IiSkq482Mlasyag5BXZD13xLUT0UCw==
X-Received: by 10.98.87.141 with SMTP id i13mr25705518pfj.72.1455564328444;
        Mon, 15 Feb 2016 11:25:28 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id 1sm40321581pfm.10.2016.02.15.11.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 11:25:27 -0800 (PST)
Date: Tue, 16 Feb 2016 00:55:25 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Replace kmalloc and memcpy with kmemdup
Message-ID: <20160215192524.GA30333@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace kmalloc and memcpy with kmemdup. Found using Coccinelle.

The semantic patch used to make this change can be found here:
scripts/coccinelle/api/memdup.cocci

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/efivar.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
index e569f9f..47dfe25 100644
--- a/drivers/staging/rdma/hfi1/efivar.c
+++ b/drivers/staging/rdma/hfi1/efivar.c
@@ -127,13 +127,12 @@ static int read_efi_var(const char *name, unsigned long *size,
 	 * temporary buffer.  Now allocate a correctly sized
 	 * buffer.
 	 */
-	data = kmalloc(temp_size, GFP_KERNEL);
+	data = kmemdup(temp_buffer, temp_size, GFP_KERNEL);
 	if (!data) {
 		ret = -ENOMEM;
 		goto fail;
 	}
 
-	memcpy(data, temp_buffer, temp_size);
 	*size = temp_size;
 	*return_data = data;
 
-- 
1.9.1


