X-GM-THRID: 6674450234072891392
X-Received: by 2002:a24:3a0d:: with SMTP id m13mr283358itm.34.1554029385867;
        Sun, 31 Mar 2019 03:49:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls1992965itg.0.canary-gmail; Sun,
 31 Mar 2019 03:49:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwFA/OVpc715eZB0oOSUtD6PjRyOaOPDfn/U1x1tfiobDjqb2PZKg2cAQqK2cUWqARu/mNH
X-Received: by 2002:a24:9d4a:: with SMTP id f71mr4870345itd.33.1554029385339;
        Sun, 31 Mar 2019 03:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029385; cv=none;
        d=google.com; s=arc-20160816;
        b=R1YRBMWzGCOYg3hhXriA/7qkjRRbwYzUzi77XsRLNhGdmh80sSc3shcRFsJMR/jcLl
         j/5Ub4SeTkbvncBLIUvXpkusOABe/tXdTcUKPsUtyUXtNCmtNe0TFJOQU1vm0Pbv/5MG
         +kuSy8HOKciHzeIz3HVG7fZltMRfm3Y7rTQGLn33jf2gTdnx2TNjAWIGmJaKVv8pqOGS
         0RBCzknwxsh4dRnU0+0Or6UVuDIC0pNiKEOVnuhfQNd7mu0CU9LmawycG/Q9PkkKKYW8
         WzUVLYgfGFcDTmdpUY4cAdFMlwvRCl3QqyiDCSnatq+pEGq06BFai/3l/PUg8CGeLR3Y
         8ZEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=vJTK1smGRcyoIULjzik+E0WLqRFSIgpbBS/+5vNc0hI=;
        b=oswGBPjaCzv9wGUmP0fqL/i/97uK27SG2xsGa94jahTbCGR/MQWuHXGyplzfAzoEOJ
         3LngAlSCIwCov4WFTuO3u8OgkfNg2Y9zEErCQkF2i4tl4g6bc/Ri2qkxTQ+Y9iBpzh+D
         1H/0bO7sorXiuwpwvJq85sZXzxoQh2o+Xdz9Faseu96qGxXm9ejCOJMMKy3plMY3+T9B
         DjjJdx9FyCbp54Z6PkKFoyEweXuTk0FgMIXQQl2Hjcrul6SnlaxbfWjbuy2Rl62zEHtp
         34zRm+RuNF0iYCjBwjy3wVjTVPW3lXkNreBbI10rGDVYTK622p1xe214/mqPDZCE1aAI
         r2YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kVb/nLgi";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id 17si43itx.0.2019.03.31.03.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="kVb/nLgi";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 188so3119807pfd.8
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vJTK1smGRcyoIULjzik+E0WLqRFSIgpbBS/+5vNc0hI=;
        b=kVb/nLgiiOPqDhagicKxSNmDDtOnKmyYSaLljK+feOR0dldY9nH0Awl55dX1xtESwY
         M/NZJ/HRdO99w2qlLNskwLleUqpR2jieQZgyEWSbWmYO/KAWtaePv3QJGpvNOvUamk+y
         msJdh195HOUixMdrj8Eq/wcLYgmxFEeJARVAsOgb6oxp3puMDkGImy+AGgOfw2d8OPpT
         iRy+fTrz/+Bzlqc9xcPr2tV9DyMCTBymgrzrDIhJGIOVTdz48IV3BSLvN6WKxFqCRHZE
         Eg+xY5/QMqA+06Gd+7v8IfVRO7k8KPyiYRQG3fanawSIDWdeIW6bQPFhgL3gKUZ4IMJ+
         Jhpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vJTK1smGRcyoIULjzik+E0WLqRFSIgpbBS/+5vNc0hI=;
        b=jJje4vihgn+RpwqswGlaWukUoh43kR+rn4Tm0zsDsOWgj2W2/+3dg2SxvZWbCCwNHs
         mmG/mJFIsko29GoYH7IeN0WqIool9y1QrpOu7zml+FJ4MeetvE1QYnrO1c1NaEDRfVHB
         bDkrXvMIYvomHkow9BjoOCZ7i9n9Lpi/n5NEAvXgBJj/dnl1uuJHURLnjxv3/BXYo8Vr
         2HZ7+zVT6XS0RNyqBBFz1H72elbw7JKeYHaDrpMRaaHx/+9GzPTK+3TnfdM5H+kld1WX
         gpiWJBWIhJuj/Bn13HUuHPGPju05vms49Ouyno0WsfphY211fUgZM/8ocJ3ehfrF2JAp
         5bNA==
X-Gm-Message-State: APjAAAUjodRv+vpSRI54paRRhc4n99D6s3UOw2zK02lQH4lMk6kSyB1E
	mMR4B2pDsG1elVLF/9rwvt+NNwB/
X-Received: by 2002:a65:5acc:: with SMTP id d12mr55714154pgt.337.1554029384343;
        Sun, 31 Mar 2019 03:49:44 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id g4sm10014361pfo.38.2019.03.31.03.49.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 03:49:43 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 9/9] staging: rtl8723bs: os_dep: ioctl_linux.c: Alignment should match open parenthesis
Date: Sun, 31 Mar 2019 16:18:44 +0530
Message-Id: <7fabdfbe57236414896702b22586597dfd41b0f0.1554028003.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>

Align code to open parenthesis.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 0fe11dd..c15e3a9 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -983,7 +983,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 		if (!inserted) {
 			/*  Find a new entry */
 			DBG_871X("[rtw_wx_set_pmkid] Use the new entry index = %d for this PMKID.\n",
-				  psecuritypriv->PMKIDIndex);
+				 psecuritypriv->PMKIDIndex);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].Bssid, strIssueBssid, ETH_ALEN);
 			memcpy(psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].PMKID, pmk->pmkid, IW_PMKID_LEN);
 			psecuritypriv->PMKIDList[psecuritypriv->PMKIDIndex].bUsed = true;
-- 
2.7.4


