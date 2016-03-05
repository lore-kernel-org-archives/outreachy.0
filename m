X-GM-THRID: 6258681869911457792
X-Received: by 10.13.216.2 with SMTP id a2mr10713082ywe.22.1457212928801;
        Sat, 05 Mar 2016 13:22:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.164 with SMTP id 33ls1230752qgb.61.gmail; Sat, 05 Mar
 2016 13:22:08 -0800 (PST)
X-Received: by 10.13.215.4 with SMTP id z4mr1661133ywd.7.1457212928000;
        Sat, 05 Mar 2016 13:22:08 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id r75si2178899pfr.0.2016.03.05.13.22.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 13:22:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id bj10so55298257pad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 13:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kZESGkLbbr3qd4//Lyj3MOpEPQ27fpOc6/T0+VqdfXs=;
        b=KCRasD09rw9eiwH7tnVcHVJHWIB6tovZb3p+ux4v4TfEXwfaT8RIJHZWCbL5MDo6V+
         1vf5L5loonOEZDg+MQFfEfayyfrVtyuIqpo2ulJPJWkl4UskLv76fcUIKMRdXInqSxcH
         9teCFEulZpnP3/hWmDaMjT22hUb1vfetrAQJiMbe2GLLsK9j1YE1XWCSickun7MrjWDd
         M6yMjwVlu19RMXmYNdXPNhWVDPpnyHCAk5D/+MABuQj3HzLannOelSHSs0p3loqre6Lo
         LOkXLwBt+6Ipnv1qi91H/6dCAahGDN+w1GUZ9Zm11TRXFfql17R+pV3O5GeY1ASGfAG9
         tcJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kZESGkLbbr3qd4//Lyj3MOpEPQ27fpOc6/T0+VqdfXs=;
        b=ZaqY2Trq46azZ6t4udpGSmM2ixWZOdJZ2Rxhy5dO/BdeTl8RWfC6SSy9ohfIklxSPS
         jJEgcxK3m3jbnjf2MkVmzuRLWzW1TsWhggd4GztJoaicJFhHKHEtgeWSvmoZmdFrGNiU
         ZDz9qDSVNUN9Cj1qvllfAkuJQBHgLMkLnh0qelVsr2poonG90oT6lyF4IQnMFrQHYdzw
         nMVMNJkmFCs/cJGIsjo6TNW3zthO2UgTkjfExW2vQ+7ptfPCEllCkZpqS35BVfXLCjEh
         z2IAvJ9uaIHUbErrjGKnJw+C57jjhFVztN/+I64Zr0AFIpMBnx7E13EL6TaLP7fn82NM
         9+rQ==
X-Gm-Message-State: AD7BkJJG1snaTh3OwxkPMm6GlrFd7ZTM0wYzWve4LicPVRR15jIW1oAU9EODJXnz0BTGCw==
X-Received: by 10.66.163.40 with SMTP id yf8mr7266741pab.148.1457212927804;
        Sat, 05 Mar 2016 13:22:07 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s197sm14318372pfs.62.2016.03.05.13.22.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 13:22:07 -0800 (PST)
Date: Sun, 6 Mar 2016 02:39:51 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: Change form of NULL comparisons
Message-ID: <20160305210951.GA25441@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Change null comparisons of the form x == NULL to !x.
This was done using Coccinelle.

@@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rts5208/ms.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index cdaa1ab..579417b 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -1039,7 +1039,7 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
 	}

 	buf = kmalloc(64 * 512, GFP_KERNEL);
-	if (buf == NULL) {
+	if (!buf) {
 		rtsx_trace(chip);
 		return STATUS_ERROR;
 	}
@@ -2405,7 +2405,7 @@ static int ms_init_l2p_tbl(struct rtsx_chip *chip)

 	size = ms_card->segment_cnt * sizeof(struct zone_entry);
 	ms_card->segment = vzalloc(size);
-	if (ms_card->segment == NULL) {
+	if (!ms_card->segment) {
 		rtsx_trace(chip);
 		return STATUS_FAIL;
 	}
@@ -2470,7 +2470,7 @@ static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int seg_no, u16 log_off)
 	struct ms_info *ms_card = &(chip->ms_card);
 	struct zone_entry *segment;

-	if (ms_card->segment == NULL)
+	if (!ms_card->segment)
 		return 0xFFFF;

 	segment = &(ms_card->segment[seg_no]);
@@ -2487,7 +2487,7 @@ static void ms_set_l2p_tbl(struct rtsx_chip *chip,
 	struct ms_info *ms_card = &(chip->ms_card);
 	struct zone_entry *segment;

-	if (ms_card->segment == NULL)
+	if (!ms_card->segment)
 		return;

 	segment = &(ms_card->segment[seg_no]);
@@ -2591,7 +2591,7 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)

 	dev_dbg(rtsx_dev(chip), "ms_build_l2p_tbl: %d\n", seg_no);

-	if (ms_card->segment == NULL) {
+	if (!ms_card->segment) {
 		retval = ms_init_l2p_tbl(chip);
 		if (retval != STATUS_SUCCESS) {
 			rtsx_trace(chip);
@@ -2612,18 +2612,18 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)

 	segment = &(ms_card->segment[seg_no]);

-	if (segment->l2p_table == NULL) {
+	if (!segment->l2p_table) {
 		segment->l2p_table = vmalloc(table_size * 2);
-		if (segment->l2p_table == NULL) {
+		if (!segment->l2p_table) {
 			rtsx_trace(chip);
 			goto BUILD_FAIL;
 		}
 	}
 	memset((u8 *)(segment->l2p_table), 0xff, table_size * 2);

-	if (segment->free_table == NULL) {
+	if (!segment->free_table) {
 		segment->free_table = vmalloc(MS_FREE_TABLE_CNT * 2);
-		if (segment->free_table == NULL) {
+		if (!segment->free_table) {
 			rtsx_trace(chip);
 			goto BUILD_FAIL;
 		}
--
2.1.4


