X-GM-THRID: 6259026204991422464
X-Received: by 10.98.42.67 with SMTP id q64mr14048606pfq.9.1457293099871;
        Sun, 06 Mar 2016 11:38:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.64.179 with SMTP id p19ls681662igs.0.gmail; Sun, 06 Mar
 2016 11:38:19 -0800 (PST)
X-Received: by 10.67.7.161 with SMTP id dd1mr10201967pad.41.1457293099548;
        Sun, 06 Mar 2016 11:38:19 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 12si2465245pfb.1.2016.03.06.11.38.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 11:38:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so6410381pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 11:38:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1vUU+Np5TPGucTZxHsIm39gZB2icMduG1646NF74Oy0=;
        b=qLMqtCQ1KyvTwCTDof8mgTFPAhCMoPxGNYMoWAS7ZMs1ZzD8F0O0doTBGEfyZi2nx8
         5GtXc7QgQPgXNH/wtJwV4gOt+ZAEuOD4dDbd3LZ9R9+0h/wKVYnjmeSURhyK5y/R08ID
         lONdJhLNQ5pQX07OzEHTPVl/0frr5pfXnUIyLcnDBB8KkuyhTvyngmnubPNIDg7pAo7r
         iv8V7bknQ/UcRfW2iCWiVxDYz8Y1cAFR8/qhFMRnV3niNYGfaSJw4QFkrcUTadahCTOj
         nyrQgB58xhQKisMuM/lHEXdD4YhxzV1NrWOUdCvoCcCEw0E3ruUoiZFbDYCfYQbtUKrC
         PjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1vUU+Np5TPGucTZxHsIm39gZB2icMduG1646NF74Oy0=;
        b=GVJ1DWBBuc+LoiuoL+6aPoSL+AgLyp+M3lCTVEHDf/yDQXSKTWWobNLEYFMdtJNU6F
         lpmY+BeWuJICZLmFiIYmpgjJgFAY+0BYeCRzeFYISmqLQvFTxz+Bfay4vRTHePKIeMwY
         vAb/Pp4UPk3sxzZ2uv6KjgxqSRXDKZktZhhUj8vTsVLyYWPxzfVXTm4MKR+mB21DOGL0
         z59cuYGmDRObv5kc7JPD2RQqBw388mZHxbu8gz4mkiT8d5oT+wxqGBWJk9gXoaE1fCRI
         mf4g3YNuSlLq/Rb3F/p0hG/2vyvASYuigUHeRTlTa9ceoGKXlNp5uEuBaVkBqdWNhCg0
         syLQ==
X-Gm-Message-State: AD7BkJKzKQPVeqJAvb8a3N9eNClbDTyUHxYRQv+GEpM4+hf8LmWz2vFjTzGjERB976mZ/A==
X-Received: by 10.66.100.228 with SMTP id fb4mr27818570pab.84.1457293099402;
        Sun, 06 Mar 2016 11:38:19 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id a25sm19224391pfj.40.2016.03.06.11.38.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 11:38:18 -0800 (PST)
Date: Sun, 6 Mar 2016 17:08:38 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: slicoss: Use !x instead of x == NULL.
Message-ID: <20160306113838.GA5997@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.This patch is found by checkpatch.pl script. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index a91c60a..acf73f0 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -1807,7 +1807,7 @@ static int slic_mcast_add_list(struct adapter *adapter, char *address)
 
 	/* Doesn't already exist.  Allocate a structure to hold it */
 	mcaddr = kmalloc(sizeof(struct mcast_address), GFP_ATOMIC);
-	if (mcaddr == NULL)
+	if (!mcaddr)
 		return 1;
 
 	ether_addr_copy(mcaddr->address, address);
@@ -1888,7 +1888,7 @@ static void slic_xmit_fail(struct adapter *adapter,
 {
 	if (adapter->xmitq_full)
 		netif_stop_queue(adapter->netdev);
-	if ((cmd == NULL) && (status <= XMIT_FAIL_HOSTCMD_FAIL)) {
+	if (!cmd && (status <= XMIT_FAIL_HOSTCMD_FAIL)) {
 		switch (status) {
 		case XMIT_FAIL_LINK_STATE:
 			dev_err(&adapter->netdev->dev,
@@ -2999,7 +2999,7 @@ static u32 slic_card_locate(struct adapter *adapter)
 	/* Initialize a new card structure if need be */
 	if (card_hostid == SLIC_HOSTID_DEFAULT) {
 		card = kzalloc(sizeof(struct sliccard), GFP_KERNEL);
-		if (card == NULL)
+		if (!card)
 			return -ENOMEM;
 
 		card->next = slic_global.slic_card;
-- 
1.8.3.4


