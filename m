X-GM-THRID: 6949268119417257984
X-Received: by 2002:a5d:66c8:: with SMTP id k8mr19547210wrw.240.1618002569704;
        Fri, 09 Apr 2021 14:09:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls1288778wrz.0.gmail; Fri, 09 Apr
 2021 14:09:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzf1Q9eJcS8aaqTNklnO/+r0/ztChbj2YMupaogyJ8Tcn5OkeRekt3WgsiNkF//S+scqWKI
X-Received: by 2002:a05:6000:190:: with SMTP id p16mr20270915wrx.70.1618002568407;
        Fri, 09 Apr 2021 14:09:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618002568; cv=none;
        d=google.com; s=arc-20160816;
        b=hmRW1MOOYCF5NvNwMMKxX0LlB7aSuy7hdOa3Rxk17IThmSBHLZ7NuecWb3iLvvlDJw
         h3dbQfrTOFJB/MmaVZgNAEFb5xfiCZPmy+apPg8YFAB1AKnj59OWn7FmByvlMequ0KY3
         3HvObLb5CGBC4Ev1rzexqvIjddku39LzMrZzs60ywztEWkgn12nWXYtAf7Z0JjeDAoXS
         zcx+AUYWeMAu/sosCZWO/mcUrLVA/QxmTVB+MQkYcCIxBODzn7ueBvZBJ8OFR3FpRIkW
         zkI1195LO3xKo58Ycyn3w9g3CVG7LeX5lz5tYuPq1QEJBIKRG5fYrHMvbYoZyRkSB+YM
         /3nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BE/sO/QIsgS08xgGIDAuaxu6FsfCPL2BQzsolVE0VXk=;
        b=KtpPhCZnOPDaR09XIZIEvoAWznb5LSlYH5v+BUlifggPLJHeWPc9CTYw/3rCbnBXnD
         r8neHyLFFvDeSXYEI2I4M0CH5CT6kEx8jCI1up5RRmZEt/lq4iA2UMs4tnMK5rAjhCO/
         nQe4oDYkR09/jOMHEOGEEZDRTcenwbh/Ff34hpZ7kj3zxOeoKvye4v5nSI+JLxPNTZ8s
         gYAI4ZK1+P+m51d4p+UIMzG6OVvFnfaP48ipaKyjrDpfXMYmfdsn/vIkTyvfhg87RKt4
         FH17RYtez8zzKul7jeuHkD9Ml8MEwBB/Nc6GYeaVRiWcgPikWrsNbOdl3YIygu+E/Mry
         iENw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+1PFMh1;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id f8si884526wmj.1.2021.04.09.14.09.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 14:09:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N+1PFMh1;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id h10so8055421edt.13
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 14:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BE/sO/QIsgS08xgGIDAuaxu6FsfCPL2BQzsolVE0VXk=;
        b=N+1PFMh1b5oDM1cWje1O56dNuUpbnySeg/+x4JhSBYElqm2GJis7tCKQXTYMlihEaC
         lxEkreEjJyBA9OePPaoM9omphJL6pLZFnYb7klChJi18z8ScyansQ/QGwXjQIVt4qZGL
         8wfNW4VZCz4YBndTgP04sLfHODGAUCFXByG2LVPVDyJTpjqhQIz8L8A0unk3Lj7fZeE4
         vI4Ju4MdeMG8sTcG9mR1HByGt8acEVQeSGw4f6IJPvLMyEBdYPsxUnIdgQvof5EK/Un1
         r1HCCNLmJc5j4BzQt4EOj9Ec/aML2WMwi4Y9pWrNtxBj1d6hjnZwwKqWRvjFwvc6vo8+
         N4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BE/sO/QIsgS08xgGIDAuaxu6FsfCPL2BQzsolVE0VXk=;
        b=MWtNVqj6iWTx7P2sMJVHrtbZHTTdk0nqiqelktxC6Eyj/A4LgCe6v1pSyW6YyFUEah
         JjbTuRsnZgfyZDwr+CBPFtGy5RbXHbIC8Iuo34OTdafcSCQLZXn+OYN8CkNI8Di4svjf
         QX/5T/ugL2j6kHVl6YJzK48s5QYZZj9DmbdGqhkwz4wG5dZ+0m0YmwL8UBEPzTTbfmg3
         tPtxl1CmT/0aYgjf85RMC+pyI7L8xP46He6a4SCXoxbhNoKombJ5YgxyzeNoiLygcbEf
         TeRK70NlvbYM0KWGZZayUFYdr0plt5Exx1uRSlLuSVDpj2gA6doPkhIeL+uI3Vd702e2
         kdKg==
X-Gm-Message-State: AOAM53283ohg/PDMcRIsneeDItGbrLpbvtzMSapBo7JY7FxBLkGnBJHM
	Mxbw2JnUSWxxVd2dd62yf6N8hYm/blLUeqvY
X-Received: by 2002:a05:6402:9:: with SMTP id d9mr19208090edu.67.1618002568153;
        Fri, 09 Apr 2021 14:09:28 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id hp12sm1738467ejc.46.2021.04.09.14.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 14:09:27 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Remove an unused variable
Date: Fri,  9 Apr 2021 23:09:18 +0200
Message-Id: <20210409210918.21432-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Delete local variable "u8 sec_idx" because is declared and set, but never
used.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 2af66a18200d..3fd8a4261ea2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -628,7 +628,7 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
 
 void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie, u16 *wpa_len)
 {
-	u8 authmode, sec_idx;
+	u8 authmode;
 	u8 wpa_oui[4] = {0x0, 0x50, 0xf2, 0x01};
 	uint	cnt;
 
@@ -636,8 +636,6 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 
 	cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);
 
-	sec_idx = 0;
-
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-- 
2.31.1


