X-GM-THRID: 7320828379136
X-Received: by 10.180.91.76 with SMTP id cc12mr4629364wib.7.1425926370882;
        Mon, 09 Mar 2015 11:39:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.34 with SMTP id cz2ls16344wib.46.canary; Mon, 09 Mar
 2015 11:39:29 -0700 (PDT)
X-Received: by 10.180.91.76 with SMTP id cc12mr4629356wib.7.1425926369557;
        Mon, 09 Mar 2015 11:39:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id c8si353855wiw.1.2015.03.09.11.39.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 11:39:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ex7so23367634wid.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 11:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pLqCfNGMLgdqs/EXPEdGi+9WamX0EkYs/NW9QX1BDl8=;
        b=ojKGazWUi6sOaLsQEU3BmnyKeSACRZK0V4mMN4VtGxIZUnOvIUuLaAwRv2ddeWUnzL
         LVB1uhVsysEAA+nPU/BV9jvGKP/tdP4HlL20/rsFc6o5gSlLY1ZhAnJRApk2KbHKKCF/
         Zuf3iGgO/zkf2lDNDPMjx1ZjtgmhsinC2HXHCACN3d+WyfWx4GhWnwG7nKEmmNOBqpsC
         zeNd0qmGU4uV/Fl6BvPwMmvNGx8/KBlX7TOUe5QSuQ0Lkl11Che9vjfQxfA2ijOFPqyX
         PAZolOBWxO2tHahBiuHFfFQBLfzFM/dop640w6vg9vz4d7Fr+nAbr6gQV2PxeM3dnAfv
         OVaw==
X-Received: by 10.180.126.98 with SMTP id mx2mr104777786wib.18.1425926369454;
        Mon, 09 Mar 2015 11:39:29 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ga8sm334723wib.11.2015.03.09.11.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 11:39:28 -0700 (PDT)
Date: Mon, 9 Mar 2015 20:38:48 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] Staging: rtl8192u: Add function to improve code quality
Message-ID: <d5b2664a5ca1c550ec21cbb507de8d529ed8791c.1425925942.git.cristina.opriceana@gmail.com>
References: <cover.1425925942.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425925942.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch introduces a new function for the authentication response
error check in the  ieee80211_rx_frame_softmac() function to fix the
indentation problem. It also adds the iotAction variable in the new
function to fix the "more than 80 characters per line" warning.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 129 +++++++++++----------
 1 file changed, 67 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 878086a..f7aa9df 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1920,6 +1920,66 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
 	return;
 
 }
+
+void ieee80211_check_auth_response(struct ieee80211_device *ieee,
+				   struct sk_buff *skb)
+{
+	/* default support N mode, disable halfNmode */
+	bool bSupportNmode = true, bHalfSupportNmode = false;
+	u16 errcode;
+	u8 *challenge;
+	int chlen = 0;
+	u32 iotAction;
+
+	errcode = auth_parse(skb, &challenge, &chlen);
+	if (!errcode) {
+		if (ieee->open_wep || !challenge) {
+			ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
+			ieee->softmac_stats.rx_auth_rs_ok++;
+			iotAction = ieee->pHTInfo->IOTAction;
+			if (!(iotAction & HT_IOT_ACT_PURE_N_MODE)) {
+				if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
+					/* WEP or TKIP encryption */
+					if (IsHTHalfNmodeAPs(ieee)) {
+						bSupportNmode = true;
+						bHalfSupportNmode = true;
+					} else {
+						bSupportNmode = false;
+						bHalfSupportNmode = false;
+					}
+					printk("==========>to link with AP using SEC(%d, %d)",
+						bSupportNmode,
+						bHalfSupportNmode);
+				}
+			}
+			/* Dummy wirless mode setting- avoid encryption issue */
+			if (bSupportNmode) {
+				/* N mode setting */
+				ieee->SetWirelessMode(ieee->dev,
+						ieee->current_network.mode);
+			} else {
+				/* b/g mode setting - TODO */
+				ieee->SetWirelessMode(ieee->dev, IEEE_G);
+			}
+
+			if (ieee->current_network.mode == IEEE_N_24G &&
+					bHalfSupportNmode == true) {
+				printk("===============>entern half N mode\n");
+				ieee->bHalfWirelessN24GMode = true;
+			} else
+				ieee->bHalfWirelessN24GMode = false;
+
+			ieee80211_associate_step2(ieee);
+		} else {
+			ieee80211_auth_challenge(ieee, challenge, chlen);
+		}
+	} else {
+		ieee->softmac_stats.rx_auth_rs_err++;
+		IEEE80211_DEBUG_MGMT("Auth response status code 0x%x", errcode);
+		ieee80211_associate_abort(ieee);
+	}
+}
+
 inline int
 ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 			struct ieee80211_rx_stats *rx_stats, u16 type,
