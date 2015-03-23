X-GM-THRID: 9659534540800
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,eb391f5c7768eaf3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.37.72 with SMTP id x48mr100827337yha.33.1427079259137;
        Sun, 22 Mar 2015 19:54:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.254.129 with SMTP id ai1ls1143004igd.33.canary; Sun, 22 Mar
 2015 19:54:18 -0700 (PDT)
X-Received: by 10.70.131.81 with SMTP id ok17mr99376537pdb.6.1427079258955;
        Sun, 22 Mar 2015 19:54:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id pj7si604449pbb.2.2015.03.22.19.54.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 19:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22b.google.com with SMTP id cz9so172685396pdb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 19:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=p3UDg8qUUgICz6QpgsTYC7xJtmow8hEyolZETkVRktU=;
        b=HKLz2c5mLJrA1E3KDj32qw7M0ENkV0S/YO9nZC824cZgMSlbc6ygM95PuUWFQJN0QA
         DCPKn+tPjLI/5wRwDQyELo6Mke/jjdbY+oDMdidRmXeTDe2YWG6hm3+5izf9xrjdQpXP
         GBlI2NoWWq/K9YjTcI+mM8Y7yw7vw9cOS47lBsrTss9qoCSgYRYsCviOF2MI11IkPWug
         +pH9K9NQc/0iD/2ddfUBriEnuw0Lc5HTZ5YLBOs50iwyklHYM/jW7CXpm7MeMxSIljxa
         LXJezTB/PMqW4zNSbX2aCETi/dORhGq0wJQpC0YbFwI+7hvflqm8B+6ER0DOipu62crY
         IlbA==
X-Received: by 10.70.1.227 with SMTP id 3mr128508481pdp.110.1427079258835;
        Sun, 22 Mar 2015 19:54:18 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.143.110])
        by mx.google.com with ESMTPSA id id2sm5539833pbb.56.2015.03.22.19.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 19:54:18 -0700 (PDT)
Date: Mon, 23 Mar 2015 08:24:14 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: sm750fb: Space after commas
Message-ID: <20150323025414.GA3889@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Put spaces after commas and a if statement. Problem found using
checkpatch.pl
ERROR: space required after that ';' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 717ca18..31268b3 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -228,16 +228,16 @@ unsigned int ddk750_getVMSize(void)
 	unsigned int data;
 
 	/* sm750le only use 64 mb memory*/
-	if(getChipType() == SM750LE)
+	if (getChipType() == SM750LE)
 		return MB(64);
 
 	/* for 750,always use power mode0*/
 	reg = PEEK32(MODE0_GATE);
-	reg = FIELD_SET(reg,MODE0_GATE,GPIO,ON);
-	POKE32(MODE0_GATE,reg);
+	reg = FIELD_SET(reg, MODE0_GATE, GPIO, ON);
+	POKE32(MODE0_GATE, reg);
 
 	/* get frame buffer size from GPIO */
-	reg = FIELD_GET(PEEK32(MISC_CTRL),MISC_CTRL,LOCALMEM_SIZE);
+	reg = FIELD_GET(PEEK32(MISC_CTRL), MISC_CTRL, LOCALMEM_SIZE);
 	switch(reg){
         case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
         case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
-- 
1.9.1


