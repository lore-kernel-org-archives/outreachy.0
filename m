X-GM-THRID: 6670193586677481472
X-Received: by 2002:a17:902:b20c:: with SMTP id t12mr2840666plr.89.1553025473809;
        Tue, 19 Mar 2019 12:57:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:461d:: with SMTP id t29ls3161393pfa.1.gmail; Tue, 19 Mar
 2019 12:57:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxeb/lC1gSs/s/9Rg/Io6dimC8PuyMyg68S1THCUPbabTnQlkNcde+nTG0Tr4mir4L/7hKB
X-Received: by 2002:a65:6147:: with SMTP id o7mr8464055pgv.23.1553025473062;
        Tue, 19 Mar 2019 12:57:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025473; cv=none;
        d=google.com; s=arc-20160816;
        b=VKQaPoN1abB2Z6KYSJ+u5AJLv7qAVWVVUhwIhHf8bMqKEwQMl6Y2jfORohKemNoEfI
         +URGMdbpKB/LRO86e3m38n7hlyY1LJ8i/krnMlnsR+KEo9Ye8f5wOmUBWq5JRxP3Yfjs
         S9gTG4catMAGKnn7nQaIEdtGKce51BaQRDAOPTLhF9jdBaGsWBWcWT5TDErIPKnsx1Uv
         Kw9gNN8NHsKKIlm4ZXHandW3W99ppFGahvTupGAapinphMcuvfRAsq/LJsPqmChJKtlh
         2OIUV01upxi0xcj69AKQhtdC2vVY8BIXbtFyLlYYq9ETgK1hOxf3g2lQVM2UnQrFFBKm
         7G5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S3CGTFZrvcdhbcoUR9kswXnnoVSOTzNdMsSO5F0n1BQ=;
        b=Jj946xxV0mJdRyXvLHgli0KOoYUiB4GF7LXHOk6O5ZWx4e6J+Rzt/lwZ33vIfeW6kM
         Z+/U49idDSgJNTy1IvKQVFkB8xDZansUGWsBKDisUDpZSJOjVFFUdUZqmpe81ZKWCAA+
         DTH/mC80HhVU6SJB8HwxO84HEjjnwUUMiWGJaCOhJnWQAISp1QIe81uvpPSrVl+IEjAZ
         V58U9MlyXk7Hk//hYGZpppUzqAUoIiAOOUXpf/mJ0Nv1oI+n24+C/qvX9GS9cNUVKblB
         BeB/eM+c8BwspDtLJg1gya6sOxd0KVpSLTHnGXFWxIVmqYF0DJ0VM5C9aMbdsofQphRh
         VyHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="G/QwkDWy";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id k13si398710pll.0.2019.03.19.12.57.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:57:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="G/QwkDWy";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025471; bh=S3CGTFZrvcdhbcoUR9kswXnnoVSOTzNdMsSO5F0n1BQ=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=G/QwkDWybc6Bht090MiPHroLz2iGtBN+f2hIXgAs24WAW5Le3OFB7Gg+TVjSAHW7thr//4/ByWjasqLX8cZEtz1IMygL4hoXAkRSH0X89bj8gZPTc6U0VKy4cYbwyAgms1hqxGqck493Y17HLFrGyDMGGxwcD8I+jvlx89RkOBGIBr0fYdStdG79BlvW9BYhhDl33S+eqZttMPYEmnyQGySsovjWM8Hvlqonp4yZ6fW+KQ0wta9kc8CEA3W35gw89LQwY7SAipqrfgRdFqciDYdciAdcZeKVdjoBobUadDrkyHmQurys8gaLQt36CX3EEv7YWLBBK6eICdCfy0r63Q==
X-YMail-OSG: CHrFYSQVM1nKAs407uoPh_ETWENeXrBEC1RjdkagEoAz9gGxQ2Bf.cQYD_ayu14
 JNjyrm7ko8f9Ed6qZolDRoDQ9j1foOUpvlBNcDQtzeNk3rJA1Bb4O_DqiLdsLJvM9_0cox7R4fyi
 jElJ4Yzsfnc9vM8Z5wwN4mLfpW8F7b21494HbMDmtOOb1Vc9I0uvybr714_59leBk4yp.kTrK7AI
 rWIlrBTKBil9tQahR4o_FED3.Vfc37haeZrs.GEnNt3J74xOZ1dwJIgVTATrO8gXfz_idHT_rTjT
 7zAbo3eZrmbdakthsEQdDtxxQkmNA_ehXMaIwFHM0KAkb9.Y5M3Mx3vEWcmFoX1MO1y0MxNuGVeM
 77QZYAgZ45GoBlVfx_XSdNbfuhSZMwBK_YhZBj.ZF.3OV9VTv6gqRV6lPtoIY8gIj9dJqo0CrDJi
 wOWLC5o286AO.3CZvEb1H1Ig3jFSU.OvMUc4JoynRIL1gUDrehePY5IPAf1jsnjA6bQe7M7Nzufi
 TLJmIdnAkOQuSCsN0.TQn3SFC6AZ5HwUKXI4YkTgfNmjZPtSHAuSdk6Da_9c_zW8VTFUrq9amfj6
 FJbPIHh_jyEe1dUBGHKYgJBAa.0YgjpVbxEDhw4sYfuO3JtCcYnpq80_u6h1Wq_nhlTuHbPOQU4Q
 EtNeb08364c4zSIRHJ2FO1X21FgrgwxymqxvGGH3xO5xGFkumORYXhovp0vz63EBDoRFpvX1nG_K
 gcrfX7DGIMvAxiUeVw8SX8mWZbv9kmpiZBKPajfte6Gj4lANA7dD11VIkRxOsonlU5KFAxfyKWb8
 bXZ0FVWnysrwDByZCj34RaeqwjyYva1LyYRVBJurFF8o6..c5Qmk0LgyOcPKad57O1FaoUXDpID1
 RshAuvVLWwO2WCkzKrKiTFNd3hOFJPSlLY_3offJgphdD1X6FuukQ83a97eqBdpH2cyVwHmiPdcW
 _ZHqIyRSFu0poMQF0njgLRJUNA5buHtQDvtpMM8UU1CZjT4JQq0KIJu.7giT1VGYQdKaotqBxoll
 tzeqUURT7vHAgC08BYHUrIHRkDdf.MsgqHIFGXJ4Vxnll.vKc0or0dIXRC0.LIKbEp_HUww4oXtw
 ZcFIPgYRBCtnC_lQScQZIjO68.2B9U8zQ9peS
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:57:51 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b707d24ec4d48d531001bc1a2a399b3c;
          Tue, 19 Mar 2019 19:57:47 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 1/5] staging: wilc1000: Remove return variable
Date: Wed, 20 Mar 2019 01:27:27 +0530
Message-Id: <7ee75b6e103796fc5c536be85aa5763c691b885c.1553025265.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable. Issue found with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 56d8ed29fff9..cd4d9bd789fd 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1365,10 +1365,8 @@ int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
-
-	return result;
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
-- 
2.19.1


