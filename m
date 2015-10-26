X-GM-THRID: 6210088605629546496
X-Received: by 10.66.110.111 with SMTP id hz15mr18614100pab.16.1445899070056;
        Mon, 26 Oct 2015 15:37:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.134 with SMTP id ii6ls1017589igb.42.gmail; Mon, 26 Oct
 2015 15:37:49 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr18154588igb.2.1445899069798;
        Mon, 26 Oct 2015 15:37:49 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si3773172pbb.0.2015.10.26.15.37.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fv9so209647287pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=IGzYinnv642OMX+nXLuLC3E87xd3kjjQHjb5W84Q+JY=;
        b=ASG6TnsL2IbIpj+KBfu57HBQuDz83BxUkjY929hcF8weB5toKklB2YJAyC8AFl/Rxk
         Js1qq6COOUVlHVf4fuoVDQfT6ZZacD9H5+JP+e0h0U6KBzqUpN6/+d0s9Sq/MDS89pj8
         ikArwOoznA5sGWt1kUI2o3w5QWbjV2y9bJiDIsBC1lnmhNPIX6ALvIOxW47XmO16eIBL
         juKWdJDMx2VPCYqUk16Li1rRYqLLtRKAnGldob64y+QkPcmCX8NMUqPMo8Keztt9+Y+S
         yZyX4zVGv03vYD3LiRXAei4gFEWXOobso8jL8Vk5SsZpuvAJmFZ6llmNMhGiwA/2AM6l
         +I6g==
X-Received: by 10.68.69.72 with SMTP id c8mr35833628pbu.2.1445899069701;
        Mon, 26 Oct 2015 15:37:49 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tk4sm35987621pab.45.2015.10.26.15.37.48
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:37:49 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:07:53 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 5/8] Staging: rdma ipath: Fix space before tabs, line over 80
 characters
Message-ID: <2160904e425ed30e827fc624d226aab7806ffaaa.1445898782.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes:

CHECK: no space before tabs

WARNING: line over 80 characters

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
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


