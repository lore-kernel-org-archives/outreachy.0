X-GM-THRID: 6670726051308503040
X-Received: by 2002:a37:7604:: with SMTP id r4mr669341qkc.27.1553163241105;
        Thu, 21 Mar 2019 03:14:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6d:: with SMTP id z45ls2203965qve.5.gmail; Thu, 21 Mar
 2019 03:14:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrNxKvsWZZu5JfvojFmROShfe2u8oVDq1pFTa/b7/NJY2wloGN4XKuYysQAWVLwN9b8TWY
X-Received: by 2002:a0c:96af:: with SMTP id a44mr777592qvd.49.1553163240360;
        Thu, 21 Mar 2019 03:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553163240; cv=none;
        d=google.com; s=arc-20160816;
        b=SK2F8XOJqDUtsC2MI91Tm7+QrxIlxJ83qB8xOE8QVQTfY/jPq6H+alM2rfUDJ1EAST
         2MFeIL44Wck+gWNNhj6tcscRL4i6jgw3Bh1jsCv/OrCoipXz7Vo5A0lxRChiKz83myFt
         KPeZfLmHdBtz2NS6Ff13akd19fIOuVST1G7zJocXOPq4GxzDWL5lb1I/amGus/5zUN0E
         FWKUx5x+iPudIO/ydQBG14JpUK0tT0bGd+0EV5LL3LmhtkFT3ot00F3wq7ItG+bWEb+i
         E2loTKkpA5kHDEaslFjFf6x933OJCz6LctM79TGE3CC8MUp7SCPX0Ge4lsmUEbbhfA2n
         VIhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0yHDnsuOVtAZPT3xnm4S8mZkvjCF3dRT0U5xQESnqCk=;
        b=09EvJrqqyTQb8Gs7t0gWegXuDq610DhSgAswWl9wzh0T7+AySwgSJAxCVzjY985COD
         TyRHwt7QyaD/Hi6iGFMXvrj4ANJd8qpmrloLrNLHdaub440IHw09Hmn7SjtL8HQ3VU+z
         g/q8D/5VD3KwqPkRo5e4eVZn567n3phrT4DdDk2pJwyHNjiGsKf3lUkOz0JmJSzHrI5s
         CrCy45vCSWLLCSTYBoIWNVW/j15RmL2AFF24jQycYRhkh+VhM7NaDlliO2v6RwJmieFQ
         yp1s6BLz+NmEzUmDlJK9WxeLVqPRj5nZi6w68Vte1PHDYkNFUX2PrbonS9+pk9NRr2Jl
         eQNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsMMgEFA;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id v2si266766qka.0.2019.03.21.03.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsMMgEFA;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id 8so4004113pfr.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 03:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0yHDnsuOVtAZPT3xnm4S8mZkvjCF3dRT0U5xQESnqCk=;
        b=rsMMgEFAou0hDapFISrxiBQLhtgoFNo2Wl+JrQiaow/++LURKA/rvrejYO5a1yDx7N
         Nwsy62FrygxzQi4JIDA3DfoId8JAXf3ZmR9D8RFrT9g3ZZLps++Yltm9KgKEQ5iNvAVO
         Qkg7UGaiShxUyA5jL3GTVaFs6AX3AKUNoVT6SQ1hr/LK1v6nSgMZfQqSEWdw4zPGfQ9L
         +tbtfRPEBHb57hk3EUuCOAN1mAzPO8TVER0MvtMKCK8hL4MBuZNuUmknlOwgAIb/bWKG
         fEoc4caa3BXQvp800hgLIQ5dok5bsQ8uhh+OuNIh+cztbw+kzce7C6rRnpmhKFePj/rD
         zylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0yHDnsuOVtAZPT3xnm4S8mZkvjCF3dRT0U5xQESnqCk=;
        b=EVs0n2PzCvb389zYrHcgS5kvbn6Hbq04dWthnyW1XEoo86orEXe9KC4S9T/vnYUxkm
         M0qd0XMpu2ZMBOmGdHDS7cSuvhvUcgzELQZhOZ6mJ06rKIkijG4juP1SazjK7dSvT7Qh
         Ak3Yi0OxilQY7J6AW8zMWSyEhAf9PPJ/7K7it91mupO5yQzfasLzE9SqXaf9PVj+Vw2J
         oAQsOVDpcfr2burzY+VD40pyS2VwbHlynZ3Nm+CgS4p+RRtfdXnwPqczLI/stcxYRWFT
         vsXBFXZehGGkVhWGvG4EYye3OeY6Pv6G0TaU19WO3kwy7lSIYGNouIfLQ+fD+sbURQAB
         fn1g==
X-Gm-Message-State: APjAAAW9T6gHNKrVLFSYHU3rNZg+vYzB/s/8lJoeDiM0KJp11ZxwS/lt
	HAqT7ls3lWd4pOEDPeO0f6wf6eDm
X-Received: by 2002:a63:78ca:: with SMTP id t193mr2579524pgc.253.1553163239207;
        Thu, 21 Mar 2019 03:13:59 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id p86sm7175229pfa.104.2019.03.21.03.13.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 03:13:58 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 1/3] [Outreachy kernel] staging: vt6655: spaces around operators
Date: Thu, 21 Mar 2019 15:43:45 +0530
Message-Id: <1553163225-10581-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around operators.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/vt6655/rf.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 4cb7030..600c920 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -702,9 +702,13 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
 			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL2230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL2230ChannelTable1[uChannel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
-- 
2.7.4


