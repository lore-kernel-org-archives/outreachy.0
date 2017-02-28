X-GM-THRID: 6392226842593460224
X-Received: by 10.46.84.13 with SMTP id i13mr476272ljb.2.1488306290113;
        Tue, 28 Feb 2017 10:24:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.87 with SMTP id t84ls360772wmt.15.gmail; Tue, 28 Feb
 2017 10:24:49 -0800 (PST)
X-Received: by 10.223.144.164 with SMTP id i33mr170610wri.3.1488306289225;
        Tue, 28 Feb 2017 10:24:49 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id f7si1181816wmg.3.2017.02.28.10.24.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:24:49 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id r18so3680173wmd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fF0vnBfWQZZ7x8/EhTJZ7N0w0HhwFJO+VzRG+L2Lx4w=;
        b=INq0qMrvT13Il3OO6e5GKxZ+ECZITqgwdzqgulWnQFQpAqevQ5RrY+XwVU1vtExjjF
         lm577FqYDyuwkQ/fjfwHjKOyIKQHcxWi0ry8VlYfFKP8/3ve1FnMTZmDS/Bqnya+Jfok
         Z4kulKI6wWNxKM3El5miwEJS/ze2QwDxlqU4cMoEsVdLp6CP//RETMB7DUodIeGBxyLz
         wKgQhL6MGTZyWt77wvQj1W+gfoy2MTcGbFoW8SeoHSgsPwfexoh4h8iD3G+ZE4SLeujk
         muCGhxi9cwjAv+kWJb/Z5sU0FzgNCs0hHuVwgwAUNUqpPB1JECxUtvcHtk2ykGLNLuiL
         u3Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fF0vnBfWQZZ7x8/EhTJZ7N0w0HhwFJO+VzRG+L2Lx4w=;
        b=CAjM/12Tw+krs8CUbDgW5aW+0daJGl3Ehah/6N8mjCRIvCa4bK24sEjsvtXgTxNWQw
         LbcaiLPVRT04uqW8bn8aJftQ3EM64I13o+J4JIcZMF2jtLOBn0jj9nOYoAt+iBXd2e3W
         Df/1d8Sn9+IwrT+M+2l3nkieKGr3z5lyJeI0+52zYmrfIi6IE3POA5ACD7xr0gqxHdJD
         RWRK6c+jxMslpHJ68UE5WnZJVVpEuq0hmEeIC1C5kKqJP4Qcpb8oGaLwHPXDIdksUxZ5
         HHAJa0KmJ2VVGk3z8d4mgLB4Uad/V9bj16KufXIZWxZHaguG/BR9jgVpjXxDlN9QON6g
         Uxow==
X-Gm-Message-State: AMke39kdhSXnlclQ1FaXXkcpcWwx9K1MiTTcBim7SUUnH7WKZbxxKNwc1CB5XYcqXykYzQ==
X-Received: by 10.28.209.75 with SMTP id i72mr14938wmg.31.1488306289039;
        Tue, 28 Feb 2017 10:24:49 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:1411:993d:3104:6e7f])
        by smtp.gmail.com with ESMTPSA id g6sm19582073wmc.30.2017.02.28.10.24.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 10:24:48 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 4/5] Change a kzalloc parameter.
Date: Tue, 28 Feb 2017 20:24:45 +0200
Message-Id: <20170228182445.26179-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index bcf1c75..43b0507 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -693,7 +693,7 @@ struct dvb_ca_en50221 *cxd2099_attach(struct cxd2099_cfg *cfg,
 		return NULL;
 	}
 
-	ci = kzalloc(sizeof(struct cxd), GFP_KERNEL);
+	ci = kzalloc(sizeof(*ci), GFP_KERNEL);
 	if (!ci)
 		return NULL;
 
-- 
2.9.3


