X-GM-THRID: 6808508049420976128
X-Received: by 2002:aca:5d8a:: with SMTP id r132mr1783076oib.129.1585229311751;
        Thu, 26 Mar 2020 06:28:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls1869302otm.4.gmail; Thu, 26 Mar
 2020 06:28:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtqkuxdxlqttOxAqa/Jzw2Fu68lkmOInKt8Ttav1+lQXbpjD+XKl5/nffQFgAr3g5i5vlyA
X-Received: by 2002:a9d:ac5:: with SMTP id 63mr6382224otq.239.1585229310424;
        Thu, 26 Mar 2020 06:28:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585229310; cv=none;
        d=google.com; s=arc-20160816;
        b=qtj+uRSVj7O79I+8nFuI2s3zGOUZe5P5HBYuBWAzi5QIrTw/li9ByRduWb+EQAG2bm
         mHvu9Z0ApJIhtmCzL78ZgaW/BBFU9NgLnD/iXCPcg4kIHV6TeEhkVGF2AC3LfD5T3sMt
         +Heu53D6DJ4eHXGzYruf7CpuZ9T8WDq2fMILC8R2i91X2ugfGGr3CegoseOAqMXgTBMw
         KyCTJ9iOOxWF0GMFw6oAxGK0Hockdy/bXRWyocu7HOobexD/2f280BZh1tkuocRTF+Gv
         Ye5FoLkVt9t4AwEXK3ZtRJFDnG9IPGuYhKXOUrJ5JMtvKkVE+YxQZqpUU/gUz6uUJp2F
         G6IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=9VMBXAMCwL7qm/FeM98BMJBlfVZIr+3WQNOcgxok4qo=;
        b=wfgeN3r7rl56e8BzhVacDV3IMLNZ/byHVUKJsklXMebVfveCaQa5r5t/Yw16pGnTtu
         GX38wWFiEEQ+oiU4bozmuLGrQsWVS25jAmwJ1geJxYWOs3kIGEGKs3nBDTdcsXQDfxxw
         PPtKPtWN/Z8dxeTnzFbY6g9P25MEPgu+IAVeDN2llJaOvaZ4kfyhj3bcaXZpIdhA6iHT
         lQONQrRnFUKry4ni1QrPPiY5rSi19yDqKejIDWQjOEeBa/WRZqUjw8B57wv4Zppz4UyC
         3eYf3zbC3toLSEUVgvLrI3goKMtokMhipPZIH5bEVB7D5A0hMnO5Ff0Z5VXsAno4hOco
         1Ncg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OmakIFQf;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m19si207389otn.4.2020.03.26.06.28.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 06:28:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OmakIFQf;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id g18so2139811plq.0
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Mar 2020 06:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9VMBXAMCwL7qm/FeM98BMJBlfVZIr+3WQNOcgxok4qo=;
        b=OmakIFQfxCrQNfd8PVzCQSci2n6MNA7igCtPFOFRNTpd5G1xLmXqSri+roMLEcbbpm
         wcGG2/KlQKEL4Y4uNNLJ9eWMmVGrt2TL7ymP7PvOnI60QX9GEFMRaPOVOFWhQDi13/Ek
         fdk9qkgfiZMG5u8RdMKGWbP0emmHEwEWFlZbIVOFdt1Cmc8jQGZXdzgaC03xkNRcDRcU
         JzKun+rZD4iThoE1OhE406GpUQbLhZopSRbtmeZyZoXXT8YVa9207fBrayLquQHQ8KnD
         9X6na/wlphZyexHgf4kx9Lebgy9a6Z7jhWhXcbF6zFFh6y71Wllrq1tJcNbwSrYrFWSs
         l54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9VMBXAMCwL7qm/FeM98BMJBlfVZIr+3WQNOcgxok4qo=;
        b=l7n5Zg9cJznB0bj2etFospqpyVdtpzO/AtKH98wCTx7yb31yOzgljDndPrSjlPj6Wy
         8rgtZsiwP2XQRFMfJLLnLzd559zWALeizUHzKD6jZCBVZSP2Rx5SabO/psCqAMHKU6uK
         LCP1r7agrRA93EWU//NWbIJu6mzsFjFG+PxX3bR4R3I3X3Y7rvJ3WXRlLK8OvyiJ8Sd6
         BBvquI6VHen+f5xlnKRK7ozijhQEN/ah32PaPc21fQQK87SgI5ckc96iWZET82Rw/rFa
         pzrhZShNrRgVgkYu3Ux6/zwLMy5DrQbIMP3NIjDw0/Fq79ntFdQd3zJhYQL7ynNevwsX
         qMIg==
X-Gm-Message-State: ANhLgQ2CXHRVa0qkeorkYPTvjFtc2/wJ3cMLdY3nnXY+TFfwiHuke7lp
	i+LHYos0AxBE4zB/+wucfnwh6ku/PAQ=
X-Received: by 2002:a17:902:aa4c:: with SMTP id c12mr8508293plr.168.1585229309170;
        Thu, 26 Mar 2020 06:28:29 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([2405:205:1208:56c8:8124:5e4b:ea06:7595])
        by smtp.gmail.com with ESMTPSA id q19sm1672840pgn.93.2020.03.26.06.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 06:28:28 -0700 (PDT)
Date: Thu, 26 Mar 2020 18:58:23 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: hal: Remove NULL check before kfree
Message-ID: <20200326132823.GA18625@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

NULL check before kfree is unnecessary so remove it.

The following Coccinelle script was used to detect this:
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 1e8b61443408..cf68193a167f 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -480,10 +480,8 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 		precvpriv->precv_buf = NULL;
 	}
 
-	if (precvpriv->pallocated_recv_buf) {
-		kfree(precvpriv->pallocated_recv_buf);
-		precvpriv->pallocated_recv_buf = NULL;
-	}
+	kfree(precvpriv->pallocated_recv_buf);
+	precvpriv->pallocated_recv_buf = NULL;
 
 exit:
 	return res;
@@ -518,8 +516,6 @@ void rtl8723bs_free_recv_priv(struct adapter *padapter)
 		precvpriv->precv_buf = NULL;
 	}
 
-	if (precvpriv->pallocated_recv_buf) {
-		kfree(precvpriv->pallocated_recv_buf);
-		precvpriv->pallocated_recv_buf = NULL;
-	}
+	kfree(precvpriv->pallocated_recv_buf);
+	precvpriv->pallocated_recv_buf = NULL;
 }
-- 
2.17.1


