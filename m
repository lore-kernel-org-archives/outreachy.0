X-GM-THRID: 6664600142546468864
X-Received: by 2002:ae9:e915:: with SMTP id x21mr11696396qkf.13.1551723140068;
        Mon, 04 Mar 2019 10:12:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:35d0:: with SMTP id c199ls2621322qka.4.gmail; Mon, 04
 Mar 2019 10:12:19 -0800 (PST)
X-Received: by 2002:a37:4989:: with SMTP id w131mr11520635qka.54.1551723139543;
        Mon, 04 Mar 2019 10:12:19 -0800 (PST)
Received: by 2002:a05:620a:1454:0:0:0:0 with SMTP id i20msqkl;
        Mon, 4 Mar 2019 10:10:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqzFhquHZxYdgs4ExS2JGPZXc9+20DE5XZLM0tJEbWmNfZWOCMSCrm8DtN2CqPTRZB8TH8Av
X-Received: by 2002:a1f:bc4:: with SMTP id 187mr13741081vkl.1.1551723034115;
        Mon, 04 Mar 2019 10:10:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551723034; cv=none;
        d=google.com; s=arc-20160816;
        b=nxd1KVIAaAMtRRqBFoYT98blyWvJ/gnVepJ9qDKnRTRhpFNOWV/zESNfBKcHTIvXI8
         wxrwgrEQUsCv8VpUnMcsHt0Pq9H/fErwjo/AfEVFaSG6G3gtT2EoHLo8+ZfqZru4AGz9
         xXViX6yRStnv3jcrzTXhvqAbdvZwWpbLDA2oqtqYhcPnVvy1zqMkoa7sPeH8LZoimrfF
         gBhTQeH6QT0fxOSVmVCvlvW0ZYkmMEljHOB32U5oCN5E7Y0L83GMObDn57cIKlcmPlyO
         ICtA3jDAvVUq7E6/RRB/uVJHKfD0oqx931L3lMX5Nxfk8kRn4fqqv6FmVIUe6z4AfjYf
         By6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3O6i4PxJJKD7XTPdsYwux5eTnEtOTr2wdCLpnBfrr6g=;
        b=UJa5lL9PJ6YSgu/6K/EnCIfwPYt3VrhxHJ8ayDFe2tTEvUapoyf786hfEZ9/6dpID2
         b6CRxFF1JxdqNe3+Hgw+TPlVlLYS2Z0dDajaMrAaqBgZNAt0+nZhEYaUOVTpRxorh1wg
         QUGue3DlO2dBVHnOYF18gg/PTWrehOcG0WzrGNcaSCaFC/TYzOH8ZL50DEXKtAAhqUy1
         FcIm6j3qB1kt0gCqSQm5s/LKPjP86bfGTBwjPRFA3+NCa/m2JNP+rBBzpnvMd8KcBK+0
         joH+UIs/xfOcl+LK7xluU45qtk22/Q2eC0ZS8Ia8ICqflLQrse1pPIUyifnYKCTj8xJH
         CJjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Spi95LRX;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-20.consmr.mail.sg3.yahoo.com (sonic312-20.consmr.mail.sg3.yahoo.com. [106.10.244.210])
        by gmr-mx.google.com with ESMTPS id s73si415580vkd.1.2019.03.04.10.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 10:10:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) client-ip=106.10.244.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Spi95LRX;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551723031; bh=3O6i4PxJJKD7XTPdsYwux5eTnEtOTr2wdCLpnBfrr6g=; h=From:To:Cc:Subject:Date:From:Subject; b=Spi95LRXYJhaCtwWqo18CyO95Y5VIcP/L9TGyZWAHsV4PQXEeIcZ31D2AdCZQ+IisBwb1Dm4REZrQL/QgE1qkUyw96oXS7lDV1/qk1LroQaI9TPbY0omP7pC6xKG6UW2DdB7ZKTX5vI13pengmYzegCww6+sMBf5Lf2fzO/wAk8DIzkfsb0KCYAZiEkxoU/DnzN1CjzT7d3WYLt/98zGDEndkrrLsjEm+qo3mDkRfDtzNX1CcpJW5W2EOt8kPzI2xVhOdkbrHXTZ2fRaCQHgwD3HpL6Gghmryts3gTjWhvtmz2RtvCkPyj6puf7B8mPV3MWxGWZ+cirWkivWKfFbsg==
