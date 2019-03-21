X-GM-THRID: 6670815133562830848
X-Received: by 2002:a24:3c53:: with SMTP id m80mr112276ita.102.1553192081360;
        Thu, 21 Mar 2019 11:14:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:4c81:: with SMTP id q1ls2267150jad.0.gmail; Thu, 21 Mar
 2019 11:14:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxDZT6NA+oJI5X49GEL/KtIbTsD5bqzjuEtdTPo0L59LkPLh45n11OW6ZdDTE1+w70juB/b
X-Received: by 2002:a02:62cf:: with SMTP id d198mr4087346jac.64.1553192080636;
        Thu, 21 Mar 2019 11:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553192080; cv=none;
        d=google.com; s=arc-20160816;
        b=K3pVmbTD/nRLFdxMuduYpQp7JldxsMRSikgDyxGKJXaHpfYFX73mUw6fMs4YF/U4gK
         /IV85yChUj3cp+OS5EoxdXbTHtanA7UNuPjipZOnECaxHJD1X3zQPpZJCwvqv2ndgVPO
         HFb2Ve3gX2s3eo63howmWSBjV2/UMJ/aI8CxHyR+tCtsd/+WgMSE8RwCfMdLUolx3rTP
         Y7/LKrXo4Ua0LKsgDeHN4MPEdtpRbYFXEOfGCtyo15/OC8qSiL4+M3OHmyFItDhkfktY
         gHDIa3ZMGRmArDwUFZL1AJR0SVW93McSBZ9ehBaxKmzmuOHcwcOsLW1hMUabr+gtjtSu
         qGVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=7yz3TYjkaC0hOGZOl7dpmo8ciWvvEGfyd52Gva4pO5o=;
        b=yshwIfi3Zr3ApccJIaud0SnRKAX3FbYSoKYIwKWfBZNVKiT1jReuqI1E+sKsebiE6b
         hqXM+J637DRSNmcpre/KC7x5fFSU0WVbFoVc9fWOuGEV38r9Jgh4EOeU1OwZsyjyrBzv
         /H04MaPzrGLV28NeKwjYrBiJCP/+sphl1bWIk6z+GynCpxiU42r2EAcU9I8SGnTYAv7L
         tkkX6O8g8dKdzsWjcboLpG+EnfgQFh4ZJ4tz/m/h5OEOciLEVDp0OnPoCTUXbm/QMAkH
         XylVSKYbjIA/t4UpnCJJpKY7Ys6zRzZarHij1Hg1llR094J9pJtiLOpUM55pbse0zJ5f
         zpCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sQ3Ja6Hz;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 65si644286itx.1.2019.03.21.11.14.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:14:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sQ3Ja6Hz;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id u9so4734154pgo.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 11:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7yz3TYjkaC0hOGZOl7dpmo8ciWvvEGfyd52Gva4pO5o=;
        b=sQ3Ja6HzOqOW1dJJoUqpj/XkbHDzJmLVc9mPe9r9gB7XpcqgNexbNJvhE/PtHa7kLG
         Uflbex40c1bYnU91thHPIODBWckZBK4+jiUgCwEpeRgC1o2HxDzHIHR6mPyuv058mJcC
         sNAbyWI/Wz1mmAJTUZcg3tVd/LbsKXo0Ucj9oSW/Dp3fViTCeOA8fvFwMlMQqK9+hfZI
         l65atyFlkRYeKD+ZxxuXaYZAQ+9bf6xaBgvoxiZPeW+4EfUSzv0PWke0DwL4sLSE0U0A
         JRFKcNhi/VAlZb+oBBQZS0g47pRdrqohVeKWEIFupfIPDehdKu8nmd1yV2fYT2P8/lcJ
         dEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7yz3TYjkaC0hOGZOl7dpmo8ciWvvEGfyd52Gva4pO5o=;
        b=JTVLY+WFg4Tv08eytPfRIn2shwvK5Z7z/s85pwZ1zKi1HvC9eY6j+4mNDcEQ2Z4S8h
         tVIw8R0nFz2kRSNJooB3Tn1Nexyu2phlhtDAeV0jUUSsOeG7lMrnjTlbRIsRylWV6Hwz
         xxhlOrfRdfoBACk5lmB/rbFAAPidl6866YncFVuVosgorkMkeigoFAlGQRSc8Kv4KtgC
         sWLdE0dXhb8xA/DUdjgP4JY8eool176kFwwQ0Z3xeZnMuaSZ5JTkTvRhuP49vEkO3KxW
         oWMyBHQO3kMqbxaXe2hmaPkyum3Xq5qeuYRTASIUUiTst7OKSJ68jnqj3GeBkNr3m8l3
         Tanw==
X-Gm-Message-State: APjAAAV0aobusHBG6mZL7IObDGWII34mQAIFE4z9/I1gCdMY1vJIghkt
	6gM9rNPUUj2rUjiwPc70cnjpkvCP
X-Received: by 2002:a63:f905:: with SMTP id h5mr4399823pgi.223.1553192079974;
        Thu, 21 Mar 2019 11:14:39 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([49.34.112.101])
        by smtp.gmail.com with ESMTPSA id v6sm7296251pgi.90.2019.03.21.11.14.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 11:14:39 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2 1/5] staging: rtl8723bs: include: remove typedef for struct pno_nlo_info
Date: Thu, 21 Mar 2019 23:44:01 +0530
Message-Id: <20190321181405.6219-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190321181405.6219-1-himadri18.07@gmail.com>
References: <20190321181405.6219-1-himadri18.07@gmail.com>

Remove typedef for struct pno_nlo_info as the Linux kernel coding style
guidelines discourage the use of typedefs for struct types.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Remove extra whitespaces befor *pnlo_info
---
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
index e2a4c680125f..df85267363b8 100644
--- a/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
+++ b/drivers/staging/rtl8723bs/include/rtw_pwrctrl.h
@@ -159,7 +159,7 @@ enum PS_DENY_REASON {
 };
 
 #ifdef CONFIG_PNO_SUPPORT
-typedef struct pno_nlo_info
+struct pno_nlo_info
 {
 	u32 fast_scan_period;				/* Fast scan period */
 	u32 ssid_num;				/* number of entry */
@@ -168,7 +168,7 @@ typedef struct pno_nlo_info
 	u8 ssid_length[MAX_PNO_LIST_COUNT];	/* SSID Length Array */
 	u8 ssid_cipher_info[MAX_PNO_LIST_COUNT];	/* Cipher information for security */
 	u8 ssid_channel_info[MAX_PNO_LIST_COUNT];	/* channel information */
-}pno_nlo_info_t;
+};
 
 typedef struct pno_ssid {
 	u32 	SSID_len;
@@ -279,7 +279,7 @@ struct pwrctrl_priv
 #ifdef CONFIG_PNO_SUPPORT
 	u8 pno_in_resume;
 	u8 pno_inited;
-	pno_nlo_info_t	*pnlo_info;
+	struct pno_nlo_info *pnlo_info;
 	pno_scan_info_t	*pscan_info;
 	pno_ssid_list_t	*pno_ssid_list;
 #endif
-- 
2.17.1


