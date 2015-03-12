X-GM-THRID: 7771698233344
X-Received: by 10.180.211.199 with SMTP id ne7mr2640722wic.5.1426127444722;
        Wed, 11 Mar 2015 19:30:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.106 with SMTP id w10ls233190laz.62.gmail; Wed, 11 Mar
 2015 19:30:44 -0700 (PDT)
X-Received: by 10.152.19.67 with SMTP id c3mr4636249lae.7.1426127444263;
        Wed, 11 Mar 2015 19:30:44 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id cl5si425157wib.3.2015.03.11.19.30.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 19:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghk14 with SMTP id k14so13306802wgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 19:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PsRT6qNtIq7zxN1uU3J4YmOG6kKvPcTTHJikhz6yxY8=;
        b=UFMO4tsL5h5gRKUtGJLRjW/Qf3RpsiefI0QlC5UL+fWzLybpvL8iUvJbeSc5BFMkuN
         B989N/LPjecXcq4uGYi1a06M4E1Z1j0H4ESvPlfDGvNGlcfGS24LB7Ofck1iLygKdKZO
         NtcJIf3ex/CCxmt+VTsRAShl7sxTASl7/ESaLNXNzGYyRCfpe3MZ1NrtlveIW2sbjLjN
         izRNiuXk6XYWcvyN/Cvqb8SyIfgm9hO6hm+AMF2goD2/QCe5j7bM0nAhUsYT2TWC4wuY
         8TUWj6BOcffzHTxhqq2GjR+yOURPIxtfBWuA6HKJwmVNgf67bp8hrpfpb5ww5js8dHhU
         mfBA==
X-Received: by 10.194.189.138 with SMTP id gi10mr84681345wjc.86.1426127444172;
        Wed, 11 Mar 2015 19:30:44 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id e18sm7899017wjz.27.2015.03.11.19.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 11 Mar 2015 19:30:43 -0700 (PDT)
Date: Thu, 12 Mar 2015 04:30:04 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Remove unnecessary struct and typedef
Message-ID: <47d01e18e2aa91b110d99c06c240a1493fbbaf52.1426127289.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes the _bss_ht struct and the associated type definition
because it is not used and it also introduces the warning:
"WARNING: do not add new typedefs".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index b6b862a..0f53c6a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1457,24 +1457,6 @@ struct	ether_header {
 #define	ETHERTYPE_IP	0x0800		/* IP protocol */
 #endif
 
-typedef struct _bss_ht{
-
-	bool				support_ht;
-
-	// HT related elements
-	u8					ht_cap_buf[32];
-	u16					ht_cap_len;
-	u8					ht_info_buf[32];
-	u16					ht_info_len;
-
-	HT_SPEC_VER			ht_spec_ver;
-	//HT_CAPABILITY_ELE			bdHTCapEle;
-	//HT_INFORMATION_ELE		bdHTInfoEle;
-
-	bool				aggregation;
-	bool				long_slot_time;
-}bss_ht, *pbss_ht;
-
 typedef enum _erp_t{
 	ERP_NonERPpresent	= 0x01,
 	ERP_UseProtection	= 0x02,
-- 
1.9.1


