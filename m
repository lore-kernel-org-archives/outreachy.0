X-GM-THRID: 6528793900377702400
X-Received: by 10.13.249.199 with SMTP id j190mr4718022ywf.82.1520103286228;
        Sat, 03 Mar 2018 10:54:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.146.65 with SMTP id j62ls655531ywg.34.gmail; Sat, 03 Mar
 2018 10:54:44 -0800 (PST)
X-Google-Smtp-Source: AG47ELsRM/F2BQGqIam/6Rz8HLzJIUOR5IZGXvs0FElLEcxmMG4hLcfercFSUgiuBHshIyQ99U4V
X-Received: by 10.129.85.74 with SMTP id j71mr5097758ywb.190.1520103284857;
        Sat, 03 Mar 2018 10:54:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520103284; cv=none;
        d=google.com; s=arc-20160816;
        b=to49kA9GJikXTb+C9aIblR3DHutupptzwzRCm6Icilw28MXVaGGl4D17gs/tV4jwSu
         VQYL05Qcp+829iekNB1E7ywR6fxJLcLvaF5nPzK1NWWdb+DW0Jd04paxpNPKiC/diDaO
         GPv0mKb4NPi6Ie3FCo/DlNYxmwrtQ7P0ZwthpbBAJ9ghqt37AsBch8wbVCx/9SF/c4lA
         KaLSoYZCqac7Q+RTZ17gJXMw6PSUoDu0+3SVBrhrKOO8pZeaTBRcjkF0icgdqozhjzrp
         ZPWHZHznCsBe2aaY4wLnLsuRNeb0M1vUrPY6HiRnDEejAqRFlW4mTp8/Lnwl3pypIaCI
         a3zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=ipwrp8KHN082vEJ3ARkEVs/i85xND1UOYrXsnFokmGs=;
        b=y8JMw9rhO2BdmNcFY8mQjb2aWObRWD/5uu1TPXffDpi7I/0Jgr/HfklN/a9xUYth4o
         tBU4oNp5UMfptA5UvpvkIs8B+V/oDwJ8cdSwo0k5vMjLnwmuDs+QA7BO1W3gmw9fYG+M
         3R8mCN2gLq/Von3gW+aGv/4pFMLMNnBPWqGtL8XLWhwhKT4BGE5MZUfXVJP2H59uLDT5
         mp1oTkRHbR4g8fUycyVHFJ6i4OyukNENw3Y11LGWpQP7aswvv0d7l2JoWPUMbZCuE5GP
         4dNRjU0kDOMI1updyjpFtQU3pLZphMo11DauVTaVS95WdrNktqr4IHlQ3Zb/3CvHcxAP
         i5aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=KPtFckxp;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id l13si565329ywm.0.2018.03.03.10.54.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 10:54:44 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=KPtFckxp;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id y8-v6so7483148pll.13
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 10:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ipwrp8KHN082vEJ3ARkEVs/i85xND1UOYrXsnFokmGs=;
        b=KPtFckxp8VQ/aN/JdVVdLbToOXc41rp4pcZORgAy0PIqO1T3M4VruD6D5UNuqH7bip
         LLAD2B2nNMJ6aP+1xCSdUixVmk03i7MX2Hi3unDtSr/mg3wtYqLuco/cr8Um0LU6aR48
         kPFDc3+Cq9uGMcuY+s4BNQ5R8rvQNNp5YzuH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ipwrp8KHN082vEJ3ARkEVs/i85xND1UOYrXsnFokmGs=;
        b=qWK63vmlrcLSwJh0pbshwfF6jPn3h1uV9pSKN9qVrgje3wnAh7Ks0Hjt+xuUlBkAwB
         choamllyVS5MxKcRR0BsbyF/IfCHsUCW/ePG3hyuzKpeT3Hg1/XfMihuAV/Vgfekwn4h
         nAcmy3427BQPYiFzY0LgCwIMnSBNKONinHSl6Z33RLliTHBOoJBGeHXY71H2sz3H8DeM
         pldkzjUjMwaWc/OPURhFkoeH0YAQsXDOYa6iFcKzsC8g/oBF+pLLcc1OMx0imvmBXfkA
         wOVHgPLJLrK7OCCmHPRseWcZym1WRUfVOUUZ5tJ7jxREG1tgJk2Q9KReyN/1AH+jK9Fw
         3rRg==
X-Gm-Message-State: APf1xPCOfcscGkMH2TBDsonxJBDxCwfrRg7XQgY0ucwlKT+szuCIpmFL
	LnKhSap8mQ5MjcdW83OjDNeA88u2
X-Received: by 2002:a17:902:b7cc:: with SMTP id v12-v6mr8602961plz.249.1520103283711;
        Sat, 03 Mar 2018 10:54:43 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id d64sm18520713pfa.118.2018.03.03.10.54.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 10:54:43 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	eric@anholt.net,
	stefan.wahren@i2se.com,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: vc04_services: bcm2835-audio Format multiline comment
Date: Sun,  4 Mar 2018 00:24:28 +0530
Message-Id: <1520103268-23674-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Format multiline comment by moving '*/' to a new line. Issue found with
checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 22214ee..0630040 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -279,7 +279,8 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
 
 	/* notify the vchiq that it should enter spdif passthrough mode by
 	 * setting channels=0 (see
-	 * https://github.com/raspberrypi/linux/issues/528) */
+	 * https://github.com/raspberrypi/linux/issues/528)
+	 */
 	if (chip->spdif_status & IEC958_AES0_NONAUDIO)
 		channels = 0;
 	else
-- 
1.9.1


