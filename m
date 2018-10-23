X-GM-THRID: 6615237556487323648
X-Received: by 2002:aca:ecca:: with SMTP id k193-v6mr14012493oih.21.1540313958308;
        Tue, 23 Oct 2018 09:59:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:338e:: with SMTP id u14ls2184412otc.9.gmail; Tue, 23 Oct
 2018 09:59:17 -0700 (PDT)
X-Google-Smtp-Source: AJdET5d+0WODv7siHqxKr3ShcnLNe+Hn4XxQcu+J6PTNsUZm3NtL2y2E+6deQ51V+Ua52JemW2wI
X-Received: by 2002:a9d:3474:: with SMTP id v107mr3745137otb.71.1540313957810;
        Tue, 23 Oct 2018 09:59:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540313957; cv=none;
        d=google.com; s=arc-20160816;
        b=RZG4ixc6VQDz7kQBcwg7nzJpY97hkVaI2hZH0Z8ecso6LDpTZMfW2zwieP9ukJo6wG
         4Wk46S7o2gksUdgNAX6Cs+L/il3YCsArWvgMO2rubOvaMu7ujjYQ7FIXfSHaxmzWKS7X
         f/KIdlh7t8fBXFnq/8KB3R0HRDEJeMIKzVAmxZHoqNrSwm0OmOw1N1QgjHFKxZ9c7mPm
         kDDbiAk0VYUay7SIS2y8LtzFzzDTfJBAqhBnxIBE/PyNwfqzS73aLW/2PWlZSummId6O
         6eaZ74cBbW4EwxvvJAoYUo7WKXaCDKh10CcRt2BSodwPMvFaP9rF2HSgIuxdolVhF9hw
         +SXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DjmzAzvo7snVZ3OY7vuzmuK1OxQPZy48eWODDIisnls=;
        b=QEtuprqepFwpRC6FQKgDUwNP4OLs5ZsDl9Vmj6w49dclBCW2TATgPGxDcQCcMMYvJz
         RZObB8M/OA7uAcV1eAQKd94U2CmQyyzEfJxNsUTmtL5NK94U9puD7OOixTT6dIEA3qdL
         St7A4BiNeD7mMPqFs3BaMNWjIRlUpM6K9Pp48fv4B6ZzYFhfrl0cds34lbYGZ75j8T3A
         noDfs962mZJHihjJZl93ZGpmtm0eBqGbHzQFCmsPacZbGSewgfwVl4wEdVrBjEm1RjPZ
         Ct3UJytKyJlLxyaIhF9H2GoMiGBJMXDghUjfLp7mqHniFxvyzRx/iIGRXEx7V8fvuuHm
         2Ovw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VQ65H9Ag;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com. [2607:f8b0:4864:20::329])
        by gmr-mx.google.com with ESMTPS id i126-v6si64070oib.5.2018.10.23.09.59.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 09:59:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) client-ip=2607:f8b0:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VQ65H9Ag;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::329 as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x329.google.com with SMTP id o14so2109125oth.4
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 09:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DjmzAzvo7snVZ3OY7vuzmuK1OxQPZy48eWODDIisnls=;
        b=VQ65H9AgsOePmSCjWdUi/5Sl0wt6TMh7Cjm12V5dM3YEJMR6GPJMLUanL57hDl1Dh/
         RT4mwfagGoeOP7+T4SBs3UBxBfakoLScciZfktlEECiOi+/RLGMd93/NvWzm7akiGcfL
         1jISpz7CVEbfT9WzJZmt4qnOP9guS2hl6Fe7eTpwG5oX3B9Le+syJaiKGcLwyrL5RVip
         gI4+wMGTOXzTq9N+y4DkL0L8iw3dkKStGIwHf4pjsAy4qGdJlueOBbp6DSmcW2RmD7r7
         iaLYj1HHcm5hLCL2f3THD4PpERp7mLfTs9pUwfgRC4anUdFV0O777BhTpp1WwL5uyu9h
         zd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DjmzAzvo7snVZ3OY7vuzmuK1OxQPZy48eWODDIisnls=;
        b=PqNqtUaIfEdHNzM3BmpSXdQ7A0hqXmc7LY+5zAmnDKkRd1dNfwZYzJdBOZDWEG15zz
         X4DI1EGyJZT6OvdmoM4eEeKxQrVdaawIVoIGeBFtqdBtxzzo8UrugAvwezw07ObuBDk9
         LbA/+cVALF2yRCgECV8pknpwSDudGou8D30fW5wrV+jAkkrhiM7xzLylf6LK/dFBWMj1
         SMfb/nJ5csxigaa0+LIZeIkbQVwJg1K9FuXjH4wIpPlZ0AGz4+T5hMngE7+JNJ81e3Hk
         9gr0Hgw7oddkRtiHrYP3q8wbebcPwE10Lv+HimVDRwrhJPk1zWXFO0JFcvISuqY8nuyX
         rDuQ==
X-Gm-Message-State: AGRZ1gKCg2SXLKENQ6phFXKVDicL7P25TYByO82fRkWvS7wdKTycHEeZ
	vLhDCJ7ovzUYIv729SNB/KN+TlpvHEg=
X-Received: by 2002:a9d:12a3:: with SMTP id g32mr3659377otg.350.1540313957335;
        Tue, 23 Oct 2018 09:59:17 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id d8sm623125otd.69.2018.10.23.09.59.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 09:59:16 -0700 (PDT)
Date: Tue, 23 Oct 2018 12:59:14 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/3] staging: rtl8192u: Fix misspellings in comments -
 Style
Message-ID: <fe1720db870a4e4601e9e860c9c683271e5366e6.1540311428.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
 <cover.1540311428.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540311428.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix two spelling mistakes in comments. 'informations' should be
'information', and 'imblance' should be 'imbalance'. Issues found by
checkpatch.

This is a coding style change which should have no impact on runtime
code execution.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
---
 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
 drivers/staging/rtl8192u/r819xU_phyreg.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
index 900f7866d381..e064f43fd8b6 100644
--- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
+++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
@@ -243,7 +243,7 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
 			cmdpkt_beacontimerinterrupt_819xusb(dev);
 	}
 
-	/* Other informations in interrupt status we need? */
+	/* Other information in interrupt status we need? */
 
 	DMESG("<---- cmpk_handle_interrupt_status()\n");
 }
diff --git a/drivers/staging/rtl8192u/r819xU_phyreg.h b/drivers/staging/rtl8192u/r819xU_phyreg.h
index 65ee6088324c..dc9ddf100eab 100644
--- a/drivers/staging/rtl8192u/r819xU_phyreg.h
+++ b/drivers/staging/rtl8192u/r819xU_phyreg.h
@@ -53,7 +53,7 @@
 /* page c */
 #define rOFDM0_TRxPathEnable		0xc04
 #define rOFDM0_XARxAFE				0xc10  /* RxIQ DC offset, Rx digital filter, DC notch filter */
-#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imblance matrix */
+#define rOFDM0_XARxIQImbalance		0xc14  /* RxIQ imbalance matrix */
 #define rOFDM0_XBRxAFE				0xc18
 #define rOFDM0_XBRxIQImbalance		0xc1c
 #define rOFDM0_XCRxAFE				0xc20
-- 
2.17.1


