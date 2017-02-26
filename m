X-GM-THRID: 6391112880745349120
X-Received: by 10.36.122.149 with SMTP id a143mr3072720itc.37.1488123580777;
        Sun, 26 Feb 2017 07:39:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.10 with SMTP id q10ls1654099itc.3.gmail; Sun, 26 Feb
 2017 07:39:40 -0800 (PST)
X-Received: by 10.36.108.70 with SMTP id w67mr3247786itb.16.1488123580082;
        Sun, 26 Feb 2017 07:39:40 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s64si2672501pfk.0.2017.02.26.07.39.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:39:40 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id j5so586399pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/HL+7niFiYXZF98TlmGoQZI1mEp6oHzz/GibkcbxI6Y=;
        b=r9yQcKEOPCqyxXF+M09t5CXMGEi119bT9aYn0Jr+44pwSCza+TUfbHquqHoODfb3oS
         HggbfRFhpvnaR7ifSMztrlyk29B6Dq/QGkfRGG98eFMZ7ITFAuyiRNwuUmkXZrixRIb7
         u2Z3841TY4GGyRLsFmeLLsMI5HhO46afAoSdAIsRif9QRBX1bfNaWgZSz4S50ZvFZWhf
         gBBbEw78xW0KFHHulcyQtquxohTEXSvtZBqnM+6YY4ToS9kvtz1O2nGONyW2705qSmso
         Gi2gAFwXAKOISAe1Cu/8+Zy25d2NVJaQ9/30mCWjUVbVylVsOo3c6mndKCXY9axwQy3b
         sSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/HL+7niFiYXZF98TlmGoQZI1mEp6oHzz/GibkcbxI6Y=;
        b=FmonIsVtPjR5LkZ+6h1wyPOPoADOD+hK4ohGsik+wS6VfFWRKGpL5rx+lixRda+EIc
         4Ai8zHZKHcWSyinQfKH1PsszJ/HCXdoLJeE5e7s8eW5SLw+w6XunUiCyM2AvO338Qmau
         Ty0QgjHiuMRSdf8sE7iPziP2ihvJpj1bq95ec/Y/l+vm84YHXRtAUFl76VMN50UerNGv
         RAiNE5DnAzr1mRO03O3pUSqSZoF2QwsKMPfmxpz9JUd0ZKNV8henbAKJl+UFWqxfGH0t
         qjEJ89ijpVhUmTmjsgoBojJzvp9Nz+ll1Jro1kOwOxSdeKqbhvmziZcgFVr7uFimtMjE
         Jr6Q==
X-Gm-Message-State: AMke39kGJJDuhcxP/jDDXCUHaKAfP/9tvz99Nw44FGuz4uSuwu5p8oP39fvlb7zFv+CA6A==
X-Received: by 10.84.205.70 with SMTP id o6mr7785928plh.176.1488123579876;
        Sun, 26 Feb 2017 07:39:39 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id l71sm25567441pga.32.2017.02.26.07.39.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:39:39 -0800 (PST)
Message-ID: <58b2f6bb.4a3e630a.a1117.5dfb@mx.google.com>
X-Google-Original-Message-ID: <20170226153934.GA28904@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:09:34 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 1/7] staging: sm750fb: Add braces around if statement.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added braces around if statement. This patch fixes the following
checkpatch issue:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4:
- Added proper version number to patch.

 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 10cf729..7948ca9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
 
 void sm750_set_chip_type(unsigned short devId, u8 revId)
 {
-	if (devId == 0x718)
+	if (devId == 0x718) {
 		chip = SM718;
-	else if (devId == 0x750) {
+	} else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (revId == SM750LE_REVISION_ID) {
-- 
2.9.3


