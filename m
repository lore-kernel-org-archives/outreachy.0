X-GM-THRID: 6674450234072891392
X-Received: by 2002:a25:8444:: with SMTP id r4mr4564785ybm.31.1554016571608;
        Sun, 31 Mar 2019 00:16:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:72c3:: with SMTP id n186ls1972950ybc.12.gmail; Sun, 31
 Mar 2019 00:16:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxuvYaHQOebZbGS/FkII2udpI4gyRe9mjnyX8E4IuYK7e/P8uakpAG6hrHwb208qLmLZm0r
X-Received: by 2002:a25:103:: with SMTP id 3mr4607076ybb.41.1554016571175;
        Sun, 31 Mar 2019 00:16:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016571; cv=none;
        d=google.com; s=arc-20160816;
        b=ddaHIjbqOwjqKzkOe29WFDH4DOqXg79wRaPgmiw6vkKjoq7I2FLu79Zn47U/EHlln1
         TFRWbFceJjRxO45FkAJWbEsw5ebYhCsvTDJEhkyOf/SBPtvB2fl/IFk7do4FChaJJEmz
         5iYvOBsJFS3PZ500aUwLjcofl7rohMfy4qPIeAtHQRVi0Ancz2Gn/Uu0JFmVSF6YAV2G
         6njAcQXrUbOAGIziFeG2c3jAMJSg/bFz9ajQJaa6AfEVLvn+8ydzkNnzE3+37WIYkCF8
         X2klOxY4uhORo3ixZasVEbEpyVRDc0iu+AE8lY6doPPwoz8BSxKq0mfLCt30Z8v+XcbX
         Sdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=64grnSKGQN51eI/COBTmrlN9ZEPl5IGOUa1xF4cAlLY=;
        b=jiYzr2JyNOoP/RJaBFXiSvhr4oiNcNQkYI5bY6fjaZNVZmV1JzZYkfT/JvOIYDuTbZ
         eGYD1UDgJvKiykG2+5lSuOE0muEESgLu82dbn56qIxQC5SG+YR3T+ybstnlwOTcHve7+
         DwHi97pHluOEiw5RAbPquwybqZOUAXg58OOxFTpi6EhsFoSNHgm3QU2kJUBHPq70iBrv
         Da/VOrwHREBuVH4QaEhnQMD57zeq4Eo+OxoNwCZCKzXPHsHc75oqTPM/iXAP4KoLDSkr
         mdCwD/oRE0ful/9i9IP/3iyw60QZYEsFGEjNUw3QdDuH16vwX67nMkNloQfQbMLb16Du
         laHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bkwL9BE0;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id l65si404864ywl.1.2019.03.31.00.16.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:16:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bkwL9BE0;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x630.google.com with SMTP id g37so2949849plb.5
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=64grnSKGQN51eI/COBTmrlN9ZEPl5IGOUa1xF4cAlLY=;
        b=bkwL9BE0BfcbBfU8Gs4fBhK9dhF0vtNCQA/X3bnByCWdbvDsff+a7RxMjjyC1vKS3Z
         Bf4XZisoJyLoKBFO+YjLNcSSByYfbnleuZjkvTarbsx5CBX2MyZz7OA3uZq3lqMXyKSN
         hlUAz5NHj2qRsEPZp5Ee0OkGQnPjU7J5Nez1esbKgdbNgdORky4hXmk+JIUXqauPEPK0
         /wa9EWCOMjyQ5G8YnLnYln7h8vvwl2qHPVf6bTQR2EVSzqqNgyxxpIkfNDlimL9UCIDo
         yb3xQjczSiw3/flcEFdu8O2Civv0tKGkBYB72cuM5Y339m+lz/l9Ua/bV8DDETQ9CuBY
         4VGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=64grnSKGQN51eI/COBTmrlN9ZEPl5IGOUa1xF4cAlLY=;
        b=HzgWPt+3VeL4dCTLrj+1YS4LnY/EzepMY+bf7nTaVTVVQgZ2Y2ji/NjbcxQ0t6Mcgx
         pk3g6sBiDkLYioEPkc1u8LrmY6hINk8DaPNC7QgXwBggm3AWN/nbK69W8ue+u13EbPei
         VfOj9oiij6RabHxwt9hYsbcd5vtbMLFOMjoNOmWj+EZJtWrajW0bu7g6jZc9+Cnbr4K5
         ry4L8WjK22yqN2hWmtFcZkXrTdV7U5Egq+tiqxYYf0L7gHUgWGinJFh4ZWDzdBnFIbFV
         FxU45rqF56kesuyyQL0SmNqZmOzlI333QJgk5MrqkT8TXOTZUsycD0k7MJfrjmEVTR+A
         spMA==
X-Gm-Message-State: APjAAAUN1aLcscvgYDVGZFyRVxlaWGynEg2Etq+84jZ8Bmtj1ZX/9r73
	iBJIrbv0Z1OiLXZEOI9c+5sM8vFg
X-Received: by 2002:a17:902:8d83:: with SMTP id v3mr215083plo.283.1554016570616;
        Sun, 31 Mar 2019 00:16:10 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.16.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:16:09 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 7/9] staging: rtl8723bs: os_dep: ioctl_linux.c: space prohibited before semicolon
Date: Sun, 31 Mar 2019 12:45:18 +0530
Message-Id: <6e371a878c7d03c7535fc0ae6f69f52cd860b540.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Remove space before semicolon.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 98a91ce..9f085a3 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -987,7 +987,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
-			psecuritypriv->PMKIDIndex++ ;
+			psecuritypriv->PMKIDIndex++;
 			if (psecuritypriv->PMKIDIndex == 16)
 				psecuritypriv->PMKIDIndex = 0;
 		}
-- 
2.7.4


