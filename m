X-GM-THRID: 7168610795520
X-Received: by 10.152.6.232 with SMTP id e8mr3547346laa.2.1425860913665;
        Sun, 08 Mar 2015 17:28:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.198 with SMTP id ji6ls431949wid.25.gmail; Sun, 08 Mar
 2015 17:28:33 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr3556699wjb.0.1425860913254;
        Sun, 08 Mar 2015 17:28:33 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id gj20si678816wic.1.2015.03.08.17.28.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 17:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widex7 with SMTP id ex7so15386695wid.3
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 17:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=3VwtglxDk+2w9KrT5ii7nHrdbR/3HlpxAp+Dqtc/Xys=;
        b=y9Bxy/XcMgLtedONwAbKIQLH9ADZS1UYT8qk0ZO27Rbe8BEkxJLyd7X9U0fJERXA0Q
         tXPeB6F6b9rAvsJWK5v9sYXPpNANEGH+RrF6xnAcEdzAYc6xejFV3fcHC0oWXbN6/+Mh
         P64lMUNUCHo7zKQpdE0gI13t5aoDI5/KyeHDc39y9SRQXnhBc1A8xyYylaaXTnn+3d57
         +e379Flw3SIAO2JAAhY3ypybNRunrtiT/le3DufO+dz5oTT/YOY/f51NSI081MEKSP4M
         28g+P5qsQvBx6u3Y+B6Xk5aQmEw4jlmhPdEWyuNm8VjL/7PeFjgau2PBNxc6q02ogUzD
         OUfQ==
X-Received: by 10.194.8.99 with SMTP id q3mr53715595wja.88.1425860913152;
        Sun, 08 Mar 2015 17:28:33 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id n1sm13126178wib.11.2015.03.08.17.28.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 17:28:32 -0700 (PDT)
Date: Mon, 9 Mar 2015 02:27:43 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Remove unnecessary macro definition
Message-ID: <20150309002743.GA22793@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the IEEE80211_PRINT_STR macro definition because it appears
only in the header file and it doesn't serve any purpose in this context.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 27 --------------------------
 1 file changed, 27 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index b44aa17..7e81ae1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -606,33 +606,6 @@ do { if (ieee80211_debug_level & (level)) \
 #define IEEE80211_DEBUG_RX(f, a...)  IEEE80211_DEBUG(IEEE80211_DL_RX, f, ## a)
 #define IEEE80211_DEBUG_QOS(f, a...)  IEEE80211_DEBUG(IEEE80211_DL_QOS, f, ## a)
 
-#ifdef CONFIG_IEEE80211_DEBUG
-/* Added by Annie, 2005-11-22. */
-#define MAX_STR_LEN     64
-/* I want to see ASCII 33 to 126 only. Otherwise, I print '?'. Annie, 2005-11-22.*/
-#define PRINTABLE(_ch)  (_ch>'!' && _ch<'~')
-#define IEEE80211_PRINT_STR(_Comp, _TitleString, _Ptr, _Len)					\
-			if((_Comp) & level)							\
-			{                                                                       \
-				int             __i;                                            \
-				u8  buffer[MAX_STR_LEN];					\
-				int length = (_Len<MAX_STR_LEN)? _Len : (MAX_STR_LEN-1) ;	\
-				memset(buffer, 0, MAX_STR_LEN);					\
-				memcpy(buffer, (u8 *)_Ptr, length );				\
-				for( __i=0; __i<MAX_STR_LEN; __i++ )                            \
-				{                                                               \
-				     if( !PRINTABLE(buffer[__i]) )   buffer[__i] = '?';		\
-				}                                                               \
-				buffer[length] = '\0';                                          \
-				printk("Rtl819x: ");						\
-				printk(_TitleString);                                         \
-				printk(": %d, <%s>\n", _Len, buffer);                         \
-			}
-#else
-#define IEEE80211_PRINT_STR(_Comp, _TitleString, _Ptr, _Len)  do {} while (0)
-#endif
-
-#include <linux/netdevice.h>
 #include <linux/if_arp.h> /* ARPHRD_ETHER */
 
 #ifndef WIRELESS_SPY
-- 
1.9.1


