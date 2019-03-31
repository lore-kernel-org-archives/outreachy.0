X-GM-THRID: 6674267883353145344
X-Received: by 2002:a62:598a:: with SMTP id k10mr768653pfj.36.1553998948518;
        Sat, 30 Mar 2019 19:22:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:ff24:: with SMTP id k36ls2368547pgi.2.gmail; Sat, 30 Mar
 2019 19:22:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZLfYMjNaNbjKic+qP12NJIi3GCo4LmFMN3QuPqOzxswY5XtKxKhYfdLuvDHgLu+ohZ7s1
X-Received: by 2002:a63:ef58:: with SMTP id c24mr895099pgk.20.1553998947845;
        Sat, 30 Mar 2019 19:22:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998947; cv=none;
        d=google.com; s=arc-20160816;
        b=Kv5VVumM9z666KGg1YY1eaVKZUWXDy6zCFxDcz2a/02EiydXrZa1uzDQ/lcpPn8F7U
         Bg1HMkd35WV8yx6zBB267mKGkeTvAGDg4nl3Kt0ZF263Bps6bt/1SLLnX/l/coSmlQ2t
         Moquw4hyhKMyPZjA3tYI/b6HB4wOa0Gn/p2nCn5H8m9AbjBo3Q4OIQ2/pojfGJ2gpsr7
         +CtUUEPh6254bDPQ9GMdwWV6eVy0dwvkjSLFVpoRK/yF2x9Gm6rsarwwOsiiQF1DO6C3
         rK07EfPnwUsg+lwRJ1Rv7KLkr8s7q21QQFSPCs2DkrSz9DBxRHWassQ0uSY7d8hI3pqT
         7CGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Vwiq9PtUx/dgKQXsoe3ZU7xelgz+Ea6AupI68XJMcos=;
        b=jvXGIgh+aZwIxF1Lkhp83GHcUpPbwkx0YxNPceF63Pme2j+iqJ7keOHOH7/vsWTZEB
         T6Jqto1BfqiDKClrp/6MHWQZkjFHpr1h1kVBzAXs86CCtH9uUuGVRo5pY5g1QAd7K/hO
         jwYRH7+p6NClykqB2N6utgBc1JWrWfZ9mx+8ByymcEOGyYTUkjOI5kc2rjha9aClzkLD
         XmcSn6Ml7fvynIJMr7dCGjwjHEmA/Qh6USdFCEEUD3j/wCyyJ2LrV+YveMxxnHKytHQv
         3vMzmfko0rwXcaFGx2oYTEIMESpnyY+5NKbLH3HaPI1OWs1W+fLwZbF5poAXYsQ5F6TN
         Kqtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fkYAQV4Q;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id t136si423776pgc.5.2019.03.30.19.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fkYAQV4Q;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc43.google.com with SMTP id x129so2070675ywc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Vwiq9PtUx/dgKQXsoe3ZU7xelgz+Ea6AupI68XJMcos=;
        b=fkYAQV4Qf50DNMMVj/rIjsK3j9P/pLPB2nflhbHz88AuECnJa+AKd7asJ2PtPygoB2
         MmDiTRbWpUzHBmxD/uT4lEvUszmhYVlHKCh+8GJJoX7Q6FrgDRehesu/6kPQiuIgqd6+
         KmUhdEazPFx2QVwS6/r8SWx+o7997VYnLjNLW+ZHD/ZESyezJ1ozywGmfcI6Rj9DvDs0
         RXJx3ioYZQgDyJMXcSetVrfAmHcaXhPTwA7t0j6Tlu6wrrI9cOthL3Fw0mssH1mmnVOt
         yT4nPeJ/JKx8pOl2RlZVkj2w2pLrKKxtJMHwvZu/qqoM+8fbaeaW2TP6Agpkjz4ou6QG
         G8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Vwiq9PtUx/dgKQXsoe3ZU7xelgz+Ea6AupI68XJMcos=;
        b=izQM/syF10INyR7UqVSRue24rzYtpnIRGo7JtlFwVwI/kk/TSnlJR/95WzZIq09XoH
         0hka6plrFHRZ1y693QSnrJd3RsBoUCQ8cjM9oVLEHZ00aeo+/1wRxHWdEqVqTWOVfld4
         Sx89IeX8Tslp7tuC88MQC64FJmYkgUYns8NuCrsNGouAc3HBSsIZexRe2IXNCgIRTTMH
         xnnAdQrso6bHzBJTvM7cbP87lp1n17QSRcBYzeHITOqi0TT56hDOjP2gC0tDWDTdgj/Y
         ghUEgrjW+gRjVFfYp/sHrqBdGhbRavQFX/5g7bhF7avtwNktkzZbjP4nk+UMDKzUskxw
         i8/w==
X-Gm-Message-State: APjAAAXKyzz3gSb/5KlkXut2iu6mS91fYLVOPWObSBTqt22ewHKWVE5B
	LOt3tfVqsYtk5NNibrNLuYI=
X-Received: by 2002:a0d:db81:: with SMTP id d123mr46461564ywe.380.1553998946996;
        Sat, 30 Mar 2019 19:22:26 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:26 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 6/7] staging: rtl8712: remove unnecessary NULL check
Date: Sun, 31 Mar 2019 07:51:54 +0530
Message-Id: <20190331022155.68569-7-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Remove unnecessary NULL check for wlan_network *pnetwork because
container_of will not return NULL in this usage.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 1a15c45aa83b..be44c6b2819b 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1119,8 +1119,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 		}
 		pnetwork = container_of(pmlmepriv->pscanned,
 					struct wlan_network, list);
-		if (pnetwork == NULL)
-			return _FAIL;
 		pmlmepriv->pscanned = pmlmepriv->pscanned->next;
 		if (pmlmepriv->assoc_by_bssid) {
 			dst_ssid = pnetwork->network.MacAddress;
-- 
2.17.1


