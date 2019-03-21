X-GM-THRID: 6670815133562830848
X-Received: by 2002:a37:4e87:: with SMTP id c129mr3868826qkb.250.1553192167739;
        Thu, 21 Mar 2019 11:16:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls2799830qvf.0.gmail; Thu, 21 Mar
 2019 11:16:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+pmvF81I9UuhD57igXjxhZlaKZZTVwkG2LrVxWpn3d0YtIhrHsCKpYPfqHgF2duAZpnnm
X-Received: by 2002:a0c:e014:: with SMTP id j20mr4366523qvk.172.1553192167207;
        Thu, 21 Mar 2019 11:16:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192167; cv=none;
        d=google.com; s=arc-20160816;
        b=P3ehlz4TwQgcc10xwGSI6nVNi/t42EHnT+SjhoVB6KF/zrjItNH3BEqe4m9DnUM456
         XTzwXjugXwqE4i88wryw23b049PSQA762lMfdxpEDbfAWpUJpu2cQr9jOG5Og1jj+LKs
         QixUQsFf6tmWJWDDCCjSGL3UpONwWp2737mUtTXLJYgVpgw/s94S/UuTDsV5pgDK9/sK
         MEK40WThMdKjIOFCvaKTJ/n4e5x5PE7OTYe5K6VNa5Kzov/Tz8/nioBfqAb71hkDaHhR
         Nql35IoMEnUW9fZgWKO8YqK3Zbw/PpfFXiBQ8rzndB/5wlJUibFiCkqGzdNeNBtZ5tpz
         YQkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=jNFsnAHsL9LJ/aFydLUZHGe31tRf/Uf3CmZk8KSFw8M=;
        b=kpz5QU5DUCa7GJAyU5OiqFsVL3Nc3+nN1PpZXyFdFei965jrW18u7syhtR6LS7E9bp
         G8T9UXWqzoBK3oJgoxWoK+uGhfhANStiT6cvQExMGrzZN3SU2Jd/NlB8Vu3R/uBBcoV/
         WpJWEEiJEp50wMipkQnJl7HLVU/jlf0kOeCDBFbcltMg6xA8NO94PgexxQwkuN0CbgBO
         XsGDIvQlOW5NhmxmmjITdWnobn72LIuVaXU6qFQV3wFua/6n+in2DeYC/klbmd1u0TgT
         sMHv0pzH90bgIQpMz0B1kxcdwRaxNmA6SO3p8SjLpp+vIa6kNUQnOW/lVg6GhOvvy0BD
         74WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFrK93nm;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id o59si355855qte.3.2019.03.21.11.16.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:16:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFrK93nm;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id c207so4818199pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jNFsnAHsL9LJ/aFydLUZHGe31tRf/Uf3CmZk8KSFw8M=;
        b=vFrK93nmcK4Ipl/SnszSv47Ir5gTDQUf/mXR/yje03L/c//LEBmTaPE3NQKSz+6qHa
         ZGDYuW/CKBg0VZY+Es82yc9BcJ4mlzcVlt6HIkfiQLoxB+efOgfNLLiav61pVIYMgJHt
         Z1KJgJX/ekWmx1MTHACEVq7ttax+gSVCCnajGkXaHIqmoWuh6ZzZ26ZGMdZv9S9E4xCw
         hvqh7xLAAXIDt3TBmOlAZi4EjBL9l3+KjKT6CNbsP6TSkXm5Y1eVsxJ6Ue0BZMAoYxz/
         y0Z5oO/MuXFQemKy4LAYABZmkM8y88rZipBEVuCxpgewDebPYFY4K6IhpC2mNLpkSh0O
         fHtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jNFsnAHsL9LJ/aFydLUZHGe31tRf/Uf3CmZk8KSFw8M=;
        b=ksR56ARQmpO6NYmswUyrUk79PPn1+5HcQXtZBexiJ20p+sR/uXIfmVVhbRXqhINC7x
         AoB1Gtp4/wLHlhOlswO8yVPNX3E32Q8x1kI8TbrJB8wUJLfZ/JK805XdPxFHEdSjgjaY
         ZmPaz8QdBJODwMCs4nyls8nEi4PEgVL1Z+/2NwTwaBKHJFACgLbx3I8VfZkShYzPE5dr
         d1B2ydStzTEZrd0GOKe/0aO9N7ozZZ2m3wautW6FzdODPZocAzNKrapgasVmSkGCKA+B
         vxXdA+8b4qxdrpXOEW8Upe9OLSdpbFWJe8sYpzNVRPPChzKh0Ps2QJg5W5OSKun6iWsX
         NCxw==
X-Gm-Message-State: APjAAAUhD31+21gHjJQc6rWy+HIZAly18kSC03BN4dt32pypN8ql3zT5
	hSO1hgar6dUcKoJDrkvAuHg=
X-Received: by 2002:a65:6219:: with SMTP id d25mr4542806pgv.155.1553192166815;
        Thu, 21 Mar 2019 11:16:06 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.112.101])
        by smtp.gmail.com with ESMTPSA id v6sm7296251pgi.90.2019.03.21.11.16.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:16:06 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 5/5] staging: rtl8723bs: include: remove typedef for struct pno_scan_info
Date: Thu, 21 Mar 2019 23:44:05 +0530
Message-Id: <20190321181405.6219-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321181405.6219-1-himadri18.07@gmail.com>
References: <20190321181405.6219-1-himadri18.07@gmail.com>

Remove typedef for struct pno_scan_info as The Linux kernel coding style
guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Remove extra whitespaces befor *pscan_info
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index 3ea04bff0cbd..2bc922ce5ae1 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -187,7 +187,7 @@ struct pno_scan_channel_info
 	u8 active;				/* set 1 means active scan, or pasivite scan. */
 };
 
-typedef struct pno_scan_info
+struct pno_scan_info
 {
 	u8 enableRFE;			/* Enable RFE */
 	u8 period_scan_time;		/* exclusive with fast_scan_period and slow_scan_period */
@@ -199,7 +199,7 @@ typedef struct pno_scan_info
 	u8 channel_num;			/* number of channel */
 	u64	rfe_type;			/* rfe_type && 0x00000000000000ff */
 	struct pno_scan_channel_info ssid_channel_info[MAX_SCAN_LIST_COUNT];
-}pno_scan_info_t;
+};
 #endif /* CONFIG_PNO_SUPPORT */
 
 struct pwrctrl_priv
@@ -280,7 +280,7 @@ struct pwrctrl_priv
 	u8 pno_in_resume;
 	u8 pno_inited;
 	struct pno_nlo_info *pnlo_info;
-	pno_scan_info_t	*pscan_info;
+	struct pno_scan_info *pscan_info;
 	struct pno_ssid_list *pno_ssid_list;
 #endif
 	u32 	wowlan_pattern_context[8][5];
-- 
2.17.1


