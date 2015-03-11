X-GM-THRID: 7339802361856
X-Received: by 10.180.208.12 with SMTP id ma12mr2797928wic.6.1426033456659;
        Tue, 10 Mar 2015 17:24:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.8 with SMTP id ho8ls185594wib.9.gmail; Tue, 10 Mar
 2015 17:24:16 -0700 (PDT)
X-Received: by 10.180.38.20 with SMTP id c20mr903596wik.1.1426033456323;
        Tue, 10 Mar 2015 17:24:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id ew13si189711wid.0.2015.03.10.17.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 17:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so5566959wes.1
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 17:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=f2n+yHUpjr/etKZsBuIMwyGdRhV31hrn+Ec1F+e/rEo=;
        b=faxNEd9IBvj/9tgtnfDRImNTnvYlU9C6AMvJQAD3Ym0XQgiaKZWXcDEzFnBdUCb5MA
         HGoUvfRbttwUWwUh7Z1CJIpoVcwSeHBD4EGxqQGucfSHJiY4Wlrl79De0IMgaId9O7YF
         taew94Un6V3c1gB5APsNiYidQXrrdBqj4WFBbIzIGagk5fAapxjRFcVQrI3AhnMYKULH
         RJFMPoa0jI3UCl93/o3+dRio0GV72CyG4Cg30kcFAybLkfr59U4c3mml5LpV7tWkWZWL
         Jhsxkg6+3m2j3fK5tCVDzjzTim51LT9+9W6JcwuMRZhIYQrwJgvXEJ+8orcQJ+z2dM6F
         3qvw==
X-Received: by 10.180.184.165 with SMTP id ev5mr20859214wic.72.1426033456247;
        Tue, 10 Mar 2015 17:24:16 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ub1sm3017991wjc.43.2015.03.10.17.24.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 17:24:15 -0700 (PDT)
Date: Wed, 11 Mar 2015 02:23:38 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8192e: Remove unnecessary macro
Message-ID: <d260169cb8cd53aa536f7ae74dc30e76a96b2bb6.1426033035.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the RTLLIB_PRINT_STR macro definition because it's
only defined in the header and it's never referenced. It also removes
PRINTABLE and MAX_STR_LEN, which where defined as helpers for the first
one.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
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


