X-GM-THRID: 6205781635135176704
X-Received: by 10.66.163.102 with SMTP id yh6mr6468746pab.23.1444896505963;
        Thu, 15 Oct 2015 01:08:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.113.234 with SMTP id jb10ls268479obb.83.gmail; Thu, 15 Oct
 2015 01:08:25 -0700 (PDT)
X-Received: by 10.182.241.10 with SMTP id we10mr6785184obc.24.1444896505672;
        Thu, 15 Oct 2015 01:08:25 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1335402pbb.0.2015.10.15.01.08.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:08:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ws5so16698615pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=l6gAU5poKv0X3bEM23/TJ7udvBjesrqCIRUG/PCErHM=;
        b=ODVmi6ZB8XUjwWGrBCPUxtwAuH15UvRdyacn0DOtEGlReCiDRRmUYiDmRqNi7CykS9
         vhBCbjenpmUqmLwpBpCvHZIMBo0PUcRc5MpbNJ8w0QWowTCVLnn8y4qBNwnY+g1kLCRA
         LrRUdGzANVAwDbrXNFfV7931df7lYKdDR7VeDQR5qFMPA9RoAQQZZrOon/Fg0AhtH8Am
         RqZFEvFW778Xj6QZ1GUkvI8qQL10zAbQjGFud0ixdi+R+EshsZwshmflm7zRmq5bV6WY
         ex5V5ABJgyy4qXcD86k62w16F1JR9GPeI0ltOYHiauossWEDKWOyhndsm77tCZn/DnQV
         qReg==
X-Received: by 10.67.24.97 with SMTP id ih1mr8656971pad.13.1444896505506;
        Thu, 15 Oct 2015 01:08:25 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id xm4sm13824375pab.27.2015.10.15.01.08.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:08:25 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:38:21 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/18] staging: rtl8723au: core: rtw_ap: Remove useless
 intialisation
Message-ID: <1e5eb2fb0219d57524a781dff19621d5edd31b23.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 65b209a..a7c8b73 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -403,7 +403,7 @@ void add_RATid23a(struct rtw_adapter *padapter, struct sta_info *psta, u8 rssi_l
 	init_rate = get_highest_rate_idx23a(tx_ra_bitmap&0x0fffffff)&0x3f;
 
 	if (psta->aid < NUM_STA) {
-		u8 arg = 0;
+		u8 arg;
 
 		arg = psta->mac_id&0x1f;
 
@@ -487,7 +487,7 @@ static void update_bmc_sta(struct rtw_adapter *padapter)
 		rtl8723a_SetHalODMVar(padapter, HAL_ODM_STA_INFO, psta, true);
 
 		{
-			u8 arg = 0;
+			u8 arg;
 
 			arg = psta->mac_id&0x1f;
 
-- 
1.9.1


