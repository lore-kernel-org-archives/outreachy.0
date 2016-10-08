X-GM-THRID: 6339007205300240384
X-Received: by 10.13.218.130 with SMTP id c124mr6123075ywe.144.1475915127473;
        Sat, 08 Oct 2016 01:25:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.91.212 with SMTP id g203ls2032586itb.13.gmail; Sat, 08 Oct
 2016 01:25:27 -0700 (PDT)
X-Received: by 10.36.115.194 with SMTP id y185mr698356itb.24.1475915127074;
        Sat, 08 Oct 2016 01:25:27 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id um12si6407813pab.2.2016.10.08.01.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 01:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id r9so3863041paz.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 01:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CbcC87qd40DMP9Ly7xSwLzwPPiQyEXHOMFKN5LNhozA=;
        b=tezcbMvV3XTaQe/YdHHJs6hrDHdZIBNCAcjOHEcB29ahDba2qAkWY7BbszfJlY59ZB
         u7526Ex7bLDMu8feDnqt1p5jptXTKmje6u1T5SskGp6yOac8xyimRl5N/UFW1wXxP1aT
         DSUAH7BCbe+xVsLOp82kWDK89iHyHm0dVoUUvouO8KkuGDs8HzodGcArIVKaa1iscXmP
         ZmIjfT5QcFrC/tGE9UbcYcu7fBnuVI5wLpjAIE7JkvGMp7jrg/O9Nb6TalCvr1cuXUc6
         BdIUWUYU7MKPgvIysoCkFatCpqMlJ1K9ChasDuqF7kXyXr3rMd9zxzeEtfSMWW/No6OL
         1dZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CbcC87qd40DMP9Ly7xSwLzwPPiQyEXHOMFKN5LNhozA=;
        b=InSSr1r8hUjbMdjYtyzwLN3IsPcsj1eryDkBkGKE3mN6fP3T4ExqI+N+4fqv5jQjAV
         FwfMddyzGFTgCBp4njm29Mqq1tUcpH4DXaSuWH2klcphIBqFRdXtci9a5RijC6gzSoZw
         Renp7eyfGZwCRe/e6P+qglijR2uePIEB3feb7XTS/tPOiNckxkphY4gyiYnf8e7aXUUw
         X65Mq8kUarhPHBwqTvAc6IZt5imeCmu+Npd6qJ8WA7tmI+/rmfqAulJh1LSFJr5kUyxa
         Ke1ssF+3iMEGIZTdqzO3fwJ6saeFIkTNVBK6+wjhI2ci2yVOeq2JR6ehWAU06BtxWTsN
         2ATA==
X-Gm-Message-State: AA6/9Rnaj3ZX/W+TqZSxU1mhcBi+DDiqSVtIFpywc3yV7UIPwUiCxbLR/N8JEzS7W+6HkQ==
X-Received: by 10.66.75.39 with SMTP id z7mr36548655pav.83.1475915126873;
        Sat, 08 Oct 2016 01:25:26 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id g65sm19333254pfb.77.2016.10.08.01.25.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 01:25:26 -0700 (PDT)
Date: Sat, 8 Oct 2016 05:25:23 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH 04/13] staging: wlan-ng: renames hfa384x_CommTallies32 to
 avoid camelcase
Message-ID: <20161008082523.GA8282@spock>
References: <cover.1475912465.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475912465.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

Fixes a checkpatch warning by renaming the camelcased struct
hfa384x_CommTallies32 to hfa384x_comm_tallies_32.

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h   | 6 +++---
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 7577f2b..e4105e1 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -634,7 +634,7 @@ struct hfa384x_CommTallies16 {
 	u16 rxmsginbadmsgfrag;
 } __packed;
 
-struct hfa384x_CommTallies32 {
+struct hfa384x_comm_tallies_32 {
 	u32 txunicastframes;
 	u32 txmulticastframes;
 	u32 txfragments;
@@ -763,7 +763,7 @@ struct hfa384x_KeyIDChanged {
 /*--  Collection of all Inf frames ---------------*/
 union hfa384x_infodata {
 	struct hfa384x_CommTallies16 commtallies16;
-	struct hfa384x_CommTallies32 commtallies32;
+	struct hfa384x_comm_tallies_32 commtallies32;
 	struct hfa384x_ScanResult scanresult;
 	struct hfa384x_ChInfoResult chinforesult;
 	struct hfa384x_HScanResult hscanresult;
@@ -1360,7 +1360,7 @@ struct hfa384x {
 	struct hfa384x_caplevel cap_act_ap_mfi;	/* ap f/w to modem interface */
 
 	u32 psusercount;	/* Power save user count. */
-	struct hfa384x_CommTallies32 tallies;	/* Communication tallies. */
+	struct hfa384x_comm_tallies_32 tallies;	/* Communication tallies. */
 	u8 comment[WLAN_COMMENT_MAX + 1];	/* User comment */
 
 	/* Channel Info request results (AP only) */
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 4f99c9b..c656ee6 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1001,7 +1001,7 @@ static void prism2sta_inf_tallies(struct wlandevice *wlandev,
 	 * record length of the info record.
 	 */
 
-	cnt = sizeof(struct hfa384x_CommTallies32) / sizeof(u32);
+	cnt = sizeof(struct hfa384x_comm_tallies_32) / sizeof(u32);
 	if (inf->framelen > 22) {
 		dst = (u32 *)&hw->tallies;
 		src32 = (u32 *)&inf->info.commtallies32;
-- 
2.10.0


