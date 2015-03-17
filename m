X-GM-THRID: 8708200333312
X-Received: by 10.112.13.228 with SMTP id k4mr9551688lbc.8.1426570638620;
        Mon, 16 Mar 2015 22:37:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.48 with SMTP id t16ls716927lal.55.gmail; Mon, 16 Mar
 2015 22:37:18 -0700 (PDT)
X-Received: by 10.112.35.135 with SMTP id h7mr9593330lbj.23.1426570638089;
        Mon, 16 Mar 2015 22:37:18 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id i8si55659wif.1.2015.03.16.22.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22d.google.com with SMTP id cq43so52722230web.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 22:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rD0l+FoZLA1UsYmkOwMZfJdYkwo0H8bz9zMkiLugQsQ=;
        b=lwUEleaeBZAGPNjZP9MMniR+0FA+QRikslK//aDDvu8TURR05fN4V0jEKD/w+5BBhP
         Qn+F8zz+w/bhqA5WwRUKWu9u/hbgtp02R0vJnf2gcbVQLYMLQjVBeauJmh8GB9fQmwVr
         E0SLprAzq666mFKthI6LUceW7JJXTmXB6f/ievg4bD4lBSOpykFO+/+SGum9tNMKGlJG
         I7hfRnTExQ2KDHOcrjwH19Oc4GRpcscrkAzmrRxwbCYGdz0gANFD5KI7YP0gY+9shdFj
         Ym3AX5VmNWNTKv67c+ktRmBIUJMuejMvHoa1Ko3FE+2u3C94vptMle+xEcITVZbEP95m
         EfgA==
X-Received: by 10.180.108.81 with SMTP id hi17mr70089819wib.91.1426570638016;
        Mon, 16 Mar 2015 22:37:18 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.48])
        by mx.google.com with ESMTPSA id u16sm18344339wjr.5.2015.03.16.22.37.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 22:37:17 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id B723EC1F80; Tue, 17 Mar 2015 08:37:14 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/4] Staging: iio: replace pr_err with dev_err
Date: Tue, 17 Mar 2015 08:35:41 +0300
Message-Id: <1426570541-22446-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>

This patch replace pr_err with dev_err, when appropriate device structre
is found.
Issue found using the following Coccinelle script:

@r exists@
identifier f, s, i;
position p;
@@

f(...,struct s *i,...) {
<+...
when != i == NULL
pr_err@p(...);
...+>
}

@rr@
identifier r.s, fld;
@@

struct s {
	...
	struct device *fld;
	...
};

@@
identifier r.i, rr.fld;
position r.p;
@@
-pr_err@p
+dev_err
   (
+ i->fld,
...)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index b4c14ba..1d8c5c0 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -214,7 +214,7 @@ static ssize_t ad2s1210_store_fclkin(struct device *dev,
 	if (ret)
 		return ret;
 	if (fclkin < AD2S1210_MIN_CLKIN || fclkin > AD2S1210_MAX_CLKIN) {
-		pr_err("ad2s1210: fclkin out of range\n");
+		dev_err(dev, "ad2s1210: fclkin out of range\n");
 		return -EINVAL;
 	}
 
@@ -252,7 +252,8 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
 	if (ret < 0)
 		return ret;
 	if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
-		pr_err("ad2s1210: excitation frequency out of range\n");
+		dev_err(dev,
+			"ad2s1210: excitation frequency out of range\n");
 		return -EINVAL;
 	}
 	mutex_lock(&st->lock);
@@ -307,7 +308,8 @@ static ssize_t ad2s1210_store_control(struct device *dev,
 		goto error_ret;
 	if (ret & AD2S1210_MSB_IS_HIGH) {
 		ret = -EIO;
-		pr_err("ad2s1210: write control register fail\n");
+		dev_err(dev,
+			"ad2s1210: write control register fail\n");
 		goto error_ret;
 	}
 	st->resolution
@@ -346,7 +348,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
 
 	ret = kstrtou8(buf, 10, &udata);
 	if (ret || udata < 10 || udata > 16) {
-		pr_err("ad2s1210: resolution out of range\n");
+		dev_err(dev, "ad2s1210: resolution out of range\n");
 		return -EINVAL;
 	}
 	mutex_lock(&st->lock);
@@ -368,7 +370,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
 	data = ret;
 	if (data & AD2S1210_MSB_IS_HIGH) {
 		ret = -EIO;
-		pr_err("ad2s1210: setting resolution fail\n");
+		dev_err(dev, "ad2s1210: setting resolution fail\n");
 		goto error_ret;
 	}
 	st->resolution
-- 
1.9.1


