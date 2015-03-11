X-GM-THRID: 7339802361856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e586cd80286c5b75
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.28.137 with SMTP id b9mr5080163lah.8.1426036029022;
        Tue, 10 Mar 2015 18:07:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.132 with SMTP id wq4ls98511lac.30.gmail; Tue, 10 Mar
 2015 18:07:08 -0700 (PDT)
X-Received: by 10.112.199.69 with SMTP id ji5mr5028408lbc.0.1426036028530;
        Tue, 10 Mar 2015 18:07:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id sf8si190125wic.2.2015.03.10.18.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 18:07:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x230.google.com with SMTP id k48so5661324wev.7
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 18:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=cYFNxi0EP7N8NOY+xC0IOvkDFxNPbLaKnENmkEG6dKg=;
        b=botfhk7wTnlo5WFrSH3JW5d3kfOc/X13AT8IEhIYBZznFjX23NF1YwqgJqYDz5TDEr
         s5+9swQ/ZrJX5/rVZeJCynx7I+MJjuDStjQr8dsasbZo1egYanGj90Wwhu8GfIpVmU2K
         v5p2In7TCckXshhGpNvLCIeHp5DobrM7VznFPQW/kSGdgjgg0lQ8sYaKGiPYcysC61c3
         Iu/MR/wJTUivvu3AKKgo9SMisRHASTNSqMqPs5y6XCzeNoH7LcXg+P0gj7VgaYY54lys
         YizoOP+T01QEIbyUN1vlkpMOrgidTaZdIpeEzmK9kZl1WdRg7SdAJCxpRgNIRZy5SSEX
         zPHg==
X-Received: by 10.180.211.73 with SMTP id na9mr66110844wic.60.1426036028453;
        Tue, 10 Mar 2015 18:07:08 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id bd1sm22527736wib.13.2015.03.10.18.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 18:07:07 -0700 (PDT)
Date: Wed, 11 Mar 2015 03:06:30 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: rtl8192e: Remove unnecessary macro
Message-ID: <c127ca8054c37fadb519e8d9caf968325ad9c1ed.1426035351.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the RTLLIB_PRINT_STR macro definition because it's
only defined in the header and it's never referenced. It also removes
PRINTABLE and MAX_STR_LEN, which were defined as helpers for the first
one.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
Changes in v3:
	- Fix another spelling error

Changes in v2:
        - Fix commit message spelling error
	- Make the commit message more clear
 drivers/staging/rtl8192e/rtllib.h | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index cef2dc2..96e9246 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -784,26 +784,6 @@ do {								\
 #define RTLLIB_DEBUG_RX(f, a...)  RTLLIB_DEBUG(RTLLIB_DL_RX, f, ## a)
 #define RTLLIB_DEBUG_QOS(f, a...)  RTLLIB_DEBUG(RTLLIB_DL_QOS, f, ## a)
 
-/* Added by Annie, 2005-11-22. */
-#define MAX_STR_LEN     64
-/* I want to see ASCII 33 to 126 only. Otherwise, I print '?'. */
-#define PRINTABLE(_ch)  (_ch > '!' && _ch < '~')
-#define RTLLIB_PRINT_STR(_Comp, _TitleString, _Ptr, _Len)		\
-	if ((_Comp) & level) {					       \
-		int	     __i;				    \
-		u8  struct buffer[MAX_STR_LEN];				\
-		int length = (_Len < MAX_STR_LEN) ? _Len : (MAX_STR_LEN-1) ;\
-		memset(struct buffer, 0, MAX_STR_LEN);		\
-		memcpy(struct buffer, (u8 *)_Ptr, length);		\
-		for (__i = 0; __i < MAX_STR_LEN; __i++) {		\
-			if (!PRINTABLE(struct buffer[__i]))		\
-				struct buffer[__i] = '?';		\
-		}							\
-		struct buffer[length] = '\0';				\
-		printk(KERN_INFO "Rtl819x: ");				\
-		printk(_TitleString);					\
-		printk(": %d, <%s>\n", _Len, struct buffer);		\
-	}
 #ifndef ETH_P_PAE
 #define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */
 #define ETH_P_IP	0x0800		/* Internet Protocol packet	*/
-- 
1.9.1


