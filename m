X-GM-THRID: 6809167002234519552
X-Received: by 2002:a02:6c50:: with SMTP id w77mr2468687jab.39.1585382767004;
        Sat, 28 Mar 2020 01:06:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:1803:: with SMTP id 3ls2360086ioy.0.gmail; Sat, 28 Mar
 2020 01:06:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0fJwVzqZg8mUNc/y+cm5uCGMXhhS+Mygbs8QqUgxZOA61V5Y72j+ZAND/XVO58MMNcsjj
X-Received: by 2002:a5d:9648:: with SMTP id d8mr2240540ios.24.1585382765692;
        Sat, 28 Mar 2020 01:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585382765; cv=none;
        d=google.com; s=arc-20160816;
        b=jVvSH/ES1wfeCe03j85MQhPNg4uOnGevUAFjmyOjZoUS4ytgPjrDNzBr77LUES/wTz
         ShbctBTDfe77rsaEo+OtYi6sdWXIK7dl1LtkmG0TuVTUagS20LvvhMHJ7nSF+2DbvY8y
         rNMkyJMWsL/ZsNS5Mf1SD37OYUbr+nw0/wkBci/gmhEw+AUjMkBu9S/voq1gkh74Gz0y
         4xOR4/VZBxfqNuFO1YCzy0w5/+gjOoB9OSj/WLj+WJqxF860ePtJ23USPgdhDgW/7EFk
         eTHOWWxUtbc062OZgwHEP9MchY7eTnuYEXWyLeL6k40jIguuDel9Nw1+DyeY8fQfLaKs
         M0aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZAs4BPZ3Qw1Np45GFH8BfmZtQrOniDj3OoQBB06x/d0=;
        b=dOVV4l9B8/JZB1nbcGeSknA3p9xb76w/USjLsAiaiOYw0CEDk0l8AgRAgnymP2czpf
         nC1iJKE1pO4MxtyCJR0Cwdnm00jbqqnjOufkDxmiN660xei3pI308QqIdks26rjnA4rb
         iJQaKV8sObv79Tzgq0iIMR6JXobs3drVam2pwvQdvTAtyl6BCMbb+6w9PWHZXUg4jP52
         CNXIIyXeqCBYAjlXxo/TfOfCocHZmVGsOQq2tIh4jlW6Vi5tgAwMDn19jGYZ5JcDFZGv
         jc1eb16z+I4h9KyEfLg1UvV/WwgMvvMTd/Jo2jlUz0wcb9bIPsmk6mhFK9T2CUqvFHqz
         EsTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jARH8dan;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m8si612797ili.2.2020.03.28.01.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 01:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jARH8dan;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id 142so5830285pgf.11
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 01:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZAs4BPZ3Qw1Np45GFH8BfmZtQrOniDj3OoQBB06x/d0=;
        b=jARH8danxgUOnpVzS1idpa8E544h1zfXT4ubePC/7MFPuV1hvlW5UaM53lLnUiHBW3
         F4mafoVDEVvNuNyL31BDfb+wY99SjeWOY73uIxAVxFswcrrVSC4HIo0ebR+FNpL74SV7
         0jA1feBokLgx0jAzLuGbp3do83oXTzB5qp9JMeGeOy8I6C68Ejf1bytRH5mZBEdOd212
         k7JRYQ9mXss2zXRjVcm4SAfhdlS5TrO2XJKk/QHCWhntxpD8ZRBC3AWufMu43aX9pKtf
         RVauJDaSQeNeCwN5+D8HPkQcK+Ws1i0nNHIYBbM8GYWWh32HveEgQ0MQRBO7f1xYDZlp
         cAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZAs4BPZ3Qw1Np45GFH8BfmZtQrOniDj3OoQBB06x/d0=;
        b=GNTEn00R0p2OY4s1eDhKikS+KEz5Gvmr9N0TjJQfNO6CJBwFBvz9vcwVkFIOGsoOer
         ZNQ8le8fM1Rqg012F0PpdKME0GRBgyJAjP7fDzhn+AaxvZNHPmlxL9NH47g01WAK0RM8
         i7WqFuMnC+UZbtDplB1z6/4ZPK35dbTL3p/f0CaBKMjltJjrrdY5rXPM338QSUEm/TYi
         L1k2eHq+g1faEZj0dnZ3maSsCXpUvlz+VVsGbXdDTQvoaagWg6bx8g+GK/LUz2ogixKZ
         9XKUHYS68j+cD2luybelW/9JS9BP8EqD8TeA581VrEgPOj/LuerQ63vrRC/8ZwgD536o
         3BgA==
X-Gm-Message-State: ANhLgQ3Ma67l4jYY87pQUk4aex2l+Gp4r//ARFoC6iykrFw3vaq4i2MO
	lfcjdmMVq3Ekk8hMKMarHrZksjYylcrI8w==
X-Received: by 2002:a65:62c7:: with SMTP id m7mr3312949pgv.380.1585382764935;
        Sat, 28 Mar 2020 01:06:04 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.239.176])
        by smtp.googlemail.com with ESMTPSA id c207sm5671124pfb.47.2020.03.28.01.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Mar 2020 01:06:04 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 3/3] staging: qlge: Properly indent a multiline comment
Date: Sat, 28 Mar 2020 13:32:54 +0530
Message-Id: <20200328080254.6692-4-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200328080254.6692-1-debsoumyajit100@gmail.com>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>

Move the end of multiline comment "*/" to the next line to improve code
readability and to adhere to the Linux Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index fa697fe4fb77..008dd31b9e48 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3251,7 +3251,8 @@ static void ql_set_irq_mask(struct ql_adapter *qdev, struct intr_context *ctx)
 		 */
 		ctx->irq_mask = (1 << qdev->rx_ring[vect].cq_id);
 		/* Add the TX ring(s) serviced by this vector
-		 * to the mask. */
+		 * to the mask.
+		 */
 		for (j = 0; j < tx_rings_per_vector; j++) {
 			ctx->irq_mask |=
 			(1 << qdev->rx_ring[qdev->rss_ring_count +
-- 
2.17.1


