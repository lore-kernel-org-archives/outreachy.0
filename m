X-GM-THRID: 6670930948020764672
X-Received: by 2002:a02:c4c8:: with SMTP id h8mr4252356jaj.33.1553197149371;
        Thu, 21 Mar 2019 12:39:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9ad6:: with SMTP id x22ls2791644ion.4.gmail; Thu, 21 Mar
 2019 12:39:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7VDaBuIR7EAsawM+OYhK3WNW7k6clS5cOXdZO09X4IwiRYtRKbnub2PDsjfKnchfeJV4c
X-Received: by 2002:a6b:6707:: with SMTP id b7mr4049820ioc.172.1553197148411;
        Thu, 21 Mar 2019 12:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553197148; cv=none;
        d=google.com; s=arc-20160816;
        b=S1HpjL7TQXDP30hBkmhhBMrdBEVhpEMfYuYESneBi/tbEFDHbxPxPeYVh498tldXir
         P8w2/cxWF/k3REIKYQDxWopHYFzEOgOuaohG9RHb5BaWHLWJZn6ezzNCb7ZX2SyYogjI
         42Y6owKgp5c+cMgRQ1w1MRhYCJYUtIw/pWuS8QwmnKHe1zwOxhsxzYbtWXpIEu6bE+1v
         j2r8pohY+b0SHHvmHd/w+PH6o/nfURhMrqTtXnVgO9GegWBM52ULPIW6JnCPr2VZU4YO
         6nxF2no2GEWnfx12i5isaBy13b55hOxuHGTAmFeOvaFilFqgyLosQ0viBqCnzxIpJyGz
         4wZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kHOHSz89MMwpgbri3loosMfJxr+pJ7Si9TzSME1dzXY=;
        b=izVucev2q8/dugT5LXJI39dBqrPcl3UEZejNYaZLKJXt+/DydBZF9a/J7HNt0XaePG
         +wvsn8agKopwgszaDWmEPZ6h2Ywq9Ctw0omBHQgjzqxzR74pgKTSjMhGK9IqekaFSip5
         qzSmI2edU6BoTljy6T83v6nS7w8jdcFxl+cSddagwuNYT0F1S1dmCsOVAbwLJBSfLgHb
         P5LvJe2YEPHwnkq88OlBcVGcAso70LZDQeaJhYcCMWUw0WYB2BoUQnCg/CfDqCiqbOTO
         t66hnBGv4N5onMU6EeS8t1m8qeDQQSoCePZxW+htI9UqObXdGdUJC85A7wRrea93zFrN
         WSQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Vq4m0FRz;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-20.consmr.mail.sg3.yahoo.com (sonic313-20.consmr.mail.sg3.yahoo.com. [106.10.240.79])
        by gmr-mx.google.com with ESMTPS id r17si18999itb.4.2019.03.21.12.39.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) client-ip=106.10.240.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Vq4m0FRz;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553197145; bh=kHOHSz89MMwpgbri3loosMfJxr+pJ7Si9TzSME1dzXY=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=Vq4m0FRzfWAaBfYRKor86FBMELGgiF6gd+4CTEzVq5K6yCzRZNcCtrY5VZ2MInjPObngJltFjpqytojSHdSl9Y1q148xi0yBM/MvFhqqcrAG0P4DcPEw+GOtuKO3AsTx7HM4jJ+1OY5D3PNKZjBYOFAK88vDMz8eVqg5pYrmrpn6ZNCeaxAQKQ0h1j/MtBlSHh9LP6y3s4cQSVZQVEDVH1xw4Bn8KfSYYrnqFfiidn3vUH+2+IJD1K51BDtTO3S6lxPOKlgq8ST1cEXBzJ1d+FyS/rM1l4k7xoBq5Eg8pprsoDclJRcE24OeVXOa2s5ZQF8i26chNOi4lDuirJJQ+w==
