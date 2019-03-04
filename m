X-GM-THRID: 6664599065309741056
X-Received: by 2002:a9d:46a:: with SMTP id 97mr12283537otc.4.1551722890894;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5d11:: with SMTP id b17ls7704820oti.8.gmail; Mon, 04 Mar
 2019 10:08:10 -0800 (PST)
X-Received: by 2002:a9d:6753:: with SMTP id w19mr12809147otm.24.1551722890252;
        Mon, 04 Mar 2019 10:08:10 -0800 (PST)
Received: by 2002:aca:aa46:0:0:0:0:0 with SMTP id t67msoie;
        Mon, 4 Mar 2019 10:00:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5EHT272DhN9ATcNs0F6ehSBFlfB1DgGwWX2AOUkuAEFwVh+gGI8S9ZfKgz0M+BwOpEqoy
X-Received: by 2002:a63:d04a:: with SMTP id s10mr7732661pgi.141.1551722417801;
        Mon, 04 Mar 2019 10:00:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551722417; cv=none;
        d=google.com; s=arc-20160816;
        b=tFhqvGh6jsUUjwTrxEIkPHDMX++2cY7H+Qw1wUkFtYyz9R46dzhJKq3H/VMsKYTbB6
         lWZJGzcwH2YW058MDFPs4nvOgzfgZfrF54ZNYnwVqm8tD0MySc2DGHX9+HhqbXHVvX65
         L9mvDc8xoX0LudrVnQrDlBVMh1zC/XLh76+uxg1ic+dmVGuCgYWwueWsMGROr7GM1rEQ
         5ozg3j8pu23JOzl+D/4z5QrZELrXpdkpBkIZJXRElE51yqjIpPJA+WqnMBNDhYc8p9j+
         RKRm5SKFybQX0WgEPsIJz9SxI7K00drBlt+J4at6vh7/cM4KgPLXu9xTANmq9gk73nDv
         I/iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gsbkSOSJDyJtk8WfcI2cR0pj0ELeHqNsVPnJPHICEfs=;
        b=PNMJMgGiwkY/irKyOMZz7pbSk56IT4F6XjRy/Xy3sJum7i6qQKSbuEy6ESJafHWji7
         17qOViW9wO7wd1Gfy6e2GSopME5DVesz8wGCP8umnsopahne+Z6BMsy80BYvIsEOZQn6
         VS3L1zlnSLljOQKT/U/3fWDmOGtghuOUHHFLXrh8VPDZF4eAwDME58wtsnxbIPQVGZLK
         8AYwHqiSeQNGV0vU3rsKZxLEaY1a4NEiHi7c7RvEOOKIwIfR/5yQgSEtuY0o3X5FiZSe
         fK62hdfdXxI5wE4Tb7JYnA0zyaJ6xR7IzCvGkq+WDWy9oUPpQsIvif6AD7KyEcXozIur
         OWoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=izadw1Zf;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-20.consmr.mail.sg3.yahoo.com (sonic306-20.consmr.mail.sg3.yahoo.com. [106.10.241.140])
        by gmr-mx.google.com with ESMTPS id z184si325602pgd.0.2019.03.04.10.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 10:00:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) client-ip=106.10.241.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=izadw1Zf;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1551722415; bh=gsbkSOSJDyJtk8WfcI2cR0pj0ELeHqNsVPnJPHICEfs=; h=From:To:Cc:Subject:Date:From:Subject; b=izadw1Zfeby8+sEaKPRVK8Cv4yvjqX6GMjJlNI7Dq216tGLq/5JOvXcyE4GINvomjF7evss7nzVi8cFKnBh5D15JqbKITGmtRJmuo/hQjItUBl2vTSULi5PkDKP0RxpnoMdDRViRSHDznyRlvNg8aGML7FzNFW0hrdDN/dffVU1VMEYbdbuITLXCAIjT/0Ruu3KfqW18TVd6kW3Vnj8O/aegGR0I2/Q8fuZ0uWk52qerYnlymINM5NU/M34gavx5uYP1YDkhs+ulXBR0AF0HQedvgBRFYDgFyYL/O3ELUMyPNMeKMx1bLwNZ6otFbFzPviVefRLhUZkiZZ45k8quCw==