X-YMail-OSG: yFpTz0sVM1l4uCML2Rn87pvJY_ClM3Leu9YEPABBy8uwGVTydUt2GAHQ9Ea9Wtx
 5tKNkPojkeTh8aJ9gAQQi81Okh2u70iwgP_x1.hWZ0R6FZM2_qpxzeY4mRiRxyw1EaYyQzeWUawq
 3S2fsydyzA65PtKjsSdf2xqcegNK.rOXn.nSHYbssbEbWgOf7ZAIVQhdc6jB6JG4UnhKreh4tU7u
 _nXhT1wbW.dKYT7dDQSIYV_YWRhIxhNLrB6pxS8EHhCA0.ifMArR9VwwB78cqiZ8n0okXdxgKtYe
 0jUuRxgoD.HLyPNOE.M8.wlkELhFamXWyO_Dn.6187TOXM9gGiJj_jMafl39Gd6KEiKrWfYQ6zFU
 yw1C9TP_7X0RI5zYI.EULM6MK03L_HIj3JeR00HYMkFbcTg0Aoc_gYXH7OtERFPN6Ce1TJNy2I1S
 ZxchQrqXJfFaF7uGPWFZdELMgEYfJr44sqgOVuvwJUrTGcVdAiAdZsezRTo36ErpNobynzFpK2XW
 6npvRRhR0SMlrAOhcZ.pkNZ.A4VNpmSSQWGFAbOLi6nWz3nEO6QA9QXuIak9RmL8S0p7A3Nf8bj9
 QxyovqMeaOfExMY6CV4_BBRk_n5GGe4_rysH6SaDM1.3emUKq3hpfytlP_USsd4bgzOG1a4mEb6F
 7qlZNcj8SD83lfbY_yLWYHLPW7jFeM.DMJ3jZ7pWcn2UIJtOqkdz3kbFdW95YUWnNU5xKEV.gEPm
 5lC9ZI79MBtt35jEib6UI411DH5sZ3QiMReKbg81M1T_KaBaLLcjieRjHtC8K9NFFRGxQAunEIEy
 xJD5S3fh5NgqAobwVdS_EMn9RGh0X98_NsR145tbg8oRjCZc1c1TUfsG4.EOU9_QpR01bi.VeX7N
 EG4BDs20Zinr3RLEc_.ZTdKkI5s8yFSHrpmn4R3uVxOOZswlA9ray7w8N.ZOcKQ.IlEULCa6jHls
 0ZbMjSefLhVNUgH5ZxT0vxGHwDalZPvPjr6hu6uUj0JET9GpO.csg.k4DdWyxiXn7hSgIF_Jei_8
 1AOxu1SkScFMGrNrEW0KY8H.NbdP9azLMJ7VORHG8MkEXf1kPI7O74CGpOJWzcmH1yskGB_YKuTA
 TwTLLI6Ymv8mlIxkdgDT3
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 18:10:31 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp417.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID ddbf003291156aaade56b9ac681be682;
          Mon, 04 Mar 2019 18:10:30 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: fwserial: Add Brackets around Parameters
Date: Mon,  4 Mar 2019 23:40:15 +0530
Message-Id: <20190304181015.1203-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add parentheses around macro parameters to avoid precedence issues.
Issue found with Checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/fwserial/fwserial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index a1b90ea7fcb8..120d91dd6c8c 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -89,7 +89,7 @@ struct fwtty_transaction {
 	};
 };
 
-#define to_device(a, b)			(a->b)
+#define to_device((a), (b))			(a->b)
 #define fwtty_err(p, fmt, ...)						\
 	dev_err(to_device(p, device), fmt, ##__VA_ARGS__)
 #define fwtty_info(p, fmt, ...)						\
-- 
2.19.1


