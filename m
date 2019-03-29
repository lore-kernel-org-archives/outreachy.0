X-GM-THRID: 6673502133906571264
X-Received: by 2002:ae9:ebd4:: with SMTP id b203mr3458322qkg.17.1553839371567;
        Thu, 28 Mar 2019 23:02:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:21c5:: with SMTP id 5ls637381qtz.1.gmail; Thu, 28 Mar
 2019 23:02:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1nQqyCymKM7RmqmUazRcaMX9CMsQfjNaQGoW3Rj3N+1d+11lbnFsYSWUkkAD0/27pHr+T
X-Received: by 2002:ac8:21f2:: with SMTP id 47mr3704966qtz.9.1553839371053;
        Thu, 28 Mar 2019 23:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553839371; cv=none;
        d=google.com; s=arc-20160816;
        b=FpikzZ29ZIb+q4bSRet4QFXjKJxfmxs+4r5eMI1FB2e6IlHIHo84iS3RrM062ra7i+
         me9A1d9vsHQIEB9TeHkJ2w3qBR2I60VSY4M+zh3T0V7LpKwHpbzFEkfXB+GnEjnDEnqX
         7dAOl2Iun1baj1RcBT/oMzoIgacBZTGLn+3vaf4c/WQSB3lfIoWz3LrGyHnMtRtXAvKr
         5/grIg+zmhkWHH5tBRmSe0Tb2RmEdJegqFRAcJGLXB+xeF8ZMgyECFUpBWOHQQk6KoAR
         rFvRP8UpejbdczJhX2Ira7BEzu2fyNJECLqVbvNWDNfc78yMsLmcIUEvRrJADI1/4p96
         ufGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=8fMwLdiM0lVI5P/5qhNXg1efwbM2hg8UEoJZCiX1PtY=;
        b=BzLbEvqqCpgWFGZ6/LXoDPoHr2r6F6BUsFSe81Sl5ALA6QuyXe1ut0drDeMgP6GUEp
         Sopt/w4PkFwPOjH+fHYW8x7lFWIPcqFElhv3vMRlhRC2G4QG70fs11EGGDn/R3kAqXW9
         6mk/YEyoiIp6lnlri771Npydb4W1jxqVnqs8LYyyXYow1EqbCVhJLGJljSePAf2Nd3r4
         2oaABorjFuWm4Pvro0E5RC3LK/inWxalEfpl/f+rW3jtz6Ww0NbpVznYdUND3douNwEg
         HvuZn+EfsemQz4PW76Tit1ZChw4VNEb0GXtTEm6FSwRZzEUPQ/ruk9SG5uJ6Hl9X7Pz+
         Komg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d+U6FUbU;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 27si83173qtt.1.2019.03.28.23.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 23:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d+U6FUbU;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id f6so670838pgs.8
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 23:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8fMwLdiM0lVI5P/5qhNXg1efwbM2hg8UEoJZCiX1PtY=;
        b=d+U6FUbUhqwnv3lphnHgXnBni4o3kqFApDuzbWiO07O3v6G+wXZ39auv+m2ERjMovB
         a/MegwwHbw1GO9p1G3rS0ijxXOTamGw4oRvoVX57e4Ykm9T84oj6JwkwEzearnyg2MXP
         Gt6QerZePnWGLEKc7pZyHFYROOgTptIc2xnfQKqBa1uYkZJZVRqSo/efeAD3BFvtDKrk
         ecoYFnkgBpLM8suvk+6em/JQAsL5y+A/Y1duOCFMCEm+xfFgtorkS8bVTWDuTEP0i3Pw
         Ldoi/ux7kjP4kT1p0J3F+VCq8rcAIIkwqXW3Uyq3H+xpDCh29KLjwK8zL2rJMiPHc1IJ
         b8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8fMwLdiM0lVI5P/5qhNXg1efwbM2hg8UEoJZCiX1PtY=;
        b=GYFRURXtChuqu87CDyrfd8L28eyLdZaciMmKQ7Z6JEJJtmbbQCvDwPav+GFYKs1/Si
         LKQwPQvPw/hk73v5UI4tjzVY3PY8dpOXHFN0xKVM9NXcNRit/4OCThJdWL9nTC7jsGFr
         xvvDH6hxJZROzrRCX6tks5UMzOMG5+NisDSvqrnAyZCMgSkLElM7anJt6rMGozvFe3UE
         vBZG9L8eC4RSZAR63F5hnzJmA/dcg6gYI0k+N96sC5wh6ilvDqhdIkmcqwEyzIwLvlOv
         iOXIITXQ1wp6VzaHGvi2ZeI/YMfk6w/h3vtaT/0Dirlno6w3QS58abrzh+JUHSng5eHu
         Tcsw==
X-Gm-Message-State: APjAAAX5cvnech+J+FXscT+ka8xYVR1VtnI3An8YxZPVxj3scgXehmaM
	WwmWaIEUHab1CjBAvpi5XaQ=
X-Received: by 2002:a63:fc60:: with SMTP id r32mr44482655pgk.345.1553839369761;
        Thu, 28 Mar 2019 23:02:49 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([203.109.108.29])
        by smtp.googlemail.com with ESMTPSA id o76sm2279115pfa.156.2019.03.28.23.02.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 23:02:48 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: host_interface.c: Modify return statement.
Date: Fri, 29 Mar 2019 11:32:38 +0530
Message-Id: <20190329060238.15688-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove return variable and directly return the value
Issue found using ret.cocci

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Adjust spaces for last argument in return statement.
 drivers/staging/wilc1000/host_interface.c | 31 +++++++----------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..09c3095c0392 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1358,17 +1358,14 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 {
 	struct wid wid;
-	int result;
 
 	wid.id = WID_PMKID_INFO;
 	wid.type = WID_STR;
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
-
-	return result;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
@@ -1403,8 +1400,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
 		if (!conn_info->req_ies) {
-			result = -ENOMEM;
-			return result;
+			return -ENOMEM;
 		}
 	}
 
@@ -1570,7 +1566,6 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 {
 	struct wid wid_list[4];
 	int i = 0;
-	int result;
 
 	if (param->flag & WILC_CFG_PARAM_RETRY_SHORT) {
 		wid_list[i].id = WID_SHORT_RETRY_LIMIT;
@@ -1601,10 +1596,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 		i++;
 	}
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
-				      i, wilc_get_vif_idx(vif));
-
-	return result;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
+				    i, wilc_get_vif_idx(vif));
 }
 
 static void get_periodic_rssi(struct timer_list *t)
@@ -2121,7 +2114,6 @@ int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
 
 int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2129,15 +2121,12 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
 	wid.val = &tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
-
-	return ret;
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
 
 int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 {
-	int ret;
 	struct wid wid;
 
 	wid.id = WID_TX_POWER;
@@ -2145,8 +2134,6 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
 	wid.val = tx_power;
 	wid.size = sizeof(char);
 
-	ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
-				   wilc_get_vif_idx(vif));
-
-	return ret;
+	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 }
-- 
2.17.1


