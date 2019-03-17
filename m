X-GM-THRID: 6669371163637972992
X-Received: by 2002:a25:f20c:: with SMTP id i12mr6927586ybe.12.1552833980651;
        Sun, 17 Mar 2019 07:46:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2f90:: with SMTP id v138ls3070424ybv.10.gmail; Sun, 17
 Mar 2019 07:46:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwA7yqIh4lle6SEe2/GEQ1iM0ipfC7yVEFblAOf5XGhGwEjHLJRRkEIhwbUEgtFLAMlPADL
X-Received: by 2002:a25:34d0:: with SMTP id b199mr6604311yba.48.1552833979750;
        Sun, 17 Mar 2019 07:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552833979; cv=none;
        d=google.com; s=arc-20160816;
        b=CoSviRQQfq8gy47H1b/hh7VFjjDlNN6+0hJx5nmGYWPCJT+DL9o4OfoUz3JryBRO/R
         E+woEXYPE1zKEp+QrI2QyqL9BgAYzV7CrFDWfQNgKtuCpBKobWLMvNonIs0jANy6urkW
         PXvMPmP+G+lPE+ECcbTY6dm66NbgrlGfB6A/ax/efAQ7o6gfSeqlSxAPpG1jF8+NbotI
         P/DBbsxFe+HDQtsQELivloFUQ2uZOvu20fcsI4Lng8Tzf+G1MDh39tsIDgRohT11pjYJ
         cJFtYHP7JNYJgGObKgM3EWjGbBBgqbs5nMX8MJQ2Mp76LICoB2ohYrcd6+gxrFyem5IW
         Rpow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8ByTuFQwchZ7YnsLP0idUpsUaR7qIRGVOx79OpPppPs=;
        b=D8vO4G7wpYFfIyxPal9F5o24L16vRTy6k4lkVIHaHmc0DModCsJ7rwbNrVJgs5zguS
         67KI9StRXMxegxI1vaGjM7ibLer77kvxgEYccQI7iHmX/ir9Qo1nPnCNw8ngNIg6PybO
         fdA5WFv3Oel1jhcXr8tjzAAT0ULHuZCwt5Z3T3aZ731f8HmL2QXao0yuvDVYUGTIaCjf
         wwUTxyLCAiSUSXJ5UIFS7i5+O7YuMqsa+WXosGBy0o2xrWJHgZiymVEt2SeVhsfLUFW5
         mHi6BD9CwbgLXteMODGAo9RRDMVJTMIlghoEKxIfboqbU/liMeK8kvJtiXPsHHg3TnGW
         e8VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jV78hro7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id r128si481211ywd.0.2019.03.17.07.46.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 07:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jV78hro7;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id s23so9483439pfe.13
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 07:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8ByTuFQwchZ7YnsLP0idUpsUaR7qIRGVOx79OpPppPs=;
        b=jV78hro7JSUU26M0+s5crW78GAyd2IcBjdbvdzjbDmidcgq9mjvHRirnZ7XdW9Khfu
         Ud4gysk5oaAYPCVEPECJOQWGtXGXBWMQcDnZ/z/nBPxzOe0xbyPUvtlEkvFsbJITNy09
         WPs0XT+czioYtqcENi8HlkByqTBcTm13P4HdZkAhwXvjdU07iJnd+Hw38GjgaPv29Qyr
         /mF77N/zlpxohsMd72EK1eDAlniNoT+nRYvnjuxyrNb4TDOlhQCHX7Ux6f0CKjg/oyXQ
         vtYtC46cg8TQd1PLcrTzfveaD45WwTtgnrVbXONnYAJiy6YXtxuQ2WHvcrOhGtaZU59t
         FUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8ByTuFQwchZ7YnsLP0idUpsUaR7qIRGVOx79OpPppPs=;
        b=g6YaN4NRjiFJQCsDJ7THo2zWkAesUZG1pLw1l1YAjL+AdMayz5FACDGEcKAB0y2U1w
         pbJbYjNnCcxAHTyWpdHiYMmCmhAP31YmnniGQYXL8lDWGeNR0OqNYbhC32r9giGs8Rum
         dIgK8oOlWb3gW3Udl2yBveZMy/SQWXXQCx6HQVHMe9w7zqhVJw8Yz87wc8BRyRUBdGKt
         BT1UBgq1AfhcQNyw4cvPqpNtU0S3ULQsf0QahpYbwUW/jdSnGNYI9qvPHBFxX71DoaFm
         LftjY1BLfoi8nkHOKG2ZjzTHI/Gk+KVfvXtZDZObq9aLvHh6NhzaIgUKGF9afTMp3gHF
         tuMA==
X-Gm-Message-State: APjAAAXpYhJCTQ8ZkY8EWiCZOtZg5o1Rjv1UyYADxCKtrHFGgfzXdmS7
	oIvBRSb5CHVcwFw3b6lbRLJDREf4
X-Received: by 2002:a63:9246:: with SMTP id s6mr13053388pgn.349.1552833978697;
        Sun, 17 Mar 2019 07:46:18 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.111.180])
        by smtp.gmail.com with ESMTPSA id m13sm15021186pff.175.2019.03.17.07.46.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 07:46:17 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel]staging: greybus: dt compatible string "google,arche-platform" documented
Date: Sun, 17 Mar 2019 20:16:03 +0530
Message-Id: <1552833963-14600-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

DT compatible string ‘{ .compatible = "google,arche-platform", }’
appears in drivers/staging/greybus/arche-platform.c file at line no. 624
and 630 documented in file named as
./Documentation/devicetree/bindings/vendor-prefixes.txt

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
index 62f0b03..110028b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.txt
+++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
@@ -157,6 +157,7 @@ globalscale	Globalscale Technologies, Inc.
 globaltop	GlobalTop Technology, Inc.
 gmt	Global Mixed-mode Technology, Inc.
 goodix	Shenzhen Huiding Technology Co., Ltd.
+google,arche-platform
 google	Google, Inc.
 grinn	Grinn
 grmn	Garmin Limited
-- 
2.7.4


