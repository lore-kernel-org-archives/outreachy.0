X-GM-THRID: 6463317881648054272
X-Received: by 10.36.109.205 with SMTP id m196mr965778itc.2.1504858462047;
        Fri, 08 Sep 2017 01:14:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.77.78 with SMTP id l75ls946754itb.9.canary-gmail; Fri, 08
 Sep 2017 01:14:21 -0700 (PDT)
X-Received: by 10.176.64.131 with SMTP id i3mr1290603uad.17.1504858461250;
        Fri, 08 Sep 2017 01:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504858461; cv=none;
        d=google.com; s=arc-20160816;
        b=PglvqUNRJiAy+GLfmk5jXXMcp7+AN919IbHAxFYHHCDZy5PlA/J3IetckdsCNCMEYY
         qdOKWcdM9oqQ66cFekRkwWRMN+q763Sxbbe1uY82GcLJ+qtIXtJx9B0zMas+ZlxJV+qx
         MRTFPr7GeyQXt/jlV6GBomwgNUkuPiDjDwWbqpjfptGeMRKLoMoWvpVDnQ5pBMMuxKh6
         3di6YAjL/7UFWmyjnpTAC6ucH/ZJ/oVgp457F3XChv4t2kAKGsOr7sMI0pO9F7ImB65g
         VzfZ3JhePo3fa7KvmThNdd5q5gKaP5hQcrOwBNqu2Ape3ABL/Ad+ijKa9t/Su9Zcyy9t
         8HbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=NUGxqtUU+Dy0aAkMDcSgoBkAfagoM42R86mtRONHfrE1aETI5yM1CS2528Hh6rM34L
         RNe/QL4pUjMH1uYWt1vhG3Md92hwsByDPnNOOFz1QvmsDZ07BrffrIPKcWSe0BHjC2te
         SsOzBAxwjMhh09e4PtatbzVKxLerMdZeiP7cuy81oPLn25aLYYvNwNOfECXsmtL1tTWI
         qfcVgulOC9iDGC2adyjvGhLhLfcpSYpnwX7SB1eBUm3Sqsx36jbnBKaTvATG2OcHUHzR
         bA75EgnvFSG44c0yFZIRTrx4U3Od7UctXBNtHSCERbHPKiLsDVwHwaLOUnmAf78K29O5
         JAHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XT/brccC;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id t77si191409pfi.13.2017.09.08.01.14.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 01:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XT/brccC;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q76so1085031pfq.5
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 01:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=XT/brccCCBSWP3UN2VMATNt8h4T9y4MaB+SYn5BzQfXBCIQayPvgdkPAQMg7JA7LOI
         I0Sr1UpbLSF6IFrZBcDEy3emPINxcPK9T2P5tkj2YRGQZmlTHtDjDOdHM+eEk0pNnuKl
         AkDCp8mN9O8z7MDm3cAoPD9k97N1w1H8y4Ks120UXuuTMVczeY9DtDdeBq6CUZh91HUA
         KV57u1weI0das1Dqnx2Z6/D2Xh5iX1RDnha1itzNUj+1H3J5+Z3FZD7J/Ngro3fU8EQZ
         JA1eEm3DE2i3oOdQ+nZ2neHEFP3TkrdyT45YtEn9bI9+DqjZyqUi95xXGlKCxpNVevUO
         /IBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Pa9mrbdQHZhFWRiEsua1bLiYJPEpvPOAPg8Pg09UiBs=;
        b=J3h9eCKI5l9ov6xXDWBb4Lb/1isgRbVEfhdbKsPr3IUVQYqGNWbeX7PyYCRW5slqMO
         12iS/K67DvXX40Dz6xi5youLC/jKAp/YzL0ZE+Awq6ii+ZyB6/tC6dgb8d8B3t5+cH+F
         B8RNAHenqEUHrtyQc9LJ6WV32w6nKu49KstXHfflB+TqvYEoD2gAT4k4UxkSPaQX8mJL
         m1IkeGRbG6cE6wOFMSCOT+C1VZlUF6gaF4rbpc+zWOUANU5dvqbre6AjZUcGmdt9PRvD
         d6+mfZtX7pAPOTbP3vKG5TXQU23L6QojtEfj3vi5lZdwV3uqNOUm4ngFeCvi1QF9w6ht
         Z2xA==
X-Gm-Message-State: AHPjjUgLpQ4lYVZWSboesfudBYAWPFbpSxbiYugNsQJYOX6XPMfVxapO
	PNpBV8YqMgMQYg==
X-Google-Smtp-Source: ADKCNb7crw+qAlk452t/gFjbuPftL5RZtm4yKA3zHM2MFKDZaQZSHXiLAcCOtqrNnX7XdGWR75Nd2w==
X-Received: by 10.98.35.209 with SMTP id q78mr2361827pfj.36.1504858460975;
        Fri, 08 Sep 2017 01:14:20 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.iitr.ernet.in ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id d25sm2750933pfb.1.2017.09.08.01.14.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 01:14:20 -0700 (PDT)
From: harsha <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	harsha <harshasharmaiitr@gmail.com>
Subject: [PATCH] staging: pi433: pi433_if: Fixes minor typo errors
Date: Fri,  8 Sep 2017 13:42:23 +0530
Message-Id: <1504858343-11850-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixes checkpatch warning -- "occured" and "succesfully" are misspelled

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 6b9b7df..6a10478 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -473,7 +473,7 @@ struct pi433_instance {
 	}
 
 
-	/* rx done, wait was interrupted or error occured */
+	/* rx done, wait was interrupted or error occurred */
 abort:
 	dev->interrupt_rx_allowed = true;
 	SET_CHECKED(rf69_set_mode(dev->spi, standby));
@@ -1033,7 +1033,7 @@ static int setup_GPIOs(struct pi433_device *device)
 		if (retval)
 			return retval;
 
-		dev_dbg(&device->spi->dev, "%s succesfully configured", name);
+		dev_dbg(&device->spi->dev, "%s successfully configured", name);
 	}
 
 	return 0;
-- 
1.9.1


