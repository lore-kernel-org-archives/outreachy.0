X-GM-THRID: 6256058221461504000
X-Received: by 10.129.73.215 with SMTP id w206mr6544901ywa.6.1456602062585;
        Sat, 27 Feb 2016 11:41:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.80 with SMTP id y77ls1026550ioi.81.gmail; Sat, 27 Feb
 2016 11:41:02 -0800 (PST)
X-Received: by 10.66.136.71 with SMTP id py7mr6448234pab.7.1456602062274;
        Sat, 27 Feb 2016 11:41:02 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y20si567081pfa.2.2016.02.27.11.41.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 11:41:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t66so2265738pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 11:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6A0O6n6X3tZzMKJ29033KUd+vh3bATb6o/IXn5GTAUw=;
        b=qITam89e2VSSrZinQUs5IA23Df2Z+0kCV544O7x2QkjKVxMipL5lfZ5Eb5LquU9Fnq
         cD3IbEjuABUKFQXhyzMtzSnFfyBh30+GrNhuhGHoOHRXg4J3wsk9LlKoatwHwg7/vLxa
         nW9SD2/dWqcRiUrxRqTWV847Fl1yPn5pypKuxKOiRaujzCvBmcFm/+nw00MEVJ4ry7T0
         rcuoQ1wc9LpZmH5dYJaqYk6rUMoUZB4F2KVCDzUgrTVh+PJ7tvRkmaE+rP/iTNIh4RSA
         wN9qBb8WuS5ILOdvJn+oi9/iBJabHANrkjVwqqOj9VyyLIk6Ae++ZizKhraJF7vJ0kFb
         Wf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6A0O6n6X3tZzMKJ29033KUd+vh3bATb6o/IXn5GTAUw=;
        b=LO6c1krkQ0ehdi3sQk6P0q/L8+vbFJjST/k5ab6482i0VfmcReM8Gol9XULMwgOLAj
         FKjmsxkSKSvz1RdZMRpGEWDoxSHivwmHziafwCU0TSjXgu4CSQf4frPSZWUHZ3H0o1r4
         nZeDa8eYNJOxaEH1zTSSHdDw1uwkW9BFWQZvE9u9qv0XVUMSzMD0TrCb5GsG8614wccT
         2QJkikfDdCY0sL/YmABY1tV8oPxi6V9IuC15bhY6Ey3cWE0qC3p9DjeuVGT3ByjmU+EV
         exy+j+bGUxnaKzgMlX0XDc7DQZci3XpuSacT27pTvqbKqjpLdpiP1S5oxGr82DhsItW5
         DYbQ==
X-Gm-Message-State: AD7BkJJ4V3fB3UVXRXLa1d6UL5KqfuXbMtf/E7h5FiC99SZZGn9vQjdYr4hJN4sVhLvXqg==
X-Received: by 10.98.79.9 with SMTP id d9mr11011016pfb.46.1456602062124;
        Sat, 27 Feb 2016 11:41:02 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.44])
        by smtp.gmail.com with ESMTPSA id ud10sm27796621pab.27.2016.02.27.11.41.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 11:41:01 -0800 (PST)
Date: Sat, 27 Feb 2016 17:11:05 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] Staging: usb: gadget: Use PTR_ERR_OR_ZERO instead of
 if(IS_ERR(...)) + PTR_ERR.
Message-ID: <20160227114105.GA5524@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use PTR_ERR_OR_ZERO instead of if(IS_ERR(...)) + PTR_ERR. 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/usb/gadget/udc/at91_udc.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/udc/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
index d0d1894..52851ad 100644
--- a/drivers/usb/gadget/udc/at91_udc.c
+++ b/drivers/usb/gadget/udc/at91_udc.c
@@ -1726,10 +1726,7 @@ static int at91sam9261_udc_init(struct at91_udc *udc)
 
 	udc->matrix = syscon_regmap_lookup_by_phandle(udc->pdev->dev.of_node,
 						      "atmel,matrix");
-	if (IS_ERR(udc->matrix))
-		return PTR_ERR(udc->matrix);
-
-	return 0;
+	PTR_ERR_OR_ZERO(udc->matrix);
 }
 
 static void at91sam9261_udc_pullup(struct at91_udc *udc, int is_on)
-- 
1.8.3.4


