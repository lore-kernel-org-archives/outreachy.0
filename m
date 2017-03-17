X-GM-THRID: 6398521144060674048
X-Received: by 10.25.196.68 with SMTP id u65mr2130327lff.0.1489771796077;
        Fri, 17 Mar 2017 10:29:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.6 with SMTP id s6ls716809ljd.43.gmail; Fri, 17 Mar 2017
 10:29:54 -0700 (PDT)
X-Received: by 10.25.223.67 with SMTP id q3mr2056050lfj.1.1489771794982;
        Fri, 17 Mar 2017 10:29:54 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id y19si494386wmd.0.2017.03.17.10.29.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Mar 2017 10:29:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id u108so10377057wrb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Mar 2017 10:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=tvYISbp8Pvi6PLTEX2hS5wmuaL01TjzQNM+D4F2uaPI=;
        b=eVD9/PVZtBrGxNvfamMjBd0AlqVgiBmcv/0XaIw5PKLpNlHHwKXHqIOnLxI+wLco5j
         KWmqotrC+H6ehZq615w6tHMBU1l1M0+zF67X1hAI4zs+jwcg1x8hjCgMk365xggVzxU/
         z6iAriijGJrbG4lFCZYFW2/khuNwrALLlJhGJd7xWNFUM6I3bQb5wwKehtjYU7TTGvd5
         I/o1ZgbUHz5XzNjua5QKVfNA2WIHe+EJHQnP8G1SRiaaGQ2dsKF+VnTyfAHNXjvWEE7c
         CwRNzLgz9Hb5VKhDX0Vck8fXY13vTzzSt54p7sQgswZ6wtYWzUqbgc0W4ovPgqwWANd8
         sq2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tvYISbp8Pvi6PLTEX2hS5wmuaL01TjzQNM+D4F2uaPI=;
        b=AXIIdKtSBvNw4BpXr7WpSyxDUNE550EbfSBKGfGy/9BcWDFeSJ/HLsM8e71YtHF2sq
         IkBR3BulrP9aGX+rf9stfoCUFItwwwkLjhWB9I23ETSUC/grXueXNok/NExK6gexpN59
         wh5YSP56Vzq3AHr6QzWkZ12jTmTcXSMsdDz/k8ysmmSILwv55/ltunpGLqKgHNDX72Rg
         GjlZ0+iHgZTjzhtOMiCPXomMzHK/W5XNrS7q/9ZAzEu5j15mhgy/bL2OHXAG8KpKA8bK
         GUAcKKOYIMKZlcvCEhleA1/sHNKhnQRynL1r2BdqFV3pv8qScRWhsIBsb9+SXZ+Arqba
         nDUA==
X-Gm-Message-State: AFeK/H3L3Y8t7f4wSKjacii7EX/x0qACLnZx0rYM2SoP/nM8kcg8qojbmE8xhRMxHUsFNA==
X-Received: by 10.223.172.135 with SMTP id o7mr13039521wrc.121.1489771794757;
        Fri, 17 Mar 2017 10:29:54 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:d9ac:2cee:7395:ff69])
        by smtp.gmail.com with ESMTPSA id 189sm3355854wmm.31.2017.03.17.10.29.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Mar 2017 10:29:53 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	linux-doc@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentaion: leds: leds-lp55xx.txt: Fix typos
Date: Fri, 17 Mar 2017 19:29:48 +0200
Message-Id: <20170317172948.11608-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix spelling mistakes in leds-lp55xx.txt file to make documentation
clear.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/leds/leds-lp55xx.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/leds/leds-lp55xx.txt b/Documentation/leds/leds-lp55xx.txt
index bcea12a..e23fa91 100644
--- a/Documentation/leds/leds-lp55xx.txt
+++ b/Documentation/leds/leds-lp55xx.txt
@@ -117,7 +117,7 @@ As soon as 'loading' is set to 0, registered callback is called.
 Inside the callback, the selected engine is loaded and memory is updated.
 To run programmed pattern, 'run_engine' attribute should be enabled.
 
-The pattern sqeuence of LP8501 is similar to LP5523.
+The pattern sequence of LP8501 is similar to LP5523.
 However pattern data is specific.
 Ex 1) Engine 1 is used
 echo 1 > /sys/bus/i2c/devices/xxxx/select_engine
-- 
2.9.3


