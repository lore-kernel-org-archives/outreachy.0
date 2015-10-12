X-GM-THRID: 6203529109849505792
X-Received: by 10.182.241.228 with SMTP id wl4mr21374593obc.8.1444681374874;
        Mon, 12 Oct 2015 13:22:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.72 with SMTP id k69ls601397iod.31.gmail; Mon, 12 Oct
 2015 13:22:54 -0700 (PDT)
X-Received: by 10.66.219.2 with SMTP id pk2mr26910550pac.16.1444681374430;
        Mon, 12 Oct 2015 13:22:54 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id wl2si1567494pab.1.2015.10.12.13.22.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 13:22:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ex6so8416761pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 13:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=sdk/HO5Stw7GpCfNydutXI+Z41qf8PL66QD4pmGyiQg=;
        b=kYsEGMXRpCAsm76HR09mIexopvpgQp4cO0PBLM0bKIubDEHCUCDUIFqKXYyxBGFIOD
         YdxeSK5J+CqtIiq8BS/kUddFiTkjG+Ne9hc30CrI/LOD1phzSoI7dnZBkpR4N5jIbOp3
         6NHXDdsCg6iKtIs98rNh2c7lg6MWCIu1tI5rIGSfQxBPYwFsjWQ2wnQsBGWkWT0NeCe0
         MPx2yCkt/abHghm49ZT7VzsfjNgxkIAKZnN9beMceKP5f/NJ9jQHAAMgoVUwjASx7Cae
         RKgu4+8yOoVfv9J3zbwCd/u+SefqXPI9DaMF7FxXA8691zanOIfENhJJlXUscEr9OVRJ
         lbNg==
X-Received: by 10.68.234.200 with SMTP id ug8mr36633162pbc.13.1444681374350;
        Mon, 12 Oct 2015 13:22:54 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id rp5sm20088280pab.0.2015.10.12.13.22.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 13:22:53 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: move open brace in line with control flow statement
Date: Mon, 12 Oct 2015 13:22:44 -0700
Message-Id: <1444681364-10062-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151009062102.GA31750@Ubuntu-D830>
References: <20151009062102.GA31750@Ubuntu-D830>

Move open braces to be in line with "if" control flow statements.
Addresses checkpatch.pl:
	ERROR: that open brace { should be on the previous line

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Changes in v2: removed blank lines after open braces

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..906700f 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1476,8 +1476,7 @@ static int get_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 	priv = wiphy_priv(wiphy);
 
 
-	if (!pairwise)
-	{
+	if (!pairwise) {
 		PRINT_D(CFG80211_DBG, "Getting group key idx: %x\n", key_index);
 
 		key_params.key = priv->wilc_gtk[key_index]->key;
@@ -1854,9 +1853,8 @@ void WILC_WFI_CfgParseRxAction(u8 *buf, u32 len)
 			op_channel_attr_index = index;
 		index += buf[index + 1] + 3; /* ID,Length byte */
 	}
+	if (u8WLANChannel != INVALID_CHANNEL) {
 
-	if (u8WLANChannel != INVALID_CHANNEL)
-	{
 		/*Modify channel list attribute*/
 		if (channel_list_attr_index) {
 			PRINT_D(GENERIC_DBG, "Modify channel list attribute\n");
@@ -1909,9 +1907,8 @@ void WILC_WFI_CfgParseTxAction(u8 *buf, u32 len, bool bOperChan, u8 iftype)
 			op_channel_attr_index = index;
 		index += buf[index + 1] + 3; /* ID,Length byte */
 	}
+	if (u8WLANChannel != INVALID_CHANNEL && bOperChan) {
 
-	if (u8WLANChannel != INVALID_CHANNEL && bOperChan)
-	{
 		/*Modify channel list attribute*/
 		if (channel_list_attr_index) {
 			PRINT_D(GENERIC_DBG, "Modify channel list attribute\n");
-- 
2.1.4


