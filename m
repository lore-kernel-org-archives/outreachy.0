X-GM-THRID: 6669776681791651840
X-Received: by 2002:ab0:4963:: with SMTP id a32mr11320334uad.13.1552928397786;
        Mon, 18 Mar 2019 09:59:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:254b:: with SMTP id l11ls86413uan.1.gmail; Mon, 18 Mar
 2019 09:59:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRkZe3B3mfr8UBBnJnuoRypvsP8WErxQ32wvou0MOrRUssSGnrCUFv15YmKk7mxKxw72bp
X-Received: by 2002:ab0:21c5:: with SMTP id u5mr423395uan.22.1552928397158;
        Mon, 18 Mar 2019 09:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552928397; cv=none;
        d=google.com; s=arc-20160816;
        b=WVCbDmvJd4jr4WltDlYyGmgG0/9ox1uvTUFsX4WEvwDVAFvC/ihVjaXkhDu1gsGnoV
         lBRbsFbbMp2DPvS+eTfEUwpYD8KpNGWOagZMOKJeQPULzc1WZd3KSRUT/cpsrfFWq3gw
         fWdtSCNImW0rj3aBw8w/CGj2Te60KDUutwwByko4wbo634DL8raS39PXF5UShuu1MQU6
         vwphNeSMOdeU+cG9bn6T1VyCV0aSSGAN8pnW7UAI+nvu4RV35gJZ6KeFJWOzV/9CBwcj
         4SSulLJZZ/XCSBkXkeAmsY8+YEmPcI1PBAI2tZZLVFhJBoLdtx/QDUFJ4RZvCjlhI+3b
         BzLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wjjpowdgvTDTfzY+yhbNyGHZ7RhZNMOwb7TpPkDA9Jo=;
        b=mXh5HmEgIcW/EJ+5RLW8nhStdWxKdDJGOEDsKGdoJ5AfkeZZHZRZSK05Xixw+xsmcA
         u6lsbSR5+jkXSpYx/G/jU9FUM5EIvFiYYS/4jqOz/kmdojZzLZtN5v4xNO0387FOlTPO
         ZWIo/o5qokaAdtFzeAUltvGFYxnzjXwjsPw04sVI4rzGSn9jBFx+m70wG19bVN+Tnimc
         kbAIulJ2H0E2u8gsFldaEe0huNNkLTfv0nUm0yD5dt4LD1v1TmYZdOKr5nzpW0QWZBE2
         C7qqZX9EgYCA7o7Hoo1cTDMevA1uM7C9kbeDdp9e/VyqyYrVPPZ5A4pfyr7c2q7htLVa
         Gbsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lcDZ/Aek";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 12si321460vkg.3.2019.03.18.09.59.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 09:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lcDZ/Aek";
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id v12so11840825pgq.1
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 09:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wjjpowdgvTDTfzY+yhbNyGHZ7RhZNMOwb7TpPkDA9Jo=;
        b=lcDZ/AekqRHvbTJ39IzUnTaFBiRb+xogfJlgMyG7lTH8PWqdy7Dl8NXQRA3+hFRc6q
         Kux4qX2lEnDXFawEXEM2M8pZkToRo5IltboRD+lkdycdYATsUo6Qg3AH1gVE1WLPnjZk
         J98REI4Mall2E/dIt5k8JWDTDrTL/q8ZwWIRd8yreR8K3V/j3qrPJPdAa25Gz6NhzqVT
         /lCm4Rx8qCw4g3+gAhTFPkqEiOEZ0c/ROMYTA83QwO373FBP0Q0NSxd+E8/qS+k87Ncu
         pIvoFJYC5hXeLjqtNWwqnEl1aQZLl9FMmFDICeWFoyo+nXGgTnStHwDnjr7dR2ieodZu
         zleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wjjpowdgvTDTfzY+yhbNyGHZ7RhZNMOwb7TpPkDA9Jo=;
        b=hqrqr/dL+SVGatWn3Do9c8JCVkvYKtKEfaGymRprGNvb89wU0+No818l1UMmTpoURN
         EhfuZoM/dBdEvM7UYqEkQFctbboZC+ZYNg96GkqEhkGo2rPBgWIA+YsN0Mba44I7NvKD
         SCOM0J1HNGxfSZsSqtEH6Ws+GdGvWo0fASzdbh2xRBIQwwdSXj/asC/VjES/q1DW681p
         9GpXq2uoohzX87doXboFqRqSIjb2rZaQMGcPexgaI66791n5v/3KptOIxbB8sj3SnZXS
         0KWkbRxX/MtO3YDVttGsBscotCvro7sKo9mqgmb6/QWzXA3DfEWIqagZQtWfQ3vr/TD2
         ZKGA==
X-Gm-Message-State: APjAAAW32zsprNGu7pOnx1SA2KLrkHCNP7rQGAVpV0PFCwNjXkWlIJI4
	ER1VRL9gciEUllM/W65UQbJTm30oXtOvwg==
X-Received: by 2002:a17:902:848f:: with SMTP id c15mr20729047plo.240.1552928396074;
        Mon, 18 Mar 2019 09:59:56 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.56.146])
        by smtp.gmail.com with ESMTPSA id y68sm17117925pgy.67.2019.03.18.09.59.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 09:59:55 -0700 (PDT)
From: vatsalanarang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	vatsalanarang <vatsalanarang@gmail.com>
Subject: [PATCH 2/2] Eliminate camel case
Date: Mon, 18 Mar 2019 22:29:38 +0530
Message-Id: <20190318165938.2503-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Issue reported by checkpatch.pl tool

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c | 5 ++---
 drivers/staging/sm750fb/ddk750_power.h   | 2 +-
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 7f28e4cc4c79..6380e1536598 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -147,8 +147,8 @@ void ddk750_set_logical_disp_out(enum disp_output output)
 
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
-		sw_panel_power_sequence
-		((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);
+		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
+				4);
 	}
 
 	if (output & DAC_USAGE)
@@ -156,4 +156,3 @@ void ddk750_set_logical_disp_out(enum disp_output output)
 
 	if (output & DPMS_USAGE)
 		ddk750_set_dpms((output & DPMS_MASK) >> DPMS_OFFSET);
}
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index e48c74ecbbd1..7002567a47d2 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -9,7 +9,7 @@ enum dpms {
 	crtDPMS_OFF = 0x3,
 };
 
-#define setDAC(off) {							\
+#define set_DAC(off) {							\
 	poke32(MISC_CTRL,						\
 	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
 }
-- 
2.17.1


