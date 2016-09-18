X-GM-THRID: 6331679421130342400
X-Received: by 10.129.103.69 with SMTP id b66mr1757402ywc.14.1474214067188;
        Sun, 18 Sep 2016 08:54:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.202 with SMTP id e68ls9534729ote.47.gmail; Sun, 18 Sep
 2016 08:54:26 -0700 (PDT)
X-Received: by 10.13.255.67 with SMTP id p64mr2985008ywf.137.1474214066786;
        Sun, 18 Sep 2016 08:54:26 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id e66si386047pfk.2.2016.09.18.08.54.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 08:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so3069917pfl.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 08:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sQtR7qQUQNo7Ecol0F/Ud1VUR71ziZhNsVtY1+rRxTs=;
        b=C1EnQQCXpHfPiHga47d1I2gk8RLHnBNjqkxdZcDiV3S7/Jp3ul/s7+E50xeBwHi68/
         9FPMUBqlk3tj2qAOLGSzJlutYrx1/Ve7ouOjkYW1kRm76o0+DUr9ahp8xRRklIoeMr1d
         UBgo2xHghzmlnshOBQQEHKcnQNWPqId8HcVbmLJMUMFnlgxPP7nZHfpEhTNNG2WgZi5o
         C/m2xkyNTVMBt6XFwcSOvQ11laF7c8mzamHt7vTG0O77oENpoWwsknEmiwnqve1cw0Ju
         nfwi/4Vx93XcdZe3/pSu5ADc3OZ3qkfaLQ6S7W6OA30E75NFlqpPEjrHsfh/GiaHlQhN
         bDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sQtR7qQUQNo7Ecol0F/Ud1VUR71ziZhNsVtY1+rRxTs=;
        b=PrXQKlOJING7aBVA5krkKqm4y01Dw34p4CyIsXFFXXZnvyOLosxITZPuWg367h/iU/
         Bq7tC0YrpdFJTbhQmBksAGUDP1p9+StqhxpQfM0CEX3g9Kx3wYUhmPSHWSbA7XwsiPSp
         9g3LNlRO6xRoCysBg6q6GJLnE6c0uM9e8lOJG99tE6SwpwX1DT6aWXuCtf0q3XuudN2+
         f/+50yjFLJrQIvl+3v7OLDnZgzJ9rtFCJUhUxfa2gR0U+Ymnt5qH+hOpWOqCc63k4xne
         R3SmKV/xs6y+spfA8bQiKzhAgl7HfX090x7qbtqMg5jtRTmsje/oxJbQEgNvDyELCbB8
         0p3g==
X-Gm-Message-State: AE9vXwOc93CztnPkK6uTCDsJoeKKAHEJI7AyhCOSS1gjweEk7QwTrSW1KQOnRpeQpWwHIQ==
X-Received: by 10.98.103.8 with SMTP id b8mr39282756pfc.122.1474214066419;
        Sun, 18 Sep 2016 08:54:26 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id z187sm65263759pfz.39.2016.09.18.08.54.23
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 08:54:26 -0700 (PDT)
Date: Sun, 18 Sep 2016 21:24:12 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, jsimmons@infradead.org
Subject: [PATCH v2] staging: lustre: lnet: klnds: socklnd: Remove unnecessary
 line continuations
Message-ID: <20160918155359.GA10028@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes checkpatch warning:

WARNING: Avoid unnecessary line continuations

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	changes in v2:
		- Make changes in patch
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index 1bdf962..c1c6f60 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -35,8 +35,8 @@ ksocknal_alloc_tx(int type, int size)
 		spin_lock(&ksocknal_data.ksnd_tx_lock);
 
 		if (!list_empty(&ksocknal_data.ksnd_idle_noop_txs)) {
-			tx = list_entry(ksocknal_data.ksnd_idle_noop_txs. \
-					    next, struct ksock_tx, tx_list);
+			tx = list_entry(ksocknal_data.ksnd_idle_noop_txs.next,
+					struct ksock_tx, tx_list);
 			LASSERT(tx->tx_desc_size == size);
 			list_del(&tx->tx_list);
 		}
-- 
1.9.1


