X-GM-THRID: 6203529109849505792
X-Received: by 10.107.135.15 with SMTP id j15mr10405473iod.28.1444371675393;
        Thu, 08 Oct 2015 23:21:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.9 with SMTP id h9ls749176ioh.73.gmail; Thu, 08 Oct 2015
 23:21:15 -0700 (PDT)
X-Received: by 10.66.194.168 with SMTP id hx8mr9582743pac.19.1444371675140;
        Thu, 08 Oct 2015 23:21:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id uv4si8453pac.0.2015.10.08.23.21.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 23:21:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy16so77270286pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 23:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fABcdMrnT3Uuu8r/CSxrSnnYfUmlAipRmnkDmcdpkeM=;
        b=eYZBd93yfFRyAYy/qawraxjyTYz7vk7/wj47uQ6Oe6EAs/rrtvye1umw/OxtLkQREx
         uq/ekSZuZupmSV9WIAT1jP66EpvmFOoj2n1zHBpt+cwG13tC4YXLMXXPdd6lViUsBl1r
         ks+ky5FSLOYkQKVrPkVjaexhlVbIvKb2t/P6VNG+VUeJ57/pMpORJlcYHuHsg2a8dok4
         G3AgFsEPyUWp3wxXnTjQRIlN+mmiFRVHv/RPzUGCU/lFvKMYa4nynGXlf1D0quiFp2pW
         MiuOFB6IKWZY1EC8O437lxjslshufOrMuBjN6ruGvC65TubfwQj9VLOV+xxA3AR0knKD
         aYLA==
X-Received: by 10.68.240.2 with SMTP id vw2mr11242870pbc.41.1444371675049;
        Thu, 08 Oct 2015 23:21:15 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id xu5sm61039pab.12.2015.10.08.23.21.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 23:21:14 -0700 (PDT)
Date: Thu, 8 Oct 2015 23:21:13 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: move open brace in line with control flow
 statement
Message-ID: <20151009062102.GA31750@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move open braces to be in line with "if" control flow statements.
Addresses checkpatch.pl:
	ERROR: that open brace { should be on the previous line

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..bf65038 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1476,8 +1476,8 @@ static int get_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
 	priv = wiphy_priv(wiphy);
 
 
-	if (!pairwise)
-	{
+	if (!pairwise) {
+
 		PRINT_D(CFG80211_DBG, "Getting group key idx: %x\n", key_index);
 
 		key_params.key = priv->wilc_gtk[key_index]->key;
@@ -1855,8 +1855,8 @@ void WILC_WFI_CfgParseRxAction(u8 *buf, u32 len)
 		index += buf[index + 1] + 3; /* ID,Length byte */
 	}
 
-	if (u8WLANChannel != INVALID_CHANNEL)
-	{
+	if (u8WLANChannel != INVALID_CHANNEL) {
+
 		/*Modify channel list attribute*/
 		if (channel_list_attr_index) {
 			PRINT_D(GENERIC_DBG, "Modify channel list attribute\n");
@@ -1910,8 +1910,8 @@ void WILC_WFI_CfgParseTxAction(u8 *buf, u32 len, bool bOperChan, u8 iftype)
 		index += buf[index + 1] + 3; /* ID,Length byte */
 	}
 
-	if (u8WLANChannel != INVALID_CHANNEL && bOperChan)
-	{
+	if (u8WLANChannel != INVALID_CHANNEL && bOperChan) {
+
 		/*Modify channel list attribute*/
 		if (channel_list_attr_index) {
 			PRINT_D(GENERIC_DBG, "Modify channel list attribute\n");
-- 
2.1.4


