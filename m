X-GM-THRID: 6755712048500310016
X-Received: by 2002:a9d:6b91:: with SMTP id b17mr952694otq.189.1572936784383;
        Mon, 04 Nov 2019 22:53:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4a9c:: with SMTP id i28ls3601860otf.14.gmail; Mon, 04
 Nov 2019 22:53:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqw/H7NdqnQ6lNyhezKO/EjxYJqSr2FRmJY/XIku2WzG9bYMRW9XMGD1pOhS4gzCRwNnJUc2
X-Received: by 2002:a05:6830:1054:: with SMTP id b20mr4821233otp.162.1572936783238;
        Mon, 04 Nov 2019 22:53:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572936783; cv=none;
        d=google.com; s=arc-20160816;
        b=pmj4VZ63d3m2aYsn5qdnTU3jvBgDx5U3xooDTso6zKWpONx9oq8m1ZBBiY9ecQAdmh
         46sc7/S/MG70Cn90qiDtBMl+zebtQWTDISituF4TrZy7HAJF+GSpUYkeu6Rqla6vP60j
         aFmj/oKOnElxDqPkbTyvABvFvT3AHp9+91cg4RFX4oKQoS8c/rQpLhYdx53tX/PUWpln
         bw2ds2AlrTX405Js7h6NVKc6AodsmvMdyEnBN3PWhJ+LJ5xjMvZwZSDoqqQjhWM2QRh1
         VWwkJ+sDCV2m05hZyxi7dyvDqDdGgRQI6xtameMmKODS6NvRyLaaYYWV2NwvqohksE7F
         6hCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZpFziUI22H69bSdR8h+R1Z9Pueov6idYZMRu4TSMizA=;
        b=d+xmSQaxnAsSLAx4chZlCBrEOSuL4Yi5KL2nXJlJUXgDkn5H9h5x6Ilm6mQ8QJ2P5F
         qxO4LOmJGEF10Sqj3r6mXQHx5u0M8zRFSlu9V1CEDjf0RY/5jEE6e1OLTov2yI8wHHuj
         xyDGlybeekhYL16KGUEFv1pYYtKcZs4OaUz4AzxYD0sHtez35Vr67f+9ZJ6B942AYi+Z
         s5n3XKGU/6lAMj87EP0TbLgc99nzf4OfV5GsjzdbCfQv/ZQNJ15O1h4IFDc8v/M0zory
         5TfLL+3Mj9SlrjjVDhSv1QCCvXkGsaXCzUyXyG7gqxVkDgd1Oz9aHBGm6uXR1s7RQpy4
         mmgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UYK/kJNS";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id l141si1027649oib.4.2019.11.04.22.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 22:53:03 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UYK/kJNS";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id o3so27916520qtj.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 22:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ZpFziUI22H69bSdR8h+R1Z9Pueov6idYZMRu4TSMizA=;
        b=UYK/kJNSnmRw2nLtO70cfnhf1O0Fr7wmE40aMbByFNlNzs9uJeTS843Of9PNAIi5lj
         tOeHsFVHsD82DACUNYco/Pw8E21x0YhqbS5lQd84Ong6ZFEWkY9eg6YdlCZKQLS3vB4y
         xQcinPj9fLkjpAvbdNCirr/gm4HcEaqmJxlSteiCJ0hBElfOVF+8D0KoGjxCRsQjwjY6
         JLu6HFnZfTV5dAKzp0mfpu3IHQ6vRILJjGkeWbNHaW0leKrVfNeUBNeSezSCH4mJbQQs
         Jw3+Vw9mPtkA+Phld00riZ8cf4kHmqLR1P+6dqT6iz7hzIVi2bl8ziBbH/G1GjKSFHlp
         BJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ZpFziUI22H69bSdR8h+R1Z9Pueov6idYZMRu4TSMizA=;
        b=DN5vBTyLJ/PPRBNyw9qCV5TqTZHju3Y3xmiLajqPb4SA79dnGt8c7PbB43Y6iSbjfE
         LolNOpGTMZja17KROOoNL/9QRUt45qhNy5gRvae8vF3BF57EFVZHGyuKPbP3h9gjVAZB
         R69npyIgoRUS1qpUKlH7qxeMngdGE+VTi7gFAWAk2fUnvErFoQNfbeLFApecck68yPkI
         kDHcml0ok80nl1kt/ktXzRPS8onVuC202toNfIW43zdYxGDkO0boAcyyn9zshkVWMjo2
         e0HyOsLG4ZbXu0xNy7YRJX9/IS+AhGX7wjuh7AysFu/kDolhCbE2ffohwLL2n19M+b84
         FKwg==
X-Gm-Message-State: APjAAAX4SkAOrvWC1ptCJFWUeT8B/a+fcR25bVcFfkvnmyWCMcvAgSIB
	n3ZSY3i4KcArFljBbjCr0eXYgDIaYno=
X-Received: by 2002:ac8:5298:: with SMTP id s24mr6602912qtn.329.1572936782678;
        Mon, 04 Nov 2019 22:53:02 -0800 (PST)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id t66sm9033850qka.108.2019.11.04.22.53.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Nov 2019 22:53:01 -0800 (PST)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: wfx: Modify return statement.
Date: Mon,  4 Nov 2019 22:52:57 -0800
Message-Id: <1572936777-105285-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove return variable and return the expression. Issue found using
coccinelle.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/wfx/sta.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 93f3739..be22537 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -114,8 +114,6 @@ void wfx_cqm_bssloss_sm(struct wfx_vif *wvif, int init, int good, int bad)
 static int wfx_set_uapsd_param(struct wfx_vif *wvif,
 			   const struct wfx_edca_params *arg)
 {
-	int ret;
-
 	/* Here's the mapping AC [queue, bit]
 	 *  VO [0,3], VI [1, 2], BE [2, 1], BK [3, 0]
 	 */
@@ -148,8 +146,7 @@ static int wfx_set_uapsd_param(struct wfx_vif *wvif,
 	wvif->uapsd_info.max_auto_trigger_interval = 0;
 	wvif->uapsd_info.auto_trigger_step = 0;
 
-	ret = hif_set_uapsd_info(wvif, &wvif->uapsd_info);
-	return ret;
+	return hif_set_uapsd_info(wvif, &wvif->uapsd_info);
 }
 
 int wfx_fwd_probe_req(struct wfx_vif *wvif, bool enable)
-- 
2.7.4


