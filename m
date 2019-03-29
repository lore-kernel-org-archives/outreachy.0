X-GM-THRID: 6673447635063406592
X-Received: by 2002:a17:902:b402:: with SMTP id x2mr650666plr.135.1553872298203;
        Fri, 29 Mar 2019 08:11:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls1098870pgp.9.gmail; Fri, 29 Mar
 2019 08:11:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6vZhLYgc+BnUDfVhepAeDFVij9ojI0jfzSwnp8L3+TN+0k7SLLQyzg9TIx8WoG6A3csfP
X-Received: by 2002:aa7:8753:: with SMTP id g19mr736375pfo.0.1553872296952;
        Fri, 29 Mar 2019 08:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553872296; cv=none;
        d=google.com; s=arc-20160816;
        b=MWgqIFYYEA9j5ZgAj9hbtccRiRhF/T3G3E6FjcKCVjL5xi4I0/OptCU/ziyCvopqAE
         UG2Ca43iMeMHibFnPCWIHS7HHIMJpBEfW5WsRBQ6VH1BvEurDj3X2KiVqe+lqlpKLOS7
         rrLQFGE2lRzTsHwMUFy7tX7Je6tCReMS1+ogpnPIzDkFNAKaR7AWio+kXP2V3EJ2logT
         ANaoA1XpG6C6GAwpMURCqlhcd6+FR7KwSqR/w5XOXs+uM0TZDFpzogDCu2cI4WS3phoS
         ADIBJ/FaDCVRZo1ihauhJ0yutGCeY6I/KgYBKG8kf6rbspxKE6Fs1//3YrlADo6aCO/O
         GkAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SQOk/+xsZPvgbodogwkkeDaqkUM3TH6h4VAW/bPcQjw=;
        b=rIumojMzOsaGedsGep8WOcO+aPHuutd51v6VbgG3IOLTB+otCOdSPUvDEONTQZLqwB
         6qALKiyIJNLLQ0tB/R5N9eDqJQS4WD6uzAoWFT5F2Zf+52XxUOvEk9KovfQmN7NoA2qz
         PyDKlxVinNUZGJ78cPsH3CbdxoZTXNv229tG53IAARw4S1kscn8tmEdsUc0c3PoFbiG+
         PaXCmIxxuGvb4KyT6oetgirSiiqVBNPXwaMlZYLCJ3iVS3ZLAciqHX2lYETguA/bHGiP
         BAfe/3p+XS77J9ZyGduBMuwRIWx+EHO87a+2urC7AXv0FNZ0F8LlRnkAjyZWs5/SgnCj
         4ETA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U8vXJmUg;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 141si178698pgb.1.2019.03.29.08.11.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 08:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U8vXJmUg;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id 8so1207934pfr.4
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 08:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=SQOk/+xsZPvgbodogwkkeDaqkUM3TH6h4VAW/bPcQjw=;
        b=U8vXJmUgNhJHJxkHDi40bXEp+vq/8vMV3gMpwb7Mm4AQZNk7ibLgRZpkv7FYwLeZtj
         vLqR04dFCt0MapeX0aCdt2oevNWlPOCn8vzelxf+M7hPjaFrBmiQgkYSq3bEgHCwxI7T
         al6wpBL6fkyAO8yHZ5BZAy6Y3ArGivSp6RyxP3o7IAsL8z8LAkxkebFitFWeIW1KxJ4n
         dhJZlnXWPfR38kpQP7Xnhw9C7je42KuS/LxqRqraZmrGZ4nVDAOuEQSgogbGdfmA9XnC
         YUJL1b8ePRTPntJTUclMLq4Zh+ip3Y6YrAUl5pu7gFG+Jo4dpZFhfLtahIiQD4+v9Ea4
         +AmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SQOk/+xsZPvgbodogwkkeDaqkUM3TH6h4VAW/bPcQjw=;
        b=mwpN/5uY6MPilPlPd2JsjlXl4OIQX4jphvCQS2CxDH/CTDw9ZSBYtjGvIhaXimWniR
         6Wj+cd1QVB2cGy9SJnFkQnej/eMHwbQDl2vO9i6uAP6J15PN94TLTLZ+BUEwfz+4pLsD
         gJ9p22Cv4AUWEAOeBTjUyByfgp3TJEgdkIxs9bz70cOoDGjQ/UbO8CVpMNK3kaMHbssV
         rFeyMx1snNFUVtBqTHAXPop1cNNpK+vSNYO3qylg6dMDyuCTdShh6qaQn375+M3VFdXO
         qEZeQM+kMikS/V0YghfTH66N3jx2L88StTF5LjNiSVVQU/Dl09XyTGu3G8S+tJyz26eQ
         RpSw==
