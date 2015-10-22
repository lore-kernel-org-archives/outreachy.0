X-GM-THRID: 6208553968461676544
X-Received: by 10.66.158.229 with SMTP id wx5mr14350813pab.3.1445541616390;
        Thu, 22 Oct 2015 12:20:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.225 with SMTP id e88ls1152482qgf.59.gmail; Thu, 22 Oct
 2015 12:20:15 -0700 (PDT)
X-Received: by 10.129.80.132 with SMTP id e126mr4853935ywb.44.1445541615671;
        Thu, 22 Oct 2015 12:20:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id sm2si508579pab.0.2015.10.22.12.20.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 12:20:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id rc13so94194503pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 12:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=OMpUk2vWhKOOUuBZ6DT+psLhY7dE8c65FVag9Uibres=;
        b=mr993zCcweZ0+XucELiVAbhxxEdh5VgtNpHtsYnWlSwbvAc5/n2jtH9BxcopLgOIvc
         vAqWYPndVG4tVrGbqRFkM0Xizm4btN0A9LeTUAAqJ+3AdUZIG0snvScJlUvp1W8xhfJB
         p7sGAKrakaL+XqxAsOI3zwpV26P5bwiq2RtLaFV9CVt91UYtWvHGCqn1y2gCmpZ7e3Jc
         r5hr5L4EJJlHDBAU4RvYPCcqDahJxOsa/TUHQ05/ZQUXkLH7hso47sa2qGU++wfVRvkc
         aNx9A3TglUmCs7iYNUE1d8zOL/Sywmk712UvCCKZjtpAVaQNsVSahVEipOuoooraBJ/W
         Ryjg==
X-Received: by 10.68.57.208 with SMTP id k16mr19709875pbq.12.1445541615518;
        Thu, 22 Oct 2015 12:20:15 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id bh4sm15102072pbb.62.2015.10.22.12.20.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 12:20:14 -0700 (PDT)
Date: Fri, 23 Oct 2015 00:50:06 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: coreconfigurator: Remove unnecessary
 wrapper function
Message-ID: <20151022192006.GA23576@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function get_current_channel() and replace its calls by
get_current_channel_802_11n() as the former function's definition
involves only returning the value of latter function.
Semantic patch used to find out the issue:

@@
identifier f,g;
@@

*f(...) {
 return g(...); }

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 6dfe26d..f20f2f3 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -331,13 +331,6 @@ u8 get_current_channel_802_11n(u8 *pu8msa, u16 u16RxLen)
 	return 0;  /* no MIB here */
 }
 
-u8 get_current_channel(u8 *pu8msa, u16 u16RxLen)
-{
-	/* Extract current channel information from */
-	/* the beacon/probe response frame          */
-	return get_current_channel_802_11n(pu8msa, u16RxLen);
-}
-
 /**
  *  @brief                      parses the received 'N' message
  *  @details
@@ -425,8 +418,11 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
 		/* Get BSSID */
 		get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
 
-		/* Get the current channel */
-		pstrNetworkInfo->u8channel = get_current_channel(pu8msa, (u16RxLen + FCS_LEN));
+		/* 
+		 * Extract current channel information from
+		 * the beacon/probe response frame 
+		 */
+		pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa, (u16RxLen + FCS_LEN));
 
 		/* Get beacon period */
 		u8index = (MAC_HDR_LEN + TIME_STAMP_LEN);
-- 
2.1.0


