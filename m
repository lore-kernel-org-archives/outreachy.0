X-GM-THRID: 9051116142592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,17ccbc66947dd2fa,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.124.198 with SMTP id mk6mr74905781pab.22.1426712334181;
        Wed, 18 Mar 2015 13:58:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.122.3 with SMTP id lo3ls587053igb.16.gmail; Wed, 18 Mar
 2015 13:58:53 -0700 (PDT)
X-Received: by 10.70.128.66 with SMTP id nm2mr53982611pdb.7.1426712333940;
        Wed, 18 Mar 2015 13:58:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id gu4si3338581pac.1.2015.03.18.13.58.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 13:58:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22a.google.com with SMTP id op1so53848057pdb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 13:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=w5slgd7KyExTXBYvDEQJrtjlkM9xtsm9CUSPjGIXFWA=;
        b=MF8MGIiixrjEq9nCISGS9qX8rg9+Rz5HdPB9Alr5RMYakaNLa5KXaGM3ItccQGkmVJ
         Fu9PB1GmdUjUVK6+nALYm6d18+k5n0YazwuglEdR46I3jiEecWs9HkU9BogZx9TLOfBU
         4TO8NBBc9rgO9OGcyrV3gJfflTe19kw4DfW/oqqzOGGJuxY8Irbeqw0fD3Jr0/op4Ci/
         vDnrd4qlbJwfobkHeQR2o0olZspUO8d+ZVq22BbOW1G+/vBV3jWt5CQeK0SIAgsz8qIa
         zjay6zQJq3C7aOv6iDaZjNydUpKhnADLoP8Im9bqM6AFVvA0fWxaEk56WHWS+tkoXcM4
         Jbjg==
X-Received: by 10.70.55.65 with SMTP id q1mr127976376pdp.35.1426712333819;
        Wed, 18 Mar 2015 13:58:53 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id fi8sm29047938pdb.43.2015.03.18.13.58.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 13:58:52 -0700 (PDT)
Date: Thu, 19 Mar 2015 02:26:58 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: Introduce a new variable to shorten line
 length and increase readability
Message-ID: <20150318205658.GA10527@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The variable block_no is introduced so as to shorten line length
in the long assignment statement and increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rts5208/ms.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 7638f80..5a9321b 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2030,6 +2030,8 @@ static int ms_init_l2p_tbl(struct rtsx_chip *chip)
 
 	reg_addr = PPBUF_BASE2;
 	for (i = 0; i < (((ms_card->total_block >> 9) * 10) + 1); i++) {
+		int block_no;
+
 		retval = rtsx_read_register(chip, reg_addr++, &val1);
 		if (retval != STATUS_SUCCESS)
 			TRACE_GOTO(chip, INIT_FAIL);
@@ -2043,7 +2045,9 @@ static int ms_init_l2p_tbl(struct rtsx_chip *chip)
 			break;
 
 		seg_no = defect_block / 512;
-		ms_card->segment[seg_no].defect_list[ms_card->segment[seg_no].disable_count++] = defect_block;
+
+		block_no = ms_card->segment[seg_no].disable_count++;
+		ms_card->segment[seg_no].defect_list[block_no] = defect_block;
 	}
 
 	for (i = 0; i < ms_card->segment_cnt; i++) {
-- 
1.9.1


