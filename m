X-GM-THRID: 6208177008118071296
X-Received: by 10.50.30.37 with SMTP id p5mr9557395igh.11.1445453976284;
        Wed, 21 Oct 2015 11:59:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.228 with SMTP id j91ls1245335qgj.56.gmail; Wed, 21 Oct
 2015 11:59:34 -0700 (PDT)
X-Received: by 10.140.237.202 with SMTP id i193mr9102913qhc.10.1445453974773;
        Wed, 21 Oct 2015 11:59:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si1235417pbb.2.2015.10.21.11.59.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 11:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id z6so62276111pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 11:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=X2Dnsd0JuSDpzE+FDrKafOL8/y9eoLZphWxR4IIS1Bs=;
        b=kf9gSPSghjUVH84TJ+80/xFhorgziZQa5TCtDP7DrB/4DM8EcMGbtwB7cBCTbHySHn
         sFPrYDgq7omyJ//HF55MGzOuUX+q+pk6czHTMVLAQPxNQrwcZYv5KvGoAka/B+07M1+s
         qyxM1LZuGH02RM7ULE2R7bqaRedkwMgB1t0oLrlsXxLYmKx4lrjFxeOd5k8pTtppoHfZ
         qUG0xEXgfxqUmTMRi49mZTzAlY1x1WCXyF11wTzEg3x9Jz2bPumtR9Jz46XNSbr+N7xH
         gz7Png8K4uegABHMCZ93HtLxECZ1q2VMVnggt4t/31N8te/Bh6sPwUobvdBcCKOE3Gpx
         KS9Q==
X-Received: by 10.68.93.194 with SMTP id cw2mr12243469pbb.36.1445453974590;
        Wed, 21 Oct 2015 11:59:34 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.194.209])
        by smtp.gmail.com with ESMTPSA id r2sm10456220pap.23.2015.10.21.11.59.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 11:59:34 -0700 (PDT)
Date: Thu, 22 Oct 2015 00:29:30 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] staging: rts5208: Fix endian sparse warnings
Message-ID: <911b93626cc1fc3ad775ddf55a705e32f2733219.1445453573.git.amitoj1606@gmail.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445453573.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix bug found using sparse which gives the following warning:

drivers/staging/rts5208/rtsx_transport.c:217:34: warning: incorrect
type in assignment (different base types)
drivers/staging/rts5208/rtsx_transport.c:217:34: expected unsigned int
[unsigned] [usertype] <noident>
drivers/staging/rts5208/rtsx_transport.c:217:34: got restricted __le32
[usertype] <noident>
drivers/staging/rts5208/rtsx_transport.c:316:44: warning: incorrect
type in assignment (different base types)
drivers/staging/rts5208/rtsx_transport.c:316:44: expected unsigned
long long [unsigned] [long] [long long] [usertype] <noident>
drivers/staging/rts5208/rtsx_transport.c:316:44: got restricted __le64
[usertype] <noident>
drivers/staging/rts5208/rtsx_transport.c:316:44: warning: incorrect
type in assignment (different base types)
drivers/staging/rts5208/rtsx_transport.c:316:44: expected unsigned
long long [unsigned] [long] [long long] [usertype] <noident>
drivers/staging/rts5208/rtsx_transport.c:316:44: got restricted __le64
[usertype] <noident>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index f27491e..a650498 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -204,7 +204,7 @@ Handle_Errors:
 void rtsx_add_cmd(struct rtsx_chip *chip,
 		u8 cmd_type, u16 reg_addr, u8 mask, u8 data)
 {
-	u32 *cb = (u32 *)(chip->host_cmds_ptr);
+	__le32 *cb = (__le32 *)(chip->host_cmds_ptr);
 	u32 val = 0;
 
 	val |= (u32)(cmd_type & 0x03) << 30;
@@ -297,7 +297,7 @@ finish_send_cmd:
 static inline void rtsx_add_sg_tbl(
 	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
 {
-	u64 *sgb = (u64 *)(chip->host_sg_tbl_ptr);
+	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
 	u64 val = 0;
 	u32 temp_len = 0;
 	u8  temp_opt = 0;
-- 
1.9.1


