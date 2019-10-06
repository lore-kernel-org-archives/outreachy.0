X-GM-THRID: 6744795615076548608
X-Received: by 2002:aca:75cd:: with SMTP id q196mr15979631oic.88.1570395104460;
        Sun, 06 Oct 2019 13:51:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:32a4:: with SMTP id u33ls1917696otb.16.gmail; Sun, 06
 Oct 2019 13:51:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+btGzmSjhn9PupGuyeJgbVMlz3aiR7YVZI4p9FEq6O3m4vjzG+/M/VLCEq/BB9lDpJ1XL
X-Received: by 2002:a9d:39c2:: with SMTP id y60mr1272299otb.11.1570395103647;
        Sun, 06 Oct 2019 13:51:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570395103; cv=none;
        d=google.com; s=arc-20160816;
        b=z39XufnnYGvIDoU53syKaEcgANxosa8cJpH3hR9U2g3HX3fyh076ZQMOTrrIkovLGE
         XPJu2EpBSqgK6K/8hE01pGuf3PfQG3rnu9etCuBuOhLRmNrjbQ+LDwX8TuZt9iqXwNQ9
         C+SnUEYA+NV9h518CFTazvzXQwXETk7dT+5ab52ZsUe+TOxgTdS9GfK3F2XuWHXsg6H7
         p57N2lz9y01nAfVr54I9Wdv1GOJr56jU2MXfr/twV9Dlg3z85za4YizJ0MZMsj+UUoxs
         loB47BA1y5bDuT6WdpzRnKgI95f5US1f5PEBrV3pC+DbGtmrqGt/0AWXeHachBDY2jGZ
         p+Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QkysCBSB9fGqKPV8g/1PIAYcEKj+5HCVtkPSug6S7x4=;
        b=ldt7t/9CUmdzlcbV+WHodbbN2WlYu7dxokqIusaJKeb4CsJxOmS84GEm4qmuSMFmp5
         8bIB9pQxy9jeSRqsuLk2qzrPRqpWJxNs6IVONfUJGhAh59sxVPzYDx6uJal/qktz9cXv
         Cw85A4FpU7Atnp0QO0sMlMf2W4dirJq30ap6RA7NU+uJwd+0+AXrjWn2Gq9V/h9YvkMy
         AB1KzfxwMO+NYWNGH70mjxMbqoXNpDhJ0FN6kPSq2rlKiNdYof8P9aWNMpX3vaGF6x8k
         CfljVQwmk6Rx3CJiuEOBPfqCmXoK0VcO0bsG5dWalEjGyAL6hbdepsiuYB+EILhDvawW
         yYGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOcOfoux;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a22si613289otf.3.2019.10.06.13.51.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 13:51:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOcOfoux;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id e15so1519500qtr.4
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 13:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QkysCBSB9fGqKPV8g/1PIAYcEKj+5HCVtkPSug6S7x4=;
        b=cOcOfoux4Df7/s9EkUQGrbPexSBOt3WXuQ6fU4InY9ASkZfOT1H4oszYBQao6riw/k
         VXTm3ZxkLndtrobWYJ6Wpm2gLJtAPc+YeDdEU+Vzea9fblEzy8iPj25BZtesJ3Ym0iYU
         oelu7zpxaomQ0gRsFoW7JhZbb+sLgJgpfMykiu1tRPDtIs9bb482IsrozXiDSKZFdzNc
         0llDAebPCIEeb6kNpWPRnSR8KRk14Vb+7cNCMLhJULK+PfNS6LGwgvgOul0UqBTL/nKs
         UX1himK/rZtQPOMeIbSr56wvOpIUGvy737VYgOB+puIXTKwoHvSUNXoso2N3zdTWPaID
         qanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QkysCBSB9fGqKPV8g/1PIAYcEKj+5HCVtkPSug6S7x4=;
        b=HFJTCKjPGqhT8CQ6QKbKf3WH7Ct9ePRTeiEc1x5c6Wy1DArTS/zT4N5CcUrhtUbBTF
         c5I25TW2Ldw9dqHSii7jf0uormiAa2MVNvGp7QBlTlODONd83ByxpCBoC/EbPEcMZalU
         5SACXkrG8rCM4Xso3rIxczdAysEW3+xPizS/OeUsclW3Mrm2y4e+0SL9dqbezmFipQoT
         HNlMarod0oRr0yMvOpp08D//+a/e/6ZrsXr43wfBuix+CCQp4IIs+mXllhMY4IVmFqfr
         EgvUuGa38xus80a1rJwUm2QRlo8QSVvvPGo+ZvPj7PbH8p98d0tCrUnTda1M9K/w/gmv
         oSpA==
X-Gm-Message-State: APjAAAWK5wqXAVNCepSwXOwfGmxMjF0lbAPm5P1IxLeC+VyMa5Zq/yXY
	crhDD8I6cKwtyGn1zGTsvfbv1/jDFDomiA==
X-Received: by 2002:aed:2448:: with SMTP id s8mr27213725qtc.173.1570395102993;
        Sun, 06 Oct 2019 13:51:42 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id a36sm6949492qtk.21.2019.10.06.13.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 13:51:42 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: rtl8712: align arguments with open parenthesis
Date: Sun,  6 Oct 2019 17:51:35 -0300
Message-Id: <20191006205135.11791-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 70a4dcd4a1e5..808f21c5767a 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -61,7 +61,7 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 
 /*free os related resource in struct recv_buf*/
 int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
-			     struct recv_buf *precvbuf)
+				   struct recv_buf *precvbuf)
 {
 	if (precvbuf->pskb)
 		dev_kfree_skb_any(precvbuf->pskb);
-- 
2.20.1


