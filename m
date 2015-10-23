X-GM-THRID: 6208838944103071744
X-Received: by 10.182.68.104 with SMTP id v8mr5933829obt.9.1445607991455;
        Fri, 23 Oct 2015 06:46:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.244 with SMTP id c107ls195570qgf.39.gmail; Fri, 23 Oct
 2015 06:46:30 -0700 (PDT)
X-Received: by 10.140.195.2 with SMTP id q2mr17307368qha.5.1445607990036;
        Fri, 23 Oct 2015 06:46:30 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si2225223pac.2.2015.10.23.06.46.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hk11so119267909pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=FutCHmDSntuj4yGmByHbZFr8fwMZC8hYkg/DC46aJ2A=;
        b=tRf+oEOQPewy0Fdq2mGpkMw9TRyDXVOIhACyN1g9RsOU3f5wBjonzReeu9gVg0HNiQ
         QjdVDWXFOPw5siJTbDRG9VFVWXCqaQuy4XawzR9ON324LrVaUWCTWM9XGIQKU32ejLjk
         U+piPljA4fSyn6LIwlsl8WANx4twpQ0n8D4jqLrhRd7b72lsxnyHJApIWiFsms8rQqQw
         Wh7vU7gpcMWl+qDgoN6fJEg5WKLNQ1oEDilsg/I8qXrTOuRo/Mptam1+z6epQXkynhU3
         Kn23D7H2Z3VDwaczwGVhdUn2GVO5ITvzEZNOLiw561ujO07aVwI4Gq30GOuGwGp/G99I
         bnaw==
X-Received: by 10.68.68.167 with SMTP id x7mr24122530pbt.140.1445607989870;
        Fri, 23 Oct 2015 06:46:29 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ea5sm5882925pbc.92.2015.10.23.06.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:46:29 -0700 (PDT)
Date: Fri, 23 Oct 2015 19:16:20 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: wilc1000: coreconfigurator: Remove irrelevant
 wrapper function
Message-ID: <a636533cae194224d97d3ef1290fd299ae6bc8f8.1445607754.git.shivanib134@gmail.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445607754.git.shivanib134@gmail.com>
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
 drivers/staging/wilc1000/coreconfigurator.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 6dfe26d..1403a33 100644
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
@@ -425,8 +418,12 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
 		/* Get BSSID */
 		get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
 
-		/* Get the current channel */
-		pstrNetworkInfo->u8channel = get_current_channel(pu8msa, (u16RxLen + FCS_LEN));
+		/* 
+		 * Extract current channel information from
+		 * the beacon/probe response frame          
+		 */
+		pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa,
+							(u16RxLen + FCS_LEN));
 
 		/* Get beacon period */
 		u8index = (MAC_HDR_LEN + TIME_STAMP_LEN);
-- 
2.1.0


