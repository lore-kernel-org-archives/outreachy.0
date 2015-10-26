X-GM-THRID: 6209942832976756736
X-Received: by 10.129.145.71 with SMTP id i68mr16031550ywg.1.1445864990361;
        Mon, 26 Oct 2015 06:09:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.130 with SMTP id qa2ls885034igb.31.canary; Mon, 26 Oct
 2015 06:09:49 -0700 (PDT)
X-Received: by 10.66.156.5 with SMTP id wa5mr15765868pab.21.1445864989927;
        Mon, 26 Oct 2015 06:09:49 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si3552981pbb.2.2015.10.26.06.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so188389080pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 06:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=SE6bKr0b+vc1DIf7z92VAROsbl8D35mkcSUvg6+88Jk=;
        b=StJ4sA3DNCPbjB+99FUvJ8zKfcPxiygwpzqOo/kgyR1hlJIMsRLc3Ut8/2Uejcw2bK
         LFZqoLsR4a4SxWMUNcS2MEf9YSfgNPNeqJryP2AmiOg6+6wTGJm9K5ERTBwI7ANoUj56
         b3imccAj21QoPjYuy2nN47sFFTPPVnW+q6ZPIZX+LNC8fB4TwfBdDZqkLa7wCE23nHcQ
         Mn406Y/pM9I7Wc9FWK0fZDpeGVAKyM5wkM4t7hpi2wtyAJVW/PNVXR1a6xWN1PZXiZrd
         UP85yHKTJ5EMOUf1OccNa1c6ILl4YeGKRaFJmcHJQvtF+Ji8XbXiZRoWOsgtQn+msdEB
         bzgw==
X-Received: by 10.66.193.134 with SMTP id ho6mr22341604pac.52.1445864989855;
        Mon, 26 Oct 2015 06:09:49 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id qn5sm34181086pac.41.2015.10.26.06.09.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 06:09:49 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: media: omap4iss: Fixes misspelling
Date: Mon, 26 Oct 2015 06:09:28 -0700
Message-Id: <65a8e4789854759b3168cb9f4e7493023496aa67.1445864494.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>
References: <cover.1445864494.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: 'splitted' may be misspelled - perhaps 'split'?

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/omap4iss/iss_ipipeif.c |    2 +-
 drivers/staging/media/omap4iss/iss_resizer.c |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_ipipeif.c b/drivers/staging/media/omap4iss/iss_ipipeif.c
index fcafdbe..7c78ea1 100644
--- a/drivers/staging/media/omap4iss/iss_ipipeif.c
+++ b/drivers/staging/media/omap4iss/iss_ipipeif.c
@@ -115,7 +115,7 @@ static void ipipeif_set_outaddr(struct iss_ipipeif_device *ipipeif, u32 addr)
 {
 	struct iss_device *iss = to_iss_device(ipipeif);
 
-	/* Save address splitted in Base Address H & L */
+	/* Save address split in Base Address H & L */
 	iss_reg_write(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_CADU,
 		      (addr >> (16 + 5)) & ISIF_CADU_MASK);
 	iss_reg_write(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_CADL,
diff --git a/drivers/staging/media/omap4iss/iss_resizer.c b/drivers/staging/media/omap4iss/iss_resizer.c
index 8035e01..48bed44 100644
--- a/drivers/staging/media/omap4iss/iss_resizer.c
+++ b/drivers/staging/media/omap4iss/iss_resizer.c
@@ -143,7 +143,7 @@ static void resizer_set_outaddr(struct iss_resizer_device *resizer, u32 addr)
 	informat = &resizer->formats[RESIZER_PAD_SINK];
 	outformat = &resizer->formats[RESIZER_PAD_SOURCE_MEM];
 
-	/* Save address splitted in Base Address H & L */
+	/* Save address split in Base Address H & L */
 	iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_BAD_H,
 		      (addr >> 16) & 0xffff);
 	iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_Y_BAD_L,
@@ -168,7 +168,7 @@ static void resizer_set_outaddr(struct iss_resizer_device *resizer, u32 addr)
 			c_addr |= addr & 0x7f;
 		}
 
-		/* Save address splitted in Base Address H & L */
+		/* Save address split in Base Address H & L */
 		iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_BAD_H,
 			      (c_addr >> 16) & 0xffff);
 		iss_reg_write(iss, OMAP4_ISS_MEM_ISP_RESIZER, RZA_SDR_C_BAD_L,
-- 
1.7.9.5


