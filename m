X-GM-THRID: 6251168467052920832
X-Received: by 10.112.169.5 with SMTP id aa5mr1240766lbc.12.1455463577376;
        Sun, 14 Feb 2016 07:26:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.91 with SMTP id j88ls541390lfi.50.gmail; Sun, 14 Feb
 2016 07:26:16 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr1264804lbp.14.1455463576879;
        Sun, 14 Feb 2016 07:26:16 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id v197si380824wmv.1.2016.02.14.07.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:26:16 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x236.google.com with SMTP id g62so119729061wme.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Iq6MDJlF/oIsUBkzFMlNflepo4t29I2UlbyNi/TxBS8=;
        b=YBtXu6N1y38uzAfX8078Te1dpBw4I48TUPxlJ3Uq/ITZBI+idgxlQtjk15iVYTBxoz
         Cl2kBK65k3c5P6oXKs5zJ/ILxz6q4o3J2V/+h/KC5POqfr9fCDBABvyvxx8RJDEPS0KW
         gMMxSpbNkvRIfiLoAXPImB5CO3Wi1YXafotjA4LFe6nx716gIFrCVk9MiBVL6Nnd1nV9
         PX/5vhAs4jxgFoyRldEVxo0yvKeoTvvq6pCmkGsoD8yIKJqBk6noMeicah6NsBp75DSb
         ycDHD3l9ueplmviRjBjMDqj9ysgTf9qkN+xxGIn6rAeKaH7RFA7aBrsvUI6yod/bQPBl
         dk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Iq6MDJlF/oIsUBkzFMlNflepo4t29I2UlbyNi/TxBS8=;
        b=mBd8ty+GduxD7ztHin5F5qTQoHEAUlwSX2mv9NQPMrM873AW0+cJ+y0Ouxq3gkHRwN
         2sA6SjHFggYzhHPlq442W/PlYjPW/2pJJM9wDyZ0qVLsMJnCo1BJWjaPjEaEV1ZblYJg
         WzZsUFcJyki0LXrOwDp8Y9JQ8U2yPVHGiQGTzlzfikhErI8lwWCzX6KRlHeIWO+02HIH
         N/X+65Ghvx9w43i3SYaUo8nSgVpn8GMNQgNE8RALJUCpMv30mmK4pmdoqqfe6Bxrhl42
         MIm2LRoML3jP8DLpv04gomkcoG0K7ls5W3Ro/zWcK8jpF5jzgTyH+sVTgVgS+8UI6CMD
         +BRg==
X-Gm-Message-State: AG10YORKrJDo5XTTQs0xuKfgquLKB+Sp8RyuRaHd1ZS+J9H8SS/d6hIv7Pcf2Do/m1AemA==
X-Received: by 10.28.126.205 with SMTP id z196mr7542299wmc.44.1455463576776;
        Sun, 14 Feb 2016 07:26:16 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id av3sm21083757wjc.44.2016.02.14.07.26.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:26:15 -0800 (PST)
Date: Sun, 14 Feb 2016 16:26:13 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: netlogic: Remove multiple blank lines
Message-ID: <20160214152611.GA27902@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid the use of multiple blank lines. Checkpatch found this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 0182eff..9b52154 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -209,7 +209,6 @@ static void xlr_gmac_init(void)
 		.gpio_addr	= NULL,
 	};
 
-
 	static struct platform_device xlr_net_dev0 = {
 		.name		= "xlr-net",
 		.id		= 0,
-- 
2.7.0