X-YMail-OSG: .jXCz_8VM1np5CK80g3kinAou1FXvQHEeo6sETDXTuZvk9PyGr6KP1Ztz6LvEpe
 QI8fgo80v7gqIgywBHzLJmzJBPBw4dCYGhXSYsZfU2bJ1ppStuv_h34mllcyG9ibMa90vhhW5MmH
 x_PKgKtg9iGmLR4IKlI5Do0A0AX16gFNAtkGzhymNsi5EqjWFpxSzkhbxrQX1r3Ow3Jmm8kwIXGW
 h4v8gcHQzPKOC8tTwrOg3F0QiQ9ahMZKNDz2TAAZyg2Qj1hMmHDMBUV_jPLybUzICFQK5R.Bis54
 RdYcL_ewJ.0Fe6BEK5pTj_OIwnuox7n1KMKA3j22UmYK9VTUGE.FQaXE4EJnEQH4nLXoDuIBmER1
 QSa7GAJJ9PDoqhvQiXeUN0lqRB0bf3jp4Y3fL6Qbe1QEbOjrhIIiK6o.i4tG34KJNzzspoZ5SJN3
 k9FUEGVCxd.H8Pa4AI_p6KQi6dg.Ju5uEWRXXgbSQ_OtBgp9R_NDb.PzzduceUwjQRtdWR.Poaut
 ti6M2Jj63I5M67ZBHXUcoYtT8mFAIL556B6Al4ScLd88Y.4QcFc8BWDbgP6egGRohyz_QEbpGuNJ
 kW4SyhpQiSOfmOo5VbupnLE0Ma7.uZVPsD9rwoOz2c_WRfbMbaDAXwzA8dQIul.39zjw33PctJpe
 77N.RdlMoabR9NuDlEGHEYo1BPEnY9Ov19RLhOgdTHkE9civqItnzK5zT3xuDXQvD37imCwT3g.C
 ItzGBH5zrRBhn8vO5_R.20A9udjCtVC0Fh_Z33Btn0i_IOWN1C8QFMKymUOEKqNBXmEIfVeX.h.1
 ZRpmd.YAy9Kz8RAgC3UnzgtCoGjJZAGvqZp3WOCzw7uGqyl75YL3OA7N1cx06qYAriA9hjg0D3co
 AquwQzZ0TyGQAegalUCLkjqOkA_b0rPl7iMw3V18RYgxUuY2SUFLUiEC3dkt3geVyIQtsfSHQypL
 QWg7ZsFvUFrLAKVqvJSa1oEaPjWJ_tJeXFqRH_Vf_SB.PMd0atiI5ckhkTntAL18.JZH.79fSXyk
 12UUOuHq2wUl.MfEYmi70T3NGHDOZRxSBk8lBmC2uH7pwX50BLj8UkR5b5bvxOPDfOylNAXN.xoU
 SPFvyrWpFtEbt
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 19:39:05 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b64ca48adecac070043993237cf92324;
          Thu, 21 Mar 2019 19:39:05 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v3 1/2] staging: wilc1000: Remove return variables from host_interface.c
Date: Fri, 22 Mar 2019 01:08:41 +0530
Message-Id: <20190321193842.4327-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321193842.4327-1-nishka.dasgupta@yahoo.com>
References: <20190321193842.4327-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variables from host_interface.c. Issue found with
Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
Changes in v3:
- Remove declarations of now-unused return variables
- Remove braces as if-block is now only one line

 drivers/staging/wilc1000/host_interface.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 56d8ed29fff9..44556b22613e 100644
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
@@ -1402,10 +1399,8 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 	if (ies) {
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
-		if (!conn_info->req_ies) {
-			result = -ENOMEM;
-			return result;
-		}
+		if (!conn_info->req_ies)
+			return -ENOMEM;
 	}
 
 	result = wilc_send_connect_wid(vif);
@@ -1570,7 +1565,6 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
 {
 	struct wid wid_list[4];
 	int i = 0;
-	int result;
 
 	if (param->flag & WILC_CFG_PARAM_RETRY_SHORT) {
 		wid_list[i].id = WID_SHORT_RETRY_LIMIT;
@@ -1601,10 +1595,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
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
-- 
2.19.1


