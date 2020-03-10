X-GM-THRID: 6802694026822680576
X-Received: by 2002:a2e:8090:: with SMTP id i16mr132366ljg.4.1583875628518;
        Tue, 10 Mar 2020 14:27:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls2024537lfe.3.gmail; Tue, 10
 Mar 2020 14:27:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtdiLRR3aRTOkryMcJG+v7eCl67TGu5/vgbzlN1kJit78hQFl7SO5b1tEDC+Zax1wDiGisa
X-Received: by 2002:a19:ec13:: with SMTP id b19mr57143lfa.75.1583875626911;
        Tue, 10 Mar 2020 14:27:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583875626; cv=none;
        d=google.com; s=arc-20160816;
        b=LfK/+V3HP8j9ti2YchhGQ+5eOfT3rG3/YP+5RfiUN8i23Q084Z9OcZ/slzm5PMRxov
         mJB04oJse9c/cFVYV6zDmYRI09+XFe7P90Lhf4OeFdB8QbMDXa25E7CSB8wbSs336+/P
         wmk6sXAN4H0BXRWGV/5wWq2YSbSDBDadBGuJBIu0jqNVsLu+kCzx917mxlvDaDygWCdP
         ScwXYXWKD6xToytm+cZ6cf8nwE+RQSiDsy+QaCV6gjEp6oBH9WFFNnHn4O7TBaQRGLE1
         3vtMF9HC3xudUXYL4OUwjYZ2GE96Vn1Kl+JftUZvNreAiP6ECStRkOq8u+aTV2WQl3CM
         WSBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=vUPxIpoyNMCbkXuLFKVZHddGe6D7cCFjI8r6+jGqf5A=;
        b=QvW0LT+DTT3rxauKL5xg47YvtKuB/AE5RWLKgNJQyjiDoSaPtv7rya6n/zHxVGvpNT
         XzpmRsKkJUmiyUOgMI+PgEkYi9ihzmA0asil54KXUrT0hg46PNm18kMat+Y87cpIrTD+
         aE6CdlGRMvqb9pmqee2jC6iP+7madyoZW2J6dyzmrdykwOTS1QCKTeoq57q8ckbu+QLN
         vPaQzx8YUF+T1KeFt2vWsosHg3/4W56ezsUgTlwh5GCdpV63NNQlNwcrraFl+qMAE6f2
         oZRAPO6ic1ep9n25QmYbCKuaF/JYY0kCGPhqUTyi5sftO8VUiZGxgwGkpQVu1kVbDoAP
         u92g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=WdjkiLZN;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w6si5731lfa.1.2020.03.10.14.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=WdjkiLZN;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id l18so7677525wru.11
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 14:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id;
        bh=vUPxIpoyNMCbkXuLFKVZHddGe6D7cCFjI8r6+jGqf5A=;
        b=WdjkiLZN7+U726Ap+B0bPdUJ9diwuXM3ke5D2YOeT/6EHmdsldXhOcSg7R1SaJrrRv
         SF2OSoKY8MQM4+LXfTVe2BI7GzH4HknOf0Ke6jBGxEXz9Tdhc5ouoCOgNzVWNrvaO3gl
         2hhBh3RmS960eWU5pbkucqA8c5ACV8lfR4a5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=vUPxIpoyNMCbkXuLFKVZHddGe6D7cCFjI8r6+jGqf5A=;
        b=K0NAMvWNV5mcWRKlg707glu5wzV/L1eserkm3N9l4jg7Tp/VqZ4KF4GUqe/5ozlLR2
         2v3ji3R3CMftuEW+XXa6I5y4qQVCnig5pswORP83cjLpXmR8NoMw90/aHY64jrD5koAT
         4Z0bkQlGFGvDPxk45SKOFWuZzqdFm2Zdam+Rq5CPibQN3GSUG/sUZ+WYVQSKjSwcslcV
         F+4G2mUrwJdGkxbtUXfMo3dpI4H9ZNt4+BtDkpGBhhU9TtP1yac7pI4hz1k+sUBA3Pnz
         6onW56a9uxFk424pKEgck2FA4CRBnvqvvl2rSqiJpA75jM9MACKCZ7quDHx0+tVGq4+k
         iixw==
X-Gm-Message-State: ANhLgQ2lAynYhDKAE3NL0EVoDkdbD3TIhWccTJes1aSPSFORdPtSGEya
	jrIfXqvvQSiJlN9YJUFKRJS2yUNibBQaVA==
X-Received: by 2002:adf:a4c4:: with SMTP id h4mr28971620wrb.112.1583875626005;
        Tue, 10 Mar 2020 14:27:06 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id w15sm3499113wrm.9.2020.03.10.14.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 14:27:05 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8192u: r8192U_wx: use netdev_warn() instead of printk()
Date: Tue, 10 Mar 2020 22:26:58 +0100
Message-Id: <20200310212658.4075-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use netdev_warn() instead, which is a message printing
function for network devices, defined in include/linux/netdevice.h.
Issue found by checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
Changes since v1:
 - Replace message printing function pr_warn with network devices
   specific, netdev_warn()

 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 0118edb0b9ab..58c1a8da7a8d 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				hwkey);                 /* KeyContent */
 
 		} else {
-			printk("wrong type in WEP, not WEP40 and WEP104\n");
+			netdev_warn("wrong type in WEP, not WEP40 and WEP104\n");
 		}
 
 	}
-- 
2.17.1


