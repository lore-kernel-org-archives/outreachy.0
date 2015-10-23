X-GM-THRID: 6208838944103071744
X-Received: by 10.107.47.219 with SMTP id v88mr8288394iov.25.1445608011403;
        Fri, 23 Oct 2015 06:46:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.94.233 with SMTP id df9ls968817obb.43.gmail; Fri, 23 Oct
 2015 06:46:50 -0700 (PDT)
X-Received: by 10.182.22.200 with SMTP id g8mr17838461obf.0.1445608010131;
        Fri, 23 Oct 2015 06:46:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si2275763pbb.0.2015.10.23.06.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so124579380pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2015 06:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=j2tUX/6orz0b8WXDJaMENEC4wB+pgAMZAOooVfA0lJc=;
        b=UglL/G955yJW5rSQgZEn1Op92o6LBLglYBZFLoFuAtZLcVuc2c35SSteaFO3gh2287
         AyWXZxu2EhwMvO2lQoLNygvdiiCGUvCe0em3khluD1b307aDx/2eofLR1b/vUtcouIAU
         MKB04WGib/zKaulFBWDv2Hp6tJ8nA4VK+szXVac8EJHxQxNTIDYXGm4GF2fT21FhO2Gc
         H4vRHBcr1MQS7T5O5OuwtEayDbK6w2i5al8/JIu8d9NyPdgLipCloNNx2S1BW2Dbfw3a
         9KB6LSgcMJMC4EUBgcSVK0Gfv7HnKtTuMamb0sjxGFWx1T/hueDalo8/DjuvARomNGM4
         SzwQ==
X-Received: by 10.66.162.232 with SMTP id yd8mr4956348pab.55.1445608010035;
        Fri, 23 Oct 2015 06:46:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id i9sm19174345pbq.84.2015.10.23.06.46.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 06:46:49 -0700 (PDT)
Date: Fri, 23 Oct 2015 19:16:41 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: wilc1000: coreconfigurator: Remove unnecessary
 parentheses
Message-ID: <65243190a09950e0191b4ecdb63e405c2d1170c9.1445607754.git.shivanib134@gmail.com>
References: <cover.1445607754.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445607754.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Parentheses around some arguments and expressions are not required and
should be removed.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 1403a33..d002cfb 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -423,17 +423,17 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
 		 * the beacon/probe response frame          
 		 */
 		pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa,
-							(u16RxLen + FCS_LEN));
+							u16RxLen + FCS_LEN);
 
 		/* Get beacon period */
-		u8index = (MAC_HDR_LEN + TIME_STAMP_LEN);
+		u8index = MAC_HDR_LEN + TIME_STAMP_LEN;
 
 		pstrNetworkInfo->u16BeaconPeriod = get_beacon_period(pu8msa + u8index);
 
 		u8index += BEACON_INTERVAL_LEN + CAP_INFO_LEN;
 
 		/* Get DTIM Period */
-		pu8TimElm = get_tim_elm(pu8msa, (u16RxLen + FCS_LEN), u8index);
+		pu8TimElm = get_tim_elm(pu8msa, u16RxLen + FCS_LEN, u8index);
 		if (pu8TimElm != NULL)
 			pstrNetworkInfo->u8DtimPeriod = pu8TimElm[3];
 		pu8IEs = &pu8msa[MAC_HDR_LEN + TIME_STAMP_LEN + BEACON_INTERVAL_LEN + CAP_INFO_LEN];
-- 
2.1.0


