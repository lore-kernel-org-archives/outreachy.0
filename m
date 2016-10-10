X-GM-THRID: 6337544242768904192
X-Received: by 10.66.9.165 with SMTP id a5mr6980037pab.169.1476070421582;
        Sun, 09 Oct 2016 20:33:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls2947970ita.17.gmail; Sun, 09 Oct
 2016 20:33:40 -0700 (PDT)
X-Received: by 10.66.122.197 with SMTP id lu5mr7394230pab.156.1476070420043;
        Sun, 09 Oct 2016 20:33:40 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id p70si798531vkd.0.2016.10.09.20.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id m26so3615406uaa.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 20:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3bHIIHUX6AbtjtdYNmon5uu5bN+DVU4uuubjob1KzxI=;
        b=SkCLXZdUzY82CIaPena8sy2BCL5UFuZVCC2hjYJWrWbLSUGhUpe8uC6V7tnx2qpZAs
         TeOPq0/NIy5ni/UCTUkt3NnEnKv1DubUelreHDuxISYwRoSQH+88EBcUoKR1u+5rGQWG
         U9E+jg5ID6V4pZLv3TY888rY8eyQ7/Hxb0+N7fgE+xo5LwzrI3H/4ySInbh4E4YZH/+z
         +TmaHdNpbEraW1Mpqp0HecaI3222FHNvNtj/BpT+B4maTGoD5ifHi0KEVUsZ/yZwgkPN
         EkCUrjEb+4l94YuhvOwyuFlLtlTD4BNm/qMhUh2DsPFQE/ETK8KUpYT2Lo3RHsfUQc/a
         TovA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3bHIIHUX6AbtjtdYNmon5uu5bN+DVU4uuubjob1KzxI=;
        b=fg/q1071uNr8l4JKDkHw5daGY2xyVQTQ6qydUhFPolTgy84kgBxzx700hw3E4DAJKe
         INygOvZs+use327P8PH8cUWtfyTpHUzgoUj8P1M12iyYj7QgHN8JwgkrWg/q0I4Up+M5
         /8PWKUHyBQXj3Xt/Z9xn0YgkW3dnITsboWIYbcs04kYiHnlxfRJBma2ZjTRW7nez2yP8
         46a3oA7nVkEQf+5valyfSlt/qknZ23cYI2arAdASKdIH5xMUH5I0j3o2Oa4Fi0sU0Dv8
         ydhQbj2XFR3T24JvFGi8jxEa+OWBskBJdyPfMEbKdRmK11FvFcUP/xQkpfyjr5Bcgrqm
         gzlQ==
X-Gm-Message-State: AA6/9RncVPenKAyJfAWKIF9S4GUa2VCa2oVHk9vtNtIWbKJhz216rBI9hEqc0GDrMUq6Wg==
X-Received: by 10.176.16.21 with SMTP id f21mr18226954uab.151.1476070419843;
        Sun, 09 Oct 2016 20:33:39 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id o15sm8797835vkd.21.2016.10.09.20.33.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 20:33:39 -0700 (PDT)
Date: Mon, 10 Oct 2016 00:33:33 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: ks7010: Add blank line after variable
 declarations.
Message-ID: <20161010033333.GA4993@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch WARNING: Missing a blank line after declarations.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

v2: Fixed my name, was signing as Elise-Lennion before.

 drivers/staging/ks7010/ks7010_sdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 81c46f4..db5e632 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -1117,6 +1117,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 	int ret;
 	struct ks_sdio_card *card;
 	struct ks_wlan_private *priv;
+
 	DPRINTK(1, "ks7010_sdio_remove()\n");
 
 	card = sdio_get_drvdata(func);
-- 
2.7.4


