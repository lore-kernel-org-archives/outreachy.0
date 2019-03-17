X-GM-THRID: 6669000631583244288
X-Received: by 2002:a02:6018:: with SMTP id i24mr6725901jac.6.1552792431720;
        Sat, 16 Mar 2019 20:13:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls2525852itc.5.canary-gmail;
 Sat, 16 Mar 2019 20:13:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqws8msck9AsbXoLn+BrLAKHQPj/LsT/1bWGYvGlqI0E7ym9wMDLqqENlpmfWgqh0vfS2VDN
X-Received: by 2002:a24:2f03:: with SMTP id j3mr6641135itj.2.1552792430832;
        Sat, 16 Mar 2019 20:13:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552792430; cv=none;
        d=google.com; s=arc-20160816;
        b=WdyNTI66CIOhSlItT/2p4Bv3qDQ69rPpV8qZm03q7B2uS+qpwa80fIWZntyJ0XI6Jn
         qB+vdWx2LzbWGYITyMMuBo9Av30eF9WiXqdy9tbhzhUmPKGLsSkFrbSbZapMJPjLJHyX
         svXqK9LE+ZEykvWh7bysiS63kLTGsYfVRYEMq3U34Ose4w6EjDTl8Ye+h8X7WpxQJdE8
         g8NaX+yAYwBEco8oyuysj/3P8iGMRMH82SiBfUDfql4BxvPVsESwpr2mUfgq2jqgBjcu
         G+CeXwx/QiwhYyW1TblPFB0zwAEe9lpxAlmqRg6eHVYkf1gYzE4ycTX4nVLWIDJZrftu
         r0YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=xZ+4Srko0t1/S/4Pv1h/e3tJawUqkflkxNYHGCkNPgKRVDfVSUYo9DbBDoJUFMU8IE
         xt8P1dOYbPRQdfZXbSgPXW/Bol+KB4U+Qdgh0NER/DDBylfK/fzAxeSyFPBbmREa0qcN
         nv0wzhTmT+S3ygZ4arYesuF129HIFKx9LdkGUWVh3OfEMY2/U4xN8i4dIDeDnGaf9Qhl
         RfStYvn9EWg8PJcjdhIeUMq5/mGBuRz1upkyyufbNC9n6Y1WuHZCAcK2pXH1wqK4k1Is
         SdcFffRoxJspyYPrp32IWHTEYE1HyY+JvQl69Mnsw8R1y9/QPAmAy8wevXPlBHIGfqN5
         /69g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XPA8g6Y+;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id f19si313788iol.4.2019.03.16.20.13.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:13:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XPA8g6Y+;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id a22so9012989pgg.13
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 20:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=XPA8g6Y+j06V74XuyduEUL9gooW8fGrQPhAYpSeR3f5a1GO3KEzerfF6toZ6EhinUS
         NfTCPKvFyHL2GbtbfUhdjJsk+1Ui9M5au5As5IAXg4vrpmMJHhG5Wmm8HRTyWl0Y8iIN
         3CsI/Gg1M0SqHAkLifBx8lsOD+rPlS9nM80NswLdtIAczCyYhw8qAktx/I6vel8DgT1x
         UyqUvY6lIXHgC3lIF/ix5eXIfKNVVhw2b84H8hbvg+89BXh1RLaf80AoIYn4boxnkO6w
         xyJ1V+eM5hMYSw22k/YPYRfP/YXM07TmRWz2OuPhYvm9oisH564C+xNGijGPzW96PImL
         EYQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9rY20vucNGtvVtzyBfC7nhiC9MSPk6WhE5FuzJzDfKQ=;
        b=kf5VAPQ1hyNmCdcpNhvih03WktzAHtB75iac56uiP61OpmZ8w9F8Mcqm2PC2z3QRcD
         HAF6VewGNQyXzZIZc48eKy3350ENvS0Opxzwj3bAzYYmEzLdL+ahEDwI8mzRowM/Zu99
         oEVJHm1lT9PrK/Wl4p2+kGY2IJfpOaVoXzLEDNL7MYzpx02p0jZ81aBsfv26b4SURUS9
         4qnlDmc+iEAdveVfYtwCGimdDFds8dAdF+jrxcsHmY0hoBkydeoGrglXpH0VZj7DRLar
         Hg9ujpKyOKNjNq0+DvOlYbUKLr+8zbT2u480sFQK+8popLnOs4oQBGvHS2IflMhCIvMO
         u5Ag==
X-Gm-Message-State: APjAAAVUbQhNW+DJQBjgC5Jb0pjoH0fKdZgOamvXVcSzcaoRm6znE10c
	zjWqy02+1Y4HVgg8i2CPbsMi1eELCKI=
X-Received: by 2002:aa7:9310:: with SMTP id 16mr12291418pfj.84.1552792430004;
        Sat, 16 Mar 2019 20:13:50 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f87sm8721878pff.38.2019.03.16.20.13.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 20:13:49 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4 2/2] Staging: mt7621-mmc: Modify the return type for all possible values
Date: Sun, 17 Mar 2019 08:43:31 +0530
Message-Id: <20190317031331.11965-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317031331.11965-1-bhanusreemahesh@gmail.com>
References: <20190317031331.11965-1-bhanusreemahesh@gmail.com>

Modify the return type of the function msdc_do_command to static int
as the member error of the structure struct mmc_command is of type int.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 8857cdb9dafd..049b312131a9 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -168,10 +168,10 @@ static u32 hclks[] = {50000000}; /* +/- by chhung */
 #define PHYSADDR(a)             ((a) & 0x1fffffff)
 #endif
 /* end of +++ */
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout);
+static int msdc_do_command(struct msdc_host   *host,
+		           struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout);
 
 static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd);
 
@@ -535,10 +535,10 @@ static unsigned int msdc_command_resp(struct msdc_host   *host,
 	return cmd->error;
 }
 
-static unsigned int msdc_do_command(struct msdc_host   *host,
-				    struct mmc_command *cmd,
-				    int                 tune,
-				    unsigned long       timeout)
+static int msdc_do_command(struct msdc_host   *host,
+			   struct mmc_command *cmd,
+			   int                 tune,
+		           unsigned long       timeout)
 {
 	if (msdc_command_start(host, cmd, timeout))
 		goto end;
-- 
2.17.1


