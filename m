X-GM-THRID: 6666325868481085440
X-Received: by 2002:a17:902:45a5:: with SMTP id n34mr7303412pld.120.1552124942882;
        Sat, 09 Mar 2019 01:49:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1f03:: with SMTP id f3ls5266001pff.2.gmail; Sat, 09 Mar
 2019 01:49:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqzQVLXslTAnxiWw5iOiWmDWzQ1nYRE4fz2DxNcYfqeIGmMm2tW9AIMMe9m7T+lpk2wcByD6
X-Received: by 2002:a65:52c5:: with SMTP id z5mr8850056pgp.71.1552124941003;
        Sat, 09 Mar 2019 01:49:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552124940; cv=none;
        d=google.com; s=arc-20160816;
        b=dGTa8oBcWutC3ySHrUzb5rhxbsZXrUHll06OHRALC8CZ59+JNdk/Dnim7Tv8Bv0dMx
         wZf6oVQc50OG1gaTq3FObzFI6ch2b9TPpLbV9TFscVarQbzsVZinDBcnvjO2/osVfGVs
         Bp6VStZfzXjjL9lNprT4mcSZN6Um0XUre30b0M59r9iWZEkYjfUQiuhlMYJBniDWhVN+
         P1FCuDgErWPitvcaYfJ8z+x0sPsrnrOt/nRsbWZknZwa4ScXRnr+7mcCGjFE21Q35mJy
         j4SYI6J2S4jY/ZrfRj18JE7BlJErzVOu/kEkoAOg/vmCht+ehVLGxbFXH/eRy8HnYdaw
         mlhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lbUNy5Csosz0f8cvX6nkk6k44OG+ahxMEcpGd6lCu9w=;
        b=BB1JS2cMGVWSi6rRWUY0oMPKUDd/YXtezazx7tf9KSvbQzemjnFF8iOJ8rgHt/ZB0a
         sRfY0Qmc9yko3PeU9USBgvHb510WaOB+M9o9yPF6GobbcLgjv+7aSAGq1uB1HeX013YH
         i1lglxcgnaqDqoUa+0IKKwpMsgK8IO7G0asB6nZQACb/mGhOHt8DCJ3r1vh23jC4c6YF
         gSRJIEf0Yx8xzJ57g1Hb7yY3MvvciL78WRMRQ6p7XZ0FDWUuEUJE15kc8iwVRYtwLqAK
         yFD5QocSsZMRK3pnD8YLZebcWWUSqD7+mquyKT5EVYb912Znjf8Ne1CivqYMNuVHfQSo
         aZ1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EzVo2KSY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q140si7501pgq.2.2019.03.09.01.49.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:49:00 -0800 (PST)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EzVo2KSY;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id q17so15986060pfh.10
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 01:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lbUNy5Csosz0f8cvX6nkk6k44OG+ahxMEcpGd6lCu9w=;
        b=EzVo2KSYlB+ZISnHG3TgXXXEXTqIQ+G+IsqklLQ+NylPqKNsBbg3hXwkey/b9y2ZYN
         l5xwrWDYpoG7RM5IjYmH5ZvpV/ESr2hAmlBwaKclTnVrkqhT+MSRsCp0CGA6t3zHPqjD
         vMZJ6duWo297ddImmV2YQWG268jwCTpYMhoba4KhQDejsOJOFamifPr0Zb5RHyb0eiBh
         MVk/WPkeeJ/Wlr9Fcclnw/V48IgxazgdpLdWTOwvGSaBzUAqDZQy7bDYXlEaqWusdlKU
         8AnXPuAYf3+Cz2KZMQlwOQNT3ugpNedEXAc4vOKRMGqqIJqlq2uNfTKixH5S+VdmKBQ0
         xMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lbUNy5Csosz0f8cvX6nkk6k44OG+ahxMEcpGd6lCu9w=;
        b=bRf2EYRzCTKfIDzvLRQmGQALziPPU7UxMJLlxmOqj3mvnp5EYxPY5gS0w9F/TNSuQP
         CMI85plaYfPPhYwVrFLmpbWpTQnLPTxNdpQg0MMqgv7PvbK3KSho4nCyLd7d4IinGHFr
         q+Tfz5nPnytXwMk5R93YMZ4ZF/s9jOto3Pio5icn9xtMviq/D41HaRhdLhWfDybO6RFk
         TmGcyVGv/9jP9+MDFNPFVXl5uBi1AtUPBNG8+CAmIWHfEfAcU6Chyzbm5kB6rUY6a5XW
         eJssKvN+uU4zKMA7X15N4m3KGbc5rivgYFHz3hIqj+qrnxXKcBsDsorRhdJf1242IKgP
         WzkQ==
X-Gm-Message-State: APjAAAW0jU1Z22ZCcngB9+bhE2h4KdlO9CmLfDlyh74MsW4G3lxcDOK+
	2rmJfFe+zbToRNT3Szz1SLE=
X-Received: by 2002:a17:902:3324:: with SMTP id a33mr22526937plc.302.1552124940650;
        Sat, 09 Mar 2019 01:49:00 -0800 (PST)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain ([157.32.145.236])
        by smtp.gmail.com with ESMTPSA id x1sm160651pge.73.2019.03.09.01.48.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 01:48:59 -0800 (PST)
From: Himadri Pandya <himadri18.07@gmail.com>
To: adham.abozaeid@microchip.com,
	ajay.kathat@microchip.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH] staging: wilc1000: remove unnecessary variable result
Date: Sat,  9 Mar 2019 15:18:40 +0530
Message-Id: <20190309094840.38154-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary local variable "result" and its assignments from
function wilc_set_pmkid_info. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 4dd9a20f6a0b..962c5e6edd5e 100644
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
+	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
 				      wilc_get_vif_idx(vif));
 
-	return result;
 }
 
 int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
-- 
2.17.1


