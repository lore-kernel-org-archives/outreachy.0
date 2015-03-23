X-GM-THRID: 9667494281216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,81ec3bb3a5095e0,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.67 with SMTP id xu3mr106706223obc.18.1427079784034;
        Sun, 22 Mar 2015 20:03:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.29.68 with SMTP id i4ls1166103obh.75.gmail; Sun, 22 Mar
 2015 20:03:03 -0700 (PDT)
X-Received: by 10.182.40.130 with SMTP id x2mr13908381obk.48.1427079783741;
        Sun, 22 Mar 2015 20:03:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x231.google.com (mail-pd0-x231.google.com. [2607:f8b0:400e:c02::231])
        by gmr-mx.google.com with ESMTPS id ni4si1609439pdb.2.2015.03.22.20.03.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 20:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) client-ip=2607:f8b0:400e:c02::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::231 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x231.google.com with SMTP id c3so173137980pdn.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 20:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gnSRo9ROH+i4GWJgalYl8ATV63JpWh2Jzk0Hy6GO52A=;
        b=es6MEeygXfcYYKDSmaEufUXlf3d5jikSQP/prv3t8pZ9tl2IGjwV9MRJvhmG1nYSB7
         FOZk2HunwpxxG3GwK6jqOuXaAPXxCzVPvTJETebvz1kVNzCeAU0TwqoCi5VnEKSrNR15
         iZ857i6zCXoEQnbRjHZRYhDFJf/ZY0FjnQ3hMlEVH0dy5ypFlLiIKSDXqAsoQXsUtSph
         4afvSTpdLlBqJ9QBed4VoHrjELwBAb1OVv77RRYMKa2eq+OvCz77STT3EmTkCobUZ4nm
         X5nxG/1pkf3GNWEyYW1D3sFZKpZzGYoBoJiSsJKZ5/nQzGowhCBcYwvClBbWR1f39KYL
         nuVA==
X-Received: by 10.70.26.129 with SMTP id l1mr205581350pdg.163.1427079783593;
        Sun, 22 Mar 2015 20:03:03 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.143.110])
        by mx.google.com with ESMTPSA id zi5sm5554167pbc.39.2015.03.22.20.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 20:03:02 -0700 (PDT)
Date: Mon, 23 Mar 2015 08:32:59 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: sm750fb: Fix indent of switch-case
Message-ID: <20150323030259.GA3944@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Indent switch-case to Linux coding style. Problem found using
checkpatch.pl
ERROR: trailing statements should be on next line

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 31268b3..42fb4fb 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -238,12 +238,22 @@ unsigned int ddk750_getVMSize(void)
 
 	/* get frame buffer size from GPIO */
 	reg = FIELD_GET(PEEK32(MISC_CTRL), MISC_CTRL, LOCALMEM_SIZE);
-	switch(reg){
-        case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
-        case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
-        case MISC_CTRL_LOCALMEM_SIZE_32M: data = MB(32); break; /* 32 Mega byte */
-        case MISC_CTRL_LOCALMEM_SIZE_64M: data = MB(64); break; /* 64 Mega byte */
-		default: data = 0;break;
+	switch (reg) {
+	case MISC_CTRL_LOCALMEM_SIZE_8M:
+		data = MB(8);
+		break; /* 8  Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_16M:
+		data = MB(16);
+		break; /* 16 Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_32M:
+		data = MB(32);
+		break; /* 32 Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_64M:
+		data = MB(64);
+		break; /* 64 Mega byte */
+	default:
+		data = 0;
+		break;
 	}
 	return data;
 
-- 
1.9.1


