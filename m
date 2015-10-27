X-GM-THRID: 6210088605629546496
X-Received: by 10.13.229.4 with SMTP id o4mr7278563ywe.36.1445936515328;
        Tue, 27 Oct 2015 02:01:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.52 with SMTP id g20ls1137348igh.23.gmail; Tue, 27 Oct
 2015 02:01:55 -0700 (PDT)
X-Received: by 10.66.123.74 with SMTP id ly10mr32016756pab.41.1445936515032;
        Tue, 27 Oct 2015 02:01:55 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id fa8si4035260pab.1.2015.10.27.02.01.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:01:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so216462866pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RhUz2ucuRWqyxyeMOZlToqyhv2+pisjQEgFmWmvOrIU=;
        b=Axs9TOTOGXfLP04pR4ve1lc0LxlNoCfzVJ/ksDoNi/p4CTch2GADzrbAh0UTGlpxWq
         Ay6yOblyUpTfBXBbYvQ+folT2jP638BEkAlAct5ChNF6NP+bKeVOEJiDIB6nalmjipPM
         8g0jsfcjPBAsHo9sOg68HPrC8Owz1bCVVEOkUFu8sr5EFARjn/hjXjo60O2b8incThrT
         QhU6xnGb0ul0zWj9KuTGBXIcTm49ImlE5rR1J0Qi0dDAXE+f7GXcRYPLZmq/13FAE1ge
         N+p0OKvSJdLvRn4NkCXlJcrNCHTpR0fTQVXD4U9kxqHCuw70Gw8mI8wW7IY9oUpuFOO5
         up5Q==
X-Received: by 10.68.69.17 with SMTP id a17mr46353326pbu.10.1445936514955;
        Tue, 27 Oct 2015 02:01:54 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id es4sm38325618pbc.42.2015.10.27.02.01.54
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:01:54 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:31:58 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 5/8] Staging: rdma ipath: Fix space before tabs, line over 80
 characters
Message-ID: <2160904e425ed30e827fc624d226aab7806ffaaa.1445936144.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes:

CHECK: no space before tabs

WARNING: line over 80 characters

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index 9ce581e..567869a 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -431,15 +431,17 @@ struct ipath_user_info {
 
 #define IPATH_CMD_MIN		16
 
-#define __IPATH_CMD_USER_INIT	16	/* old set up userspace (for old user code) */
+/* old set up userspace (for old user code) */
+#define __IPATH_CMD_USER_INIT	16
 #define IPATH_CMD_PORT_INFO	17	/* find out what resources we got */
 #define IPATH_CMD_RECV_CTRL	18	/* control receipt of packets */
 #define IPATH_CMD_TID_UPDATE	19	/* update expected TID entries */
 #define IPATH_CMD_TID_FREE	20	/* free expected TID entries */
 #define IPATH_CMD_SET_PART_KEY	21	/* add partition key */
-#define __IPATH_CMD_SLAVE_INFO	22	/* return info on slave processes (for old user code) */
+/* return info on slave processes (for old user code) */
+#define __IPATH_CMD_SLAVE_INFO	22
 #define IPATH_CMD_ASSIGN_PORT	23	/* allocate HCA and port */
-#define IPATH_CMD_USER_INIT 	24	/* set up userspace */
+#define IPATH_CMD_USER_INIT	24/* set up userspace */
 #define IPATH_CMD_UNUSED_1	25
 #define IPATH_CMD_UNUSED_2	26
 #define IPATH_CMD_PIOAVAILUPD	27	/* force an update of PIOAvail reg */
@@ -497,7 +499,8 @@ struct ipath_cmd {
 		 */
 		__u64 sdma_complete;
 		/* address in userspace of struct ipath_port_info to
-		   write result to */
+		 *  write result to
+		 */
 		__u64 port_info;
 		/* enable/disable receipt of packets */
 		__u32 recv_ctrl;
-- 
1.9.1


