X-GM-THRID: 6666325868481085440
X-Received: by 2002:a02:31d:: with SMTP id y29mr13331792jad.18.1552126629255;
        Sat, 09 Mar 2019 02:17:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:9784:: with SMTP id s4ls4124974jaj.2.gmail; Sat, 09 Mar
 2019 02:17:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqxWbM+cjLxfD9BaMZq27VUjKJFfJ7f7/+F7HtCgIG7+Ww6vzkZ5mDfYF5AcoUi/8EGVZJcK
X-Received: by 2002:a02:6018:: with SMTP id i24mr13332203jac.6.1552126628409;
        Sat, 09 Mar 2019 02:17:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552126628; cv=none;
        d=google.com; s=arc-20160816;
        b=ApkdW361rxpPHhn5UH/w/x2QbNPfLPjwM3rDtmH3O4EAY/qcC5vDBdyHw4omzmpn/d
         x1IXaW7KR0qXHZ4iaMUFSyt2PJ9Y8jw4J8r+uuNHtVBHwN5Ij5YC1G2yjI3PRmsAij7L
         QkJsHNGpF7WPnAJsbC/V7Al+9gAzlLcHE6qtJz7lWCq0dV5ppzBxvyh5c++dSESMcIJ0
         u87clvRETH4vqv5MHiowGq/VX0YEjkQqoE6hlNcTvt+L2TX3QDhVWsLt9j5PAaAGkY5P
         VoP7j9vLFcnpXu52sxAtdnEeAVXSLqnDJ49JyIMSFo6SP6CJZ4q6lBJgu8zAx+d/IbiZ
         PMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8nx3bqGjLz/9jb0HSBT0qzJSK6rHxum2CSrfSVu9zt0=;
        b=VtPlYDM8XbH5BrgeJ7Rq8zCLAGiey8D9tH7ahcyeTvVUa8y38a23wsOay52rjkSgnW
         3kxhksBOYe14AOp0rJXqiH7DmovVkXEtc6FtbROa0zi74Jx3g0xsYwfafbNzgIH28qGb
         U4725jGYgTjdY31g3OR0xL64uv3AU2/fBgtLCTXgSPG87MEw7QfL68k6RaByyGdvIkCl
         ohOMadFConLJZp8aEmkUa+x+6Zr9AnJjZAkZduFwhp5yyKX8XGXswJbp9rvBXsSj7/mF
         PAJ2mSR2fcGwhjPBb9hgnBi94uKm5yw6Jcr3/bHMkavbievOJzR3ddtjhYmwmLnaLsLU
         dHZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KryVDb+9;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x22si659448ita.0.2019.03.09.02.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KryVDb+9;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i19so16036174pfd.0
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 02:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8nx3bqGjLz/9jb0HSBT0qzJSK6rHxum2CSrfSVu9zt0=;
        b=KryVDb+9lWslPkCrzs/0DX1M8vGRI63bgUIPwOKueS0wgH5cKl3X6qVSLA5FyDy7k+
         o90k5i+pUG5t6O5PnQ7H/EOuFMdOm0qqF20dgfADnDIpdHmoZCoz9ov5od4FbKZgaD0M
         gxomFhMaqO152KCY5MhWI0zE8T/EwQ6mQlEteIymS2c5YPQxE/n8tpzd3Oj6qjAOuSi1
         PwxqLQ1Gc8ZN6jLLWjGgHNm+Al3hWpPgPunaAaJb7F+GpEsXlCirC8iNxFDYGxCX9B75
         4iHsYqZoR5RRrm1Hc2uijIHyj8HPReD9Qz7kgI9sDOi4De1QN+NYczpO3yf8uAD9dlp6
         owKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8nx3bqGjLz/9jb0HSBT0qzJSK6rHxum2CSrfSVu9zt0=;
        b=r19a7MdiEXH9CPxREwraoQ4oljn422O68LBaTy5sk2DAtftfiIdYS32sCzqdyMLG7c
         UOWhMMjweeT5hW7hOGL1PNQx3Zzc9vZkc5RqpzQJx47gdCRJ1fcl/K3z14X0jG81Basq
         k6WIVKAtWASfyomMES9n2DB1/N1xaAvDN2R+u+b5eGaXyQsG2OmSIK8OUXf1daO72Ezy
         zKai5FMuj7w+iJ9nrn9ATsCd/exTzUaH5UzOi8TPaujTak3NhhXRZZiJxlVjviGBXzKn
         7ASpap67tukFPxDgpGvUTwG2cdDt3qxqNNzlbwFUSkMT7/okWtgU4etV2bDVSrHKrnRp
         OWjg==
X-Gm-Message-State: APjAAAV6JaJiG0gluSEhKiT+BJXynD3ieGqG0yD9IP5tMjGsI17aHf5r
	+lFGc4+PcIR9QBuP/KB3sas=
X-Received: by 2002:a65:6483:: with SMTP id e3mr20783000pgv.273.1552126627529;
        Sat, 09 Mar 2019 02:17:07 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id 1sm2143649pfy.68.2019.03.09.02.17.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 02:17:06 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2] staging: wilc1000: remove unnecessary variable result
Date: Sat,  9 Mar 2019 15:46:10 +0530
Message-Id: <20190309101610.39595-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190309094840.38154-1-himadri18.07@gmail.com>
References: <20190309094840.38154-1-himadri18.07@gmail.com>

Remove unnecessary local variable "result" and its assignments from
function wilc_set_pmkid_info. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Arrange the function arguments to the right of "(" in function
call in the return statement

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..fa0e1bd9f836 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 {
 	struct wid wid;
-	int result;

 	wid.id = WID_PMKID_INFO;
 	wid.type = WID_STR;
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;

-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));

-	return result;
 }

 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
---
 drivers/staging/wilc1000/host_interface.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..fa0e1bd9f836 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1358,17 +1358,15 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
 int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
 {
 	struct wid wid;
-	int result;
 
 	wid.id = WID_PMKID_INFO;
 	wid.type = WID_STR;
 	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 	wid.val = (u8 *)pmkid;
 
-	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
-				      wilc_get_vif_idx(vif));
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
+				    wilc_get_vif_idx(vif));
 
-	return result;
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
-- 
2.17.1


