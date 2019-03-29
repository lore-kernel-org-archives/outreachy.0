X-GM-THRID: 6673948499699040256
X-Received: by 2002:a25:1607:: with SMTP id 7mr3067653ybw.51.1553899724197;
        Fri, 29 Mar 2019 15:48:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2f90:: with SMTP id v138ls1118057ybv.10.gmail; Fri, 29
 Mar 2019 15:48:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxlTqk/wLjaPlIdcrJQyEnAZD9yEF2+ovH5X0+8gGPNnN5R0GC4cjfhBasooArmNghywvNT
X-Received: by 2002:a25:90b:: with SMTP id 11mr4036805ybj.55.1553899723326;
        Fri, 29 Mar 2019 15:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553899723; cv=none;
        d=google.com; s=arc-20160816;
        b=lOdDGtj7ly7+KYpPIJKlQDggVVUU2xr1Jx5nDC2b458TY3bC2HwhTP6zzKw8QH4HZ0
         IlKWAGVabJG95IDejrS+MRCB736nQ8eih0AqRTv+tTBGT8uh90wybKQkHTJ2aIBa1+F8
         VoRgM8Y+nfqx9jjum/2PB29Rro9OJ//swWLv78kl3xePDgGPf48ySdQ7VTM22CGXNBAO
         WrHdQFMKA6kcnR2f5finBRDoSUDu2MccXFuCULh89I5xbLKoSQ0Kxazl5G7JYLC5BXCV
         mOzYgEg/xAz9pycaEotQkTXHgeogGLR8n4oMmGn5I7Kh56vLdr9VgqmIhDQJA7b/9IhQ
         XhzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Mc2amG+m4jIVKGC3ycUhjih3SWTpn5j5mV05u6zbufU=;
        b=exhxeuwQ9ju0e981klziYoKP0FTAXGpmf8mk+tqqtficigTVFOyDEtRNA6X2LJRe5m
         wMhuWLpGzwCnba7SB0Y320DqKfWjuxhiQLPauDU6q2wBU3mobtfyIDQ6hF3MiANITEY9
         yWSw9ciQMJ6UiKPuVC7StWBbq8JLBaB+h+wkS4E6wxjhGJszx2Al2ESzfus9XuR1BL/f
         zHsdLyk+IJwcIGWdzKVJVrTTZPMQK+7hoEtg98v09Xmoo2PQ3remhARA1iJCNd6FdEez
         veNIrzOSvrZjNd/0+dIaoJz3wFY++WO+RkkWi2U6gvDlp1mmyGALxZzpSEvQHlgqQyMf
         GNhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YkgOawAB;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id s11si208510ywg.3.2019.03.29.15.48.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 15:48:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YkgOawAB;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62c.google.com with SMTP id bg8so1685413plb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 15:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Mc2amG+m4jIVKGC3ycUhjih3SWTpn5j5mV05u6zbufU=;
        b=YkgOawAB/EWpV2JghuQtVfYXfKN6rKw2h6f03/y0fc6v0RqZbto/ThwoZVgEZCJm7s
         zxxDT2R4/9V2WsJiKD2ggrbsXVJoQcB24jsuDKoAwi9wMRyOe0vMu58eO54NOIN42ACd
         +jLoIW9jJZLm8wElkbQonSKmQ8cNnsqwz64p0L3RYyIctn1NMfjugunW4JuHhiDIDWqU
         sE6oTrX4TIllgdekoNlYSCkDRCn4OSYBKNu+ecN3pj5q7LHAMczI/1kc2/k0T0fKZD9Z
         s4IFn7GJgalw3J6BQ67YkJcytxNvfzUCseSwoaulzQpNVrGfmvH5VyYQrXynUhk1xW1U
         DXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Mc2amG+m4jIVKGC3ycUhjih3SWTpn5j5mV05u6zbufU=;
        b=tVoIpq+BwYuouXMOxP5KYposmN8aG+CBgSMlXJtpUNaV9GNihreeDhqMx/MUU5daU0
         UQJWKky8EGLf7PwxpRLIlLnZojEnDJqA3YAaCaFJYoH+OkcKt0PnGr59xXmQPjsRFsYU
         j71K+fJwqkxC8ggoV6WTr3VryMsbUv1Qs6KysKqbeBJ+mZ5Tu1W1tvq5j3QHpDS+6W0i
         3N0YcFh2J2izakkcgdabT0CrtvhHMBTC84Vb9uyWxhjB6l+hvwsyjAYllKepRsD78m+M
         ylL0HNYwsORv7fP7XDomXXH8dkOuu39WVUkx0j/5ZpJJHMFJrA5koQEogFf1AL8J86Wm
         M13w==
X-Gm-Message-State: APjAAAUBODOkV4f9mXunWLNzr4l29Et8v7os2IuqKlf+rlP4S6FN899/
	8hdNVlvVWbEwOC9SZf/oOqSbvSa4fMc=
X-Received: by 2002:a17:902:6b8a:: with SMTP id p10mr51846028plk.109.1553899722841;
        Fri, 29 Mar 2019 15:48:42 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.82])
        by smtp.gmail.com with ESMTPSA id e2sm5034175pfa.64.2019.03.29.15.48.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 15:48:42 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: core: Fix a comparison warning.
Date: Sat, 30 Mar 2019 04:18:25 +0530
Message-Id: <20190329224826.24954-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Move the constant to the right side of comparison to get rid of
checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_debug.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index a3c8a712bdc2..0de1e12a676e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -1395,16 +1395,16 @@ ssize_t proc_set_btcoex_dbg(struct file *file, const char __user *buffer, size_t
 	}
 
 	num = sscanf(tmp, "%x %x", module, module+1);
-	if (1 == num) {
-		if (0 == module[0])
+	if (num == 1) {
+		if (module[0] == 0)
 			memset(module, 0, sizeof(module));
 		else
 			memset(module, 0xFF, sizeof(module));
-	} else if (2 != num) {
+	} else if (num != 2) {
 		DBG_871X(FUNC_ADPT_FMT ": input(\"%s\") format incorrect!\n",
 			FUNC_ADPT_ARG(padapter), tmp);
 
-		if (0 == num)
+		if (num == 0)
 			return -EFAULT;
 	}
 
-- 
2.17.1


