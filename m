X-GM-THRID: 6744777307658911744
X-Received: by 2002:ab0:42c5:: with SMTP id j63mr12713739uaj.5.1570390841128;
        Sun, 06 Oct 2019 12:40:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:66c1:: with SMTP id a184ls1506110vsc.8.gmail; Sun, 06
 Oct 2019 12:40:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxHFiEJSjm0LG8aiipRpaOBbkheRr2m8p2YpA96rK3UatUXYRc4WhKL//VPranu3vnBIs1k
X-Received: by 2002:a67:6810:: with SMTP id d16mr13314312vsc.206.1570390840046;
        Sun, 06 Oct 2019 12:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570390840; cv=none;
        d=google.com; s=arc-20160816;
        b=uH/tsf/JYUQLIqW9uWUXm4rt8ZYBkiybe+89VHuKxlkzBz28aUHS3/cDCCoq4jXuBz
         k/q1FV5Z3TkGLanjZuFXsbEwz2NOMSF5+alv2+TnCO35/jQteB8CAFbEiBAO9vxlj7RE
         Chj2OqLW1fiIiaN+GWWyaO8dz6XcBVP9L5fdoGahnm4zJUXzOTQZwLBIW69mpFx7qwYI
         sKZqaJ2FdntuGub6KYUo64EukU+ehDP5QDnuhpUujhD2QuehXul+e7dF2Owaq7AKoA3z
         +aY8Pc/lold6nRTCKsH2WEa7N0X/3MSnd9qj4Pac7g+I+nsEt8Oy4Fd4HhNL5QaAKfjs
         gHyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=tAvJBPPuJlaqIzmhwS7DOMxS9kFELAL1Kh1UTZJWTvw=;
        b=zkRE1r8PCy/Ofzl+CXQiKAdUwOhb4aWzDjGOAwBhbBy5CQMd/ENk78QdMnzrTn+iY1
         HdVYssKN3jCUkJdpF02LXQicMPQG5tNkbKbGveYOYC5i1E6poqfbE2t6hDhtSO+UC/Ro
         /3qTetgyTw4tM5vL6yF0qEtQX6Ad64HFOJUthcNb7U+Y92O1hcatCe5FXQAicfPGcM+O
         dD+owjM2PjCRdZH0MDHXuyKGesjCznH3FbmNxGlrHDgTNIa7IOTuadMBRqaweD+Ea1Re
         H59MCseoIlK1ILNMOgHGVMwlhq6OMpBVMeT7M3gwi8aQ5Tfq9USCkbwWDsPCrtSVf07s
         OyWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWuTmuNt;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id r72si1035102vke.5.2019.10.06.12.40.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 12:40:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aWuTmuNt;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id q203so10713731qke.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 12:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tAvJBPPuJlaqIzmhwS7DOMxS9kFELAL1Kh1UTZJWTvw=;
        b=aWuTmuNt/cwf8xULZEND+TalnK7/OAylSM+8h2yu5z428rgEIM0BsJ/0eOvXo9/aC/
         M7DGMXrK4yEVfLKfU3hMTawTOOpcqTok4rAViUDfa8ewzwkasBzShe7RK45nkfX58ixX
         4ZjRcqUV1UL9iOzVAhmB3Iqj+awIcRUD3Zoj1DnJGTyUNoMV6/qoBh9QdrT8itbitH7V
         +eTadj6u6bakQ2ntNHEJ6+9KfyTupIgrihmqvAnhbrfOfaMixsqwCkVoYZ5q2uR4N/c2
         Y/oelBZyYzlyBcLZroa0C7210RDoO0RVQh4LZMKX/AlKSBGjUliIDLLCl8ufRFK8qoFM
         25vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tAvJBPPuJlaqIzmhwS7DOMxS9kFELAL1Kh1UTZJWTvw=;
        b=SUiAxODV0kXcI8entdsdgMJGrAldr5hpRUEzKcwHVas3WL6PTl8kjeDV2E16zIlL0R
         9hI4nW3GF+qKM4tz+EfhapiPirYfkUK2NnVwSskpOwnVgU93T2D6vVjjHMqXYSML6h9p
         fR00TNm6qQ2IY0BmX9zCazn7NzZApr9CQBMjtd/UDDCLHE3pLYKohESBqU7Dr9Dj4bW0
         wHSF7La2wHcrG+oAtcN7utjdi9/KOv29Dit388r/0XfF6VS1k8Oo4EuY2Ucra3bCmQuP
         KgIMj66C5GHm33T2rSwOaIHn+D/k7whlPo8E6tBPhU4ycy75oiFJfWbqcbIO4QT1dwWA
         k0uQ==
X-Gm-Message-State: APjAAAXQiBYtb3u09iHCBLnna9p9BBk+WN9wGH8X6zb8kayNva62zUV8
	CDUWB9wZAHuOhg2b1bcqe3zHcAHNakwYlg==
X-Received: by 2002:a37:4ecb:: with SMTP id c194mr19976895qkb.126.1570390839361;
        Sun, 06 Oct 2019 12:40:39 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.terracota.local ([177.103.155.130])
        by smtp.gmail.com with ESMTPSA id l48sm7912450qtb.50.2019.10.06.12.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 12:40:38 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: vt6656: reorganize characters so the lines are under 80 ch
Date: Sun,  6 Oct 2019 16:40:30 -0300
Message-Id: <20191006194030.8854-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up warnings of "line over 80 characters"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index c7522841c8cf..922872b62994 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -112,11 +112,11 @@ static u32 vnt_get_rsvtime(struct vnt_private *priv, u8 pkt_type,
 				       frame_length, rate);
 
 	if (pkt_type == PK_TYPE_11B)
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, (u16)priv->top_cck_basic_rate);
+		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type, 14,
+					      (u16)priv->top_cck_basic_rate);
 	else
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, (u16)priv->top_ofdm_basic_rate);
+		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type, 14,
+					      (u16)priv->top_ofdm_basic_rate);
 
 	if (need_ack)
 		return data_time + priv->sifs + ack_time;
-- 
2.20.1


