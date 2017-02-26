X-GM-THRID: 6391115303185547264
X-Received: by 10.13.217.82 with SMTP id b79mr4329512ywe.13.1488113456162;
        Sun, 26 Feb 2017 04:50:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.138 with SMTP id g132ls2918924ioe.5.gmail; Sun, 26 Feb
 2017 04:50:55 -0800 (PST)
X-Received: by 10.36.105.6 with SMTP id e6mr3086898itc.26.1488113455681;
        Sun, 26 Feb 2017 04:50:55 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si2333594pfa.4.2017.02.26.04.50.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:50:55 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o64so2826356pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gRgA6UQk8fhxtA/MljUIbxUmXH/jpFjTFADGMUFJrbk=;
        b=jqNHTV8FeiGFDXeDYGXnzazmzXoI45XWtSahOxAN1CcWb9bdF/La3HjIrR6yODksmn
         ecuZhb/sIGIVZsQq6zMkZbUY5ftIVqWCYzweWMTsFn2U/crLSpQmzoC6E7j1tC3uAH5U
         ckSmY1vsOdxl9whaA57aUUL31aSvk5n55fnTfrkBSDoIXuaLAjl6BLh7PBycTOUyzqSJ
         J7mk0Yzh0WRBgsHoOG8/r6O6PGYI6j1JQBMv6Xamo5nFjmJn1/UHZoVNaPpzq+dCNcSk
         kJGUZDjfv7BBEVr+McOeiH+/B1R0iuWFka2sVWGFvQCbJyulXhTLRoeSCXlMWnptgjc4
         wf2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gRgA6UQk8fhxtA/MljUIbxUmXH/jpFjTFADGMUFJrbk=;
        b=IihGTXO2qb8wxnec/h6cmsDUxbPuy7OzAGZKUAiYldoEs2Sr/yjXlk6+if5YPlivCZ
         +tj9SjjTzgDGVc6n8L8Es3ocCDj3KwNShH0XVdkiWqV0IvF+eLDqo9z2D16B0H/AczwO
         dbxVY7gb5j2WnyDuxlepBCytYPpbDPZLaY/IDnGPdpKcQVAS+K9EjfOY9qB+NvUOWF+A
         t9bizPLcwMt/uZTV0Kw7lI+Y2Rt52zi1A3nsyK7QfTdVlYu1aiwn7zXgMzq3uI+vPnnR
         zUdlDC+p2+/yd6+kRXc0HEgcMRuWogPDNgxE639QKDe1pptbHMHQgw0suP/4BHB+2U3o
         Y3cw==
X-Gm-Message-State: AMke39lQYlrpAKl86/VRnbssE0p+yrXq0JHhTgXkBq4iv4eXcrVchqtzH61cNib+l2p3fQ==
X-Received: by 10.98.90.196 with SMTP id o187mr14676717pfb.30.1488113455500;
        Sun, 26 Feb 2017 04:50:55 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id b195sm24733620pfb.106.2017.02.26.04.50.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:50:55 -0800 (PST)
Message-ID: <58b2cf2f.cc1b620a.5252.43eb@mx.google.com>
X-Google-Original-Message-ID: <20170226125052.GA17804@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:20:52 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: sm750fb: Added spaces around arithmetic
 operators.
References: <cover.1488112339.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488112339.git.varshar186@gmail.com>
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


