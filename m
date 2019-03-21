X-GM-THRID: 6670935352020041728
X-Received: by 2002:aa7:8609:: with SMTP id p9mr5118044pfn.166.1553198174113;
        Thu, 21 Mar 2019 12:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls3455889plb.2.gmail; Thu,
 21 Mar 2019 12:56:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwuwzIp6xvUcBPYkGfSPNzFx2KjX6FzHUp8JBPa5or1LPmRIvCipLMRZuKn+Ao+adqI/drr
X-Received: by 2002:a17:902:2b8b:: with SMTP id l11mr5551105plb.18.1553198173573;
        Thu, 21 Mar 2019 12:56:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198173; cv=none;
        d=google.com; s=arc-20160816;
        b=idvb85JqperuE79jlS1GmJdJK8BoO1Uw+xeryjZmPtOOrIFniDmTvg3i9NTv9U+d1v
         E5cx2WraMpfgA5vt0ifUwxHlDEKicB6n/hfMBX7LdkI8E+WctDfHytEY6gGP/WPrj6gd
         hI2nIYeBzD0I4FH6UN/Fqwi12iSbiN55MwlAUXRo3+CyQgePJQPwHOvFLjh01vlWtmRu
         VpkSk6IUxrYWZzFBFQRsZCXyGVwCRmYCqji2el0PbB9ohOB/UziuPI5C/TOxF/Nclj+Q
         XmvX05QT8Fli9+77MXRSfoxTSXWCGm75UZB03nHHzZhbKaaqWMpvBPc/iUiIpMMqc+50
         mNwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nT0SYrU1HE2IuBNNpvX9xPEPH5TyiPmlEQaHmCxwb5U=;
        b=pQrZVKAzAutX9te5oS6qEfRb5T2KYaiXjx0WF/7D6hATYALqhMyIu7hw3GSd2EVp8d
         NmKQB04EcR/bfN4UkVWX+MbeN941ElnkHWWqSd19lAn5fLmOIskyjZsaRWoajzM8r43c
         MfdHqv6VdXIi7k/7OvJbTsd4Rv8n+IvWwy3RmsHsDDwkQ7QrHcxZw51FVcsjXXoISfHD
         4ApaxOokEMgZoks7KEhJtHbp7K95XZybp0HaJtXET6slFgG0bAouC78dutAloCwWX5Ad
         8fUderPLV7H01w8XjLh+ZC1b7SVu4G20YFYEQXBBGMpp6G8Os3Xv0cbGyIYAl2nxkFBN
         uAuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=K76PKIJ9;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-20.consmr.mail.sg3.yahoo.com (sonic310-20.consmr.mail.sg3.yahoo.com. [106.10.244.140])
        by gmr-mx.google.com with ESMTPS id i126si300869pfc.4.2019.03.21.12.56.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:56:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) client-ip=106.10.244.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=K76PKIJ9;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553198171; bh=nT0SYrU1HE2IuBNNpvX9xPEPH5TyiPmlEQaHmCxwb5U=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=K76PKIJ979za+rrx8EfKZGAkHow5XgEklDnS6kcnIBRsI4q3pvQ7RbKJHmmfKLz6ldX8U2Uyr5Jw9Z/QXq0Azy0Mq6+R36NzeZaJZ5sTlc410LEQ4Up4IkrMw+HCqu19air6WR5DHqXeqeT8l69T8uRn7wZ4YJgbdedrv9FiBGOr07SGUV8s4CaX+0g0pViGsqG6sOt+sNsa//mVwmTFjMXMD0aTMrPlMTPpaRdTugdepz9lMLmzctuJSlCYMOmwuh5RFHSLNpTNfGGuz2NAjfMR/k+cD4izASeF6qgRQfl2VdWQsYqshXvzHnunKeOhx6tg1F5SLmMg0Ib6/FAbAQ==
X-YMail-OSG: C9qvBH0VM1nGG3B9UUQ0ttl2QqXV7YX9HN.ex_UdFT5hb685.dA4t5MLi_rkvIO
 SzWsuJkTMYtmlRzDHznDJAyfKftLeM8u6sruZUflm4OCl4QHeNQoD3HT9PpL5BhzDPMZmoZBc0g8
 2Edti0Ip1Vrkep23M_Jt12g_HjxtgVk3oKZlSoeUPD2zij76W.CJlNUrl.RLFlOJ98zeLqF83SA9
 eJIVjW2SmY_e57SB2N5NGRFL5Nybb1hp7el.0IEdK2AodMIhIoqFd_9gxYza7mKHv8hxkcDhrxVc
 9T4WB2UZf_jb18HJAwJgQYusE0G.o8geU3TfkvfKeXrspqPpeQtQqRfAQvdxImuXkotTfKlUrRPZ
 Xzd2bT3ZqM78qpNtoT.r_4a.HS_QJ8Dysk4YG_7eXLHQ3l7tHqgzXAC9Ovv7SJc_7lU69LP4KBG2
 zlPMUiNai_QwiEdTy3TWiDGMAkWK6U_I3I20JBtBMk0yXwv9zlJsmN_GXTt6jerwmGUN7hFvKfwJ
 yD7bj6E8uyxQk8ZcHgXDdm0Z7pAVnUz4Tk6.4OgtMXtmhwsO92LA.jf3NhFjPDHF.jESZshlXfEO
 ._dRkhmEVUP77sKAZM3auQhTZtxz2PuDPNkrIjj0c6Vn4dO9kcaMN7GRePtEMWw18_pZYBTlA.Vl
 vjQEyyVY.XlYNh_S2ZPAlECAQJEOUNg0EOHPzaqjaxyEkXKdk4ntTwtCSu7Pa9r7BZoS7Pi6Cnu2
 CS1jGsjwlCc7x02zHlmCrT6A4aYRXCpFeyaaDNtO5pQ88nrAo_rYJ1hO8Rabz9xHIcqGR2t6maO2
 m_dp2P.SYFWOQBFjVJ7YKZY8N_3ITWpi2Pdh.qd_s3pZ7ItWMD3BNCbNkMplJGTmgp70YvvArr7y
 XyCCmnVa28B4mQyTwaH5dsNKQ2x5ZFem2CQeRHKFBlHaVMN7NMHear0ZeUmeFN0qQ6dayx0tNx_.
 epQaVwrpoRHF104jKsvQrWJP5Bn_8frGjV4gP6cj2Yb40M7h9Mdw13pZ09dA6rMw9jUIiXvpjcO.
 9pMLNw9qP_AD.p6ree_z.c4h_juTHqWB6jx9K9zEP33XxnTjvO3loO51Sc47KcRUqgUQTXqCefe5
 srGNJElgIpwk-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 19:56:11 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp425.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 04ac275525472a2e4b5c80b6b2590191;
          Thu, 21 Mar 2019 19:56:10 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v4 1/2] staging: wilc1000: Remove return variable from host_interface.c
Date: Fri, 22 Mar 2019 01:25:55 +0530
Message-Id: <20190321195556.4802-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321195556.4802-1-nishka.dasgupta@yahoo.com>
References: <20190321195556.4802-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable from host_interface.c. Issue found with
Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
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


