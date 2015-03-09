X-GM-THRID: 7339802361856
X-Received: by 10.180.109.34 with SMTP id hp2mr2980445wib.4.1425934144188;
        Mon, 09 Mar 2015 13:49:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.188.172 with SMTP id gb12ls35216wic.21.gmail; Mon, 09 Mar
 2015 13:49:04 -0700 (PDT)
X-Received: by 10.180.211.199 with SMTP id ne7mr933847wic.5.1425934143905;
        Mon, 09 Mar 2015 13:49:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id c8si377575wiw.1.2015.03.09.13.49.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 13:49:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id l18so20939093wgh.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 13:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lMimzyFkYc57F0pHO9T7Muq1jEk9pLj8IkM7MjHiXNI=;
        b=wgfqC9whs2cp4ye7cUhTuvX80TtHsT+121piBxgPNVpCG/+cQ4vh72vdssKbOmMi60
         oMJGIIdDlFWSZ+TCc0ORe6yx8UvdZI8baPKKSQ/S3fXCPQo8WmGChbNWN5DsPNbRO7nC
         MFS2PAQ7tNplShhj917U3OY743vHNNGVZeO06Lc5VSiOiVe95h8jovEqKWcLenUP+uf/
         8f2WmzxG73McZqTV9MPQ5aKnzZywPLdDoQ5Hy6L6Hgj/jqXe0K7S/vPRmqLmr1Zm6wd+
         pW3vdi7dgO8+056bhMeFJteI1fW7v/iyO/4D7fazkjAeYWnXz5Sq+Vzp+JvyWob2zJko
         GcDw==
X-Received: by 10.180.104.33 with SMTP id gb1mr43803796wib.33.1425934143805;
        Mon, 09 Mar 2015 13:49:03 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id b4sm17068944wic.2.2015.03.09.13.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 13:49:03 -0700 (PDT)
Date: Mon, 9 Mar 2015 22:48:28 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192e: Remove unnecessary macro
Message-ID: <20150309204828.GA25299@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the RTLLIB_PRINT_STR macro definition because it is
olny defined in the header and it is never referenced.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
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


