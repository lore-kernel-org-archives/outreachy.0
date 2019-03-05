X-GM-THRID: 6664981263437266944
X-Received: by 2002:a1f:a94c:: with SMTP id s73mr1529417vke.16.1551811877063;
        Tue, 05 Mar 2019 10:51:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls2000010uaa.0.gmail; Tue, 05 Mar
 2019 10:51:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqyIDs5nMWJn1o6RBCDYezyV4EEO4D7FL7QCQEg8knkiRWfQNqJ7OnaBGhMUsGRDHapUQMwt
X-Received: by 2002:ab0:7103:: with SMTP id x3mr2517693uan.14.1551811876296;
        Tue, 05 Mar 2019 10:51:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551811876; cv=none;
        d=google.com; s=arc-20160816;
        b=fVg1SrHm3mhrijpfpSPUrOQ4a1VjLYWAgZ60rFui7k7NclmTG3y8Ep4mlQVmWPBj9f
         gmJTKrZfqwl6vQL51+xPinAAlpp/2/HLwf6hf57MzkvQuTAqLTUoaNQW6Pg7XGYy7JlB
         lv3Ewyc0BM5z2eVsRZJqvDcllAh1XDVxEFOFOW/3pOgYixQvjiWYBIrUuV8IjkLu1CT+
         GmQz0JtWWAHG3maecRzuF3ToVfWvw7EoCFG9n/5gKf4jFIZLov4Bt40lE9Rs70wb8/v/
         1YIPsHh0nxRWfbf6ZKAfd8tBBcCaqKT3q1sPbO4RyoqWPcpkzdAB8gLF9gwU3LwfjEtf
         pyfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6qK+o6FVtdDomzy2itKjRQseNWBhfsZIEjRtiWbjumo=;
        b=TCNgtaVr/em/CyG7QADgH5tSWtwULLHgasKRlJW1YMGLyPALaaGzhzFRjjVNVMU9WN
         SVl1DNrS0k0NkIRQ3Bg/hqegRKrLmhcN5hSyPBUWhvpXhy3ditDN27gov61e7wGNgh6O
         Tl+ZrVBviEbarC5aozFpUYpndZam3aSTObq3QpTbJEHUS5HNBxmcdnuf6MMdprqJ7TCt
         fm8qwIsLoiUU1UewDdpa85uVKYomnARiZnPBGkDGVGuuEODfVnCF3g0n9yHl+Ht613xD
         BK53cBDSXCeuEZW/kOOFAgMjTcB0iMjLsELO0jtar7oAneaW6S5mrH9LkaeWECLHkyCo
         TWNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iTzU11aL;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c15si537501vsp.2.2019.03.05.10.51.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:51:16 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iTzU11aL;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id v21so6369314pfm.12
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 10:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6qK+o6FVtdDomzy2itKjRQseNWBhfsZIEjRtiWbjumo=;
        b=iTzU11aLZdWLnYcGu9xLKKZwznfQFnufb1Q7VTxYG0kPHLvWsLgoVv/RTDmMhfaIVK
         daNthc97q9Jgz2jKODCNG3kb/ooSS1AAKt1nDzB6ibsDi+CjlISkQNW9zNyZbd1J1Mpj
         bs6clXKkV22o4yo/ttg4zEy2qTf84HZW8VZuABlP8eM+C+iEAhCcEffYpO0r9RSEhRmN
         +vkX9lYHvt7ltq7jhPlcscH2rLuXKtwdJF6KylN9DScaXE+CfI3am03d3hX95HJS4Bv6
         1n9TCWBVX4ePxX4icPmNcfP8Fu1rJs91CrDf9sV4CfaV5x8MPmrJec+ixyUqyi3jkQi/
         QPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6qK+o6FVtdDomzy2itKjRQseNWBhfsZIEjRtiWbjumo=;
        b=J0RdA6Mg+XIkDXqWFLOyPps+bNcxS+iniDctcuwkIx6bX4jh16kq8Ki4scdemkPhrS
         GHsBhuyOIvh82JTX/783k9oYWQ3d/53ob1MrbkHAfXArYSMrUn8M7LsniKu1wHp973kj
         SrIHpU95NIybYb3IhQlDYbqzdpVUeEg03Oh4skpQh9GRyb92ACJcT/rTqZWAKyIV4w8R
         oOctFp/MdPvgiOL4/KX5buMeTU72KrTQ/mRwmgPC+fiCC1VqzcLgBRNC9o5Ec5WVvJGx
         NtylQQOaSlnk2B/o2w3hUwp7T7eCAwKhAsaekCMhGv4R/WNDeM7LrwDE/lnlipQPuI2e
         kdjA==
X-Gm-Message-State: APjAAAVr+t1m5XhErz7OlC0rYBuoCNPeiGL9wkwRac97/0sMiEgR6297
	qUP0G/Q9FNF3PGuKn2kyz7Gwmy9xe9af+g==
X-Received: by 2002:a63:5459:: with SMTP id e25mr2716445pgm.131.1551811875050;
        Tue, 05 Mar 2019 10:51:15 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e88:a284:c1b4:4aa8:71c5:d127])
        by smtp.gmail.com with ESMTPSA id v5sm13779192pfn.81.2019.03.05.10.51.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 10:51:14 -0800 (PST)
Date: Wed, 6 Mar 2019 00:21:09 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/1] staging: fbtft: convert a macro to a function.
Message-ID: <20190305185109.GA2942@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a macro to an inline function to improve type safety and make
the code simpler.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v3:
  -- Change the subject line according to log messages.
  -- Remove extra spaces.

Changes in v2:
  -- Make the converion from macro to inline function.

 drivers/staging/fbtft/fb_watterott.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
index 502d67f..40e5427 100644
--- a/drivers/staging/fbtft/fb_watterott.c
+++ b/drivers/staging/fbtft/fb_watterott.c
@@ -90,9 +90,10 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	return 0;
 }
 
-#define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
-			   (((c) & 000700) >> 6) |\
-			   (((c) & 0x0018) >> 3))
+inline int rgb565_to_rgb332(u16 c)
+{
+	return ((c & 0xE000) >> 8)| ((c & 000700) >> 6)| ((c & 0x0018) >> 3);
+}
 
 static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 {
@@ -116,7 +117,7 @@ static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
 	for (i = start_line; i <= end_line; i++) {
 		pos[1] = cpu_to_be16(i);
 		for (j = 0; j < par->info->var.xres; j++) {
-			buf8[j] = RGB565toRGB332(*vmem16);
+			buf8[j] = rgb565_to_rgb332(*vmem16);
 			vmem16++;
 		}
 		ret = par->fbtftops.write(par,
-- 
2.7.4


