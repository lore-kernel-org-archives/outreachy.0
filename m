X-GM-THRID: 6661088091510407168
X-Received: by 2002:a1f:ae14:: with SMTP id x20mr8842001vke.8.1551108973734;
        Mon, 25 Feb 2019 07:36:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls3188920vsc.3.gmail; Mon, 25 Feb
 2019 07:36:13 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbMV7oL1hgcVF6nPOBRHWDyVzO8caRbhM5H0ppXVXFyJnQY126Oj+abYfTnqQcE28hha495
X-Received: by 2002:a67:c217:: with SMTP id i23mr8567679vsj.39.1551108973188;
        Mon, 25 Feb 2019 07:36:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551108973; cv=none;
        d=google.com; s=arc-20160816;
        b=iEw1BeSCcXrbkqiOKLrb4X3Gm+Gi23byn9EYGSrc+NdB4oK4sq8qC0J+TZ9ysto8Me
         4IgwoUqQtHMM/pLjfRyep9ei/KSPdLl2zS0mMC/IMuYGisNlecYU09zUUvFp6COzrn5s
         DzUP5+PQ37IrooNni85MLNYopXOOM1UfRRTFvn6urc/Q2ClSxeiWwwfx5JEFUiqJWaRE
         Cvc2ojQT4g3v9v0hoc40UTZiIUxem5KYexb+bcHX/doQi/fUHlNSAaBLEB89Wdm8/JGm
         HgicT2XNYLRwHgknVkSiA4JbjvdXrYBFZsPPbAzyMa4+aZc8PvaBK4SSniBsOTRu1yih
         3m6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=uH7ukw+Zl5yWlIFeTnQGqYj6oW3vCpajf4QshKvS3pMMNAKX1Cn8fA4pt91lFvcLbt
         wZW/QUyWKz9VeiBF1JIiAD+qhdWZ8yjH5fme5WeP8ySj4dhjAKVwMEtxwp33Dnto8iez
         r2c668L+yXtab4r6XqCsRCGskQ3uEJZfSbNBezQNk1MKvD9qZczNfaanyevqGP4qqqYr
         Xp50Idz+EInOTG8I6KM8D45BBVPfH/l4X3yUKFd0YlWLYm6wvY46QsiNr2EYnDcTsym9
         IEjRvffOVge6VmAnlD5TGGbk6DqRgBcxcQu9SzTxk8NplJQq+yy94DoOLLG/yxtOKZRY
         N2Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fhogiFN4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id b19si407422vkf.3.2019.02.25.07.36.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fhogiFN4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id u9so4648677pgo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 07:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=fhogiFN45WsPQ6JhCesLy8g7i3tIAb4cuypRNW670+a0WzK4cpLDj0AXoryPGW5T3N
         +1uBgEodShYJx1gXIGGLn+GkWUO9JOZ2jJyhVArGWJ1szWQAgM6frp0QwqCaM2rUCJax
         NcCo0TvDJ6xfuC/a0jc5ISXN3F4GV1xiEbsnTKiEZk0JBZf8aUUgSkmwAeL4qonDAKMv
         utlThbVOf/iaenFEH5DJwpeDy8qv4RmSbmJ0vxjT12kwD0PAFyxmzv68yafe/oHxiHv3
         efaG/rFFGDPM3k/HGe5ClRfznO6DA51GOUjjWWIZpgL7htbs6548sIocorBQTYz9wbTi
         iohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KapiD/w+RPczwkFzbMNx0MuSSd94O8yZvfyqGfzW588=;
        b=A4USLezaRBtNJSsb3TTkpDfuE3GyKgKbe8CG4O8J4Zxcw0M6CQG44rc9x1i8Ea2xBn
         4GIjJyiWPBkboOnGYpMYaLsB0gEpb6DlJxinAuUgZNCkx0jgt5hpsj1ygRZrJvLr+Q1e
         7nlIZSJOu30/nCXvXnGZe4W16qSrAgP7owVk4HxIt9eXACwwwkutzsvKzrlMBbNuce7w
         aqzO/Zj2wYu+9e4P6s1igFViuEYxJdMiXTZDlHaDTzsrYBe4Hb5cbieBajOsRFLLxT8j
         Fm5giFJiEFNN/mL6qzdxdXsK6hO4p8dvJPLw84Youa5u+i5wk4Czzu0bq56Oj4FU1Yyh
         CvPQ==
X-Gm-Message-State: AHQUAuaOy9+6ANEYs5egJC6OD0Q0KU23OlczVODShmmjMEEncUIuNUdp
	ZwQ4DdPgWI8DaWWIjT1dhyxXJ9O6+kI=
X-Received: by 2002:a65:5a42:: with SMTP id z2mr18914347pgs.365.1551108972697;
        Mon, 25 Feb 2019 07:36:12 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id f18sm14048855pgf.26.2019.02.25.07.36.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:36:12 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v3 3/4] Staging: greybus: Use a blank line after declarations
Date: Mon, 25 Feb 2019 21:05:45 +0530
Message-Id: <20190225153546.10484-4-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190225153546.10484-1-bhanusreemahesh@gmail.com>
References: <20190225153546.10484-1-bhanusreemahesh@gmail.com>

Clean checkpatch.pl issue:
CHECK: Please use a blank line after function/struct/union/enum declarations
Insert blank line after declarations in bundle.h and control.h files.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/bundle.h  | 1 +
 drivers/staging/greybus/control.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..4aaf7a0880fd 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 3a29ec05f631..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -24,6 +24,7 @@ struct gb_control {
 	char *vendor_string;
 	char *product_string;
 };
+
 #define to_gb_control(d) container_of(d, struct gb_control, dev)
 
 struct gb_control *gb_control_create(struct gb_interface *intf);
-- 
2.17.1


