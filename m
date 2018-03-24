X-GM-THRID: 6536479698699943936
X-Received: by 10.31.150.2 with SMTP id y2mr13772622vkd.16.1521892777100;
        Sat, 24 Mar 2018 04:59:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.2.1 with SMTP id 1ls1084615uas.16.gmail; Sat, 24 Mar 2018
 04:59:36 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtAdoJAK++n6wuSamPP/FWdp6/ta9ZHDZNcDJ8HOmPD1kmHV6D4HGQjpkC99GODrURUmpAn
X-Received: by 10.176.76.46 with SMTP id l46mr13558975uaf.30.1521892776012;
        Sat, 24 Mar 2018 04:59:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521892775; cv=none;
        d=google.com; s=arc-20160816;
        b=V9uhiX2x3pJ90hsengpw+tTEfYPZoBcGEnTBIR/jhe80ETouB1ov/NiIqGCLMJdgu3
         VhOW7U3wMILrD6TW62reRXwkuYuizrT4WA3VJzawiejTv9xW8O/G9ui22DtgfPar6Yj4
         gaXOIuMcVxZVVnnt5VfmVfNaSHMPoSPhHUfunCRzTaZGb2UP9OxLjC36tW0+2Rh40dna
         MIAh4nptNzRNYY+CdfoN0ixi7xTBIgCKjDGJGoWE4Qnozd+58elrN6w0TVKO23qV9f/y
         RDNHylEdODWa5ozXYDEqXgcQmKX8lI/08cvWREAU49MttwskrEFIXhYZ3A0Pw/NBg0UZ
         qF9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=LygKWVtYZ2LkxpPB9psuRfihaA9la0DfyLFV+V7JbGg=;
        b=OWyQsKT8rhykSBGJMbydWSFEvWShzV1PXjntPwQP3cxGup/vPgR8C7iCVi+amggPZS
         3clDbsGFRHO6aghZvkKWvG/v4rl3eP0CYZ+M1rNoLCDMMrRRikdF6omdSDUMa0tUW7Nt
         MMZeb9REBs/8XGImihaPCQmnYAtcZ/tYP6W/+2bgFY9s2whE1MGVqdYOT33sih8FmR2e
         ZJanVGkRCcSm3zpy/DycLyqYnTnzahHSaOpCJbPyv+cM/5ZYFWPRqvfrVtvXtcoADm10
         qqsEdn4QQZjPjPH/3VjYXBvq1Wca4Y1iYn40Pf+1ScNZg4OpNnPh3cPLwIURLxpTPrYq
         pLhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YpMi8hj+;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x231.google.com (mail-pl0-x231.google.com. [2607:f8b0:400e:c01::231])
        by gmr-mx.google.com with ESMTPS id o194si939304vkc.4.2018.03.24.04.59.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 04:59:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) client-ip=2607:f8b0:400e:c01::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=YpMi8hj+;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x231.google.com with SMTP id p9-v6so9040150pls.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 04:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LygKWVtYZ2LkxpPB9psuRfihaA9la0DfyLFV+V7JbGg=;
        b=YpMi8hj+dv7yWwLLcIudAVI4swVllgjP57byJFBcK7WGHOE80ATxJz/fCms335DxIt
         4Dgw5CYkdifu5Z6dM8mzCq6aUhOWo47yTYw9kS27Z0DFJAJ3W8YhEuJdCVHVLo1roL4y
         x5DNHUohPM3kdKvox9ghSrqtNoSyQCUIABm5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LygKWVtYZ2LkxpPB9psuRfihaA9la0DfyLFV+V7JbGg=;
        b=SN3S0Eqc1bxECwp5XyShqB3CbVWwRutIItGJMEUy1YWFViPSpZHgS1xMlaDbK/wW/w
         239HwJbpDOjmmsRy19qjbhCqP7L8N5fCEPp9t5Xjva9MyTJou2Mju5p8JIu2kNzv6knq
         z0ku0R5l9LRtytNBTsvreOzof/v9oDFfbeKzPO1UzunJE0sVEZ16MMzZbUC/FvItRtWg
         ownYq9VZMjYCCNvDQ1Zvii4n3oNy2jE/gwP8ezxl2GlSC8IgFdtYGuD+r7BG6emz3suI
         GuxFWdBiYdysRvtobJYogUh4SGmmK+xwfZsG/k6jY5yYQFZBz/WQzfcdpuSbPYf5O2ef
         Ye3w==
X-Gm-Message-State: AElRT7FeT0PAH8DPdn9SKrgiYXau+opixjt9KZnezSwaVU5Wp8l8Zd90
	lZ6UHNQwPpL2DGZxjYSi8cMR29jn
X-Received: by 2002:a17:902:8697:: with SMTP id g23-v6mr34080700plo.393.1521892775245;
        Sat, 24 Mar 2018 04:59:35 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id x137sm25460453pfd.162.2018.03.24.04.59.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 04:59:34 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3 2/5] staging: vt6655: Delete unused typedef enum _CARD_STATUS_TYPE
Date: Sat, 24 Mar 2018 11:59:15 +0000
Message-Id: <1521892758-27981-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Delete unused typedef enum _CARD_STATUS_TYPE.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - delete the typedef.

 drivers/staging/vt6655/card.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 07d9fa0..5884fd5 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -39,12 +39,6 @@
 #define CB_MAX_CHANNEL_5G       42
 #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
 
-typedef enum _CARD_STATUS_TYPE {
-	CARD_STATUS_MEDIA_CONNECT,
-	CARD_STATUS_MEDIA_DISCONNECT,
-	CARD_STATUS_PMKID
-} CARD_STATUS_TYPE, *PCARD_STATUS_TYPE;
-
 struct vnt_private;
 
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
-- 
2.7.4


