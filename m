X-GM-THRID: 6610062966747299840
X-Received: by 2002:a1f:1a17:: with SMTP id a23-v6mr21479257vka.0.1539025215754;
        Mon, 08 Oct 2018 12:00:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e90c:: with SMTP id c12ls221680vso.10.gmail; Mon, 08 Oct
 2018 12:00:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV639cJmapOOeXwxZdisHuKk2l6ZCkzfX47bxJSSrp8+7JDOaIf/urDvd1kCvSOwe23OPgRjo
X-Received: by 2002:a67:46da:: with SMTP id a87mr20185009vsg.3.1539025215237;
        Mon, 08 Oct 2018 12:00:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539025215; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1k4XDx/ODsVezNVf3Vy8bSODctr7ZhB5kjaI42sL1ZcdinVaGSBR1CFz46m4bpv+a
         DzIUXGThh0RKvZO2b4w6nwVWD0WsyQvSGk9KOKnUNUvva2InQfHAteYwHpoUYL3Qo4x4
         YmhHHpP56nxAgcrmLejw7U1mioSBF9lAXxFtZpzzhYEdrxzOnfy/0eDOzEKUyTD6EJO9
         EJe/sYhzW3pitPik7oLjky0fCj6zYCcrCMKpREjiKueRFdSX0aMLvhh7iaLkqG0N81BV
         dOMKReiyQVABHO6rahkGjUwiWMm2frez7kJRdNO507vxPInps28zo/Kw0BIGa+42M1lj
         nX2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qqw3BZPd6OrnZsfWmmyOfTpzzHMixOnqViu3xf81QN4=;
        b=g7gzS935yVlrjJgrrYzrD0uRY/7VGkKLx5Wh0m4NmrFAjnjJqGq55AGxZW7/Si2arS
         /DyTRPeM7A1yvqey+wR3gktt+80XAqI7zkCMzqMW4ryFvqntzizmU8uftTkUpWgBYKj5
         e8Op7yKsbB+O6V7UgkWzho2QnDQAlVdA6+HPbnbSMYrRcPgf4mrQ6tN21DaILMw4L7mG
         6+vUnOQbD8Oz0ue3LRFmYvwGG0C3egIFOxfyQUjLDeXfLtq6kxjBw5f7Cn8oEjVEA948
         hsrEBm0vX6URrm0wFBansLVWVXs/BMrKvnpy4NQDTKolUv3meF+swCP/6LmBH8qq9P78
         BU7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2NjuCUD;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id r132-v6si881051vke.0.2018.10.08.12.00.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 12:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2NjuCUD;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id p25-v6so10474692pli.11
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 12:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qqw3BZPd6OrnZsfWmmyOfTpzzHMixOnqViu3xf81QN4=;
        b=T2NjuCUD8rIVPn0TcA3y2RuemKHyofMxrygzN8vJxz5681h6wdi1hDmH/HRcCTirhq
         yOZnebpnV4ZzPuANs00pu31issPj4dGA/JJfxzi5JkdHM/nef8kuZYcXIy+Qq8VeU+TS
         Zz4OoJ+2Mv5VH+reZ6EntKy12V6jPtHBZ6PzD1aU0y3ALkU4/ZxWqGysauxPxLeaBS2r
         3avHDPjtMneR/1iL7bkUbCnl8Ta+2DwRRv8v4iF7C1I+j9az0k8Oa4h9MA3rUrtOMx34
         AKCH0RHO1/c31OcRL/XA2Qsyb2IqpRa6DmbAFggE1Pae2R2U3DbkdBZPAKePTgBW/TBu
         YNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qqw3BZPd6OrnZsfWmmyOfTpzzHMixOnqViu3xf81QN4=;
        b=Wqk3SSTvz3yPwTAXYubpTNn056xxsYON2GAz89Z9lI4ABsabii9RT6xQcVCH3Tc/as
         uvm6pTJovgIZhuNhRfdgGz7tA8MzSSdMORm1FC8mur0RyGvzqOFghf/SeIBDlC5PoWak
         ij/kzEFiK/lGDqagDaf7WoULcQUN3i6ZwB/7YdfLjvmPdUEHs5YmDmvLDzJYsU06joMX
         o2iHBjfrLhNRvl1XxRVTWW+wNdYEURIE6VnxzLum3L/+N+kZsixrtZs88bmudbWNPW0S
         N00DOfVVUi2ih97OhicG4rOZcjkXnRUSpm+E1fLBXTaD9NzgYWnq9Bj/VH57pIh1SzKp
         JKnQ==
