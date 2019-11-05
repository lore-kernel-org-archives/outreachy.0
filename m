X-GM-THRID: 6755642568101330944
X-Received: by 2002:a63:715d:: with SMTP id b29mr33029633pgn.369.1572920608953;
        Mon, 04 Nov 2019 18:23:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8302:: with SMTP id h2ls3908134pfe.9.gmail; Mon, 04 Nov
 2019 18:23:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqxcSmqeclzh6uVPB7URhTfCD3Doca9PP8D4AVRhjhq+OLd3r9KRQRBTgc31Rgj6Ibps4Qwi
X-Received: by 2002:a63:ae02:: with SMTP id q2mr34337244pgf.210.1572920607939;
        Mon, 04 Nov 2019 18:23:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572920607; cv=none;
        d=google.com; s=arc-20160816;
        b=QstdW4C9yZmXa9lCW8FB/LrrZ2JHlsmzbyTYWZhCJK+G+qotq5jj3Yid1hatta9/OR
         b3+IUwiEY1oCL2nTClbtlWcAcAmGVSn929gubCL4nHWRPjA8k/qcSKEn4d158Vl+eES3
         8Xy+AAR8tvk98n0KLZotoYYRBlKsAp1epakjHDiHOgar9Xh5azu0rhp4jU8UvvfPbhFW
         vac7z8zgSiK0BK4cHjz7R+LGMnna5xt8fOPtArNUOAi/A606pOn6TZK0QHveVAdnc4Jc
         5mjsD+f2vERyg7KW7VJDO93pGUkC2SjfTO7CbvVM/WwGnxpRxd+xV3RMDh/RNS7GFYOg
         D1+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=/XQPTUQdnIxsmo3yaVIj6Nhp7ayUgTHZ2bwUnPNImsM=;
        b=fNl3bMSV7FpIzcA2JFhi1TEZQEH+SoTm0dhcMZ1FGFP+vAZmWAqnmkpQm1mz06LSgN
         yszXIBFjgmfFgc4fztu/wovC5k+kBR6E5QoNEW1lmOjChi4t52AjDR11vPa4HoSTlUTX
         IUq6r5DiGSdUtl8wUFnm05qeumZY+aiY9z+4pTEq/ixW0vP7nB8MNU5C0lR1BtYtI6Oe
         yc61yVFoqp/WqxgdgYNwFYbR9GdIA9mXUvpIiorz+GJQwRhxaqS4XHvw8WxZ6RDMgszL
         +FQjdNdfzG5hG+/BEzeN+xawm2LW5wpvJIRzK8X/gU5Ko/6pk42fTTQqItSkQKGDQrX8
         cVRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jd10ct4X;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id c11si1037755pjn.3.2019.11.04.18.23.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 18:23:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jd10ct4X;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id j30so9416519pgn.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 18:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=/XQPTUQdnIxsmo3yaVIj6Nhp7ayUgTHZ2bwUnPNImsM=;
        b=Jd10ct4X+ROh8H/H8/GovQp0g/sOl6KugUoMq/WSwkvJ/f/QIezkkw31N/HGoIeJNL
         u8JY7bP2fskwM/NYY7xsXG/z+0lWi7vHPZ7TIgksLH7QzYIGi8VpD69aY9SQIfEGt36D
         xtJm1N/H3CazKJ2gaOz6SuRLF63o0PdX8zF9XHCaYtRcDYdlALP71yPxow6PTCtxTP7T
         uG3REIVtR4TTc5RUxcsTwuzl4MAGEOEz+c8V2BYLQao9nMsRtmx2azYwRYsjfjSbQir5
         +frsGoDVKSWGynfv9BGOEYXGy9NMR4njp862VMtTqOrPp96jmOaain5hDH2xhsAUD+F0
         mZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=/XQPTUQdnIxsmo3yaVIj6Nhp7ayUgTHZ2bwUnPNImsM=;
        b=ee3ciB8/56OAd1gj1HI6NUM5qbgOFCAiNJ8NVyb5hcu9G01bnmJja89VlTTK4G49P3
         9Vt4aqhfJd4jFilrf5OcDeYVu8AKMeVUOPR42zjXgZ6CuU38P1qE+hJyoFefT8ukJzcu
         nqOqpmtK8GyeMAV9NOdPJ2e171Rigs9h/Zp6gmYq/3JVmajPP4IeKK5xpi1UdCrNNV3y
         69xMgzb+L0CNK/EiQaUDQzKgBgjpD2DpGwYN2QTSxmaGm7sRWHFIbRHsYtwmsvNxYmJy
         VZjjvC3H+alWH8ErnQFf3ptjqlueSDV5HMiP5N6JwEDAxFOSOr0VPkkOE/Au2L0zVoJ2
         D0RA==
X-Gm-Message-State: APjAAAUMSnoxGQ+ovAKCcVEE3uGD/G0BqugX9d5kuejJ3QS3EXMNboDq
	SiDwDILbPLbqU/ZsDMabdP0=
