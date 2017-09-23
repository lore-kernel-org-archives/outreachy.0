X-GM-THRID: 6469039069975281664
X-Received: by 10.101.87.206 with SMTP id q14mr1609496pgr.78.1506190530241;
        Sat, 23 Sep 2017 11:15:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.171.44 with SMTP id u41ls1612644ybi.6.gmail; Sat, 23 Sep
 2017 11:15:29 -0700 (PDT)
X-Received: by 10.13.236.151 with SMTP id v145mr1579644ywe.173.1506190529481;
        Sat, 23 Sep 2017 11:15:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506190529; cv=none;
        d=google.com; s=arc-20160816;
        b=rmqITK/crDdnlZKMbM14ylwo0fFFb91WkwHxj/3HjNjV3B+haMvHlKeBczd13MDHzy
         GRQp0XfcPnlDiqn++/utd+gNrGKDeZvZtyuNhdCzda4KnmbBe0bZ1k4YeHcaPXV66W14
         dMejGvjqI8n0wGpFknWXjibf2UzIu0+X5JhW9SQyIdS4bZVuf7nfyV5TO514oBQXbx/l
         nvSZLnZ44mRsrjEvYiYBSZXGxyzozzO8zn5sE6F2Z7VB2i5cfe1kJUmj/NQ/T+qZFtNT
         TwfY3k9Iegw2NSm+vzHqKQcJs5tbSvDdj9dY+CZXLFU46P3eU4vRou5HXzcjgG/29LAY
         jP8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=TwXPwwdf9IUs1VaKCr21MCrMSH7IW7/jv/HA7ARtikA=;
        b=zgaHotZpNMWnXgQKC1nkJ6byKfCXVG1458Ek2rfe6cLhKsbXo1aWDThW3qzvXiQeJO
         KkYDihp+XYesYkGnAwxES4ZA9+zcTQHGRD4zX5diNpC985mb8kGaMPDs39OBGBIm1Yg6
         FGZXM2b4rUglqNRURNM0RbMSD///mGxttgQnSq90GvDj08P9+Pc1/+MCNnMLj87ajL76
         sAg4cchnaKVISr5cSPWdmF0PlMnHea+nMoIstwnXYSltv23x0C8ctugoH5sTbOYE3A4q
         SyfYnKmDs4BCdTCTQgiRDVMV0ejegOyqk7FiloT+/AM7ov5JAWQL3P5bV1fVAMaMAVtY
         K7jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJisl8fW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id t77si177670pfi.13.2017.09.23.11.15.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 11:15:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BJisl8fW;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id d8so2514074pgt.3
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 11:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TwXPwwdf9IUs1VaKCr21MCrMSH7IW7/jv/HA7ARtikA=;
        b=BJisl8fWUNU16MXZ/kv0n57sriQcuMrUUFMTyeTTMHbPQfkvYVatXdL6Xl9AT8syij
         NE7pAQSLvu/rsbqN6rf/E7ctpzhAFOOI7k+yl3f8F2zmS+TfzXgUvYe8BLvRIUPtprK7
         5ROqPPt6IXlaJag12c2eega0vd5alFoGvuDdRwZ+HRgEG9tsoIzeVnnWu0YZugpynuMo
         a+o/+qeD/47u7d5y9FGAW/20vl72JeJMnRJfla7Q7Txi+bgexwArb42n53pXn5SGCb0h
         Xz1sA+BCMyFjRyKlMcGT6f7jczQxMvkVylAZcCwW5zx57Y9ZjM1lNcc6ggF7JOsw6RKO
         mYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TwXPwwdf9IUs1VaKCr21MCrMSH7IW7/jv/HA7ARtikA=;
        b=g/jSYhtqG7R0j4gUV4G4igR+Dbyn2BiYbu6EksYN6uwy2gHEkERsjbtyAt8iPWi8Xl
         Nv93sTf+gFWWQriXgsJjxQVAH/IjTCX3xaqhDb8wzodRBW0VSJD+y/2GKP2teXUJ/ND3
         z1MZLQ6Fc/c3G0iyqF7RlFCCbOZzDSM5Kc/xpK/5d9MWdM/P4gOmCJjcHxDsJ30Ewr+L
         uwUABQVi5EhC90IqJZORs6n7Kt5iYc0nVc6atJCvpypg6f9vT262oZ8Ona8HeJejdOEm
         sI+Mpwyl6OBRVoXluwlI3SuaaKNOWmC24REwty7Tt2IS8ZJ41IyYDIG4lTD51ryouien
         q2gg==
X-Gm-Message-State: AHPjjUjDjMUwi2iTm7ILMasNgTPOH9v7zLz3z5LiI1pe/c3TiZJz9ejW
	nba1WLxBQFOushMzL6SEFOJHnjiIoQw=
X-Google-Smtp-Source: AOwi7QB33X4uLkzwIk3CuxtyLAHLWdbnmkINk+nyByEfC1kbyoGo8bgQ1ZI1HCmqxGfqsdHv9rS8ow==
X-Received: by 10.159.198.10 with SMTP id f10mr2869614plo.14.1506190529142;
        Sat, 23 Sep 2017 11:15:29 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from shreeya-VirtualBox ([45.113.152.81])
        by smtp.gmail.com with ESMTPSA id i12sm4738907pgr.21.2017.09.23.11.15.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Sep 2017 11:15:28 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	mark.rutland@arm.com,
	baohua@kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [PATCH] Documentation: DT bindings: Add chip compatible string for audio codec.
Date: Sat, 23 Sep 2017 23:45:23 +0530
Message-Id: <1506190523-4338-1-git-send-email-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch adds chip compatible string to remove the warnings
generated by checkpatch that -DT compatible string
"toshiba,apb-dummy-codec" appears un-documented.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 Documentation/devicetree/bindings/sound/sirf-audio-codec.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/sirf-audio-codec.txt b/Documentation/devicetree/bindings/sound/sirf-audio-codec.txt
index 062f5ec..a61560b 100644
--- a/Documentation/devicetree/bindings/sound/sirf-audio-codec.txt
+++ b/Documentation/devicetree/bindings/sound/sirf-audio-codec.txt
@@ -3,6 +3,7 @@ SiRF internal audio CODEC
 Required properties:
 
   - compatible : "sirf,atlas6-audio-codec" or "sirf,prima2-audio-codec"
+		 "toshiba,apb-dummy-codec"
 
   - reg : the register address of the device.
 
@@ -11,7 +12,7 @@ Required properties:
 Example:
 
 audiocodec: audiocodec@b0040000 {
-	compatible = "sirf,atlas6-audio-codec";
+	compatible = "sirf,atlas6-audio-codec", "toshiba,apb-dummy-codec";
 	reg = <0xb0040000 0x10000>;
 	clocks = <&clks 27>;
 };
-- 
2.7.4


