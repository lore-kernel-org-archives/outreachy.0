X-GM-THRID: 6393318693588172800
X-Received: by 10.99.146.15 with SMTP id o15mr8091974pgd.8.1489151257189;
        Fri, 10 Mar 2017 05:07:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls2461231ioe.23.gmail; Fri, 10
 Mar 2017 05:07:36 -0800 (PST)
X-Received: by 10.99.130.193 with SMTP id w184mr7204053pgd.12.1489151256485;
        Fri, 10 Mar 2017 05:07:36 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si1755856pfx.8.2017.03.10.05.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 05:07:36 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so10299559pgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 05:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=GCyhEk4iFbVNcq54KGzbgzzve+e2hygtDggVzdcHt4A=;
        b=igdKDFrWr+sui28ksCH3s8SYokKxq4IyDnvoHxoHz7Q7CWREBaQTNsoBVOlTg0R7IM
         A3a7iT4jTrvlDN0kd9dXbfYvVPURKRL7Sl1BP18+WZALxsTpIR5XRagj9z+IpRIG1cpU
         HHWpFev+mwMVBrxEl8pQQR8KqR7WacwFPOCvp20mlUYsymKls1Gj7TTB7yxmGyZH06l7
         X2MynAKTB/nf3VCw/PdaxhG2YMymTLOXt/lMXlHL6kYGgR6gpdbxg9Q7lp8Cg7Zm0HzY
         GLv4+qx0xGmLF+22+EIJt5KI5IMRlVFImlHEpl8pvZK78QYEjqh6NQmrjlSzjzX/SdP+
         6F3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=GCyhEk4iFbVNcq54KGzbgzzve+e2hygtDggVzdcHt4A=;
        b=JL9BYfMpIGAUcg8gig6+hflaVNqvA1m8OqH3MzMy3FNZx3l/2j2DECa1XdWBxP/Ov/
         cv5KQi6oiTP7kljc9/hS/nsryKxq1zI2kyRClc37Ifj1+YCC1LYv4lVRZrBqxr+e/+e2
         db82uKxDugn11oRq+tYKe5RR/a6wMYeB4miuGj6XJE9F0yYVikrYkj9KMsCn2AGv6+HJ
         xDoxJ77FJEy6lb1/w5qQmWxDvLcApip92y5REEAVrTPuxCpEI7D0YSmdlMi11ShoFfPC
         J25C6o0khWOdumG4tlY5E/VzAljHEyng+12kitgrZaevHPAt+E9lSjT59XHrxI+hUVq9
         27Ng==
X-Gm-Message-State: AMke39lmsorBKssMm9amwZooSwxiek3GWoSDtyajViMTO6TKgUYanuzrpcDX3hBAFomZXQ==
X-Received: by 10.84.135.34 with SMTP id 31mr24965139pli.50.1489151255677;
        Fri, 10 Mar 2017 05:07:35 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s21sm18867012pgg.65.2017.03.10.05.07.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 05:07:34 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: sh_css_firmware: Remove parentheses from return arguments
Date: Fri, 10 Mar 2017 18:37:24 +0530
Message-Id: <1489151244-20714-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489151244-20714-1-git-send-email-singhalsimran0@gmail.com>
References: <1489151244-20714-1-git-send-email-singhalsimran0@gmail.com>

The sematic patch used for this is:
@@
identifier i;
constant c;
@@
return
- (
    \(i\|-i\|i(...)\|c\)
- )
  ;

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index b294e6d..0d7e8cd 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -74,7 +74,7 @@ static struct fw_param *fw_minibuffer;
 
 char *sh_css_get_fw_version(void)
 {
-	return(FW_rel_ver_name);
+	return FW_rel_ver_name;
 }
 
 
-- 
2.7.4


