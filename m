X-GM-THRID: 6671538849653456896
X-Received: by 2002:a62:e315:: with SMTP id g21mr12327538pfh.2.1553338684301;
        Sat, 23 Mar 2019 03:58:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls1202357pff.6.gmail; Sat, 23 Mar
 2019 03:58:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyN3+lRCH2d6NnKpmndcoJPMjfbg0OskDlbGRH9v+0phWXNZ38JmixV6wgzjjQVMGDvn3gi
X-Received: by 2002:a63:4e5b:: with SMTP id o27mr13634582pgl.204.1553338683612;
        Sat, 23 Mar 2019 03:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553338683; cv=none;
        d=google.com; s=arc-20160816;
        b=RDxKryI7RAMMAe2hTg9unN4QGmX3TmsilCf1HpoVPwr97baG9MCpbD4WLaX6nevzex
         X4VyFzpSy1EkxMK9gjf3u6tVCIHySaaVkxZgFBYHzZDPIWBygY1Dgs9LqxdNMR1EsHAm
         PDZ4bjCC3Y/ykvBl5GySGLtCLSXEDenYaoUoJolIYFbTxLvrsZ2Lfh4439DEGAAyZCs4
         lamsBbk6FIwZ82wboQ8DHZaqzbHySamLJ/h5Nxe2QKo3CUaXThwkQNXdPFcbFqbdobe+
         5UEHMXyv1XYzPIv6w+BcFotbopvHV/U2tYfbz+rH46vJ4Xk7Hsz4tFilT9k2TztnK7Uq
         /HkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mPem9k7NsWCSie452luFScUTH0LqFmqbG53o9LX0Qmg=;
        b=DQW4tJulnHmel5llkEbL7N97lP4oTs4pj8tO4YqXBhKrZdPzR0Fa0jZuEVYNG5NSAT
         YDLNgsieAtHdBbc8vcegYlTj8dwNpLIpz8wQl1m2MoEZiot5nV4BxHv8DejU9QifKSln
         VOlbvFbx5hHxBWyhvnqzXgS10SHmy7xM/EmD8w62w+D2RX/zxHiG7rabzOrUB4xDFa+g
         BWvnzygCtMa9iXMBKqdwO10CCVHUtx8BSrW8yoij2HiPADaXjDK7Hb8vhmTlgKa66Yog
         Bz8vQQckF+lwel7LRa7wb5ztR55wel5kpGIVx2+0se7FFQIoLYHcccFEA3RiRsxk2xUt
         W88A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCUAkvIN;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c6si588149pgm.2.2019.03.23.03.58.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:58:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bCUAkvIN;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id 8so3222412pfr.4
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 03:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mPem9k7NsWCSie452luFScUTH0LqFmqbG53o9LX0Qmg=;
        b=bCUAkvINIk2nKa9T4sGUex52Eaygn0xN9j9I/h2dPcU1gi066e8xGmGQ2Nh320YMf4
         ELtG/cYR/OPhBw1DEqMZUK4rhHr9u/E8B7jTILgtJxYQLHa/iQvaMHBboWNeAtmMXGye
         esCyyHGN+4x5fX5wiSitcGKnchoca0tZBfhxQR99bLD64ScBKB3XLwoFi5qDewploA5p
         Vt9wV7JOTMixOHPq43QxtXnroeqR0d8wBlBIKsjTAwyZRifT+8Rq7cqjhsMyo8gNq6Ra
         lzXBoIg9nZ8k+YHKGn4Ge4QVKwhMIG27Zx7zj0JmDdGh8zz/2+s3M0Jhf2UCGF4OwMEq
         XR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mPem9k7NsWCSie452luFScUTH0LqFmqbG53o9LX0Qmg=;
        b=Tuyhjlro0lpctp0VfzSs+FF/eAhPWEhPkHVQiByhJ4fMI3AUEsoJ2RyvBeLxyUoWWO
         DBnxG7iAaPJxIp2Us0hcFakRPgGNtVRN5cb266lrADfJA230g/IWbfWjpt2f48Zjpn1Q
         a5anwHaB6lOh2fyaF6cErznJvg8fn4TLf0wopqbKCYOW6nAFs6ofJLabZ+1fQFDZiCX1
         rXd45ccGwtQhIvV4uQ3EPWbGGkmldJHJBz7ns4EIJGwL6dQbTqkG+Csn0NJSndowxjvm
         QCwXKgIj6Ektrk4+vDZWsrnnmxOPmAEC9yebv7wmIuxyPj3O961EiEndGBpX0l2Vlfey
         7OxQ==
X-Gm-Message-State: APjAAAVS+Krcm1nar0IQM0cmtdZeZKnDmVUHRKdAmm7mogq1Yh0WRbDA
	+u7SxJ+cGm61nyxl57uA2usWneh1UdM=
X-Received: by 2002:a65:63d9:: with SMTP id n25mr13712845pgv.243.1553338683188;
        Sat, 23 Mar 2019 03:58:03 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id f1sm10013603pgl.35.2019.03.23.03.58.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 03:58:02 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: include: Replace 'int16_t' with 's16_t'
Date: Sat, 23 Mar 2019 16:27:45 +0530
Message-Id: <20190323105745.31401-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Prefer kernel type 's16_t' over 'int16_t' to get rid of checkpatch
warning

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index e729ecd5e9ab..d3deb18d3267 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -1142,7 +1142,7 @@ struct rtw_regulatory {
 	u32 tp_scale;
 	u16 current_rd;
 	u16 current_rd_ext;
-	int16_t power_limit;
+	s16_t power_limit;
 	struct regd_pair_mapping *regpair;
 };
 
-- 
2.17.1


