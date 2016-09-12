X-GM-THRID: 6329525827955326976
X-Received: by 10.66.19.167 with SMTP id g7mr2970693pae.46.1473707572881;
        Mon, 12 Sep 2016 12:12:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls12249620otc.1.gmail; Mon, 12 Sep
 2016 12:12:52 -0700 (PDT)
X-Received: by 10.13.204.87 with SMTP id o84mr16511526ywd.37.1473707572468;
        Mon, 12 Sep 2016 12:12:52 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h124si2622288pfe.0.2016.09.12.12.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 12:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so8479666pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 12:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=X5zsLQY0ZxkPgpPtdD3uRYdzmDy9aRKpwXEDYoTAvcA=;
        b=onHj+ur5AQuaSbKSLo3ZiMXT4K+XaBVklMy1oxpyR3KkDK37DMWaR1m0SnrB9Bs17d
         mUmCyZPVBlsY5hvJTd/FfWAxUS1xmDjZuXi5VXfkb6a8h74mmqetFs2Xo0+pieV3qFEb
         8VDH8e1tl7MUszaxxoe3M8LEBoUwLEvwagywND5LZOKWRh/lFoFrdm4iUygS9G1vKR2r
         TtF2K1XVrwh2JDUQuiDv2pnvfJxT5eGmwgbC5++3iAxQGVXSJhbr7m5dB8SC67AjKiw+
         DLp7vVDxK+e1stm64JxpMTwjGZvsMdTAo7XoStA1wP/oZatsjrWW+kaBiCLFJS0hp9W+
         J58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=X5zsLQY0ZxkPgpPtdD3uRYdzmDy9aRKpwXEDYoTAvcA=;
        b=QF3MC+dX1YxLPh0JrMHJUoZZbTIx/1Kl9nDDamOuKgng9Hm2QSjNllA2bvAjHDJJ3P
         j+1DCi5Mxc1ab163nX1SyDYYtd5posDv2I1E/e1Gy3fHPy+W94zKO9KmNIu1W00dfuKM
         5jMsfihCqMWG53t4NcRxlHREIHfNkpJPcPsKr92NPOeI+UCbzwf/sCu/qdeLXJmSZlPm
         LhxFizfjPIYUhkN5oKbTZ0AfDa9qx95CF3duhysoU1KWbc8H//entiIIaAYvuFxmwpVb
         RnENX6YVC33Ls48z2tVju3IBWhFS061FCYMBBmCXovr/oRKmMbMjFgULfiTFE4ATu0IC
         MI3w==
X-Gm-Message-State: AE9vXwPyUIgbZn63UStcBdR+X/AX7Q6HdgUvPrFBbM+U/5RQIxYjk3YYD9wmHuefPsFigQ==
X-Received: by 10.98.142.1 with SMTP id k1mr36032376pfe.20.1473707568487;
        Mon, 12 Sep 2016 12:12:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id t21sm26246556pfa.71.2016.09.12.12.12.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Sep 2016 12:12:47 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: liodot@gmail.com,
	charrer@alacritech.com,
	gregkh@linuxfoundation.org,
	amarjargal.gundjalam@gmail.com,
	kevin.m.wern@gmail.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: slicoss: add new line after struct declaration
Date: Tue, 13 Sep 2016 00:42:07 +0530
Message-Id: <20160912191207.14071-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

checkpatch generates a warning for no blank line after struct
declaration. Inserted a new line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/slicoss/slic.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/slicoss/slic.h b/drivers/staging/slicoss/slic.h
index fe1d2ce..6d28539 100644
--- a/drivers/staging/slicoss/slic.h
+++ b/drivers/staging/slicoss/slic.h
@@ -92,6 +92,7 @@ struct slic_rcvbuf_info {
 	u32     lasttime;
 	u32     lastid;
 };
+
 /*
  * SLIC Handle structure.  Used to restrict handle values to
  * 32 bits by using an index rather than an address.
-- 
2.9.2


