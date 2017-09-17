X-GM-THRID: 6466839673682526208
X-Received: by 10.99.127.9 with SMTP id a9mr19909744pgd.81.1505678443876;
        Sun, 17 Sep 2017 13:00:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.17 with SMTP id p17ls7789781iod.36.gmail; Sun, 17 Sep
 2017 13:00:43 -0700 (PDT)
X-Received: by 10.99.112.29 with SMTP id l29mr19967536pgc.86.1505678443159;
        Sun, 17 Sep 2017 13:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505678443; cv=none;
        d=google.com; s=arc-20160816;
        b=ipIU0ORXr73BeyOdX+bEoLC5DccBljI3N+V3KtLUJr1cQZRX9dZYmPMb657Oyvq26I
         I3i0KAFLdweZDihqIY9t83hDwJ+TkopX4nBpoZV4vVsAahpybnYmL63evTlkbNxdJTMl
         F1dC7EkQrA34Xtd0ae/TXmnaizaqBzsKSBRkMQYL6STdsPMs1j/S+9+yGHvw/C6vwdmh
         qb/OVvcNfcpO17iVUPuIc0ONEoMHBq5x22p0Jq4zK04XFavBOt04cRAOFVRt80Mf1GFB
         6sBEGaekchpmZN3ZdXvAhTznUZat+jXLmQDScc0DHswxgqul48D6Q2V2a48XcRv1qoiC
         Dn0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=+29N4yUEzdhwvre/Gq49t0TfQ25cNnQH5Dr02MQ7sg4=;
        b=qZGmh5Y97DG5ag9EBGxuNrj1Tn6Wb5eTwAg91JgirJ1JrpdShRtZ/ygJp3GDUdfuXr
         RAufdBL+AFd9nen0PEq5UNwNfhnvSmlOAElk57q4tM2zRYnE3DDPqF59VqkV3Cq41yQ5
         5+S7K4L87in96ZOB/B0tzM3U36TPEJ/VTKQrqBsFixMc+VuHYtbUUY60tcw5gdk1PL9P
         Mpc7byEGau/vJt+xy6L5kbJCxoI97O86CzEINYmliPUebxXxLoErPni2QNdkzUu/PY0k
         H8ieMjSiRu3GsxW6tBxtA2n2Pmv7tpqxwfkJQplUfPFNVSrsutHWJtfYCX1Pp6OvkUXJ
         Z0OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=smNUls58;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id e63si493252pfm.12.2017.09.17.13.00.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 13:00:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=smNUls58;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id i23so3712576pfi.2
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Sep 2017 13:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+29N4yUEzdhwvre/Gq49t0TfQ25cNnQH5Dr02MQ7sg4=;
        b=smNUls58dXiqDy3w3haixVqJdv+zjd8mZkLzQuFILg4AJZ/MfxTZGdygK6+UT3cIZ9
         Gvrd0v4b6ArUxkE5xe8mpLeq5corSO2ON7iALhPi0oG6NKGdbI8cOrY2ViZfWR1kwH/H
         5ZSzK79gs+wpGnGMzMAM/DHWnsJ8DY1HGCjV73yj5nMUCLs0wC155v0ZHBfhiYnBuUr6
         5ygfyfFeYWk+cEvXx4acfi3/beS6+NHN5M5jPYta6rrkE+4DVyqdDScnHFBlCh3AdPiA
         St+4qmh5VNEJi+Cb/XxKq5YHJj9JwvHRoef1/Kru2hcrpy7JcyHQnBRNNXrcKwQrAZFL
         uLnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+29N4yUEzdhwvre/Gq49t0TfQ25cNnQH5Dr02MQ7sg4=;
        b=WaLEjyk9KF2O2QI/DMoZ6gbwtRgIGQDxC2uwwF0WyrERuqkxEYPIPiTYK5cynlvS5K
         DCK91WvPsB+9saPdHvfqS48gvZ5+fQ2qzG50xYozPLyryOpfDitT3S6tUtq44R54Pcrl
         u+Xj5xcuBfFeoErbKEP32RJYWMMnvCiYTKIbZeIvFtc10KKar6UC8L5iuK1hGuE1jBOE
         gJGaorgVUa/VlDkKplo3FFQnu0muNRBfIMEH+AA0PqaOs3T5rt/hwm/kzdR2yrkIrnhl
         0pqrG0A6l0VCiED5El2ZFKK92mnrhp3M7OrUPeN7FE3RIlFuFIfeXZy8ZJFwWkzJMNLe
         IFWA==
X-Gm-Message-State: AHPjjUgpw0VGBv64xe0HzHiZn/IKQ/lbWYB9oq9BczZcrGI5rQdW21bR
	kH+QG7j7CyHPlw==
X-Google-Smtp-Source: ADKCNb6MV3BIduWa3dP9jwkfWWLtBraEvzDfBLGKLSVpGh9+gj28gjtdKneJDaTsS72R3XjlqSrQEQ==
X-Received: by 10.98.79.23 with SMTP id d23mr30826028pfb.105.1505678442832;
        Sun, 17 Sep 2017 13:00:42 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id z1sm11125104pge.45.2017.09.17.13.00.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Sep 2017 13:00:42 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: speakup: remove NULL comparison
Date: Mon, 18 Sep 2017 01:30:35 +0530
Message-Id: <1505678435-30853-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This was done using cocccinelle script:
@@
identifier arg;
@@

-arg==NULL
+!arg

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 938a0aed..e215d05 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2096,7 +2096,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	u_char shift_info, offset;
 	int ret = 0;
 
-	if (synth == NULL)
+	if (!synth)
 		return 0;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
-- 
2.7.4


