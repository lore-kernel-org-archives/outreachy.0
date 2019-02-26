X-GM-THRID: 6661088091510407168
X-Received: by 2002:a0c:ae7d:: with SMTP id z58mr12882384qvc.11.1551141187483;
        Mon, 25 Feb 2019 16:33:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:dc42:: with SMTP id v63ls6655711qki.3.gmail; Mon, 25 Feb
 2019 16:33:07 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYjZIaGdXddWhiXYFMu4U8+XX/jW58SuFcO/7dkhdIKMBlir4pStCw+zXZRCRqqsQuFG277
X-Received: by 2002:a37:7cc6:: with SMTP id x189mr12492199qkc.48.1551141186979;
        Mon, 25 Feb 2019 16:33:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141186; cv=none;
        d=google.com; s=arc-20160816;
        b=gRwqoElyDKxaINGpnl27X3Btay+Psj0rSih7R5MOiC6ocVZOYszjdDdhxDJtFoh4kC
         6EnBDhRyc2qXRPC8HT97hcmUjkjLya8yEI6qzRawO23oUHdqrgRYI2gDDAQL2WkCj1Id
         N+/+M6ObDcduLG+t+vok6QfJG4d+cQUjzmMMOW4Cn8EpTG01lOoNi4m+NxvmzS/milkq
         iNIBxx/y3Q0VVMVx+VdpVAvb/7g+4hBXqFmY2bmSuwSJIKwzfP3ArHlFScdZ07Nm6ml5
         weNtv32L7DP4zIvCbZliw7rapiHe0pzcXiyi721MjGxkXg+arG11mNGPvlMS/+/rsbzX
         gzTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=yaKtiWGfTF2c4OHSbvcruCTgM2F+Kr/HZZOWJs9/oTbsfFqONIREeGG9hFH8lsvM3W
         xgv8g1+TNx1b/su0Bs753SenSlQWVRZ6CYtx1kkw14yXxBB8eIprj27lrVUQo8dMLt5L
         58YEnEYsZ8iB/1rBJnPuGBuiqjooBeo5Odg4HHxSBazsDYGptUq0z5IRTu6kET8A5eZ+
         DOyQ6xIDcN2j4Q+yp5QBVVtmyvRVjtZD5zwqCVFPT6KtmQEtipKLuflxrJncDWeazNZQ
         3/iUXDEzbg8gvuKeM1aJgIIrwQ3LwZ9EZ6k2dgnl2scJuAaCnfGl15kD4odjygvEFcUz
         lIkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brMG+kDH;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m1si777908qtc.2.2019.02.25.16.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=brMG+kDH;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id 196so5278002pgf.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=brMG+kDH4pW58JjlJy+9CHzv75nWZd2vOU4/Ay8pyLGbNwN5BlhmfCQ2xFa118vr5k
         21GmqFddtHeNg0dkk1Er3ADOFzR8EGJKhaT/yOwPW5k3RrO6DfW9MabvIPXKbFoygzPI
         ZSDNf3q1qfCd3Qr5hJ5UQ4WM1V2P/C03DOBiVX6VTWt2BK42P7xMd1lkFQcaKhKJMLgl
         QVSbPZWmeo9gnuRM5WlkHMnwuX6RgbdZEb8ZZgQ0FGl/Zj2AwAd/m6uW0sYc4Z6awifB
         Z6BAeerVbnXBItLnZgcgEyzeyYRQcAttm+S8uygaEgHJ0jQuOPWfHcIz/T0yLTKlkWwd
         Zd3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NgrstxaF8PQt2r9Rd/ZYvpI2c185vMa+bUu+XZUphUw=;
        b=L32L+r/HApSle9ABtZEfaE9JpYpr7niYozEk3Qn80C6+vo9izb5gKRm/nSnf1ut/Di
         TeHbJrlGapijU88f39aoje5TM3xNOgVsc9U6dP8HC7YGjg4Z94SlPWg0viCsvjd6QkXc
         SpwDR6d/l73FG5sBWm6vu2HPHRBZzYvdPFRBHaryCmLZfzSkgcryU50ILH2L2dRKtT7K
         gIAB0ZM2HwQU0Eala6plXIc5pAkolGtxm3Z3l1EbUZSObH0RV70y3m/gCPSZc0T2QqcD
         +DTLwDKwFY250TiX/SOpdBl9pSLPJiJRlUOvM+xqWFOQlitq7DcsHRQEN777hhgBtRHI
         AIlQ==
X-Gm-Message-State: AHQUAuYdh4Pp4hxwG58xN2jIeqRfG44VZ5UcSOzS09xVFXktn8gNWBbF
	rd+lw5E+a2WLwQHwRtFpNuDjgAkFzsc=
X-Received: by 2002:a65:60c2:: with SMTP id r2mr22062527pgv.319.1551141185908;
        Mon, 25 Feb 2019 16:33:05 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id i14sm14415486pgt.82.2019.02.25.16.33.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:33:05 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder clear <elder@kernel.org>
Subject: [PATCH v4 1/4] Staging: greybus: Alignment should match open parenthesis
Date: Tue, 26 Feb 2019 06:02:44 +0530
Message-Id: <20190226003247.15574-2-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190226003247.15574-1-bhanusreemahesh@gmail.com>
References: <20190226003247.15574-1-bhanusreemahesh@gmail.com>

Clean checkpatch.pl issue in various files:
CHECK: Alignment should match open parenthesis

Adjust parameters to match alignment with open paranthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

---
 drivers/staging/greybus/bundle.c     | 2 +-
 drivers/staging/greybus/connection.h | 2 +-
 drivers/staging/greybus/core.c       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index 81c018da1248..e97b2b87ba47 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -65,7 +65,7 @@ static struct attribute *bundle_attrs[] = {
 ATTRIBUTE_GROUPS(bundle);
 
 static struct gb_bundle *gb_bundle_find(struct gb_interface *intf,
-							u8 bundle_id)
+					u8 bundle_id)
 {
 	struct gb_bundle *bundle;
 
diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
index 8deeb1d5f008..5ca3befc0636 100644
--- a/drivers/staging/greybus/connection.h
+++ b/drivers/staging/greybus/connection.h
@@ -88,7 +88,7 @@ void gb_connection_mode_switch_prepare(struct gb_connection *connection);
 void gb_connection_mode_switch_complete(struct gb_connection *connection);
 
 void greybus_data_rcvd(struct gb_host_device *hd, u16 cport_id,
-			u8 *data, size_t length);
+		       u8 *data, size_t length);
 
 void gb_connection_latency_tag_enable(struct gb_connection *connection);
 void gb_connection_latency_tag_disable(struct gb_connection *connection);
diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index 412337daf45c..d6b0d49130c0 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.17.1