X-Received: by 2002:a63:c103:: with SMTP id w3mr3193120pgf.275.1572920607597;
        Mon, 04 Nov 2019 18:23:27 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id u3sm15397779pgp.51.2019.11.04.18.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 18:23:27 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thierry.reding@gmail.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	jonathanh@nvidia.com,
	dri-devel@lists.freedesktop.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 1/3] drm/tegra: dc: Remove space after parenthesis
Date: Mon,  4 Nov 2019 18:23:20 -0800
Message-Id: <8e5b985c756f33decd07a728b7fc24b5518b3b47.1572920482.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572920482.git.jamal.k.shareef@gmail.com>
References: <cover.1572920482.git.jamal.k.shareef@gmail.com>

Removes space after left parenthesis. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/gpu/drm/tegra/dc.h | 40 +++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/tegra/dc.h b/drivers/gpu/drm/tegra/dc.h
index 0c4d17851f47..01fe9cc078ff 100644
--- a/drivers/gpu/drm/tegra/dc.h
+++ b/drivers/gpu/drm/tegra/dc.h
@@ -406,15 +406,15 @@ int tegra_dc_rgb_exit(struct tegra_dc *dc);
 #define DISP_ORDER_BLUE_RED        (1 << 9)
 
 #define DC_DISP_DISP_COLOR_CONTROL		0x430
-#define BASE_COLOR_SIZE666     ( 0 << 0)
-#define BASE_COLOR_SIZE111     ( 1 << 0)
-#define BASE_COLOR_SIZE222     ( 2 << 0)
-#define BASE_COLOR_SIZE333     ( 3 << 0)
-#define BASE_COLOR_SIZE444     ( 4 << 0)
-#define BASE_COLOR_SIZE555     ( 5 << 0)
-#define BASE_COLOR_SIZE565     ( 6 << 0)
-#define BASE_COLOR_SIZE332     ( 7 << 0)
-#define BASE_COLOR_SIZE888     ( 8 << 0)
+#define BASE_COLOR_SIZE666     (0 << 0)
+#define BASE_COLOR_SIZE111     (1 << 0)
+#define BASE_COLOR_SIZE222     (2 << 0)
+#define BASE_COLOR_SIZE333     (3 << 0)
+#define BASE_COLOR_SIZE444     (4 << 0)
+#define BASE_COLOR_SIZE555     (5 << 0)
+#define BASE_COLOR_SIZE565     (6 << 0)
+#define BASE_COLOR_SIZE332     (7 << 0)
+#define BASE_COLOR_SIZE888     (8 << 0)
 #define BASE_COLOR_SIZE101010  (10 << 0)
 #define BASE_COLOR_SIZE121212  (12 << 0)
 #define DITHER_CONTROL_MASK    (3 << 8)
@@ -422,17 +422,17 @@ int tegra_dc_rgb_exit(struct tegra_dc *dc);
 #define DITHER_CONTROL_ORDERED (2 << 8)
 #define DITHER_CONTROL_ERRDIFF (3 << 8)
 #define BASE_COLOR_SIZE_MASK   (0xf << 0)
-#define BASE_COLOR_SIZE_666    (  0 << 0)
-#define BASE_COLOR_SIZE_111    (  1 << 0)
-#define BASE_COLOR_SIZE_222    (  2 << 0)
-#define BASE_COLOR_SIZE_333    (  3 << 0)
-#define BASE_COLOR_SIZE_444    (  4 << 0)
-#define BASE_COLOR_SIZE_555    (  5 << 0)
-#define BASE_COLOR_SIZE_565    (  6 << 0)
-#define BASE_COLOR_SIZE_332    (  7 << 0)
-#define BASE_COLOR_SIZE_888    (  8 << 0)
-#define BASE_COLOR_SIZE_101010 ( 10 << 0)
-#define BASE_COLOR_SIZE_121212 ( 12 << 0)
+#define BASE_COLOR_SIZE_666    (0 << 0)
+#define BASE_COLOR_SIZE_111    (1 << 0)
+#define BASE_COLOR_SIZE_222    (2 << 0)
+#define BASE_COLOR_SIZE_333    (3 << 0)
+#define BASE_COLOR_SIZE_444    (4 << 0)
+#define BASE_COLOR_SIZE_555    (5 << 0)
+#define BASE_COLOR_SIZE_565    (6 << 0)
+#define BASE_COLOR_SIZE_332    (7 << 0)
+#define BASE_COLOR_SIZE_888    (8 << 0)
+#define BASE_COLOR_SIZE_101010 (10 << 0)
+#define BASE_COLOR_SIZE_121212 (12 << 0)
 
 #define DC_DISP_SHIFT_CLOCK_OPTIONS		0x431
 #define  SC1_H_QUALIFIER_NONE	(1 << 16)
-- 
2.17.1


