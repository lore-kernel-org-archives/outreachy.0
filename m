X-GM-THRID: 6670193586677481472
X-Received: by 2002:a81:8546:: with SMTP id v67mr1273091ywf.1.1553025472756;
        Tue, 19 Mar 2019 12:57:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5bc4:: with SMTP id p187ls9024ybb.14.gmail; Tue, 19 Mar
 2019 12:57:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGnUg8scJYhDe3Grd/zDxYXtd2oKNNGOIawCkw//aEOk+ZWmLiLCbetOvWx30jTR9LlVvN
X-Received: by 2002:a25:5d05:: with SMTP id r5mr1381629ybb.21.1553025472180;
        Tue, 19 Mar 2019 12:57:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025472; cv=none;
        d=google.com; s=arc-20160816;
        b=J629rZDpfXGx/uIQaurhk5hPfuVdfdhTaCm6JX3tlL4Zkq7QyX1jLJfp+PA2NW19Yf
         2oapv35DS+8vxRzOd8LaDnZkqBYmXPS5yuDs8QCS0F8hzrLnvrfllCBEhbLUDwFuhtEu
         rTlLBft4nzCDnZYbKUMEQSX80yqWrKjQUqi93xvrgfBLka/Imf9kh9s8zmQjXtXqgw04
         mIlBeqbXDosqXiMRumjheuTQoM+Pmi1cdPSLvcrOMQsysrP5gFWYjj5ZCre6JsRf7j92
         qJ3/8qHzs6/8onraWvTZNjd46QRvKh4mNkPAwGUGzAb1tmfqk9DPaYR+XbiWuT1Xk5E5
         /QKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NE5BYqBRECHrTOgFnVJM6ORyicY9giVgJuLycvr8WXc=;
        b=RqeGr12befBKOEmC6aiasXDcrl1P1HbG12I3Hq8wXV0CVNP86Iu4DXi4/Tprdg9doa
         SyW6OWbaoeOu2wcRhZ8xSS4uRzsQTJ7q5xpzv6urGyxPOtaaUyT42VSTQ0JjsS6CvouN
         UG+6tLoYbc9sZYw+eJ+eIebtPVZBhASc2cH9/0j9i/QDq6SBrWoj1sxhZkpmUq+v7+Ac
         ILlJLPKn6aqukCSonsj2xq9nZWQTiZqratLdpBXsBO6HkQiQc4oE7wL5WCOome7iNX7O
         Z9wi9mKRsi+KPquU0mVP9izYbIrID/4ukOsQxTu8EQb2javFLYrfAQge/hhocwVhWuV0
         7eHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=D8fvlZt4;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.84 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic301-21.consmr.mail.sg3.yahoo.com (sonic301-21.consmr.mail.sg3.yahoo.com. [106.10.242.84])
        by gmr-mx.google.com with ESMTPS id k62si911599ybb.4.2019.03.19.12.57.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:57:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.84 as permitted sender) client-ip=106.10.242.84;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=D8fvlZt4;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.84 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025469; bh=NE5BYqBRECHrTOgFnVJM6ORyicY9giVgJuLycvr8WXc=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=D8fvlZt4SPE40AJYAvMQuGOvjfVZsuMs4/3E8GJ2/NNN5eZl6LvGwPvWOoTF63x628uIQwu2XjZXcXmg/VZHHFrqdu48vTnTkj11dD3+ydgz3Ws4RMfDz75gMNmgszcvQtKkhnePAZQDWGjjAhCQ39P+ni778btAl53/dJmOMIOL+hh5A4ct7H9aO1cl0v2vWAhso9mMCO8+4O9Jl8dynl3QdEwEcBJTaPVZ/bsnRRs7ZeQTobXEGNXKO3rdhoW3jz4xWA3dA052VJyv+CioCJUzGp6Mpl3KU0rzEgrZDecLAfvnjSsLrEMJSu4M/aJ0+vH5/lRAPfGAdh560uqyFQ==
X-YMail-OSG: 2O7yXNkVM1kM_bHfYpKv4oc.nUZ2pSvIBa4xOjPhKfBSwYpEJ3VH8nFxcUYP3Dr
 RKgJcvMUqzp1V2v0DAJ9wU2_H97Tgf4TWMWb9owt0q_uRzhuH264jrdnPFo9CINtDhIXUNvvIcDx
 5Je61rP5X2JdpM_A5984mzBROegT.XuAtMYWTq7oxJanCqsHKLHtKEdwoK6JalXa0xFHW93ANHsx
 cbAg.ZxBwRdrg2UgFngRfcn3GNcGx0EWtwpjrLtIv1ImJQfOytzHzdDwnU1ByY7aqurZoQ0JJSVs
 KbMD_.JZ12kwkrm1Z68eqr0IjbeOPL2E2LA3T9KRTt5K5HovhGpehcLMRuJqNaEhr7cS4AVNUMjS
 FoeMephZqNjkbmbMXwy1E90XEVsTgDNTd58xGh1XIupwTu4pTe_GvAgv7cESo89_xMWjSLLvqOnc
 iCflfbAOUn6K3CXLItkMTLWNYNLhaA7Rm_VaLW0PkxwpAVqN9WhSmUeUYOfhE10agty9CxCwuwcR
 rFronZn9zXzfCSeebi3NdzwJaZ0T.gdJFEut9YXdTyoCoq2bwb1SgXjibpP4m4ITqNZ8YWz73Xus
 sdDwE_d1ADwx9mb2Fchh9zBUrLPcEc6Ovt2v8dn05i3Z_cZ6z9o9DRF33AgXP9UJEALOUSEVOYwW
 S5ay5BrFyDps0QfW0SIUrbeMfOIgIuDYvielXf7AIDDdCWToPs940DfiP8Fuc3rnh8xemva__7Dm
 TZGYfqqHnd5VWJo_risPE.kUWnHbZ8hgwtp.sNDT8m5gbBdsg06mhLxmSZPgiodV8abs_zgZr65c
 biXrC7g3RGYEtRd_kYQhn7BLUwP.4lrjsHdrqOifJLgfvU9tkAPdnIUKCKbPc68J9RQI1rm2dHnx
 JyPJqR.QH7MPYH.e26LofUOwf9tYs7NdQmUtNvCXikF1pk5bZHRJyyhG3TGRllFgmcufDeavMauz
 X8KTluafpl.3P9g_mfBj4n0NWbA.NjqikuHAKvYSHVjWZ9r5WOvgPdjVPE0KXaEEpvm2oyQiRPfA
 ZF9amezk0iMvPLMOzQMKPMCkZnlb6FsaLHtsH9.xuIzoe3IH1k6O8GwSBzGGK9NatkxGuHRhGYpU
 EPZMZrdpv9WJC39t34mk1yD1xfyntZ9f9.e.OOQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:57:49 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b707d24ec4d48d531001bc1a2a399b3c;
          Tue, 19 Mar 2019 19:57:49 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 2/5] staging: wilc1000: Remove return variable
Date: Wed, 20 Mar 2019 01:27:28 +0530
Message-Id: <10fe1f5ac83e327337735300199b81a9b1230423.1553025265.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable. Issue found with Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/wilc1000/host_interface.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index cd4d9bd789fd..9b9997e3ecf9 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1401,8 +1401,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
 		if (!conn_info->req_ies) {
-			result = -ENOMEM;
-			return result;
+			return -ENOMEM;
 		}
 	}
 
-- 
2.19.1


