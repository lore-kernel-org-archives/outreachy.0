X-GM-THRID: 6262248427873107968
X-Received: by 10.129.74.195 with SMTP id x186mr21924301ywa.36.1458043461903;
        Tue, 15 Mar 2016 05:04:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls175139qge.36.gmail; Tue, 15 Mar
 2016 05:04:21 -0700 (PDT)
X-Received: by 10.140.223.17 with SMTP id t17mr22341399qhb.18.1458043461104;
        Tue, 15 Mar 2016 05:04:21 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id i133si1554628ywe.7.2016.03.15.05.04.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 05:04:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id u110so11750287qge.3
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 05:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mzVH2XN/w/8iVbjrgMxf27xkXHoklzRGCZVlVxyAEEw=;
        b=z7SJpv5lyTtn79DX5PmDRcPZUbGGs1NjRI+1EELFileYZsh8mSGMZ6l3bMmpZOwcfW
         gZI4b/zT+cgZmWn6FtGgQF1ds8fo441FqQ9oFlBHawdI8CKF5Vo+i3dj2EX1ZblJYtYx
         tdYeVo3unmomWD0S1o7s+ZUcak/dUigak2+Ls0bIxPYRMHbWiIoygKg5/u6eKIKSVPrv
         D4/d2EWAKtjYTnGwqJPyIaNlf8ULJpI0DCx2BxkC5vb6wLZ8NpjIgn6NlLo8VWMlkvDu
         gDPWR594A/vxoW2jlEWpfocG171KNPj2LG3xs2hNnVxxwY/uROYR9UpQFZpUAdDaM9Sa
         gMKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mzVH2XN/w/8iVbjrgMxf27xkXHoklzRGCZVlVxyAEEw=;
        b=Cx2xQOdpg5lypE6DtCERlZ5PeTuZKs3s4Xi/bSRaDQ0Wl3/d2+rYKJC+5WqutpRdpP
         n21nAwCk2olTybdjj5HBht9V5TvqC3BAinuDgNMEgLuJLW3dR2tZx4wAsp/bZ36WHcua
         YNcfRkM6evGk9yoRp7Ifo93sVkqCEv6hESzgooUa0vYYOKEfAkxlrzNuIKwUqVeVBT0E
         1orSE37mQF0eYdnHViO3DlGnOB0St9SRbltLfP1xkkQnAN8husitMJiRZnAB0YVi/FBj
         tuMBk7mRV0bCO5CyGhFHb/DVd08uqcRjP6PfUCTR8NuT85dpUlH6dQxNJv3q9bsv81tD
         /wfA==
X-Gm-Message-State: AD7BkJIjW1/fEvYAfp/MoxcdAbgG4nugXrTzMUgfzaVQIwNxy+DkPDlVI1PeZLRfe2oVSA==
X-Received: by 10.141.3.11 with SMTP id f11mr39332007qhd.90.1458043460788;
        Tue, 15 Mar 2016 05:04:20 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([187.32.0.50])
        by smtp.gmail.com with ESMTPSA id d73sm12509319qhc.23.2016.03.15.05.04.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 05:04:20 -0700 (PDT)
Date: Tue, 15 Mar 2016 09:04:16 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] staging: rtl8188eu: usb_halinit.c: fixes comparison
 warning
Message-ID: <7cd4587d463dc1e3c6fbcd68733cca358ac6468b.1458043217.git.juliana.orod@gmail.com>
References: <cover.1458043217.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458043217.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes two warnings related to comparisons
in checkpatch.pl by placing the constant on the right
side of the test.

WARNING: Comparisons should place the constant on the right side of the test
+	if (1 == haldata->OutEpNumber) {

WARNING: Comparisons should place the constant on the right side of the test
+		if (1 != NumInPipe)

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index c3384fe..da6759e 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -66,8 +66,8 @@ static bool HalUsbSetQueuePipeMapping8188EUsb(struct adapter *adapt,
 	/*  Normal chip with one IN and one OUT
 	 *  doesn't have interrupt IN EP.
 	 */
-	if (1 == haldata->OutEpNumber) {
-		if (1 != NumInPipe)
+	if (haldata->OutEpNumber == 1) {
+		if (NumInPipe != 1)
 			return result;
 	}
 
-- 
2.7.2


