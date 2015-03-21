X-GM-THRID: 9366486908928
X-Received: by 10.42.99.140 with SMTP id w12mr8337989icn.12.1426926632074;
        Sat, 21 Mar 2015 01:30:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.15 with SMTP id z15ls2002518qge.24.gmail; Sat, 21 Mar
 2015 01:30:31 -0700 (PDT)
X-Received: by 10.52.164.66 with SMTP id yo2mr26218825vdb.2.1426926631861;
        Sat, 21 Mar 2015 01:30:31 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id gu4si1141750pac.1.2015.03.21.01.30.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 01:30:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id cz9so131297187pdb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 01:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=v1DjN05X+gRAHmcowqQaRSgnRiM/kZtPhAeL8asusGU=;
        b=G5/AVWiNW+VU7MhGAogBfe32Qli8xDrJ43jj2ghJro4K0fpQOBnr2G5cm35+D9iJ8T
         fqREGFo2KgT6KAFIThmZp+IkqSAi1/MHcX/BVCQ27WLV6eNpcplb8D1Yfhp/9dqZqczP
         UOjRidmkfnexbf1K5pVyk64b2pt8h0bjdlDUhLlneVBXttSoEPw/ZkQtq8Us5SfoUFG0
         mg+N1CVI0nIO3qexDaTSfU4vxu1hSnJmIuc51WuYEDTv2DWZat2Umo4Z/soyvIfc5wdY
         rsqmszZUewA33+PLkrYiVbt6lT6no7dSx1rX7geocWOJsgquYR62he9dzDGz2HxO4xqt
         sZqg==
X-Received: by 10.70.130.69 with SMTP id oc5mr86212550pdb.89.1426926631723;
        Sat, 21 Mar 2015 01:30:31 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id d4sm10853677pdm.50.2015.03.21.01.30.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 01:30:30 -0700 (PDT)
Date: Sat, 21 Mar 2015 13:58:30 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: Fix incorrect type in assignment
Message-ID: <20150321082830.GA20169@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix incorrect type in assignment.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 03caa9b..2cd03d7 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -218,7 +218,7 @@ void rtsx_add_cmd(struct rtsx_chip *chip,
 
 	spin_lock_irq(&chip->rtsx->reg_lock);
 	if (chip->ci < (HOST_CMDS_BUF_LEN / 4))
-		cb[(chip->ci)++] = cpu_to_le32(val);
+		cb[(chip->ci)++] = val;
 
 	spin_unlock_irq(&chip->rtsx->reg_lock);
 }
@@ -316,7 +316,7 @@ static inline void rtsx_add_sg_tbl(
 		val = ((u64)addr << 32) | ((u64)temp_len << 12) | temp_opt;
 
 		if (chip->sgi < (HOST_SG_TBL_BUF_LEN / 8))
-			sgb[(chip->sgi)++] = cpu_to_le64(val);
+			sgb[(chip->sgi)++] = val;
 
 		len -= temp_len;
 		addr += temp_len;
-- 
1.9.1


