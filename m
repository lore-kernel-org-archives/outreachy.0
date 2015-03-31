X-GM-THRID: 10509391757312
X-Received: by 10.182.245.169 with SMTP id xp9mr46883868obc.44.1427810861933;
        Tue, 31 Mar 2015 07:07:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.34.138 with SMTP id z10ls1340872obi.10.gmail; Tue, 31 Mar
 2015 07:07:40 -0700 (PDT)
X-Received: by 10.182.28.104 with SMTP id a8mr42026960obh.15.1427810860867;
        Tue, 31 Mar 2015 07:07:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x230.google.com (mail-pd0-x230.google.com. [2607:f8b0:400e:c02::230])
        by gmr-mx.google.com with ESMTPS id oc12si1518399pdb.1.2015.03.31.07.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 07:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) client-ip=2607:f8b0:400e:c02::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::230 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x230.google.com with SMTP id h5so9549692pdm.3
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 07:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ie7YM5rs2M7O+kDGeXdiIz3RBkXiWwm2DAucm8sfaYk=;
        b=meCXsqNsHRP4Yynbw/FlZL0VRWy0mrpfMpbOGI6aw1FbnTjxh5I+irl2+dLYQsjdJ/
         Q36XnY5nzExTQo1IEvEQJ6CIfRDUFICgjOBdGGJpku6XQhwjSYckIZUOqq2n5/wBz0iY
         mp4KfYWw75ap2akWwYeRoGElSQ9fCibz3FNDAYnBhmPYaSCOlztuPgmJGZ/MI4dqbLp5
         GShuQ7CzO0lHWzz19GG7w7NYwxaVixTaicEp1B3rJKqEZZk9wHAlze6+3+/e4YfVm0Vs
         qZMSRL/r52qS/UqL5Mm22inJFFUXZWqRmY3mEFqx1tEWzqIuYDuwF+O/aZpjk1Jg6791
         S7yQ==
X-Received: by 10.68.166.98 with SMTP id zf2mr68417604pbb.88.1427810860511;
        Tue, 31 Mar 2015 07:07:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.95.190])
        by mx.google.com with ESMTPSA id op4sm6409940pbb.77.2015.03.31.07.07.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 07:07:39 -0700 (PDT)
Date: Tue, 31 Mar 2015 19:37:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Remove brace for single statement
Message-ID: <20150331140735.GA3357@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed braces in the single if statement. Problem found using checkpatch.pl
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 13b25ab..93517d9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -25,9 +25,8 @@ logical_chip_type_t getChipType(void)
 	} else if (physicalID == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
-		if (physicalRev == SM750LE_REVISION_ID){
+		if (physicalRev == SM750LE_REVISION_ID)
 			chip = SM750LE;
-		}
 	} else {
 		chip = SM_UNKNOWN;
 	}
-- 
1.9.1