X-Gm-Message-State: APjAAAV/AmeGDEFsWX2ujCja1eUSBSIAgsyylI5KimtEPI5KDOIRbMPK
	xPqOVSs1eKnBGFXqBgKDsaOwQ7Bb
X-Received: by 2002:a65:430a:: with SMTP id j10mr29481428pgq.143.1553872296203;
        Fri, 29 Mar 2019 08:11:36 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.161.1])
        by smtp.gmail.com with ESMTPSA id j20sm3149474pfa.158.2019.03.29.08.11.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 08:11:35 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2] staging: greybus: Remove unnecessary parentheses
Date: Fri, 29 Mar 2019 20:41:20 +0530
Message-Id: <1553872280-8194-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Challenge suggested by coccinelle

This patch removes unnecessary parentheses while returning a value using an expression.
Using following semantic patch:

@@ 
expression e;
@@

return
- (
e
- )
;

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
Changes in v2:
	-Correction in typo.
diff -u -p a/sdio.c b/sdio.c
--- a/sdio.c
+++ b/sdio.c
@@ -94,7 +94,7 @@ static void _gb_sdio_set_host_caps(struc
 
 static u32 _gb_sdio_get_host_ocr(u32 ocr)
 {
-	return (((ocr & GB_SDIO_VDD_165_195) ? MMC_VDD_165_195 : 0) |
+	return ((ocr & GB_SDIO_VDD_165_195) ? MMC_VDD_165_195 : 0) |
 		((ocr & GB_SDIO_VDD_20_21) ? MMC_VDD_20_21 : 0) |
 		((ocr & GB_SDIO_VDD_21_22) ? MMC_VDD_21_22 : 0) |
 		((ocr & GB_SDIO_VDD_22_23) ? MMC_VDD_22_23 : 0) |
@@ -111,7 +111,7 @@ static u32 _gb_sdio_get_host_ocr(u32 ocr
 		((ocr & GB_SDIO_VDD_33_34) ? MMC_VDD_33_34 : 0) |
 		((ocr & GB_SDIO_VDD_34_35) ? MMC_VDD_34_35 : 0) |
 		((ocr & GB_SDIO_VDD_35_36) ? MMC_VDD_35_36 : 0)
-		);
+		;
 }
 
 static int gb_sdio_get_caps(struct gb_sdio_host *host)
diff -u -p a/power_supply.c b/power_supply.c
--- a/power_supply.c
+++ b/power_supply.c
@@ -337,7 +337,7 @@ static int is_psy_prop_writeable(struct
 
 static int is_prop_valint(enum power_supply_property psp)
 {
-	return ((psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0);
+	return (psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0;
 }
 
 static void next_interval(struct gb_power_supply *gbpsy)
@@ -424,7 +424,7 @@ static void check_changed(struct gb_powe
 static int total_props(struct gb_power_supply *gbpsy)
 {
 	/* this return the intval plus the strval properties */
-	return (gbpsy->properties_count + gbpsy->properties_count_str);
+	return gbpsy->properties_count + gbpsy->properties_count_str;
 }
 
 static void prop_append(struct gb_power_supply *gbpsy,

