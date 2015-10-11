X-GM-THRID: 6204433488482926592
X-Received: by 10.107.165.5 with SMTP id o5mr15805516ioe.5.1444582277405;
        Sun, 11 Oct 2015 09:51:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.138 with SMTP id s10ls594757ioi.74.gmail; Sun, 11 Oct
 2015 09:51:17 -0700 (PDT)
X-Received: by 10.107.170.104 with SMTP id t101mr21475307ioe.3.1444582277171;
        Sun, 11 Oct 2015 09:51:17 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id uv4si1379264pac.0.2015.10.11.09.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ex6so4038445pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 09:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=P+uiUsHSgAbd+1VZi5dJy7xfdBhVFy0d5wU/VYRmQE0=;
        b=sFExU/yoaaQVuCBB9LOc85syDIv3oyxde1ri1hvcJOKlGnd/aJwA26+P+MM4P4/gw+
         QdI16035CtBOKSnW2zNTKnt6TED1wnVbvHO4eacTgphRkb3pV73y4/HBXSNwwHEQm1UT
         6FmD/6vP9NlzmVw2i4ebXOCiPHOXRl6PY4TaLxnibei8S6kqqz8UNx9nJN3BO+hUp5Eu
         ijjSd39/PdH2DHg+Hn2p14VISinWqVvbm9mAxRGJylWfTzrPplMwgj6skNtTsOp4nDPp
         zx6YYq/ygFWbg9SXXIh/cr7mmnB/p5PHoRMtosV5tulCwpv3iYzLbXxW9yE2ZwGZn3DA
         ewzw==
X-Received: by 10.68.173.130 with SMTP id bk2mr29480811pbc.169.1444582277058;
        Sun, 11 Oct 2015 09:51:17 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id q8sm13657386pap.34.2015.10.11.09.51.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 09:51:16 -0700 (PDT)
Date: Sun, 11 Oct 2015 22:21:05 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] Staging: vt6655: mac: Remove character limit warning
Message-ID: <b207f5e7ff3d9f88a7093429fe6b8e84cd43c911.1444581984.git.shivanib134@gmail.com>
References: <cover.1444581984.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444581984.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Break the lines with over 80 characters into sensible chunks of data.
Fixes the chackpacth warning: line over 80 characters

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/vt6655/mac.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 3dfd333..f6774d3 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -46,9 +46,9 @@
  *      MACvTimer0MicroSDelay - Micro Second Delay Loop by MAC
  *
  * Revision History:
- *      08-22-2003 Kyle Hsu     :  Porting MAC functions from sim53
- *      09-03-2003 Bryan YC Fan :  Add MACvClearBusSusInd()& MACvEnableBusSusEn()
- *      09-18-2003 Jerry Chen   :  Add MACvSetKeyEntry & MACvDisableKeyEntry
+ *      08-22-2003 Kyle Hsu     : Porting MAC functions from sim53
+ *      09-03-2003 Bryan YC Fan : Add MACvClearBusSusInd()& MACvEnableBusSusEn()
+ *      09-18-2003 Jerry Chen   : Add MACvSetKeyEntry & MACvDisableKeyEntry
  *
  */
 
@@ -326,7 +326,8 @@ bool MACbSoftwareReset(void __iomem *dwIoBase)
  */
 bool MACbSafeSoftwareReset(void __iomem *dwIoBase)
 {
-	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0+MAC_MAX_CONTEXT_SIZE_PAGE1];
+	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0 +
+					MAC_MAX_CONTEXT_SIZE_PAGE1];
 	bool bRetVal;
 
 	/* PATCH....
@@ -565,7 +566,8 @@ void MACvInitialize(void __iomem *dwIoBase)
  * Return Value: none
  *
  */
-void MACvSetCurrRx0DescAddr(void __iomem *dwIoBase, unsigned long dwCurrDescAddr)
+void MACvSetCurrRx0DescAddr(void __iomem *dwIoBase,
+		unsigned long dwCurrDescAddr)
 {
 	unsigned short ww;
 	unsigned char byData;
@@ -600,7 +602,8 @@ void MACvSetCurrRx0DescAddr(void __iomem *dwIoBase, unsigned long dwCurrDescAddr
  * Return Value: none
  *
  */
-void MACvSetCurrRx1DescAddr(void __iomem *dwIoBase, unsigned long dwCurrDescAddr)
+void MACvSetCurrRx1DescAddr(void __iomem *dwIoBase,
+				unsigned long dwCurrDescAddr)
 {
 	unsigned short ww;
 	unsigned char byData;
-- 
2.1.0


