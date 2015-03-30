X-GM-THRID: 10405450612736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fe26ccfebc7720db,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.149.195 with SMTP id 186mr39366678qhv.0.1427737198659;
        Mon, 30 Mar 2015 10:39:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.169 with SMTP id b38ls2433301qge.31.gmail; Mon, 30 Mar
 2015 10:39:58 -0700 (PDT)
X-Received: by 10.236.51.170 with SMTP id b30mr40094463yhc.34.1427737198498;
        Mon, 30 Mar 2015 10:39:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id gu4si1191045pac.1.2015.03.30.10.39.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 10:39:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id cy3so173287496pad.3
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 10:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yiSb1Jnz6DNQ4oKsc7ujr3mJ1sQg6gmZ7ZCZMBGY6bk=;
        b=J72CaOMsjczmANkWgsFc9yhup4xX3O+HAW8YKmr3Q6tdujz/bZKkhSi6Fi9CGZyp+O
         a0yQXQPTSQvr1yLDw/aIRxKRa5Ks8hzIYuQ7OX9NP0L+QfxV8lsLFDKvt4LkBq0SFOwk
         mUlcDjKRQieApd81Gykf50pO+RPqRHCqfdLnZMFKc34jmZNbsSUwEhF7+B5USeR+lw4R
         d8ZDZMwleP0m2cfdRrvUVP+o+lIqPWuJN65BcxSGEF/+lWnK+o/6yPyzKVbt/DSiHrEz
         /MR7YqkZ/riZ77ODSw2xZIfcES2znTZegW/99YbNvPP0JZm0bqZpSgI8fhwBIAS3e6Gd
         7/ZQ==
X-Received: by 10.68.179.67 with SMTP id de3mr60615152pbc.85.1427737198331;
        Mon, 30 Mar 2015 10:39:58 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.224.156])
        by mx.google.com with ESMTPSA id k9sm11305525pbq.46.2015.03.30.10.39.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 10:39:57 -0700 (PDT)
Date: Mon, 30 Mar 2015 23:09:53 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: Fix if-else brace indent
Message-ID: <20150330173952.GA32369@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed brace '{' position after if header. Problem found using checkpatch.pl
WARNING: suspect code indent for conditional statements (16, 16)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rts5208/ms.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 4c38ff9..a8515d0 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -914,9 +914,8 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
 		if ((buf[cur_addr_off + 8] == 0x10) ||
 			(buf[cur_addr_off + 8] == 0x13))
 #else
-		if (buf[cur_addr_off + 8] == 0x10)
+		if (buf[cur_addr_off + 8] == 0x10) {
 #endif
-		{
 			sys_info_addr = ((u32)buf[cur_addr_off + 0] << 24) |
 				((u32)buf[cur_addr_off + 1] << 16) |
 				((u32)buf[cur_addr_off + 2] << 8) |
-- 
1.9.1


