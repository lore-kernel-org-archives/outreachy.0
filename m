X-GM-THRID: 6249445155877683200
X-Received: by 10.112.135.234 with SMTP id pv10mr4288427lbb.24.1455062338651;
        Tue, 09 Feb 2016 15:58:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.70 with SMTP id k67ls6122lfb.62.gmail; Tue, 09 Feb 2016
 15:58:57 -0800 (PST)
X-Received: by 10.112.135.234 with SMTP id pv10mr4288426lbb.24.1455062337902;
        Tue, 09 Feb 2016 15:58:57 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id c140si525781wmh.0.2016.02.09.15.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 15:58:57 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id g62so6018512wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 15:58:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=441GqFmOdJuRTLXNQ/zPXD5MdQDDIu9r8X2lddqf3nY=;
        b=wI3xKNzmyrqvetqW3t4dksZORJNQFu6F3KEg2ScmsrY5PRxnJj/St5eHG9t4iPDZXL
         gRw9LBThOtXzJfFERRZjNm5JPQdcn4gSdJWbpOitU53c2woGZzNFJYVIFEE6CCZA5F5K
         rnbBJ7YF8uiq3QtcCshBlgHz2FdvHOP1JBfliujjkFxzXh6IJyMgjv4xBP7cil9uo1Q2
         a9eGy6Jn/vxsfbxNnbaDZoMAaWIEHhULhjq69jzHdTrVS6LipAGwdCT8O8FTUDlOmZpP
         OMd5xAVs+kQ12eVzZXX0FpIVEi9fYfodPDFprXxPKQbMxAcodMspfRRruGjC+EaKbr7M
         RJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=441GqFmOdJuRTLXNQ/zPXD5MdQDDIu9r8X2lddqf3nY=;
        b=aUccjI1VILVpt6wOJbO3NTgEcZxIcU5GLvhUTqh9HkqfaV9nh6B7I7FL4mO5VMlypw
         rby2+RYlOampqAHh5NTe1IMhZIgwxT40Hg0G1vzzpXDNZBuWLWU4/wd4YHz5Xqw9WBBk
         5tqX5dK/M04O9FNSHFqSJx551P7iFMLEhTPrEdmuXVcd0qZtKz9FQi8EliBvLo6GQPUW
         /Y96M+sOZYhcfNNOC0hH8BIo7pmXhZ9/vjyKvWJe4Jnbbw+9rGte+3TRfviVysuHRkw3
         /6W822w2iqW/u4nEthdXIEZ8+ez/oz4QIh+9vp56tWXK5HHwnmp4oQH8nByVLXqNhklu
         j6Qw==
X-Gm-Message-State: AG10YOR14XkZSeeLxLhEIpuD73dG1NqEyFbe9iB4ZYypdvYB8QlBwR/6tDyF2JCvfugtfQ==
X-Received: by 10.28.68.139 with SMTP id r133mr7464636wma.13.1455062337776;
        Tue, 09 Feb 2016 15:58:57 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id w66sm865367wmd.2.2016.02.09.15.58.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 15:58:57 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Julia.Lawall@lip6.fr,
	daniel.baluta@gmail.com,
	gregkh@linuxfoundation.org,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] drivers: staging: lustre: lustre: lov: lov_pool: Fixed a warning
Date: Wed, 10 Feb 2016 05:28:46 +0530
Message-Id: <1455062326-20870-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed a checkpatch warning.
WARNING: struct file_operations should normally be const

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_pool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/staging/lustre/lustre/lov/lov_pool.c
index b43ce6c..bba37bf 100644
--- a/drivers/staging/lustre/lustre/lov/lov_pool.c
+++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
@@ -288,7 +288,7 @@ static int pool_proc_open(struct inode *inode, struct file *file)
 	return rc;
 }
 
-static struct file_operations pool_proc_operations = {
+static const struct file_operations pool_proc_operations = {
 	.open	   = pool_proc_open,
 	.read	   = seq_read,
 	.llseek	 = seq_lseek,
-- 
1.9.1