X-Gm-Message-State: ABuFfogwOpybZoQjXsMcxl5v4qb3G/kKjkYw1Le+E04Fh/PKtASfPF2Q
	VKa9RK3mESHB+biF276CZUM=
X-Received: by 2002:a17:902:292a:: with SMTP id g39-v6mr25197403plb.269.1539025214179;
        Mon, 08 Oct 2018 12:00:14 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.57.133])
        by smtp.gmail.com with ESMTPSA id n13-v6sm20162022pgr.73.2018.10.08.12.00.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 08 Oct 2018 12:00:13 -0700 (PDT)
Date: Tue, 9 Oct 2018 00:30:10 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: dess@hadess.net, hdegoede@redhat.com, Larry.Finger@lwfinger.net,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: core: Remove true and false comparison
Message-ID: <20181008190010.GA13460@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl.
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index faf4b41..2691241 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -861,7 +861,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		update_hw_ht_param(padapter);
 	}
 
-	if (pmlmepriv->cur_network.join_res != true) { /* setting only at  first time */
+	if (!pmlmepriv->cur_network.join_res) { /* setting only at  first time */
 
 		/* WEP Key will be set before this function, do not clear CAM. */
 		if (
@@ -899,7 +899,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_DO_IQK, NULL);
 
-	if (pmlmepriv->cur_network.join_res != true) { /* setting only at  first time */
+	if (!pmlmepriv->cur_network.join_res) { /* setting only at  first time */
 
 		/* u32 initialgain; */
 
@@ -992,7 +992,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	);
 
 
-	if (true == pmlmeext->bstart_bss) {
+	if (pmlmeext->bstart_bss) {
 
 		update_beacon(padapter, _TIM_IE_, NULL, true);
 
@@ -1047,7 +1047,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 	DBG_871X("%s, len =%d\n", __func__, len);
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
+	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return _FAIL;
 
 
@@ -1379,7 +1379,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	}
 
 	/* ht_cap */
-	if (pregistrypriv->ht_enable && ht_cap == true) {
+	if (pregistrypriv->ht_enable && ht_cap) {
 
 		pmlmepriv->htpriv.ht_option = true;
 		pmlmepriv->qospriv.qos_option = 1;
@@ -1482,7 +1482,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	spin_unlock_bh(&(pacl_node_q->lock));
 
 
-	if (added == true)
+	if (added)
 		return ret;
 
 
@@ -1492,7 +1492,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 
 		paclnode = &pacl_list->aclnode[i];
 
-		if (paclnode->valid == false) {
+		if (!paclnode->valid) {
 
 			INIT_LIST_HEAD(&paclnode->list);
 
@@ -1547,7 +1547,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 			!memcmp(baddr, addr, ETH_ALEN)
 		) {
 
-			if (paclnode->valid == true) {
+			if (paclnode->valid) {
 
 				paclnode->valid = false;
 
@@ -1912,7 +1912,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 	pmlmeext = &(padapter->mlmeextpriv);
 	/* pmlmeinfo = &(pmlmeext->mlmext_info); */
 
-	if (false == pmlmeext->bstart_bss)
+	if (!pmlmeext->bstart_bss)
 		return;
 
 	spin_lock_bh(&pmlmepriv->bcn_update_lock);
@@ -1998,7 +1998,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct ht_priv *phtpriv_ap = &pmlmepriv->htpriv;
 
-	if (pmlmepriv->htpriv.ht_option == true)
+	if (pmlmepriv->htpriv.ht_option)
 		return 0;
 
 	/* if (!iface->conf->ieee80211n || iface->conf->ht_op_mode_fixed) */
@@ -2066,7 +2066,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
 void associated_clients_update(struct adapter *padapter, u8 updated)
 {
 	/* update associcated stations cap. */
-	if (updated == true) {
+	if (updated) {
 
 		struct list_head	*phead, *plist;
 		struct sta_info *psta = NULL;
@@ -2458,7 +2458,7 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
 		psta->htpriv.ht_option = false;
 	}
 
-	if (pmlmepriv->htpriv.ht_option == false)
+	if (!pmlmepriv->htpriv.ht_option)
 		psta->htpriv.ht_option = false;
 
 	update_sta_info_apmode(padapter, psta);
-- 
1.9.1


