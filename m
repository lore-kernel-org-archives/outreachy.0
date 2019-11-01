X-GM-THRID: 6754458583373447168
X-Received: by 2002:a63:a17:: with SMTP id 23mr3320539pgk.57.1572644949037;
        Fri, 01 Nov 2019 14:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8a0d:: with SMTP id w13ls2019027pjn.4.gmail; Fri, 01
 Nov 2019 14:49:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUb0qEbhwntxlNaD1YTsHjkbsMxenhIzxJi6rE/7paWrEuM3uMMj7uM5lcLvsDhRx/X38i
X-Received: by 2002:a17:90a:2ec3:: with SMTP id h3mr18390280pjs.131.1572644947703;
        Fri, 01 Nov 2019 14:49:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644947; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZinQmcv8IcvddwZ2HAMVfg+Inqu5j6YgUIIfxVMxkgYW6tAfLsuyHaC3n2ZDmYeuB
         jWFrc2+dipUphzr1tXNRKrDCIsDBygeguSUF9zAla2gMR0B0wtmKlxiBoB5JbIHUb+B6
         uWOR8x+11r8rl/ahf+v0eZZCtcMCsbt+8xM5788wrfDyJIafM4lZ+lYN2RQPtRv+AecO
         U4ZGK4UxiUx0WmYqSA19FEZiJVyA2cjd8dwqV6YvPWMzw6uOU7mZRYKXsy9qlOgqTdT8
         txqjiDggd2owApAHfrHHXCx5qy4679+zjkLiZVK0dBKpITqacnBT162lnYKhXx+Ajtrt
         djIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hZRXOfCkDmbQwzCISueAd+Ee+dZ/XgL8g6yvVaK0HEk=;
        b=wPGd3nY6xvIXeLeu7fTpyFs+5Fh5DTOWOuYK7ZVNrxdDHldRtVycYxWVx9BabM2OYb
         3a7kLb7V7uSYKW5j02PIuVOop8uaoxOjkVTAfkQE+ABJtRDjqnLamyy0jpE7bhzCbJ0I
         hy00OoGezh1CUBAxEzFhUvmbkwPLMMdxC78uA0kx6mj1RnXKO9cEMc9+Dt4xbcdPy5yL
         ksJzsfl/kzPmu15cmGXNfdi4YOR2WHBr0hZEx6Tz7tb5IqzoATiKbuehxoqYERY0xBH6
         aRuuo8+y/7I/d1LbczJHxRcoo+itBJjgaM/4P6g69zFk+EnefDPruVR41XzY57NNSKJi
         1e5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VtECGWAY;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id h13si521306pjb.0.2019.11.01.14.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VtECGWAY;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id q70so12054775qke.12
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hZRXOfCkDmbQwzCISueAd+Ee+dZ/XgL8g6yvVaK0HEk=;
        b=VtECGWAYmAgHh809vWPORt9NEntfwNpVsMgB0GsJLCUiDrG2fR7ttFlYizoeMWxrKa
         151etwuDqGi0fPOtVUtF3rwpc+3ZVN5ko3UALyVZ0eFlAytqKHSlmUvWPjzpGIjCvVTk
         LfQEtmq49mMblA3C1Qou3Zvc7w4/oup1yP+Rn443dOp1e3X/PKh4M6E1rpwNtoNYDP3o
         p9hJXg04jrqExuGZPGI1FPKMbQOgJQfGxo7zUjiWzBq2A72ONh6yN2+cCi7JxGBQudMd
         IgkXdgCDvsHfgtVPiRFBRTO9CBu0rD81aY8wDXpvOS9zxL39rlQpX65O+ZLz4335X04S
         CotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hZRXOfCkDmbQwzCISueAd+Ee+dZ/XgL8g6yvVaK0HEk=;
        b=FH6PBQ+6WRW//R07w42sP0OmkoJ1XeQv/Sp1MUFi+GSBr8raJ4gL2IRzUf4LDBu+VD
         j1w3try6LyFvjfX5hwB391cVOTPi0R/9JvWTd6RMEZm+7S/lKWPQn3ST4DUTkEXagHiB
         j9t+gmvh99KSNAkRVz+63HI/JGMSxPz+A144MoaBg83O50taXltgwPx7s6lo4GKOJ/DA
         VBPPCuf/J1LNdsTP9pxP9/LNHMaLCtBA+52eOT16ltUMGeJBS/FXj4LYEDg7r2auD5H4
         jSby2owSJEZxWG/V8eCtav9Wjq4bUwwvsRnJyZekERJRVEETi9Syp4TPLMiGWl7QBjQM
         JrCQ==
X-Gm-Message-State: APjAAAXq+KW1dHpZdZJMeIjyyZxWRQ+nY3S2xLd/NabcXsOAqO3KjecI
	3J3eZ3Nt59Y3I0AeCQ+9zrq0LqhrDao=
X-Received: by 2002:a37:490c:: with SMTP id w12mr2661454qka.101.1572644946513;
        Fri, 01 Nov 2019 14:49:06 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-84-14.wifi.ic.unicamp.br. [177.220.84.14])
        by smtp.gmail.com with ESMTPSA id w24sm5482300qta.44.2019.11.01.14.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:49:05 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v2 VKMS 2/2] drm/vkms: Changing a 'Todo' to a 'TODO' in code comment
Date: Fri,  1 Nov 2019 18:48:48 -0300
Message-Id: <20191101214848.7574-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
References: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changing the task introduction for the word 'TODO'. With the TODO word all
in uppercase, as is the standard, it's easier to find the tasks that have
to be done throughout the code.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/gpu/drm/vkms/vkms_composer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
index 88890ddfc4bd..4af2f19480f4 100644
--- a/drivers/gpu/drm/vkms/vkms_composer.c
+++ b/drivers/gpu/drm/vkms/vkms_composer.c
@@ -54,7 +54,7 @@ static uint32_t compute_crc(void *vaddr_out, struct vkms_composer *composer)
  * at vaddr_dst using buffer's metadata to locate the new values
  * from vaddr_src and their destination at vaddr_dst.
  *
- * Todo: Use the alpha value to blend vaddr_src with vaddr_dst
+ * TODO: Use the alpha value to blend vaddr_src with vaddr_dst
  *	 instead of overwriting it.
  */
 static void blend(void *vaddr_dst, void *vaddr_src,
-- 
2.20.1


