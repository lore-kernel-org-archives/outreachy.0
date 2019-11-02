X-GM-THRID: 6754760383787958272
X-Received: by 2002:a05:6000:1008:: with SMTP id a8mr15882977wrx.60.1572715208009;
        Sat, 02 Nov 2019 10:20:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5512:: with SMTP id b18ls2002500wrv.16.gmail; Sat, 02
 Nov 2019 10:20:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyWIs0r419Zgxxo1i+J6m0bkZAUNdcbPvQlUSPlA1dDCJioDprghRVpn+rcMvheKCSCmHPQ
X-Received: by 2002:adf:9185:: with SMTP id 5mr16826043wri.389.1572715206872;
        Sat, 02 Nov 2019 10:20:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572715206; cv=none;
        d=google.com; s=arc-20160816;
        b=vxmNlKQZX6plQ7uZn2bvKkLGi+E4+X3gZrheooLBpkos2eQnQYIlBJOXqO3x+F77xN
         q4rd1HuK9gI5I9wSdqR4dx8GZ7cn7IKiDToNyyVoQ2VS531cssbcG3l7G+JHlj2omy8u
         pzrPbleaCH2da5MedD198Rvh6Els/3pTsH+yCga+TpIAJxJW5C41GQiAyssoMP83NJ2F
         W51ns81AV9pHMA07rEBjJkAfGAFkebPQP/+5JB9jLvhIEWk4xg11l+8RcnbY8xqRcLuG
         DLaiT3zuXxTERSJaYhxfYbQ1IoBhNDj+nXlMsxlKOwy8GNdscsXUgyZoqnwYa6oTvrcF
         0X3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=73xsCJrCBga/qtyHqXYQW2cwHZFXOa/8X2wvDsMm9aY=;
        b=YYZ04hGQC0gdhtL2IIQcYBqYKsHmVNSZO3fAGvzrcQejFGymljpbia4ifrGxUpXsZz
         q2FoxFopTC9sO4aFGaUiBLxA6+EE9hYLXLYrYUmcxjWXSN2hE+rbvZU9hc5570GtCTqc
         2nZt9XUVIBgRr2cgIp8MgPXzAbdj3Jwr6Tp3ziqFsEuKI6mN4EoFtUPG5R4Iyn3NcUJ7
         P3gdGbDR7VFAOlnWdxMy5toRGbZND4h3Bh/0YSCCKjUt61+f/jsviWTYArG1QA/a/BeR
         /+zFg+51QPy1lKsYa20yTOX9N9bvaY7vcbB927mgS32EKLHZQp5t1aLfPwA4srfat3m5
         /hCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="piLEv6m/";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q73si701972wme.1.2019.11.02.10.20.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 10:20:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="piLEv6m/";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id v9so12695074wrq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Nov 2019 10:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=73xsCJrCBga/qtyHqXYQW2cwHZFXOa/8X2wvDsMm9aY=;
        b=piLEv6m/l2WcR5mcPcItNWoWf2F8riYQHCzXFecj+rt1PKwYlrupZcAdCQGt3yvhwM
         z8UIoaiUlEXA7/dwfbibEW0tL3Urr9lUahGtvtz41bm5qAVKIda8aIRpREdjRPxhl9Zs
         3C3Tz5J3JgW6mrDLFIpd5l/szG/ve9pFhuVQwWVwUhvOn7DWrb+TiOpKQK194FZbvq9n
         m4k0yIky0J+Sm4rIlJwWUyPxiXJrQB8+r4oeLbtcS9wOX1MiHGPGj8aVBxrMijC9cGWv
         zca3N/pfWyMNCuZ/izru5zGU2b8fxbp/IOpE8j2uFJj9z226Lukc3Dw2JItSW9GZKPUs
         ITug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=73xsCJrCBga/qtyHqXYQW2cwHZFXOa/8X2wvDsMm9aY=;
        b=C3nbIf96/uCTxKKOe57Sjj3HxsRMwvXapzfTyw1K/nMFPK23Mk2Of4Ne8W+HmWTgcy
         d1s7x95dTiLtNboFJJTRIPvLBGKVYwbKxzT/qEhNn5pj/ehjt5uTLL/2eV6qGOgT3whN
         NdTrgCqrZAcXY3+BwWz1j5yk146S3onWZOow4dkCcuD2lV3BgWtjNOJPX5kHz2d1TY+g
         VzDUFuPMbOpuFFXNsgyl18H/PZrz4RTXyZSJ5noKzvxSEUkzNqHkl/70KTcSV0pCCpyW
         5e8OReRDfeqSyPSD2D1o5xRbSTs0dKk0KbV8xSywkqw1iwFtruMT1xppA2BUdGVaShBj
         L7eg==
X-Gm-Message-State: APjAAAU1DMKr1k7MuMKZIJadZTHodRJWks3aBoal01jPjqjSaMk17t9h
	bVXmMpLb37xWpdtWm5OPmFoyqCB1kQJK
X-Received: by 2002:adf:f40a:: with SMTP id g10mr15622471wro.228.1572715206270;
        Sat, 02 Nov 2019 10:20:06 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id r3sm23504042wre.29.2019.11.02.10.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 10:20:05 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	julia.lawall@lip6.fr,
	Boqun.Feng@microsoft.com,
	jerome.pouiller@silabs.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2 1/2] staging: wfx: fix warning of using plain integer
Date: Sat,  2 Nov 2019 17:19:49 +0000
Message-Id: <20191102171950.24950-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191102171950.24950-1-jbi.octave@gmail.com>
References: <20191102171950.24950-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix warning of using plain integer as NULL pointer.
Issue reported by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.21.0


