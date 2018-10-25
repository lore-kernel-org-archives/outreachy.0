X-GM-THRID: 6616189865324183552
X-Received: by 2002:a50:a90a:: with SMTP id l10-v6mr559155edc.8.1540485191514;
        Thu, 25 Oct 2018 09:33:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b7db:: with SMTP id i27-v6ls2636488ede.7.gmail; Thu, 25
 Oct 2018 09:33:10 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dRXqagQ9ZuYS4N9KyJHj64qGUzsx04Z5ucuxGyUDULLiLmlRnHiCndAItDTig3eO0ogDm6
X-Received: by 2002:aa7:d152:: with SMTP id r18-v6mr560877edo.2.1540485190472;
        Thu, 25 Oct 2018 09:33:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540485190; cv=none;
        d=google.com; s=arc-20160816;
        b=r2+ZoRmvyRFi7Fpa5Sz508PqTA+SegUaOSL9aeruXs2sQ77VJ4AMdgbyjlk/7s86fD
         mEqiGD43mz3JesVBtcd4Ep9T3uR2yLtzoqya0dFVsTrXQ+0KC2YxbonD7xyWz0gFEiGq
         37eKJRN1JDf7Ht09+fXYuBrzjZyS+uhMFmN66Jl2r1BZwwv+yAZ+CM2kkepl7VEAC7I7
         Osza8rKyb4TiKxND49EwerZIKR/s2OSIjVB3/erTnteaSpEVUbW50GMGQDRGCoOyZkO3
         4KFTMlSN7BU6Jlsrg4Y1nX19+pY8B4ERunwRHUdloziSl2DPGSHfmEQBKEpMhocQlbUK
         T7wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GQdeBc+fUsD9Skqh/MUFbXxA8OCMgTl5cSQaXX2s/mQ=;
        b=ZmmK3OIwtY4y/vYZMIuo8Qo6VrzI1bLIfRwQ98VSHGLpdTtGd/TpgCqC2QEPiIP//0
         G5ntGxTissHH4K6ix1gZMjkqSaKfnpx16mE4QwOsLsjhr/NXnADPzkbXggap4XuujJYA
         cvVXGEPQbf6qQNCEAopTcb3sZG5JrRi5FDXsFPN8GAF8G/Sngo50ke5aLWiHM1EzGbfy
         +5Ks2jmkwcuzI8ZfXmGsvR4eErnemuHS99p1vR8VrbA+Xjxf9dsz+MWeFeDEigFq9TDc
         0UJtQ2dZ89kdZjPJVkoZUw74xaqx1EDECWFcBy1r7pwia9QzfCa2OdYxIXkKuDtiN+Nk
         yeLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OnykjCec;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id g31-v6si305573edc.1.2018.10.25.09.33.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 09:33:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OnykjCec;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32b.google.com with SMTP id i8-v6so2176903wmg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 09:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GQdeBc+fUsD9Skqh/MUFbXxA8OCMgTl5cSQaXX2s/mQ=;
        b=OnykjCecm6+kbWtbFwl1K9CPrsE5LMK8fJkRbAmpgNN/BkabJc8e8N+y3ZzoVTxBwU
         YkBLNR6ltIU4VlF20+FEfBPt5YSzqnH1cZ5VGznkhs7clS53KUp2qyVzomWLbPVuPlym
         GmYruJvQy9U4vr5jqVQZ44V8g4/GSe9SlRfEpyIrrFO8Z/4qhqFG26U9fs9JZeu2cbhY
         7arGho77DlfhXQPprN5hrdlW6ReSyJ+VnQ1Fh6tX474uYEqExu4jjh4IU/3/jD8QZakj
         TD8JP91l/GX+hB5jm1FxFw24YXlJB4EvUkTQKNnTuIu9eqtg1e4QtCLUtwepwXDrrSP7
         UfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GQdeBc+fUsD9Skqh/MUFbXxA8OCMgTl5cSQaXX2s/mQ=;
        b=fRgTsEbBoDPJeqC3/2iUbQG/LAJlKez0nF/PUGaMdgNxESPjjHFxyy78B/FJlfaDdR
         SPeoczBuyX6C19JCdkCq+aM3tORILbJtPeekRV72nxdeaA1ZUZd8P+FrYWFTUjqjhTLc
         F7GCIWzn4lQgKCQanKz2nwuZZWmBIoAWVEOY6pJOCYVf90nAVkJz3HL72ihmTGvwVfzQ
         hekwy4xdqtywedXTCJyxTOm9nABOPClZqPlI1Jk6KDrKNmcpj5/wnGekwUC3J+cOq0b9
         SohetudgxoBEpKgvseGZLBFfhE4POiFctgAazlldgx074G5FlYlSMFYtJQc/gi/Tv/OC
         /5dg==
X-Gm-Message-State: AGRZ1gIJPWdwm94yAuZKJLdpleuQwwqGNnevxoiCEukx6DvjGOqY5m4a
	tUjAWDTyuHzTF5jQuyLC7yGTkKq8oZo=
X-Received: by 2002:a1c:f417:: with SMTP id z23-v6mr2676814wma.80.1540485189651;
        Thu, 25 Oct 2018 09:33:09 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id 125-v6sm2617375wmm.25.2018.10.25.09.33.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 09:33:09 -0700 (PDT)
Date: Thu, 25 Oct 2018 17:33:06 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCHv2] Staging: rts5208: Capitalise preprocessor variable names
Message-ID: <20181025163303.GA6666@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Capitalise header preprocesser variable names (and all
occurences) to remove checkpatch camelcase warnings.

v2: Left some camel-case uses (namely xD) - they may refer to
xD picture cards, as suggested by Julia Lawall <julia....@lip6.fr>

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/xd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index bf21bf0d1616..57b94129b26f 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -90,7 +90,7 @@
 #define	NO_OFFSET			0x0
 #define	WITH_OFFSET			0x1
 
-#define	Sect_Per_Page			4
+#define	SECT_PER_PAGE			4
 #define	XD_ADDR_MODE_2C			XD_ADDR_MODE_2A
 
 #define ZONE0_BAD_BLOCK			23
-- 
2.19.1


