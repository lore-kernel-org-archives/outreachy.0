X-GM-THRID: 9057687568384
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6c8feab96d31799a,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.199.66 with SMTP id ji2mr78513826obc.14.1426715171400;
        Wed, 18 Mar 2015 14:46:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.85 with SMTP id e79ls957782qgd.4.gmail; Wed, 18 Mar
 2015 14:46:11 -0700 (PDT)
X-Received: by 10.236.202.233 with SMTP id d69mr16665412yho.13.1426715171201;
        Wed, 18 Mar 2015 14:46:11 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id gb13si3339153pac.2.2015.03.18.14.46.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 14:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id ni2so54956580pdb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 14:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fnG/Cr1qHjiJOrLmUlEy/oeQ3+nvvevQj/nr1vDofi8=;
        b=ZCE1eqPlbn4kEbjAgsk5xpkcwXcF0tjXRpVRYWhFdGMDQjUYUsKCt9J7FT7qejd65b
         sAox4E7dWL5PYgo7BnbRwMiY19kChZyI2wQ45NZULU8F6mALcgv/PxHKly6E9HQfwfJg
         MYryuQ48tdPLAtw+uOxDoBZl6jPJRNSDg6OgF2Ssn2tFF4EfRzsWWnNqHTC4TWJ0fhWI
         UDstfRp/tuwVoITZ4ufoTc5I1Kr3eBRmrEzrnPd1u+j1l5brRisn5WYSc6dt3y4dy+sS
         BiChFSnEjK+XmlhY2WYJTOuT1D9srzavT9Ygm/PRc+Edgh9IrNPINSPdoERwNImg98LL
         c7nA==
X-Received: by 10.70.31.66 with SMTP id y2mr104829304pdh.118.1426715171038;
        Wed, 18 Mar 2015 14:46:11 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id um16sm29214495pab.7.2015.03.18.14.46.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 14:46:09 -0700 (PDT)
Date: Thu, 19 Mar 2015 03:14:15 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: Add new variable idx to shorten line
 length and increase readability
Message-ID: <20150318214415.GA12733@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add new variable idx to shorten line length of other statements
and increase readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rts5208/ms.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index 5a9321b..4c38ff9 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2194,7 +2194,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 	struct zone_entry *segment;
 	bool defect_flag;
 	int retval, table_size, disable_cnt, i;
-	u16 start, end, phy_blk, log_blk, tmp_blk;
+	u16 start, end, phy_blk, log_blk, tmp_blk, idx;
 	u8 extra[MS_EXTRA_SIZE], us1, us2;
 
 	dev_dbg(rtsx_dev(chip), "ms_build_l2p_tbl: %d\n", seg_no);
@@ -2305,13 +2305,15 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 			continue;
 		}
 
-		if (segment->l2p_table[log_blk - ms_start_idx[seg_no]] == 0xFFFF) {
-			segment->l2p_table[log_blk - ms_start_idx[seg_no]] = phy_blk;
+		idx = log_blk - ms_start_idx[seg_no];
+
+		if (segment->l2p_table[idx] == 0xFFFF) {
+			segment->l2p_table[idx] = phy_blk;
 			continue;
 		}
 
 		us1 = extra[0] & 0x10;
-		tmp_blk = segment->l2p_table[log_blk - ms_start_idx[seg_no]];
+		tmp_blk = segment->l2p_table[idx];
 		retval = ms_read_extra_data(chip, tmp_blk, 0,
 					extra, MS_EXTRA_SIZE);
 		if (retval != STATUS_SUCCESS)
@@ -2342,7 +2344,8 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 
 	for (log_blk = ms_start_idx[seg_no];
 	     log_blk < ms_start_idx[seg_no + 1]; log_blk++) {
-		if (segment->l2p_table[log_blk-ms_start_idx[seg_no]] == 0xFFFF) {
+		idx = log_blk - ms_start_idx[seg_no];
+		if (segment->l2p_table[idx] == 0xFFFF) {
 			phy_blk = ms_get_unused_block(chip, seg_no);
 			if (phy_blk == 0xFFFF) {
 				chip->card_wp |= MS_CARD;
@@ -2352,7 +2355,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
 			if (retval != STATUS_SUCCESS)
 				TRACE_GOTO(chip, BUILD_FAIL);
 
-			segment->l2p_table[log_blk-ms_start_idx[seg_no]] = phy_blk;
+			segment->l2p_table[idx] = phy_blk;
 			if (seg_no == ms_card->segment_cnt - 1) {
 				if (segment->unused_blk_cnt < 2) {
 					chip->card_wp |= MS_CARD;
-- 
1.9.1


