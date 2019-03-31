X-GM-THRID: 6674450234072891392
X-Received: by 2002:a25:a2c1:: with SMTP id c1mr4615958ybn.85.1554016561865;
        Sun, 31 Mar 2019 00:16:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:38cb:: with SMTP id f194ls1987610yba.6.gmail; Sun, 31
 Mar 2019 00:16:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCNR5wLll0hCOyLSyYgvuF3O4Y1dN2CRfYotSwU6iEtKo+vD+f8aRhTga8LSvIoGLYzux3
X-Received: by 2002:a25:a0c5:: with SMTP id i5mr1368707ybm.88.1554016561293;
        Sun, 31 Mar 2019 00:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554016561; cv=none;
        d=google.com; s=arc-20160816;
        b=0h1CLn0Bv6Jws+KADtbzOZsPo+JjvBj82DcUfZ3Ifdx2pIN1TJbV+tRU3WY0XvCyaA
         RTfpiUkvjT1JqnckMc9+CNjR5mInd+ZNHz1/hajn3HruSa8RdMZHGdpkUnWwAopoM08E
         iSpp+vB/tydtjNWHXs+BE/RPJN9P2noaR4l+Ta3FoILLwbUufjGCGUZZUBbJj/3eaWeb
         ur1MQNrmQgjHQ0FOxqCbvQKrjin7ewKWsiwHhAXlthl1tveZkqYdDxKs8qlpkkG5bYVe
         KC8pXcAIADPGsXhpz8GUcYt0buPJiA+9Dj0cYJr4S125LL7k+ug8dQdCGCgZvmjHj8MK
         35/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Won2X13tZ23f97L9QJ9UvXbwDMN0RoQ5CWGgqUeJVG4=;
        b=JzCQtllfomAu2FhN7WCRWLtdtjQwq/g+PwFgAvVDGXl/gOiu1t8vDSOjvFW6PaG4zt
         IJNFMcbvARCWv4uemxahSnJCGWTCspo0rKRmNJM81y31Hc1YXSMe8/K0n8Is+3rQYkK6
         +8gA+TPXj19itsDdrlyxGZdo/d9cnXZVOcGfAhWkGQY9ipiViA50pjkQ2eCnKSME4jKF
         75agXCNiOjyw7mWlFHoNgwJUGkFyGIpd9lrK7SNMHM0JSmvWQmuGmYfboNQX7R9lXRwb
         cPNSA7PVzxXEqXgVCmFZSzVTUmSM4KbQITHZJCNyqpUYdWnnwUjxzwbZc9DYd3Xt7pnZ
         EoyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R+Bg4E6T;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id h192si385885ywa.0.2019.03.31.00.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 00:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R+Bg4E6T;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c207so3000323pfc.7
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 00:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Won2X13tZ23f97L9QJ9UvXbwDMN0RoQ5CWGgqUeJVG4=;
        b=R+Bg4E6Tpmjhb4C/fxjBuUgiaZKBWqAW5IzppRDK44l56kFaw6SpPGA52AJp3Nlz+9
         qJUVBg48t+FhvI3LcnM+9NEs/R3aCoU/RjTDsgWZmEpGOuWeLtSSFKKRwsomiGobiUkD
         gDKOYbVDY7OX/M1ldXxRGIrIj/jF69Q6wvXW/T07+6+Wq9S2uCRHO6HD41aveZdCRyjz
         Bssw+jgqo8Yw0TiwPykyVBBsc82VdFJOfI/xfi6HqdCLA9e3xx+23izMggOqBGjRt+5s
         Nvo6RV43n35mu52LlAs1hy+oqdtd2UpHR5Dx94e6rXllVqaeJcy3+FNfj98A1HM8pPCU
         /qZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Won2X13tZ23f97L9QJ9UvXbwDMN0RoQ5CWGgqUeJVG4=;
        b=S8lyfjp2NzC6Wdox01t0TWp0EfU6Re+gMbFLBNY63qfINXllDBSRpKG02vxQwYoGKw
         Tsn34S0J+ZwEuJUj+wH0YkoVYgBXdwaMkonYsZUJ1FaZxikxFe0myH4C4hWedFEzYDmg
         I/KOBUpbGaoYxrQLvZ3+F97dxyu6n0WFWdWG6BrN4nsr6+Gf7rB3nDwYEElY9qxH28+d
         2PQlrm8RIKJonTqbXZ28DiWZkxwKjJAIgdASjXwVPDqsS7itSYEBnM1r6Ih4+IwNCo9y
         E7al3pQb8ABBlqIhrt22zJbEMz1qYzQLBhmABVKCuw24d5Lgj2ZnVmP6cwe6+mnd+n22
         er5w==
X-Gm-Message-State: APjAAAUnoAMYmGy2qWHTeLXdT+RR8w5xqpBBrwxebu0rnCR5GIB/Xq7j
	xwMY04s5FhS6dd35lmwyhGHG6Q78
X-Received: by 2002:a63:f444:: with SMTP id p4mr42308221pgk.32.1554016559436;
        Sun, 31 Mar 2019 00:15:59 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.206.28])
        by smtp.gmail.com with ESMTPSA id j19sm3373843pfh.41.2019.03.31.00.15.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 00:15:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 4/9] staging: rtl8723bs: os_dep: ioctl_linux.c: "(foo*)" should be "(foo *)"
Date: Sun, 31 Mar 2019 12:45:15 +0530
Message-Id: <61af3b275f0e59084f5ec17295a9f5febc24379f.1554016131.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com>

Fix issue - "(foo*)" should be "(foo *)".

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index d68d9c8..86c7c9d 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -946,7 +946,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	u8 j, blInserted = false;
 	int intReturn = false;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct iw_pmksa *pPMK = (struct iw_pmksa*)extra;
+	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
 	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
 	u8 strIssueBssid[ETH_ALEN] = { 0x00 };
 
-- 
2.7.4


