X-GM-THRID: 6339007205300240384
X-Received: by 10.31.208.199 with SMTP id h190mr6234543vkg.9.1475920044812;
        Sat, 08 Oct 2016 02:47:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls2554399ota.26.gmail; Sat, 08 Oct
 2016 02:47:24 -0700 (PDT)
X-Received: by 10.157.40.151 with SMTP id s23mr6185250ota.124.1475920044455;
        Sat, 08 Oct 2016 02:47:24 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 7si6583663par.0.2016.10.08.02.47.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 02:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so3945545pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 02:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Rsph3YA75ai7FOZggP/Yu/sDLd+5umj2ZnSutooiuhA=;
        b=sLlgvAmWNkFvHhS9A8WTUw00SK/wECYpUqYPyRXlSlLm4QZsywXzc6oKaVJzewXyLJ
         canLXt91ICO4Jhr7wAkYrUWdmHMCfL9byCO3R+HiIgI+ViRqY857eHdZZbgZQRTHf4Bd
         Q1jwotd7dXfNW/0bjEEAhyuRocSpaNz5FlBtiudlhuCm9i7HFExSOXoWhZwT9b0YJaT9
         V+5RbwjnDzEU86BMbVWzThUk34VWEdq/OoQG7u0GMyiml+4GFIXD5hr5/K/UuTOqjkFw
         ekeJ9JPH7Wbfob0Yto6m6WONZV3MvBpdXUc69VBfsR4xGosXT//+/u6oWvWlUzJyZ4qC
         JhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Rsph3YA75ai7FOZggP/Yu/sDLd+5umj2ZnSutooiuhA=;
        b=W9cizqrRlHTyYLiMALh+HGBE3/DMOHB604num3n7rmIuIX3Tn4kdINniP0J2kysSJg
         QY+g4EBBegr7o0um0p1N2ZJZCOMCSCwq6SmdxY9tDVhufykdj32mlgScyH9zP5OrihsU
         qGxaHZRsAd5cvpbSmlbIOafZpSDiBTl5ZFQQCShseCUqdGFTgVfrBoqZy7eccKhG7Jq7
         whKSdWmTJio1Kk2zBJRbNXc75y6u9KaXTIPWPrqtGegmGtAbHXxQkaoDmlpLKT6Mt1g6
         ulYGkxcqEVW2CbNNxoYZPyfGhKDkJrMJ/ne4wRzY0/ZDdbAkSA0BYui21TN0HPLUFe1K
         S0Bw==
X-Gm-Message-State: AA6/9RkTyM+L/PafsYE39vn+e6No/e71XnxjqVMqb/9n2WIxngcKQms1Jzl5giq5eNiJEw==
X-Received: by 10.66.94.163 with SMTP id dd3mr3979920pab.194.1475920044247;
        Sat, 08 Oct 2016 02:47:24 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([177.68.230.98])
        by smtp.gmail.com with ESMTPSA id j82sm11352851pfj.71.2016.10.08.02.47.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 08 Oct 2016 02:47:23 -0700 (PDT)
Date: Sat, 8 Oct 2016 06:47:21 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 04/13] staging: wlan-ng: renames hfa384x_CommTallies32 to
 avoid camelcase
Message-ID: <20161008094721.GA12831@spock>
References: <cover.1475919731.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475919731.git.juliana.orod@gmail.com>
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
index 2641641..73dd344 100644
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