X-YMail-OSG: bsuJ7cQVM1mrIKJraLQ2TydxhY8U70oqw0wRM8Joj9Pc8tUJI3psTrd3djw5Tz9
 X5dk.fwWTdsVnYHKgp7Dmi1p47gx90jo.XQYnEpZcmFJG3sIjjXoPSU2bszEjZ0aFkC_sOZ5X_ML
 Q58rgvWEs8RwicqB2wUur4e0Ah6z5LAO9r1KvNdjBX1HcUmhq3drNkUs9no7W72MleJRxkqGXKJn
 gvo1ltjhJc8wY3l_qe1alOP8IqGx7l3KfuJF0fJoXogX6MAeztSDOwxzIKcHSDKTJO9dSu5vM52t
 TjPeFyOmgV4MPihR9qsBZFjQ_ivjHNcv3jWoZWdxFYPripe2CcYKj7R5X1abDVNVTWAtYQfW3xtq
 6poNkM4i9hFDekTn8eVr08X95VzMkKeh9hkpW6ja57HVVhyxX8yjR5QEsdQs5q._NZkSBukM_eQ6
 FKm9fMGVQDzNlWMg0nYWS4ZS5g.Lf9ZdiBZ2fagTzwLgLvlR.cap0iRhzNTfC8hjfS4B5uGeUzY3
 zyLkNcmBxyeQDu.ItUvw2veOtnDvokbQ0FSsP4AUNj55xWuPbCalWOsqkNVSByw6_lAnUtdZZ8ee
 CckyT.XwcXt9a2vQMFYYMa9Xr9RmIzVPC.HTM9fzF896FK9qFXtOw9HGaDeXkgpW6IxaU9j8sbim
 IYtMVbxYelEjcQiCvlrC29lzU9883Gr19blftWH10ccDR8FsBzZh_EY9yzuHJN17.9K1LU7fH5tM
 C_yzKV9GgXJ_4LdnJq7tE57ZP1.YP.2FIunfqejPsuyXsPAEIq1v6lkl.R9fLh_7i0Vsubt_ygFf
 HWa3pZKUzbAcvVT7ux.GFBPjs3zNbXh3QRSjq1C7Z_xoMyksxy7PWrYNK9ET96qURwVHcfKoVOwq
 LVLe._wRsJ2nmor.c_7jIoh6.BbLMIQEmUOhWDYlndoQRr5Y9A87H_MKdenhDrzv3vQbG__MDUjv
 si3s_NwSyORN7RfCgwkCFbs2WfwwAHg9e9fgNVrKmLk0Qj7_pytj24H1566SR.agCt4xKKy8zmS6
 ufwtYoksnP94o4pgtKaEhvl8hK9iLtR440HnDxjA02PDGA5j_H6fHHV2oK49OxV4vLoySyrfPHa2
 fuznFo_vuHj.y7euyjw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Mon, 4 Mar 2019 18:00:15 +0000
Received: from 157.40.35.255 (EHLO localhost.localdomain) ([157.40.35.255])
          by smtp401.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 7196807b11ec098d0facdb8cde6b3ec9;
          Mon, 04 Mar 2019 18:00:12 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: octeon-usb: Add brackets around parameter
Date: Mon,  4 Mar 2019 23:29:54 +0530
Message-Id: <20190304175954.782-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add brackets around macro parameter to avoid precedence issues. Issue
found by checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/octeon-usb/octeon-hcd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
index 0ee74f63fdbf..073d679e292c 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.h
+++ b/drivers/staging/octeon-usb/octeon-hcd.h
@@ -86,9 +86,9 @@
 #define CVMX_USBNXBID1(bid) (((bid) & 1) * 0x10000000ull)
 #define CVMX_USBNXBID2(bid) (((bid) & 1) * 0x100000000000ull)
 
-#define CVMX_USBNXREG1(reg, bid) \
+#define CVMX_USBNXREG1((reg), bid) \
 	(CVMX_ADD_IO_SEG(0x0001180068000000ull | reg) + CVMX_USBNXBID1(bid))
-#define CVMX_USBNXREG2(reg, bid) \
+#define CVMX_USBNXREG2((reg), bid) \
 	(CVMX_ADD_IO_SEG(0x00016F0000000000ull | reg) + CVMX_USBNXBID2(bid))
 
 #define CVMX_USBNX_CLK_CTL(bid)		CVMX_USBNXREG1(0x10, bid)
-- 
2.19.1


