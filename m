X-GM-THRID: 6335492673577680896
X-Received: by 10.194.175.166 with SMTP id cb6mr1885528wjc.15.1475096837488;
        Wed, 28 Sep 2016 14:07:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.165.196 with SMTP id o187ls493954wme.14.gmail; Wed, 28 Sep
 2016 14:07:17 -0700 (PDT)
X-Received: by 10.194.106.72 with SMTP id gs8mr2004908wjb.14.1475096837038;
        Wed, 28 Sep 2016 14:07:17 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id u190si1126706wmf.0.2016.09.28.14.07.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 14:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id b184so7762860wma.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 14:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PDmWAoWH9VAc6ezsJxqioE9S7rISOFp4yRGGjyBksWo=;
        b=DgM4JQg5rb4PyKlUuDdM6vN7yNsFhwNUAsXi5wr70r4jkfg28dJ/Uy5RorALlHj/cA
         1JtjUc/ILcrxa8KESSZIj2J/rRZzz8xtD+JVl4Ob95CIkJVEbZCfwYHI/PP4rdPDFmUe
         0UJS0WKleFAQohWEsYL0TEe5mdHbWR0oVnHDEuCfq3/ufKOBPFznBopkV2ySmFSJokak
         FSsw0w0P6p7+VysWkOwiJzBCRMliHX8sn6WzW6/Zt4eq1EnixAcY4RVQPHGWTtR21TQT
         JnAc82Ck187MpfOVUf/vuVOg2ZCYJREUWV93GzgQys7OGZl8xqLwEmjFkBZTxBgg7SDg
         cLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PDmWAoWH9VAc6ezsJxqioE9S7rISOFp4yRGGjyBksWo=;
        b=Bny3Q2loL2GWxbn0nGZF3D37q8Fo+vbaO0tTwhJReMCyxwdtxkHvoaUZkSxEmnft/u
         q8V0EA6wu7hyGCfI7sXFOspLeCZfRV0qZIPss3u0VA4V2CRPRC1Yl/s8YH7wQLekRAV+
         Y1X9JBKZETCUfeqUsYOQ0ja+wov6H/V9W0zhWnzbjHNplL8ZX3E/3Z8mftm8stjFbXPu
         QI/RvBB5nivEVTrP1o79i1QR9RhrzvNCjGTZc0VQzolb+OwwO2tL24GOHKyhjBJZOpBO
         j6y6qftQD+0ccy5lY+JyEvOXjOHw/eNycoSFKZ0rgVK9jC95RnptzqBCpb6e1Z2j2E7a
         bM4g==
X-Gm-Message-State: AE9vXwN5UtLTdI4qng9BL6XBWwi1qZKcrk0m0eXs2+kdtFZAMDOyQWzoVQQWmyv6qLvSLQ==
X-Received: by 10.194.59.84 with SMTP id x20mr29366545wjq.89.1475096836811;
        Wed, 28 Sep 2016 14:07:16 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id a84sm24565058wme.6.2016.09.28.14.07.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 14:07:16 -0700 (PDT)
Date: Thu, 29 Sep 2016 00:07:15 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: core: rtw_xmit: Use macros instead of
 constants
Message-ID: <20160928210715.GA26545@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace the 0x888e with ETH_P_PAE and 0x0806 with ETH_P_ARP.
These macros can be found in drivers/staging/rtl8192e/rtllib.h

Hexadecimal numbers are not case sensitive,
therefore 0x888e is equal with 0x888E.

The modifications improve the readability of the code.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 12 ++++++------
 drivers/staging/rtl8192e/rtllib.h         |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 1392899..0f8b8e0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -402,7 +402,7 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
 		_rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));
 /* 		user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
 		user_prio = ip_hdr.tos >> 5;
-	} else if (pattrib->ether_type == 0x888e) {
+	} else if (pattrib->ether_type == ETH_P_PAE) {
 		/*  "When priority processing of data frames is supported, */
 		/*  a STA's SME should send EAPOL-Key frames at the highest priority." */
 		user_prio = 7;
@@ -469,15 +469,15 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 				}
 			}
 		}
-	} else if (pattrib->ether_type == 0x888e) {
+	} else if (pattrib->ether_type == ETH_P_PAE) {
 		DBG_88E_LEVEL(_drv_info_, "send eapol packet\n");
 	}
 
-	if ((pattrib->ether_type == 0x888e) || (pattrib->dhcp_pkt == 1))
+	if ((pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
 		rtw_set_scan_deny(padapter, 3000);
 
 	/*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
-	if ((pattrib->ether_type == 0x0806) || (pattrib->ether_type == 0x888e) || (pattrib->dhcp_pkt == 1))
+	if ((pattrib->ether_type == ETH_P_ARP) || (pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
 
 	bmcast = IS_MCAST(pattrib->ra);
@@ -531,8 +531,8 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 
 		pattrib->encrypt = 0;
 
-		if ((pattrib->ether_type != 0x888e) && !check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != 0x888e\n", pattrib->ether_type));
+		if ((pattrib->ether_type != ETH_P_PAE) && !check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != ETH_P_PAE\n", pattrib->ether_type));
 			res = _FAIL;
 			goto exit;
 		}
diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index 38247fa..b895a53 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -521,7 +521,7 @@ enum wireless_mode {
 };
 
 #ifndef ETH_P_PAE
-#define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */
+#define ETH_P_PAE	0x888E		/* Port Access Entity (IEEE 802.1X) */
 #define ETH_P_IP	0x0800		/* Internet Protocol packet	*/
 #define ETH_P_ARP	0x0806		/* Address Resolution packet	*/
 #endif /* ETH_P_PAE */
-- 
2.7.4


