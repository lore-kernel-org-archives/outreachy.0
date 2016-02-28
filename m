X-GM-THRID: 6256430343748845568
X-Received: by 10.182.112.193 with SMTP id is1mr10185237obb.38.1456688703679;
        Sun, 28 Feb 2016 11:45:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.25 with SMTP id j25ls1317055ioo.59.gmail; Sun, 28 Feb
 2016 11:45:03 -0800 (PST)
X-Received: by 10.66.142.164 with SMTP id rx4mr10051234pab.2.1456688703379;
        Sun, 28 Feb 2016 11:45:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id yd9si3145660pab.1.2016.02.28.11.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:45:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t66so3499662pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GlPqO4n53B7iClNjTB9kDh5n2kAngyTEbZ1grwhMqxM=;
        b=ahiDD+k3LAu0UszYJppdGXxkt39L4odclPlmjyBcRlbkBz6Qw9OMVTil1UIMNfD9jQ
         Xpy7jDIN/Mlf5TFFPLKdmujmUcg/CExjAZgoarXnc7w9d2gZhXy6ThinWvfqK6NdPJvx
         twghrH1cKM8Eo5pXr9VZtOb3UVDnhZtuK/jed2qmB2XWDBnQri4IowY5iQAzONYYF8oR
         LvBNpI6zHxKMw+ogcnYWVdTpAgAzeY2X34i8RY6/+eqywYeDdaie2iY6F24JlDiT+1Fh
         ur8n68oAODoSs5j4CzJPdTagKvzXEPcVPYOMJG1bhxJw/zcvhz/fkyt+2CKKbTjumixu
         GyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GlPqO4n53B7iClNjTB9kDh5n2kAngyTEbZ1grwhMqxM=;
        b=NCzmW2uo5GTfsFkxbzi5hO/kPzceIQlwMU/Y6oCR5qy27iR/CEgUFkXykpAW7REj89
         O9ulpDIAgWBJhe2COU0ifJgdWrnD/3zTo1J3/Wa2A828Ge8kkNZIiheb0GbHQFNkvdEJ
         zxB8nBNQsVTJJzQUgF69XQq3/vBbt0nyLxxdgM4Vq/Ag9eRy98yep/5o/idbtRBufgdw
         8mF/JA2ZPwG3pQhpES7Msl9qhtFuYrVNSALSsqsEvdKCRvMj4F/JEjIS6nZCvyVwbcqz
         52h75uDYEJ5Wf2sTgvYGFUOdJgW+Ny/92ONxd2jIqCAd9YZ63iRtaQ8WLQ7Odac3pZXB
         TqNA==
X-Gm-Message-State: AD7BkJKKjFKLx1V6DaiOj7+iWjjG3hnTDsG5Yhe50ArT8rmRMb973h8B45uf6emPRlxDCA==
X-Received: by 10.98.64.82 with SMTP id n79mr10109549pfa.149.1456688703235;
        Sun, 28 Feb 2016 11:45:03 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e79sm32786165pfb.76.2016.02.28.11.45.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:45:02 -0800 (PST)
Date: Mon, 29 Feb 2016 01:12:15 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: rts5208: Remove NULL test before vfree
Message-ID: <20160228194215.GA1711@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
    vfree(x);
    x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rts5208/ms.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index cdaa1ab..0f8416a 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2457,10 +2457,8 @@ static int ms_init_l2p_tbl(struct rtsx_chip *chip)
 	return STATUS_SUCCESS;

 INIT_FAIL:
-	if (ms_card->segment) {
-		vfree(ms_card->segment);
-		ms_card->segment = NULL;
-	}
+	vfree(ms_card->segment);
+	ms_card->segment = NULL;

 	return STATUS_FAIL;
 }
@@ -2803,14 +2801,10 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)

 BUILD_FAIL:
 	segment->build_flag = 0;
-	if (segment->l2p_table) {
-		vfree(segment->l2p_table);
-		segment->l2p_table = NULL;
-	}
-	if (segment->free_table) {
-		vfree(segment->free_table);
-		segment->free_table = NULL;
-	}
+	vfree(segment->l2p_table);
+	segment->l2p_table = NULL;
+	vfree(segment->free_table);
+	segment->free_table = NULL;

 	return STATUS_FAIL;
 }
@@ -4096,14 +4090,10 @@ void ms_free_l2p_tbl(struct rtsx_chip *chip)

 	if (ms_card->segment != NULL) {
 		for (i = 0; i < ms_card->segment_cnt; i++) {
-			if (ms_card->segment[i].l2p_table != NULL) {
-				vfree(ms_card->segment[i].l2p_table);
-				ms_card->segment[i].l2p_table = NULL;
-			}
-			if (ms_card->segment[i].free_table != NULL) {
-				vfree(ms_card->segment[i].free_table);
-				ms_card->segment[i].free_table = NULL;
-			}
+			vfree(ms_card->segment[i].l2p_table);
+			ms_card->segment[i].l2p_table = NULL;
+			vfree(ms_card->segment[i].free_table);
+			ms_card->segment[i].free_table = NULL;
 		}
 		vfree(ms_card->segment);
 		ms_card->segment = NULL;
--
2.1.4


