X-GM-THRID: 6674050971501330432
X-Received: by 2002:a24:c546:: with SMTP id f67mr2788089itg.28.1553923583002;
        Fri, 29 Mar 2019 22:26:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls1627468ioq.6.gmail; Fri, 29 Mar
 2019 22:26:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZibrGrXM85py7aM7l3etz2mb7NAocLzrCqR4ilnQVB1OTK/SXKwdzkykvhsIRNEGdZojt
X-Received: by 2002:a6b:e413:: with SMTP id u19mr6419440iog.34.1553923582283;
        Fri, 29 Mar 2019 22:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553923582; cv=none;
        d=google.com; s=arc-20160816;
        b=BveeB3Q8finORGkH0tB8MewrOeVIGvnvbM9zsN+8h76uDx78W3mtbsndDFNm0VyNoY
         6uOVFslqrUlr5rtnpXoROHlcNg2szLgBSTj63fJW/DOrqbT1i+tVkwmpDAsm6kkxN5MJ
         hFyy1bnPEfRvb/htIzUXecoEgieAf4ny0WToNuQ7Ili0hD+qf6098JRk1PTuff+DJLfe
         3RXIZ8OvJzREB02dAJzt6obtuWfI8pegoKg5i9iFmq3fGn2s3SpFcXjeDHTqKeeeuRuu
         LNuQhAjEPnc7ds4Y9bqWjjeyn/9g7BYd8VWdMUB7r3sl7Y2gFB3hzoMe7hMMuKP6P7VA
         MrRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UrtnHP3e7Sz6Hcerj8eyviXQu/YTAwx2LkvM1yRjgLw=;
        b=OlDQmiR2A1Ce+3VLMv+zPHsXc+YtxvBOFuZISxOXYez90mbpvjgUKna/TulJabzTeh
         AIdpyFkMI6jzfB0Ks4oLH8u69aVU5zW31Gi7Ar4fpwR3qWU+9bP2LrI5eWhj3UtO5Lzt
         mCf4u9XDJsAbxi0igvKyxhxuTvveL4AwH0AjkPBAzVFXEL/kAgvhVVX3etG/Vdk4FJ5t
         xpPY1TjltMAJC+rYEkmghMJtG2isUzSoYCcy1CNnwOovq0hc+/n9b70tTqInUz3HGBIF
         ZI9gPW3ppvfskj3rySDS83CVjAoi+M4EQay9HSYTPJOH9vsJHhTmH3wTeXfKaFRbD2mN
         6a/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O1Jj4Jy/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id x26si217565iog.4.2019.03.29.22.26.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="O1Jj4Jy/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id 188so2006378pfd.8
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UrtnHP3e7Sz6Hcerj8eyviXQu/YTAwx2LkvM1yRjgLw=;
        b=O1Jj4Jy/HJ51fXuL7Yuhv54oOXdanUxMEF/jpsPStQ4NidMLsdGp3HdKZKpq/+77yR
         /22yLt3ppk27NKK7NlW/WOttp5wyciTrp1G4lu9vhztRg+ZCOyjDuld8HzfGmJH2wi1B
         66thD02i7WTwmaDqEUSWof7D9aNbmoi9QoqWoOdAuTa97iagFNA+xMZRu6bd3DOM0csS
         AJ7WJI6+birP52aqhL6VENZ1/Qd8CwtTC3wXUpHCBk9FNFCJTtoT2vmOXeXpORIdCX+4
         e7xvy7tkA7gtjst3a7c0LAB06o4cotatD0FkGn7ECnOayIotLSr3R5TLn5+uKHzuOjqQ
         gFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UrtnHP3e7Sz6Hcerj8eyviXQu/YTAwx2LkvM1yRjgLw=;
        b=GZXSGkXwWZIGJHbFw2AHam+UDgvsM6AVcN1/Ef5+ddozRq8hyEMVJcU0Ho01LdE2LN
         n902AC3QoohyqP5olFXQEHTPon1J8mrx5cYkxQP55u4wQ2PO89SSvfaw8bXRiSN1id1e
         wx7jZFyteRSmA9Um1EahiACu+KH+pN1DHUPcxqnpUKLOxzGBwnktr8mnCyBFYwxtqZk/
         QIXTJwAvP8oCRxz/t6fTUUh5ssaVOhuHiUSYdHaxK3jeuXtrdVsOmhRnHc2U0YogG4fE
         l7N4gIwoKXjAos9cWZccjTfKaE4UWud0mIUZR0W8re8Zbn+5ecCBet92iBm7xlfwegZ1
         Y93A==
X-Gm-Message-State: APjAAAXagOClahzxzJlIDvg/5L5lOMEfjGf1BCKmXu5VG32tRKUqwWdK
	13tP4JdNBP3kgtbqGHbIWvrrx+Gl
X-Received: by 2002:a63:470a:: with SMTP id u10mr50443359pga.17.1553923581398;
        Fri, 29 Mar 2019 22:26:21 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id 6sm3852128pfj.95.2019.03.29.22.26.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:26:20 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: speakup: Compress two lines into one line
Date: Sat, 30 Mar 2019 10:56:05 +0530
Message-Id: <1553923565-12066-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle.
Return value directly without saving it in a variable.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/speakup/i18n.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ee240d3..a748eb8 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
 	input++;		/* Advance over %. */
 	input = skip_flags(input);
 	input = skip_width(input);
-	input = skip_conversion(input);
-	return input;
+	return skip_conversion(input);
 }
 
 /*
-- 
2.7.4


