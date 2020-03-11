X-GM-THRID: 6802879895263248384
X-Received: by 2002:a37:5f07:: with SMTP id t7mr1759884qkb.159.1583918938453;
        Wed, 11 Mar 2020 02:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6714:: with SMTP id b20ls765035qkc.5.gmail; Wed, 11 Mar
 2020 02:28:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsboKXYArbHQ3Dj2A/9EadBZI8inKH0OVx9vQoiSr4jg9VdRwsf+tp9gIHyUe2pgMunOq2/
X-Received: by 2002:a37:6556:: with SMTP id z83mr1819293qkb.381.1583918937111;
        Wed, 11 Mar 2020 02:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583918937; cv=none;
        d=google.com; s=arc-20160816;
        b=vZN7TnIR0MnqX+EJ6Q2KBJ1run38TPmHrd6NgYpRk4hagoZOSADvhiTlpFzI3KXmM8
         W3QB2TusNzDl4kQikpK44si6NfrDcD5auqN0K51wx4XIs2Jw25GMrt/7WPALDMrV2uYd
         8sEWLmWlO8DtBwJuw6ODokpXh4oPhm6LrNdXwCUh765P30UM+8KnnlWyRr9d2BqxFIoJ
         qIAWuaFHYyEAQ3GipbGxZgr9Qkm/cw7IdCkKjkXyXt3OPFLLNqUBa21nQRvKPmjWigU8
         wEWTdK0MCQU493+c+gBuMshy1gRc+Kegay2Ok56tm7isv5V9vScKM4b2QzWbFb9uzfmX
         0UXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=EjWaTK5c1J4sKLnO53FRxVjnmlwHw1GaEd7+1z185QA=;
        b=0xu7+4vwdGVs3oAPrmy66Vp0HEkX9xxpJSOGJ7yhoCOyI2a5ekjcT7v0tEi3cu1B3/
         +fJFr5AE0N9bX5SC2u9KDeAPqFa9RG3KQEpYfYKEzvi8Jh04RdldQSHBuN6ky/DXAPva
         x4j2kTjAcUMI/y0Ck9jvC7HvGEssgdT/AqsYREYK9ptHs9q+ZtHPGKgWwTPoZGW/FPnq
         Ub9Eq8g+/zTsOiiWbbJXopq3D13DHxFeGFz4Td9jnEoNG2nyWH5Xpzr+jLnT9bnVmaxG
         wAJ6mrJXrvkb/g+PemVlioiwG1PY1KY16idQ+PXKls5uk8wP1tSV+XSwKeWHkkdGcshF
         Q+sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrmcDnfp;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id y5si66207qkl.6.2020.03.11.02.28.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 02:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nrmcDnfp;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c144so960816pfb.10
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 02:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EjWaTK5c1J4sKLnO53FRxVjnmlwHw1GaEd7+1z185QA=;
        b=nrmcDnfpvj2VxI2sXEFc8O2BZB6uSSXdJNWx7Hd8bgobKQZNJulKuWFXKPD+tc7gk9
         8tToxIEv0dzIGzdjxVObhtpoFgUIVysjuYGdOwpKzx+XPxBm9qYgP1mR7t2NwBl54FIq
         /LTRWbHc7NEK/NgKwWtwfH4K+oL1WtlDplJ9Tjepu02wyCG29Nud77bFfW/RW8I+dj/A
         baIzfFlJX0RaYfsRJ7/6yKgx4++LZSJ4aHR3DMQ2xh39LlugWS1kSbMhoU9TPFEp6lzR
         WAHheT6bBhEPYUVqLEQ39CAKgtrS7MGCOoaHrszVIGVG5zdw/npw0qvJVc6XEexkOK7n
         KxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EjWaTK5c1J4sKLnO53FRxVjnmlwHw1GaEd7+1z185QA=;
        b=DH+YaP8kTqTYiluAQLkDXz9V03GE5nFYL9AzwGJOw7ftN2K7ZC9Zu6KO5uTx+Ahe5S
         ctg6XxN4hMF3O9Ulv2A7E25jNTAvZ7/BCTJLzc5dOGwQUJEhevc9G70HtyOxBAQs2YyK
         4pRJU2UjZ8bh+KxJ+dsCf32YQTbZJjoS0VkYRgaYI9ZTy/rWL0fKZpCtKBH8yTzjbXzo
         iesLPWl6C/RIYLUlWEPIW041EGtoBrn1vjVMyNwC0oN8NzLrO/ZRO6Mk0cw4Ugz8bM8X
         baU+NpODJ3yQoou8ReXPxkr+1IkKjn3SzXsLo8jc2MHOGshI6O/CNdO6SHuiSpk/RldE
         dcQw==
X-Gm-Message-State: ANhLgQ2+/wRy0hwSFzw8xjQLOr10c6e7YicBESce2rrf6L14fDNIJgcc
	gehhgnhd3IxXrLtCPisz9Ns=
X-Received: by 2002:a62:ed0b:: with SMTP id u11mr1990454pfh.46.1583918936180;
        Wed, 11 Mar 2020 02:28:56 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.84.144])
        by smtp.gmail.com with ESMTPSA id i6sm10565676pfe.62.2020.03.11.02.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 02:28:55 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c: remove an unneeded variable
Date: Wed, 11 Mar 2020 14:58:15 +0530
Message-Id: <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1583918265.git.payalskshirsagar1234@gmail.com>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com>

Remove unneeded temporary local variable, cleanup suggested by coccinelle.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index 592ca7edfc44..e15f9723b5c0 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -692,7 +692,6 @@ static int ql_set_pauseparam(struct net_device *netdev,
 			     struct ethtool_pauseparam *pause)
 {
 	struct ql_adapter *qdev = netdev_priv(netdev);
-	int status = 0;
 
 	if ((pause->rx_pause) && (pause->tx_pause))
 		qdev->link_config |= CFG_PAUSE_STD;
@@ -700,9 +699,7 @@ static int ql_set_pauseparam(struct net_device *netdev,
 		qdev->link_config &= ~CFG_PAUSE_STD;
 	else
 		return -EINVAL;
-
-	status = ql_mb_set_port_cfg(qdev);
-	return status;
+	return ql_mb_set_port_cfg(qdev);
 }
 
 static u32 ql_get_msglevel(struct net_device *ndev)
-- 
2.17.1


