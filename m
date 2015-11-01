X-GM-THRID: 6212130591636193280
X-Received: by 10.107.128.158 with SMTP id k30mr14697699ioi.33.1446374364725;
        Sun, 01 Nov 2015 02:39:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.99 with SMTP id rv3ls629258igb.32.canary; Sun, 01 Nov
 2015 02:39:24 -0800 (PST)
X-Received: by 10.66.233.8 with SMTP id ts8mr13237957pac.13.1446374364300;
        Sun, 01 Nov 2015 02:39:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id fa8si1457952pab.1.2015.11.01.02.39.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 02:39:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so117850175pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 02:39:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3XAGpeKpEhFK9/TAbeIkdHdnVDV9p0eRcc+wHVlYAGU=;
        b=jlCW1W/tnN06b7tp1Q2We0NBtp5lCabB/dxQxjH5DJQMcAPPgtV18X05xdrSjR73mg
         H7abw3x0FrFF0jTwhm4R423bVxd5VIVRLxXPBFAHE7y2HcUHwjejoOEzYdhfjqGp9mDx
         xsZAcjSIT9JT/OpLfq2vdqpf6qquuuUHLffJb9qNywjJ9kxKa8oLBGBEYw5i290ZkOn3
         88hKyzPfQqRhGH8VimVAa0/OUleJFUV9Ar3N3H9pFcr7tcxImhYsB19/W21i3hZGsRyi
         +r/ZCzp7XTCsu7jqS+UE8roVW0vsBXEvlbGGZmx/f8dP58fOEJhsqgZOqFZdhPgaGx30
         p5dg==
X-Received: by 10.68.57.205 with SMTP id k13mr19831254pbq.4.1446374364122;
        Sun, 01 Nov 2015 02:39:24 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id kw16sm6194186pab.34.2015.11.01.02.39.22
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 02:39:23 -0800 (PST)
Date: Sun, 1 Nov 2015 16:09:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] block: sx8: Remove 'struct timeval'
Message-ID: <20151101103918.GA28639@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval'  will overflow in the year 2038, so we 
modify the code appropriately.

This patch replaces the use of struct timeval and do_gettimeofday()
with ktime_get_real_seconds() which returns a 64 bit seconds value.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/block/sx8.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/block/sx8.c b/drivers/block/sx8.c
index 59c91d4..cf87d9d 100644
--- a/drivers/block/sx8.c
+++ b/drivers/block/sx8.c
@@ -361,7 +361,7 @@ struct carm_msg_sync_time {
 	u16 reserved1;
 	__le32 handle;
 	u32 reserved2;
-	__le32 timestamp;
+	__le64 timestamp;
 }  __attribute__((packed));
 
 struct carm_msg_get_fw_ver {
@@ -671,16 +671,13 @@ static int carm_send_special (struct carm_host *host, carm_sspc_t func)
 static unsigned int carm_fill_sync_time(struct carm_host *host,
 					unsigned int idx, void *mem)
 {
-	struct timeval tv;
 	struct carm_msg_sync_time *st = mem;
 
-	do_gettimeofday(&tv);
-
 	memset(st, 0, sizeof(*st));
 	st->type	= CARM_MSG_MISC;
 	st->subtype	= MISC_SET_TIME;
 	st->handle	= cpu_to_le32(TAG_ENCODE(idx));
-	st->timestamp	= cpu_to_le32(tv.tv_sec);
+	st->timestamp	= cpu_to_le64(ktime_get_real_seconds());
 
 	return sizeof(struct carm_msg_sync_time);
 }
-- 
1.9.1


