X-GM-THRID: 6332940670748065792
X-Received: by 10.13.231.68 with SMTP id q65mr18702637ywe.58.1474502652645;
        Wed, 21 Sep 2016 17:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.214.65 with SMTP id o62ls59124itg.8.canary; Wed, 21 Sep
 2016 17:04:10 -0700 (PDT)
X-Received: by 10.107.29.129 with SMTP id d123mr19248601iod.9.1474502650537;
        Wed, 21 Sep 2016 17:04:10 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si175515pfw.1.2016.09.21.17.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 17:04:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x244.google.com with SMTP id 21so2986859pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 17:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5EFCnt3a0SX9UH5+yibtxNntUYt2YX6G8DpdzHD/OR0=;
        b=m9+pWCFXcETROTH+nVRBPuKlywO4iT4hbYE9nyEBa4S3Mc4nopFRCc+E4o7eH5W7Iw
         BKQkHtZQHwqKTSFrkNSd3t2JvnPjeIGGMxXwSkfgOLJYriMhFMz/fGcTAO2K+4yr+jfQ
         tGsb1XI+tOOSJ7wF/wQYT1LUj0msDvaL7x3ILQN/62/hr5nX1Rr0IJwH4wA+bNC5SfqP
         9aDnFHVg1YISJqc8l+DNPDS2DMb7pX79+p0pduwBZoITpyOuJsW4A7n5S8PfcSQYuF2z
         qE/zJsAxkhv7QnJQbTLUufhC2UCnd6IU0j86Aam0Eet00xFpVKbvq2ueFzcU4n99Hgi6
         lBKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5EFCnt3a0SX9UH5+yibtxNntUYt2YX6G8DpdzHD/OR0=;
        b=E9q8wSEl/GL6pPS4Tu6IPVip/FiqDoXbwduOdH7ep9E8wG0xCpA+Lu8Vw9SxzalhIr
         beChnx1rL0Ljkp7ICXPPoNZUmAdqp0Oyhds4ftS+iuoDGUlpo+Z5Q/r6vObO16fMvdXb
         7klpptrNtyfp3aYIDq3t+eCb2bzLPkJ+Mg9EZGEKVfxjl4tbq1gw/XagwG6y1dAzhW18
         R8spKJlMUWUFiZqmTLzXiJIT5eI0I7JWoRJV3MOlWtc2ViUsO+vlPLmj9hVJw6My2t8N
         jHo2BI0RXv4g6x3CsG8ijomPDVD9deR3BXp/tb6VKDZBtJ/xjht8CGq+0lErxcLwE6/H
         kkIg==
X-Gm-Message-State: AE9vXwMVAUpa4NOKT2RTszF6EDoXVYWiEgbJYFzjTQf/kA0BrxLyOlnIFyhjASw7Vdyk+e+O
X-Received: by 10.98.106.65 with SMTP id f62mr70773566pfc.107.1474502650139;
        Wed, 21 Sep 2016 17:04:10 -0700 (PDT)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2001:558:6045:106:7d84:83db:c3b2:274a])
        by smtp.gmail.com with ESMTPSA id o5sm441397pfb.9.2016.09.21.17.04.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Sep 2016 17:04:09 -0700 (PDT)
Date: Wed, 21 Sep 2016 17:04:08 -0700
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Remove spaces between casts
Message-ID: <20160922000408.GA28701@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Issue found by checkpatch.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/wlan-ng/prism2fw.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 13f90b7..e2fba30 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -268,7 +268,7 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 
 	/* clear the pda and add an initial END record */
 	memset(&pda, 0, sizeof(pda));
-	pda.rec[0] = (hfa384x_pdrec_t *) pda.buf;
+	pda.rec[0] = (hfa384x_pdrec_t *)pda.buf;
 	pda.rec[0]->len = cpu_to_le16(2);	/* len in words */
 	pda.rec[0]->code = cpu_to_le16(HFA384x_PDR_END_OF_PDA);
 	pda.nrec = 1;
@@ -295,11 +295,11 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 	getmsg.resultcode.did = DIDmsg_dot11req_mibget_resultcode;
 	getmsg.resultcode.status = P80211ENUM_msgitem_status_no_value;
 
-	item = (p80211itemd_t *) getmsg.mibattribute.data;
+	item = (p80211itemd_t *)getmsg.mibattribute.data;
 	item->did = DIDmib_p2_p2NIC_p2PRISupRange;
 	item->status = P80211ENUM_msgitem_status_no_value;
 
-	data = (u32 *) item->data;
+	data = (u32 *)item->data;
 
 	/* DIDmsg_dot11req_mibget */
 	prism2mgmt_mibset_mibget(wlandev, &getmsg);
@@ -594,14 +594,14 @@ static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
 ----------------------------------------------------------------*/
 static int mkpdrlist(struct pda *pda)
 {
-	u16 *pda16 = (u16 *) pda->buf;
+	u16 *pda16 = (u16 *)pda->buf;
 	int curroff;		/* in 'words' */
 
 	pda->nrec = 0;
 	curroff = 0;
 	while (curroff < (HFA384x_PDA_LEN_MAX / 2 - 1) &&
 	       le16_to_cpu(pda16[curroff + 1]) != HFA384x_PDR_END_OF_PDA) {
-		pda->rec[pda->nrec] = (hfa384x_pdrec_t *) &(pda16[curroff]);
+		pda->rec[pda->nrec] = (hfa384x_pdrec_t *)&(pda16[curroff]);
 
 		if (le16_to_cpu(pda->rec[pda->nrec]->code) ==
 		    HFA384x_PDR_NICID) {
@@ -640,7 +640,7 @@ static int mkpdrlist(struct pda *pda)
 		       curroff, pda->nrec);
 		return 1;
 	}
-	pda->rec[pda->nrec] = (hfa384x_pdrec_t *) &(pda16[curroff]);
+	pda->rec[pda->nrec] = (hfa384x_pdrec_t *)&(pda16[curroff]);
 	(pda->nrec)++;
 	return 0;
 }
@@ -882,8 +882,8 @@ static int read_fwfile(const struct ihex_binrec *record)
 		addr = be32_to_cpu(record->addr);
 
 		/* Point into data for different word lengths */
-		ptr32 = (u32 *) record->data;
-		ptr16 = (u16 *) record->data;
+		ptr32 = (u32 *)record->data;
+		ptr16 = (u16 *)record->data;
 
 		/* parse what was an S3 srec and put it in the right array */
 		switch (addr) {
@@ -957,7 +957,7 @@ static int read_fwfile(const struct ihex_binrec *record)
 		default:	/* Data record */
 			s3data[ns3data].addr = addr;
 			s3data[ns3data].len = len;
-			s3data[ns3data].data = (uint8_t *) record->data;
+			s3data[ns3data].data = (uint8_t *)record->data;
 			ns3data++;
 			if (ns3data == S3DATA_MAX) {
 				pr_err("S3 datarec limit reached - aborting\n");
-- 
2.7.4


