X-GM-THRID: 6471286775030480896
X-Received: by 10.28.135.132 with SMTP id j126mr887287wmd.0.1506713865897;
        Fri, 29 Sep 2017 12:37:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.225 with SMTP id o88ls2058504wrb.3.gmail; Fri, 29 Sep
 2017 12:37:44 -0700 (PDT)
X-Received: by 10.223.151.213 with SMTP id t21mr366453wrb.12.1506713864883;
        Fri, 29 Sep 2017 12:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506713864; cv=none;
        d=google.com; s=arc-20160816;
        b=hyrw59GyxJRFDbhOkdgE69l9z7rzZureGveuf89Xu287xaeNe5oJVSZocqULxKQIsv
         geZi4r6AP+7FuZOuRoHwJzXr7nIG+CoYpj4b1mpGRhQ3pDDQwkz1g70cNoYc/NiHsJZu
         lmrB+0D53Vmdz5YNzDcDrLstOXLW/BefgO3dizRZvQxznuOOqgHtzkaeK0ov9tMrz9YK
         cun6acbJPyntPQm43xbkcUlZIpQxrqrM8nOhZudBib/j+P2/CH8YwOAGm6b9pUiMoAyT
         MN4pKqZBXos4/uq+B+gRSrEm9JoQVCB1WoF65tZwgDHkBE++ao3MtcG2zZQMIBUz66Cd
         kRzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=OaFXurcGBVrVuO8yldsGLsE96Geix15Uo35BKloI7SY=;
        b=r3s+Hjc+rbAk8PMoo/zxtPU8AfIPysPYnur45bm1rttK+a0lBYS0Q5usHO08yF9zlG
         TTjSDeVGXE1gUFgJUiyYpEC3MYuUntL6q5MBOErfwtuUnn52n0MMveBJMbETVOP/ROK7
         mIqW2QQTuyrZzncJtB/sGaeNHGDmCN5NH25UJN3n92/C/BwEqwfp4NAAkKic36FZRiaQ
         +fZGMFCX26+7L0hOVRSttATSP9WojVrjlmCPAFbygXXbjf9AMJY70rBNiM/p7EfP3QrD
         frlGJjLvXm0c+tkwCYl3gJLv+TfIPrAAzy6IhA3DynFVuvCM6AC0P6NFy6+9zjGxvBGE
         9pHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdMjk6vK;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id q145si768474wme.4.2017.09.29.12.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 12:37:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdMjk6vK;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id i131so1345514wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 12:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=OaFXurcGBVrVuO8yldsGLsE96Geix15Uo35BKloI7SY=;
        b=bdMjk6vKCRcofzQqwErIssdZvSu52xW4n8Mg9MZ/4Di/CeHJF4mTv5wrNL84MCPpco
         TP7XfY5V2ooJal2YlZS6FIWPCDo8og92PKt+X1875ULl0FEzqg019ISdg48jRvP2Kown
         w2emGMo8sarXnmv510VgHQYdBuWg1UGcDH3PDCklk9L+ZMZhK+KvGxa4yRhWHP27OmMT
         ElAoinosTFYAXYbl8tMCaGuEz6uGWo2s7Twy+TSOeWeeo27CC6D4DThPfzd+vUBlFjnX
         SG0wDmVO8hG9vDhMcTuceQlx61FEJSYXlDnFg3uBQuZ0OAX+pwP1tJUhZqbHxXUJQ46V
         WnTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OaFXurcGBVrVuO8yldsGLsE96Geix15Uo35BKloI7SY=;
        b=k945stH12MohYmDhj4zSj34I/EUuEc4KWoJLwRustcL6YUrueG2MiDo8LZLhj2Lp6s
         p1GVnfOOXXjCONQUILEXIQP904MolV1y+/hgTedPTtxdsU3teJXpn5d7+DA34VSBE8eC
         6+16rWQQtD2s4S5yR9XJ/Bd1NKKL2WKqyhcwZVEb2KR28J2vPEQdM9Y16JUHOu6z06cK
         mCD2ncSVAo56QAmWyzXpzOv/9UVStFTNAn0F9jRhz4/alXUhKSOnYJgr5fti6CQfora2
         wl0RdR5bQhve0QdNPm4sKCcoQ/PhcU2Llsb2ofgJFKy7riKew393OueOPpXAWxLafG2a
         nd1w==
