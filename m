X-GM-THRID: 6463425318244843520
X-Received: by 10.84.214.143 with SMTP id j15mr1979505pli.26.1504883477055;
        Fri, 08 Sep 2017 08:11:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.132 with SMTP id 126ls286372ion.45.gmail; Fri, 08 Sep
 2017 08:11:16 -0700 (PDT)
X-Received: by 10.36.137.137 with SMTP id s131mr1574432itd.29.1504883476315;
        Fri, 08 Sep 2017 08:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504883476; cv=none;
        d=google.com; s=arc-20160816;
        b=b2Ol42u6nn1xDnREH7ZG8lVzk+8oQvMaIi7YtNltKXboxFJdmqGnd5RaiiouHhspGk
         RZFFu8DjZevYml0HYbb+KoUGI7BOc1u24+ocS3qmiX8eo7AOWfIsW9snAvI1iHAnvUEP
         cHT0/T0uX80RrjO9DPiez0o3jYJCPVirne0jE/PqSC6jS9w/SBSIgVqkfcQJ9yklagNR
         AuSsF1r0xrj64zI9WqXRzzBiz5Tb6JqyC7CrMJN+AP+3iPONqDsMdzUE5/nxXETFyg/L
         gFHNEfTFTEwePk+5bNu13E0r46GtjcczlM+naUKVUnVSNr3ydc596/q9LcktYVfM+ytM
         xiLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Ikesiz/6yrCCoqN19hnm4E71/AJwHGo8S+5Buo+WIeE=;
        b=jyPoyqzD1jzn7qf+c9iRK5Jeh04fDBGBuNm2ruHRL2ihdepyGRHGJsQ2qOMpoQl9gn
         YKBo717/KasiyaVye5N6+cAlITAJDxI/7/+Y+Ok0OwF5j/IDF9CHDKCgJxLiapSuZwXi
         H3LINPpl5T20P/wBwz2xkNj5g2cMxEvtOtSWmbbhjyRFoXQoC23GPYfvMTv4WDJduLkq
         XZZR2uB68RWY/PzhTa3ijHGPG6NUDrxY349u2Xj/FfIWuBoxcQVFU2DBpJIsUL4m1R2f
         pnJQKuvEB8EkPJFO9HfeV+WMaEm8aYgU9wOhOGptKU57Uo6phWFXL3sKO/JSCy/Phcc3
         A79w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZgwcjvf;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id g19si278595pfd.14.2017.09.08.08.11.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 08:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZgwcjvf;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q76so1545122pfq.5
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 08:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ikesiz/6yrCCoqN19hnm4E71/AJwHGo8S+5Buo+WIeE=;
        b=qZgwcjvfZQ15x5PrmT7QOY6vfPG8FN5f9k1byuyuv8AsJ4KeGkPXcnFMM7+8q0Ujdn
         6r03SGWQ8buOz5fE3ennrW3I0Gh37/dkCeYptg8FpV0OjRQ20/LcER5S+TEvRpPgN3kv
         OcOmM3e/6AftJObRjrKj6XnQioS+0FC7os1ydmD0tP7EK9eCRriMpy5qknIovQCdvihh
         FiPuk7P3NRRLxim8fEkckJGgjcqd/DQliFyuYR6+UQaXEC7TONHWLWkeS7wFpsFTj/Yd
         NQl5wgORwllq+wgmrPaSU3GBhDgbTZdALuRwojcY1aYE19D+kypXHZ2tCzgR+bZbZktR
         kZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ikesiz/6yrCCoqN19hnm4E71/AJwHGo8S+5Buo+WIeE=;
        b=WqNJx44gavycPBXR/g4KWUu70rYu5qjggYFn3Xq/fYptdle+18Ado3FTt7k+8DtyEe
         vo8ronHs/3Ao1n2yo/ur/XxlrSn3xBXDFX5ChcpiOYsRl/S+Fia+xH7Js9CZUVCXv7DR
         x0MgQTz5uPjG8YfQKYOQdxr+ywIYjwgWTh+Xl4ZpCG87wmWVETIsXDlMvMWtHKxCW8/M
         TFoLV4AsC8YGRaNUX12Adqiv7CY8LeMQAKoswOIGq8/XwlsblWkYgneulXJvi8LoIsBl
         LokrI3X59nFENOKHGRd0+TYsDDdgWydm+Hzk3cYo2FdKHLeIQvGNe6GlEMxFbE9GCGry
         xjeQ==
X-Gm-Message-State: AHPjjUhI1xSYTQYDh8WiIvip12RdrIwVct9R36NLIhhIhJIfSEm5VatV
	PN2xdKqbecdWF9RUuOk=
X-Google-Smtp-Source: ADKCNb7eYpjTfsl7+5uxUgjBykJCBmQ/sJqGCSXHLYcRpA2W7ZUZ8OdGS2PUcn3EdlSiMORZPcKi9g==
X-Received: by 10.84.241.77 with SMTP id u13mr3810827plm.440.1504883476078;
        Fri, 08 Sep 2017 08:11:16 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.9.172])
        by smtp.gmail.com with ESMTPSA id 13sm4352616pfi.55.2017.09.08.08.11.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 08:11:15 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: slongerbeam@gmail.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: media: imx: Prefer using BIT macro
Date: Fri,  8 Sep 2017 20:41:09 +0530
Message-Id: <1504883469-8127-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Use BIT(x) instead of (1<<x).

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/media/imx/imx-media.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index d409170..e5b8d29 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -310,16 +310,16 @@ void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
 void imx_media_capture_device_error(struct imx_media_video_dev *vdev);

 /* subdev group ids */
-#define IMX_MEDIA_GRP_ID_SENSOR    (1 << 8)
-#define IMX_MEDIA_GRP_ID_VIDMUX    (1 << 9)
-#define IMX_MEDIA_GRP_ID_CSI2      (1 << 10)
+#define IMX_MEDIA_GRP_ID_SENSOR    BIT(8)
+#define IMX_MEDIA_GRP_ID_VIDMUX    BIT(9)
+#define IMX_MEDIA_GRP_ID_CSI2      BIT(10)
 #define IMX_MEDIA_GRP_ID_CSI_BIT   11
 #define IMX_MEDIA_GRP_ID_CSI       (0x3 << IMX_MEDIA_GRP_ID_CSI_BIT)
-#define IMX_MEDIA_GRP_ID_CSI0      (1 << IMX_MEDIA_GRP_ID_CSI_BIT)
+#define IMX_MEDIA_GRP_ID_CSI0      BIT(IMX_MEDIA_GRP_ID_CSI_BIT)
 #define IMX_MEDIA_GRP_ID_CSI1      (2 << IMX_MEDIA_GRP_ID_CSI_BIT)
-#define IMX_MEDIA_GRP_ID_VDIC      (1 << 13)
-#define IMX_MEDIA_GRP_ID_IC_PRP    (1 << 14)
-#define IMX_MEDIA_GRP_ID_IC_PRPENC (1 << 15)
-#define IMX_MEDIA_GRP_ID_IC_PRPVF  (1 << 16)
+#define IMX_MEDIA_GRP_ID_VDIC      BIT(13)
+#define IMX_MEDIA_GRP_ID_IC_PRP    BIT(14)
+#define IMX_MEDIA_GRP_ID_IC_PRPENC BIT(15)
+#define IMX_MEDIA_GRP_ID_IC_PRPVF  BIT(16)

 #endif
--
2.7.4


