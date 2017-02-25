X-GM-THRID: 6391115303185547264
X-Received: by 10.157.11.27 with SMTP id a27mr3239054ota.125.1488047489980;
        Sat, 25 Feb 2017 10:31:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls10000887otb.17.gmail; Sat, 25 Feb
 2017 10:31:29 -0800 (PST)
X-Received: by 10.129.157.75 with SMTP id u72mr3112588ywg.11.1488047489682;
        Sat, 25 Feb 2017 10:31:29 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id c123si2000598pfa.4.2017.02.25.10.31.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:31:29 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id m88so751853pfi.3
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gRgA6UQk8fhxtA/MljUIbxUmXH/jpFjTFADGMUFJrbk=;
        b=K0svgoUbSdYLmt8nGVtWLLrI9vudCIsFH8pVL3lGPcg7HB+4zFLSK0OMaDEYAnF8P9
         hoEn40ytjiudhyjcqa3kH8B/TRzk0xEigqaXEYZvnd38ddYM9d/9WDOAzme1G7aN22Ix
         vsElwP4ArOPX91OvGSUxO36B2JHLpNa5tU6IvVWYOjQCLol2Dtz3jZsZBOU8kpc4NnTg
         rOxofPEqcZMJlys/hK4VthqujkCSFPWiCPqAOlYM1pFd6Q8fugst3KyAWQJ9cYg05w6o
         P/hpQY2XXTdpQ/+6g4BT0GGgGDOJE/wad5vUzKouRMX333htd3zQ2Yix6W0jWzY/5UAr
         QTjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gRgA6UQk8fhxtA/MljUIbxUmXH/jpFjTFADGMUFJrbk=;
        b=j/JWsqVySkbHjo3voCGWtTE4vpgdQ0ZZcyah70bIT65hCU7WzW1LsscZ/2U8uN2ekF
         uuFNYynyA1VUSZGiUUU16iUeUoG+FW2obQ9YDo9RavJHJ0d6PoxjbHAiCOeI+zO7eRMF
         hyiY/6kYnbtg5oetYNPjggDekG/63flN9qIiVlE+zhwXyG68o7he9Yxqa1PG3biKx1m5
         /Y3cDrEBto+ooOV7MtNxh3Lmf12DK4XRocZy2b5vYxHYtgIqNK0xkKkRvFh+xFBnTH68
         yjzBiGDKj7o2mJ97LhoIkXvXZsR19gwbHQKV0aFujiqdkDlM49VkDplwI4BGM25xUs9h
         SY6Q==
X-Gm-Message-State: AMke39na6HxJlKBrry7h248iDl59UP2x5eeZ7pbOlziCqbKeWjknGyR2jsJghVG0ffr/Pw==
X-Received: by 10.98.144.218 with SMTP id q87mr11205841pfk.51.1488047489458;
        Sat, 25 Feb 2017 10:31:29 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id 202sm21764295pfa.6.2017.02.25.10.31.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:31:29 -0800 (PST)
Message-ID: <58b1cd81.d300620a.e578c.d240@mx.google.com>
X-Google-Original-Message-ID: <20170225183126.GA7066@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 00:01:26 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: sm750fb: Added spaces around arithmetic
 operators.
References: <cover.1488045682.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488045682.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added spaces around arithmetic operators (/, *), to fix the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/sm750.h       | 2 +-
 drivers/staging/sm750fb/sm750_accel.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 28f4b9b..306711e 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -177,7 +177,7 @@ struct lynxfb_par {
 
 static inline unsigned long ps_to_hz(unsigned int psvalue)
 {
-	unsigned long long numerator = 1000*1000*1000*1000ULL;
+	unsigned long long numerator = 1000 * 1000 * 1000 * 1000ULL;
 	/* 10^12 / picosecond period gives frequency in Hz */
 	do_div(numerator, psvalue);
 	return (unsigned long)numerator;
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index af0db57..57ae743 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -384,7 +384,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
-		for (j = 0; j < (ul4BytesPerScan/4); j++)
+		for (j = 0; j < (ul4BytesPerScan / 4); j++)
 			write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));
 
 		if (ulBytesRemain) {
-- 
2.9.3


