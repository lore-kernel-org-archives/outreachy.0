X-GM-THRID: 6669419489146175488
X-Received: by 2002:a25:5789:: with SMTP id l131mr7127158ybb.34.1552845232852;
        Sun, 17 Mar 2019 10:53:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls3130126ybf.8.gmail; Sun, 17
 Mar 2019 10:53:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyX/cr1L3lh6vrKZyI4RYD9UA9PyjwZdXpfC7SNDBYeraGYs9tZVaP4ag+jFHYS3VN9TSAY
X-Received: by 2002:a25:3291:: with SMTP id y139mr6487547yby.4.1552845231998;
        Sun, 17 Mar 2019 10:53:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552845231; cv=none;
        d=google.com; s=arc-20160816;
        b=pU+sM1B0UMTBQo/huuZrbGtdQuzmpjoXzq+VN3PcoS9JvDhvPl5zv8gpKN0dN+3TlD
         FOW+Ek9re2Pmd4IF2fgjr9ImF+T9UheLDMwyRVeIiQ7o3kRK0XglNUDMjRn4kWi4puy2
         u+NTY3sAFQj0ZwuVvktFD+4/MWWq04yWV8qATKV/1BPqmYSky1CuFuirgATkOdmEWRH+
         cx2GEVTjAJQOfypsSUB3kg7RZTfHaUJVK2cFSy2+DDB672fbILL8NEXd5i76EZZ9LAFE
         glvTiXTf6abRU3PmWTbaQwr9vHvO9RGqaJcO3bP6YSg/6rvcxo5kvC4AM7nw7cmxs7Eb
         BJ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fIOXaVxs38HJz5g1E2pFipTatro4AVUYERJLTFPyLWg=;
        b=yNCMfc+bfntXoDZOtjhmaY9Dd39ndpi7oZyvpS0tQBgZy2RTcFTL6F0VSUbkkUn12w
         wu7GStNKIUSsNI2VGArs+uy1EWAsHZ0wcEhDywnSIrXYnAhFoB93MAmmbXFj7JdjCpBQ
         Sk4axakOzKWWUEo9OSYTKbZjrxHj4WLdmfLv7mgAvGqDrUrtqZTFylPb8iipbZ6XfsVD
         DjllLKTz2lPSD5nJwldkQyXnZKmJM3syEJvifWnBPDrGSZlXbFvhZh8bEaXuBypPe3IL
         1tQpxEpYlzH7eyl5CVhSiohfwWVNJ6xrjPcZ7WbAMmqdGqKLPzI/FwSIT7ns2SIW2zI5
         tYkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pLSBDhCJ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id 62si508363ybf.2.2019.03.17.10.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 10:53:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pLSBDhCJ;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id v1so5048785pgi.5
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 10:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fIOXaVxs38HJz5g1E2pFipTatro4AVUYERJLTFPyLWg=;
        b=pLSBDhCJ9CKy5bALtT++7GwrTEjzcUc8mDnUDKgxfJWIclDbZfqBzZAzciE7lqEvFU
         WtVaudMOeMTpzDa+GmnnapBJrbNxcNXywrG42CuL2+j8LdX4NMipNBFr1lmnVwIwuGpV
         /W7MDvOfW66Qb6lt7XywBqHfQ+nk/ZAJq584NwB1r7UU4ZgSErfhGbcOCQ+Gwzp5vNga
         MQXY+zVbQ0ZyFLomrBgm1ujIs/Iyo2oGWSHYmxK3+HS49i9CDKLn/Sk4Q/VpbpPO5X3i
         BzuUgC6NuKxPTSiiXFjdHiSxi+GdUSfqZMbhamaHpB+8uNSGwmIAylBPkUwjcxQgDpeQ
         +G3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fIOXaVxs38HJz5g1E2pFipTatro4AVUYERJLTFPyLWg=;
        b=JZvGObHmsSmdF6fKCAuXijYMdBz1ItDMX5mJbruKldySLqA5KUzYkS5zSVWw4Bp051
         r9onLYUZugJGNnvE8wOYp4vfOCVdzcLNhwoFOnfmq6iGAOkGRYsi3P6lAWBofmGZ/06D
         lOYBDNScURhIVPLlt3Ng6V94puS0NDZcWZZQnIpCv1tQ1fdGFdcEVDOqudxJj8FiFxkn
         pVfEX1lHQTmcrSLHxIGkgnqno2FwVlIAd8mJmSvWOJ/xrRopSniots+Ed4S2lLPE3wWy
         1Qhms3i/GMT+KT2CJ9NbHLh+42kRaHAGixSo4Fc7hDavvpEP54S1zfgu8+iaEjMEvQvy
         Cz1Q==
X-Gm-Message-State: APjAAAXAg4oyWtTQWCep1qiIhafGc3VpoGCvfXbMctj83qdJDr8ZuDe4
	jLFSPjpy3d9922ZuBfAwSORgY9Ys
X-Received: by 2002:a63:360a:: with SMTP id d10mr13173047pga.361.1552845230899;
        Sun, 17 Mar 2019 10:53:50 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.84.34])
        by smtp.gmail.com with ESMTPSA id f192sm18453461pfc.180.2019.03.17.10.53.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 10:53:50 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: greybus: adding ()
Date: Sun, 17 Mar 2019 23:23:33 +0530
Message-Id: <1552845213-12653-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Parenthesis added to macro argument ‘gcam’ as (gcam)
to avoid precedence issues

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/camera.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
index 615c8e7..b1670b8 100644
--- a/drivers/staging/greybus/camera.c
+++ b/drivers/staging/greybus/camera.c
@@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
 
 #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
 
-#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
-#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
-#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
+#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
+#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
+#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)
 
 static int gb_camera_operation_sync_flags(struct gb_connection *connection,
 					  int type, unsigned int flags,
-- 
2.7.4