X-Gm-Message-State: AMCzsaXAOYqTtX9D4Icf+LoInJshogx8TA3/JHzWF2nVzI9FtJHtfnKq
	sTCO90pkkwiNM6ua1Qrw7Wc=
X-Google-Smtp-Source: AOwi7QBc5JUbNK5/LPhXRVN1PV6nh9uvHzBGVsIpty7AaNPfHRf1Vc6H7nyR7vDPAi2qxoIKm6+KMA==
X-Received: by 10.28.23.76 with SMTP id 73mr5546090wmx.70.1506713864440;
        Fri, 29 Sep 2017 12:37:44 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id k141sm4175096wmg.15.2017.09.29.12.37.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 12:37:43 -0700 (PDT)
Date: Fri, 29 Sep 2017 22:37:42 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: Place the constant on the right side in
 comparisons
Message-ID: <20170929193742.GA10959@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move constant to the right side of comparison operator.

Issue found by checkpatch.pl

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 52f31c7..22f4e9f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -3999,7 +3999,7 @@ static void init_channel_list(struct adapter *padapter, struct rt_channel_info *
 				continue;
 
 			if ((0 == (padapter->registrypriv.cbw40_enable & BIT(1))) &&
-			    ((BW40MINUS == o->bw) || (BW40PLUS == o->bw)))
+			    ((o->bw == BW40MINUS) || (o->bw == BW40PLUS)))
 				continue;
 
 			if (reg == NULL) {
@@ -4030,7 +4030,7 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, struct rt_c
 
 	if (padapter->registrypriv.wireless_mode & WIRELESS_11G) {
 		b2_4GBand = true;
-		if (RT_CHANNEL_DOMAIN_REALTEK_DEFINE == ChannelPlan)
+		if (ChannelPlan == RT_CHANNEL_DOMAIN_REALTEK_DEFINE)
 			Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
 		else
 			Index2G = RTW_ChannelPlanMap[ChannelPlan].Index2G;
@@ -4040,14 +4040,14 @@ static u8 init_channel_set(struct adapter *padapter, u8 ChannelPlan, struct rt_c
 		for (index = 0; index < RTW_ChannelPlan2G[Index2G].Len; index++) {
 			channel_set[chanset_size].ChannelNum = RTW_ChannelPlan2G[Index2G].Channel[index];
 
-			if ((RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN == ChannelPlan) ||/* Channel 1~11 is active, and 12~14 is passive */
-			    (RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G == ChannelPlan)) {
+			if ((ChannelPlan == RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN) ||/* Channel 1~11 is active, and 12~14 is passive */
+			    (ChannelPlan == RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G)) {
 				if (channel_set[chanset_size].ChannelNum >= 1 && channel_set[chanset_size].ChannelNum <= 11)
 					channel_set[chanset_size].ScanType = SCAN_ACTIVE;
 				else if ((channel_set[chanset_size].ChannelNum  >= 12 && channel_set[chanset_size].ChannelNum  <= 14))
 					channel_set[chanset_size].ScanType  = SCAN_PASSIVE;
-			} else if (RT_CHANNEL_DOMAIN_WORLD_WIDE_13 == ChannelPlan ||
-				   RT_CHANNEL_DOMAIN_2G_WORLD == Index2G) {/*  channel 12~13, passive scan */
+			} else if (ChannelPlan == RT_CHANNEL_DOMAIN_WORLD_WIDE_13 ||
+				   Index2G == RT_CHANNEL_DOMAIN_2G_WORLD) {/*  channel 12~13, passive scan */
 				if (channel_set[chanset_size].ChannelNum <= 11)
 					channel_set[chanset_size].ScanType = SCAN_ACTIVE;
 				else
@@ -4767,7 +4767,7 @@ void linked_status_chk(struct adapter *padapter)
 			if (pmlmeinfo->FW_sta_info[i].status == 1) {
 				psta = pmlmeinfo->FW_sta_info[i].psta;
 
-				if (NULL == psta)
+				if (psta == NULL)
 					continue;
 				if (pmlmeinfo->FW_sta_info[i].rx_pkt == sta_rx_pkts(psta)) {
 					if (pmlmeinfo->FW_sta_info[i].retry < 3) {
-- 
2.7.4