@@ -1927,12 +1987,9 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 {
 	struct ieee80211_hdr_3addr *header = (struct ieee80211_hdr_3addr *) skb->data;
 	u16 errcode;
-	u8 *challenge;
-	int chlen=0;
 	int aid;
 	struct ieee80211_assoc_response_frame *assoc_resp;
 //	struct ieee80211_info_element *info_element;
-	bool bSupportNmode = true, bHalfSupportNmode = false; //default support N mode, disable halfNmode
 
 	if(!ieee->proto_started)
 		return 0;
@@ -2014,67 +2071,15 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
 	case IEEE80211_STYPE_AUTH:
 
 		if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE){
-			if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING &&
-			ieee->iw_mode == IW_MODE_INFRA){
-
-					IEEE80211_DEBUG_MGMT("Received authentication response");
-
-					errcode = auth_parse(skb, &challenge, &chlen);
-					if (!errcode) {
-						if(ieee->open_wep || !challenge){
-							ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
-							ieee->softmac_stats.rx_auth_rs_ok++;
-							if(!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))
-							{
-								if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
-								{
-											// WEP or TKIP encryption
-									if(IsHTHalfNmodeAPs(ieee))
-									{
-										bSupportNmode = true;
-										bHalfSupportNmode = true;
-									}
-									else
-									{
-										bSupportNmode = false;
-										bHalfSupportNmode = false;
-									}
-								printk("==========>to link with AP using SEC(%d, %d)", bSupportNmode, bHalfSupportNmode);
-								}
-							}
-							/* Dummy wirless mode setting to avoid encryption issue */
-							if(bSupportNmode) {
-								//N mode setting
-								ieee->SetWirelessMode(ieee->dev, \
-										ieee->current_network.mode);
-							}else{
-								//b/g mode setting
-								/*TODO*/
-								ieee->SetWirelessMode(ieee->dev, IEEE_G);
-							}
-
-							if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode == true)
-							{
-								printk("===============>entern half N mode\n");
-								ieee->bHalfWirelessN24GMode = true;
-							}
-							else
-								ieee->bHalfWirelessN24GMode = false;
-
-							ieee80211_associate_step2(ieee);
-						}else{
-							ieee80211_auth_challenge(ieee, challenge, chlen);
-						}
-					}else{
-						ieee->softmac_stats.rx_auth_rs_err++;
-						IEEE80211_DEBUG_MGMT("Authentication response status code 0x%x",errcode);
-						ieee80211_associate_abort(ieee);
-					}
+			if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING
+				&& ieee->iw_mode == IW_MODE_INFRA) {
 
-				}else if (ieee->iw_mode == IW_MODE_MASTER){
-					ieee80211_rx_auth_rq(ieee, skb);
-				}
+				IEEE80211_DEBUG_MGMT("Received auth response");
+				ieee80211_check_auth_response(ieee, skb);
+			} else if (ieee->iw_mode == IW_MODE_MASTER) {
+				ieee80211_rx_auth_rq(ieee, skb);
 			}
+		}
 		break;
 
 	case IEEE80211_STYPE_PROBE_REQ:
-- 
1.9.1


