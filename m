X-GM-THRID: 6673442126229929984
X-Received: by 2002:a25:33d7:: with SMTP id z206mr3343026ybz.65.1553965966025;
        Sat, 30 Mar 2019 10:12:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:dd6:: with SMTP id 205ls1650433ybn.15.gmail; Sat, 30 Mar
 2019 10:12:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwH6nBDwQu4of2bRjnW+o+9FHQ5+mPN5NXxXGgsKROeSSFY7OT/eb7OT47TpTrg+U44N0eL
X-Received: by 2002:a25:1c2:: with SMTP id 185mr5644733ybb.87.1553965965117;
        Sat, 30 Mar 2019 10:12:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965965; cv=none;
        d=google.com; s=arc-20160816;
        b=oS4TaRZWiyetvu6/NHJ08HvFbjEzvtlpdGcguP9yytc3Ma9cJeKNgYu+lp7S2WnR4H
         kiELs114IOHC4O6sB31a2MHLogRJe31FpB67sfjQgGD3CnuIhZYxaCB+Vvtiiywk5YrW
         xdorSL+kFF8tpxefJ36+ge57F62IBATXshrgD4makh8ejJLJI++jXbBggiGARwWTZj+7
         H54so8WlNHGTuVQT9K2LwijYzdWOfvOvAdvZdO2w3NqB5IfpF7e+v7ta6D0en7OeFdIx
         vF3v0sXKukgSP9fPJ7tJzczC6sd2VW+wgZ+2QPM0UVbdBDH6H1SCSAURHFHwwWZWMj5o
         gP2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=2vAz8bNaqITCkhOREg5ApVQmmVNY3SZQLJePKFiBHV0=;
        b=Db0HMMV/nP5iWlxSMfZKQyVY+GpFpUql0tLly0/brvQHtTB7xYO8pWlWgrpSZYTZI0
         vkMdb/PVYCJNyiihCVPomPPAywIBUN1jV0q6loIHxWzk8DE1P5+sKHONK8ovH3W8jZi0
         X/23Ax5Fhgz/2CwF4847sWia49OAjx6v4egXQ9h2DDz4MwB3xSNCMexJNjSv/bXCy8EJ
         shVRo4IIOgMbreV/s9ll+GjnpY8yVMQ5Ci6XLwklTMDm+UzWY/vhcdeCC8v3XTL7ViD4
         4rhfExweFQlUlDndLX3ehgm2k9/68KOp836OJVuzFmMvDAjKF2c5lv+3bugQqhAuBzk4
         YCGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yvce5OOG;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id 126si249971ybo.3.2019.03.30.10.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Yvce5OOG;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id b11so2456093plr.7
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2vAz8bNaqITCkhOREg5ApVQmmVNY3SZQLJePKFiBHV0=;
        b=Yvce5OOGruuQ0TcJOy9//nDasyhBHORxn+gi9liq8ZNuRH3h9qYVLCEMI0uqIEPVgD
         eu03h/5F5KZq0T/HCiu0Mz+ZH9UQV4cJcpMUzMrpgFmEqA6iMvwkaQUBtZ5FajHL6oYN
         wfmEO8VyJgI0Iesxg8vmyLJ1xoNQxxxaYjPHg+nERZV/YEtyhRQ7GL7HHpyV2aI8XLaU
         bwOiInvxpL4LY14G8ffDbMVxC4CAygRaZA5SeR6mx95Iu4jLDN4vvdoKENeNa/0ZFZAJ
         L1pmmhTQQ/yVqY3iVuG86NKzfMSGTOTtJasnr9JD+UnOqCGRamjP/eb3fCV7K/IL39+y
         NBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2vAz8bNaqITCkhOREg5ApVQmmVNY3SZQLJePKFiBHV0=;
        b=rL6LMU7zAeWnMj4/NJDPPk0rjZ1DgjHhG6Hrb8lGSRPWbFp5m3l989L0A8RrFlIjRY
         iYp0WwOoUebpT+bTWUXCL3+o6Q9ugEIMWQ8sR7GOHTnZIj0Fn1o0wYzjASkHjtxu2IRp
         nK6TE2uyKNiTXIN5O4S9+qNtowVcWGbFys+ju5DMzUm4B5Ad1y+ttNbrffan88lAiiNZ
         8euXmz6XjsFtB3NtV9Z8YKHxRXVl8f0K92CuMhTCQSWoAgFIzYFdCX6Xw2REk+PpRCko
         j1sbmFufm4qL+uKTz7u1QTThNiB8w/7nEe07cr00+0/vquzz0plmC8yJ2MwD73qiHgPq
         a+1w==
X-Gm-Message-State: APjAAAVn6SQXUmhUJjwUnn2rB5Kr2o63jJS8Gb4Yg7/cM3rxpGfqjC9q
	caXZGLc8EhWGr4J84xprvlMCVQkp
X-Received: by 2002:a17:902:1002:: with SMTP id b2mr53896304pla.248.1553965964529;
        Sat, 30 Mar 2019 10:12:44 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:43 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 7/9] staging: rtl8723bs: core: rtw_ieee80211.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:54 +0530
Message-Id: <d68e1b7a452a758591a47deb5879eaa957173264.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index ac203c0..aaf2743 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -114,7 +114,7 @@ u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *sourc
 {
 	memcpy((void *)pbuf, (void *)source, len);
 	*frlen = *frlen + len;
-	return (pbuf + len);
+	return pbuf + len;
 }
 
 /*  rtw_set_ie will update frame length */
@@ -136,7 +136,7 @@ u8 *rtw_set_ie
 
 	*frlen = *frlen + (len + 2);
 
-	return (pbuf + len + 2);
+	return pbuf + len + 2;
 }
 
 /*----------------------------------------------------------------------------
@@ -706,7 +706,7 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 		}
 	}
 
-	return (*rsn_len + *wpa_len);
+	return *rsn_len + *wpa_len;
 }
 
 u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
-- 
2.7.4


