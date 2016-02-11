X-GM-THRID: 6250072633704972288
X-Received: by 10.107.7.200 with SMTP id g69mr46635930ioi.3.1455208434777;
        Thu, 11 Feb 2016 08:33:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.154 with SMTP id v26ls316096iov.91.gmail; Thu, 11 Feb
 2016 08:33:54 -0800 (PST)
X-Received: by 10.107.151.79 with SMTP id z76mr34695440iod.4.1455208434493;
        Thu, 11 Feb 2016 08:33:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id g136si677351ywb.5.2016.02.11.08.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:33:54 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id b35so41522448qge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 08:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ePNx/0j+Pi+9AQVjuo96aORn7iy5DyDAC7ucOQ+Kr/Y=;
        b=J6kzfkvSI/PtnU7mE2eKgvkK/QF88+D5aMF9cWm3M/pSuCX/apDvrzH1X0BJ+F83q0
         YqdMBP3FwSdPdN1BUmuXFH8U5KaGbAB34++GW+dsS5ARbTsv0EnGKOoa4BE+LRLi0tDC
         Cw79A4AGnfI6cB/fWhydL/aLKkGgEbcNa8WWHSipPpYcqE/yfh9E42Z0sp/uHV7E0Ba1
         ySoIG1C74nY7GFRLtjoEah+jKIih+T/aNlo8e7qokB6LpvHbMuB+A6T4j9jqMgpkDMpK
         kwiXqasxOlHrqknPbjWdUuqQKu2l4P3IJJ3V1e8/6N8suq1RlBUihacGlZZtKf7z5foM
         tArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ePNx/0j+Pi+9AQVjuo96aORn7iy5DyDAC7ucOQ+Kr/Y=;
        b=jCU+HfXtX+bBexpcny33TCIg5sr8ed/mac9MtIV32P44CkzFKZRoB7oWILknzg98bi
         tVSRpRxogdjXx1H2dNlNwIp2xNRKQ4KNzIZAHVC1J8MLc9wgwmnC0Pgnmn0GE8IOsGTq
         QIBBH84k1DPaLxAg2D9BQ4Ed+rkHabwre9GU3MdKnGEFrl0T63LIKIe5p4A9Yy4AhoIt
         zyzpo+S5bGsiol2+5IrGS2A0mqZh7K4iPuK9jO4dWFrrBZsOAQp8H2YkayoKtcK0WxuP
         b83aevSKzZUmT+okKcSgu5PZNReJvmPXQoLK5HpZfvIvHOxWCDrCd5RLYhVpoGBlSZTx
         wBoQ==
X-Gm-Message-State: AG10YOSgVaIMgbbLa08xdlfBlj3je3IIH2bY2Z9GwUMQdWXdLAdKztjEeJMM5YWI6ejemQ==
X-Received: by 10.140.152.78 with SMTP id 75mr45848197qhy.22.1455208434326;
        Thu, 11 Feb 2016 08:33:54 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id d71sm2063330qhd.18.2016.02.11.08.33.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:33:53 -0800 (PST)
Date: Thu, 11 Feb 2016 16:33:15 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: octeon: Remove unneeded parentheses in assignment
Message-ID: <20160211213315.GA4302@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignments as they are
not needed. Semantic patch used:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a =
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 16d4587..7844e20 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -1048,7 +1048,7 @@ static struct cvmx_usb_port_status cvmx_usb_get_status(
 	result.port_speed = usbc_hprt.s.prtspd;
 	result.connected = usbc_hprt.s.prtconnsts;
 	result.connect_change =
-		(result.connected != usb->port_status.connected);
+		result.connected != usb->port_status.connected;
 
 	return result;
 }
-- 
2.5.0


