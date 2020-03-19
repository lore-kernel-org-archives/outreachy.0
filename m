X-GM-THRID: 6805853994191159296
X-Received: by 2002:a05:651c:228:: with SMTP id z8mr1670736ljn.71.1584611366286;
        Thu, 19 Mar 2020 02:49:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a8a:: with SMTP id p10ls383338lji.9.gmail; Thu, 19 Mar
 2020 02:49:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvSbfE7wUQi6+g52SfZRMIIkWP2nYvimASZ9pWetGhHkDSebnf41yZ1Ab1I23k4ljxsVI3x
X-Received: by 2002:a2e:9949:: with SMTP id r9mr1696640ljj.135.1584611364787;
        Thu, 19 Mar 2020 02:49:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584611364; cv=none;
        d=google.com; s=arc-20160816;
        b=BvAknBT0GfOV9QiV4j2RzZAVSEklVP8I/pxm1FM3PYaav3WSN/mykXO1IJm1ySzDiy
         xndTrYbgkHVpHX53kBVMxegtBonwb+NWB6ixtCBu2RW+49nUD0tzxZ2wlt8rtEePugmA
         tmgzVV0tZfEEDFX2aHEOg200eWv28UeQmZxxjOMtCnkdwV/FxkPXDp6Tot3u9S9Zl3TS
         mJy3E/Kag0aHxk6ikaOEylqhGOTdsfjeEWNBHQS3Dr/uh/07XtYmsv0l9TQuQsHmeB08
         cZfRwxFtihIpzLX+5R94vdqxWe1yGS1WVWB+ltvDyrtwmGXZQ536qaJMoqqwz8PyDdPI
         p3fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=dCMu+irp/6SK8Pub8Fj+tSA18LgAKo6hHSVayh7n9SA=;
        b=wvwFaSBt5xHt9du6UoUaJnfOuFIQrczJBVhXcpCv+RIzuA+n8hOLuridkiUqU0xNVZ
         nPMW+AeOKPCLGijp49ho+knKxf7J+UwrckPRS+t+BtCKxPn+RMHd3nv42duuyTCNCcKs
         3SLz+mknAqsJcrkKSgg90BMg8FV8Xntg075zn/hGiGTnPF1WuthrSX73K3Hv3m7ky797
         uN6TpGvVF6i1kLOp9XJlMM3brtGkof1Ke+a+XD0jwDtJyQ6eVVzo47GXkMt6lz844aVz
         RknKkFL72YCjZsLGjqaeBI98zDHdql9NCxssmTcEatqGqgF/Jp922EbwHIIkxY7ud1uA
         6O/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d12si78391lfi.2.2020.03.19.02.49.24
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:49:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26651 invoked from network); 19 Mar 2020 09:49:21 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:49:21 -0000
Date: Thu, 19 Mar 2020 15:19:03 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Micky Ching <micky_ching@realsil.com.cn>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH v2] staging: rts5208: shorten long line in func call
Message-ID: <20200319094835.GA2878@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Add a newline after the first argument.
To respect the 80 character line limit.
Found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Make the subject line more concise
 - Give a precise description
---
 drivers/staging/rts5208/rtsx_chip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 17c4131f5f62..c6f9375468eb 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -940,7 +940,8 @@ static void rtsx_monitor_aspm_config(struct rtsx_chip *chip)
 		if (maybe_support_aspm)
 			chip->aspm_l0s_l1_en = 0x03;
 
-		dev_dbg(rtsx_dev(chip), "aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
+		dev_dbg(rtsx_dev(chip),
+			"aspm_level[0] = 0x%02x, aspm_level[1] = 0x%02x\n",
 			chip->aspm_level[0], chip->aspm_level[1]);
 
 		if (chip->aspm_l0s_l1_en) {
-- 
2.20.1


