X-GM-THRID: 6249299693524746240
X-Received: by 10.182.87.2 with SMTP id t2mr33049634obz.20.1455033667584;
        Tue, 09 Feb 2016 08:01:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.4 with SMTP id t4ls2134371obz.56.gmail; Tue, 09 Feb
 2016 08:01:07 -0800 (PST)
X-Received: by 10.182.247.97 with SMTP id yd1mr33476668obc.9.1455033667141;
        Tue, 09 Feb 2016 08:01:07 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id y131si2132419ywc.0.2016.02.09.08.01.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 08:01:07 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id b35so10479411qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 08:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LmI7/Nbo4LEG/Ox7ggdjYMzHeGAa4eeLKOkge+mtjeA=;
        b=Jbb4y2XVruZawqB4DOChWkFLNe/ngb0HPZyCdHXRaTIeC1Rzv2su8P+EF6QnLv0tH7
         RBuT+FOSWDSxcoubkvZTZTaTkwPxo47485SG2YLKvPnAHlCfQ8BDyCRALwYmk8BWtmNo
         xDbcx9hVJzV9mjBy8B20Oh99MmMijLALuzZth6+fzjcyxgoHodMOw4Egm8WFsTOS1mjr
         r3M40F4CcSj9RAfbOv+gThSpEyH0RMPoDUouNT6oOXBHMxazvtCripkXX+cO/7vnnsJi
         JIMLhJi/eHzVdKbszdkbtryx1iXtumh76nz1JHQRVKctCqAKVzIqNPaxY54q7OBryytJ
         DWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=LmI7/Nbo4LEG/Ox7ggdjYMzHeGAa4eeLKOkge+mtjeA=;
        b=Ih4SqN1XtbcUjMYfnYtIPMLW5vF4OmfHoJhdZTXGIOtAb49psn7uKEUqHWI4VdcsJB
         YX/bbkmRbapG07gFBzjqlCoEV1oMD4teaJ0jyZQNdWB98Rb/llqp2Zukx+o+egQfyJYd
         7nVjYGJau2mllFnGgz8mY5E7OFRZlMgpnxr0LnKv726wCzFKgoiRyX2t+ZNgwoUJ8jKa
         ZmdCKkQs88Gb3HCo4bhQ50jqTkYOVmIQxgd0/lhPD6r2YowR6TKabLery6lu5EcA1iO8
         wDKEjSjhvCxuk7PYFCC26sd/VGd4wp4s42kREiUHqOjcI9NABAGKlHCLFEvydhuWVHoV
         xg3A==
X-Gm-Message-State: AG10YORqo1pfR4FYMkqCm/ALKQt+bkmyXG23o5LJaoXpogpQ2QVWH/rHte4pO4wr97jFfw==
X-Received: by 10.140.178.195 with SMTP id y186mr44574250qhy.100.1455033666972;
        Tue, 09 Feb 2016 08:01:06 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id r7sm15932079qhb.41.2016.02.09.08.01.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 08:01:06 -0800 (PST)
Date: Tue, 9 Feb 2016 16:00:29 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: rdma: Use kcalloc instead of kzalloc
Message-ID: <20160209210029.GA8305@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kcalloc rather than kzalloc when multiplied with size to prevent
integer overflows. This change also makes code nicer to read.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v2:
 * Moved GFP_KERNEL to the previous line as it fits there.

 drivers/staging/rdma/hfi1/efivar.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
index b8711f3..e569f9f 100644
--- a/drivers/staging/rdma/hfi1/efivar.c
+++ b/drivers/staging/rdma/hfi1/efivar.c
@@ -83,8 +83,7 @@ static int read_efi_var(const char *name, unsigned long *size,
 	if (!efi_enabled(EFI_RUNTIME_SERVICES))
 		return -EOPNOTSUPP;
 
-	uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t),
-			   GFP_KERNEL);
+	uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t), GFP_KERNEL);
 	temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);
 
 	if (!uni_name || !temp_buffer) {
-- 
2.5.0


