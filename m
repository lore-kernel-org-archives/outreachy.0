X-GM-THRID: 6478323397894864896
X-Received: by 10.157.38.253 with SMTP id i58mr9534065otd.56.1508352216642;
        Wed, 18 Oct 2017 11:43:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.199.140 with SMTP id x134ls1195378oif.14.gmail; Wed, 18
 Oct 2017 11:43:36 -0700 (PDT)
X-Received: by 10.157.0.97 with SMTP id 88mr9990608ota.8.1508352216125;
        Wed, 18 Oct 2017 11:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352216; cv=none;
        d=google.com; s=arc-20160816;
        b=QyCSJG4DLbjQIXvepqUVDu7eipKawoXg2js0nV9OITRM4IckZerUiyYMEpwSkkKiLe
         5Z/k0A+kEifYgYnDI3uFBB7U3IZaCqhiMuNa8ES3DGxfYx7gl99WC62Otc8xP6RW+CHI
         0axlP1JLdNE0xzB2hiuSYBatsqHsXiEYMBkHyPX8iCSUdMeUySc8XP+YkUw3rxX722/v
         JamCdDkF1ZWVdlnD2phzcAxlLB5HKWbwMjxmPL+gRmg80OHKWE6TUsWT2eMNz+tXE1cJ
         nAHHEiuvL1OTSIXvvaHbEnJ/giQZQSCDtNlHrbGR3Bi8gKpElPw0dK4jfvMNRq6xszzO
         77RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=MUSC9pKpPcMDlVAWlG8mM8pYxUOf+n9chjsTi6oo1ms=;
        b=zQl2BkdwA8bFgSmeWxaybXeT5zfKWr5yXK5fMob1Vz/llow+cJLyRJB1BZta8H3/H8
         cwFaMafbA2dt1ckX8P7z6Gax5tmSB3Y42NPdyb4pOWrbfmD4MVZwtx0BJZRoUde42ffF
         2xE2ckII8t/pfCfjAh/pytiOaNEOXSWSRr2HoqlqH/AAyZjBJbWQ6uZ3DkBDIZMru+xZ
         MGcIedyNQQ/INzlBRzzNiUfKt3b1SlNxSwoo7uUsVnQ74IsG2bkocBWsDMHEoNU07nqw
         GuA67UspF9Rza90frvDxJr9dmI0EopKO9W3PewWB2D7uRpRbFNDqspPW08VOeoY5JUXb
         x1eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a/QWd6pe;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f22si772352oth.2.2017.10.18.11.43.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a/QWd6pe;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id y7so4974399pgb.7
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MUSC9pKpPcMDlVAWlG8mM8pYxUOf+n9chjsTi6oo1ms=;
        b=a/QWd6pelwpLCZLSn8XZdfiQVlMKGuWTXwAV88RdNUUqqPDTQ7eCsYGHBFMxUdL6m/
         YqMkdtaR/ldneQ+TgkUKx72qgkodReYddz+J57w3iogQaqOD4dEEYgcFXE1p3Ke9jN8E
         bLSlTvzt8DqZ4hjEEN7K0Mn+ivKaUrOx1OijG0P1o7XhYvyvn9ZR5RLpXsmz4+H0AnH5
         Qh6etbbMYPuKQ2Feb3EMFDDs7KszcVVXHT4RFu6YhCQGphqNNyQpTLH301c8183jUgxH
         fGVLdGA4ykNlLFibvCvF2O8WTpu+Ngki+7Jr/SgNEnljqgATeQProyBMcilo1K0Y3X2e
         l9eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=MUSC9pKpPcMDlVAWlG8mM8pYxUOf+n9chjsTi6oo1ms=;
        b=G1azTO6BWfXEdi6YtvW6sYvukzjcQFqEn1VVIsS+cM9pD0qwIfKWW4nZi0edtyAlMG
         PpCSdB1e5MVtN6IMI8hi6Sp5tShuoP+49kZufjv7Gb+0MnnVnhLV3evyafn/c4nIPjFL
         uk/+35Y0G1imkL3TkPwXsNe+LTcZaavgKa0UkPRxZiY3OPsDKV7aVGY9nDNPg1qMtI4p
         /CiYelp18SG1jWZQBeA1VrvFs+VAXAjNDI5Zf40iFd58oPvnYsgyN6lmixj2UerWHs9+
         duDT+fwhZY81ecetcX8cfbwxSZy59L5x+/KDKCKCX/UxObo13x5g6x3QUkz6JeyBSD+U
         pHWw==
X-Gm-Message-State: AMCzsaUvTWK0dyBlId2ORCys5i5Jd3guttAtPzgQacW4dGLWEo7/Hkve
	k2PoUcfIYC5lAjwbzYVg6LY=
X-Google-Smtp-Source: AOwi7QC/MY06aDkzCNc+kLYR3DGtQ93w0pfbSZYaw+Oma0OVRboK9mWZtxRkSTB4ZAfEmjN6Lp4Wag==
X-Received: by 10.98.155.219 with SMTP id e88mr15712707pfk.218.1508352215651;
        Wed, 18 Oct 2017 11:43:35 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id u8sm20167286pgp.17.2017.10.18.11.43.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:43:35 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 3/3] staging: rtl8188eu: use pr_cont()
Date: Thu, 19 Oct 2017 00:12:58 +0530
Message-Id: <1508352178-24942-4-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>

Using 'printk("\n")' is not preferred anymore as
printks without KERN_CONT are emitted on a new line and
KERN_CONT is required to continue lines so use pr_cont.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_debug.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
index 9cc4b8c..9974125 100644
--- a/drivers/staging/rtl8188eu/include/rtw_debug.h
+++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
@@ -106,9 +106,9 @@ extern u32 GlobalDebugLevel;
 					 (((__i + 1) % 4) == 0) ?	\
 					 "  " : " ");	\
 				if (((__i + 1) % 16) == 0)		\
-					printk("\n");			\
+					pr_cont("\n");			\
 			}						\
-			printk("\n");					\
+			pr_cont("\n");					\
 		}							\
 	} while (0)
 
-- 
2.7.4


