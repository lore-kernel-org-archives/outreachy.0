X-GM-THRID: 6619404446121066496
X-Received: by 2002:a2e:9006:: with SMTP id h6-v6mr1262505ljg.22.1541200197684;
        Fri, 02 Nov 2018 16:09:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4a09:: with SMTP id x9-v6ls475847lja.18.gmail; Fri, 02
 Nov 2018 16:09:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cUzO5gfNZhqjIuCWIKz2BbeQpX/UofbZ3cyAS0PhvK7GDml4Nlt44a3/lqix180+5Iegr8
X-Received: by 2002:a2e:9989:: with SMTP id w9-v6mr1273894lji.21.1541200196474;
        Fri, 02 Nov 2018 16:09:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541200196; cv=pass;
        d=google.com; s=arc-20160816;
        b=xp59ORlWPQ9H8pgwJUQ7XZyUyS19Rs/cTcIPrWOize3Eywblv2mcEOLXBVsMZpOv3B
         a+6SzLIDv0viADmx0i/d90WINhwGITRcYMmfb+DiasAIRn8IO1DyB+AHuYoJGk0jc1Ff
         WuZAzshQS9qytGg9ja3I1eWF+ZQS6BFydy4BNnCWafn7ivsXRxBM3CPEVea+G99fvOSJ
         731kxkqr7Bn5hDqM9A4f/8x09px4jL7klB6yKU3Cji+gmP65zZiqXV6PLIa5z3Le18l0
         cfIUi6EFDMD7O29bOeWbmrd89XrUjloo62JtamWY3GgsqO4WYATjnP/qaUIrjnkA174V
         0F+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+twN54/aWx5yTfx525Sn+8T4Z1T6fablDG4zrK/NJtU=;
        b=Pzf6IMu6530OECrcfYIITI+d8dnTSFaaUppLLG0G1SmCNMHyLh7G6JoQmKGrxrr5zq
         Fe3KeeurUHOoyambWoLHUQQM6JCCUmlrGANnM06iE0a6l7GTqmgq8WY/3FsiIJg8+xLC
         +dL86fybgTTQ0O34PWc3U+5D/TRDMbWd4mwPpt1LIAVcIc4O90YVa2R+Qn/VPHJfBZG5
         TceXv7Tt1oAvHHbUDXF/dvMiMU/DTc+oR/btpIlQAehqcAN7d/z2ffl+2ZfRCKZ+KTwA
         JPlE9OjajsZACzWU61/jcDqURgNZRCbZVOm01x5QZZ+0eVx5Imf1mTwCaYaEqZ08KafI
         fvHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=h1fd5xLm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id d9-v6si941236lfi.5.2018.11.02.16.09.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:09:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=h1fd5xLm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541200194; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Oe/tisgQ9dLGxSD45iURxkfdn9Ny7qS5ufjQN8cttjWqYiSId4Yn3OuIA0Ke96AAtNvB2A4AhvhsQIB48bh7a7kQTTW+WWN1Qy/MiKISRzHAWr7su+knacWtKB3zvkgvKpnhYVgHrIPD9j6abHR/zF+WhNiz61l7YMc5Oo3wHfs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541200194; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=+twN54/aWx5yTfx525Sn+8T4Z1T6fablDG4zrK/NJtU=; 
	b=RXofDu4BMCfEcG/i7xgH09oqiXm4MrhINuma6gC8k6FVg9zBwSF9Gjq595N18QQZiiY6flITWi8jDNct8eGHcw7GIEDZPHOiPelOPGyPdkNERp/rM5KpdwWbR2/DR7TTcw56lhkUJmXUj5jpavHE4O9yn6h817v2iHqmx0W75nE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541200194;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1343; bh=+twN54/aWx5yTfx525Sn+8T4Z1T6fablDG4zrK/NJtU=;
	b=h1fd5xLmsA8epTTdzNg0XLPaKY89qvGBdSRcXYGlsaSXP9h/HknlZmqaxVeu5qw3
	1Tb63AVHRTm/+AtqNEgUIBu4P0QdrczTypT0NCssuz9lM3ZroAp5ZEfkNLe6KtYk9h1
	69tePJlqh8r2RTvlwklclV7mz53c1Qf7Y2oWkO3o=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541200192910493.59675350861676; Sat, 3 Nov 2018 00:09:52 +0100 (CET)
Date: Fri, 2 Nov 2018 23:09:51 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus Remove multiple blank lines
Message-ID: <20181102230951.GA12075@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove continuous multiple blank lines
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/arche-apb-ctrl.c | 1 -
 drivers/staging/greybus/connection.c     | 4 ----
 2 files changed, 5 deletions(-)

diff --git a/drivers/staging/greybus/arche-apb-ctrl.c b/drivers/staging/greybus/arche-apb-ctrl.c
index cc8d6fc831b4..be5ffed90bcf 100644
--- a/drivers/staging/greybus/arche-apb-ctrl.c
+++ b/drivers/staging/greybus/arche-apb-ctrl.c
@@ -20,7 +20,6 @@
 #include <linux/spinlock.h>
 #include "arche_platform.h"
 
-
 static void apb_bootret_deassert(struct device *dev);
 
 struct arche_apb_ctrl_drvdata {
diff --git a/drivers/staging/greybus/connection.c b/drivers/staging/greybus/connection.c
index 2103168b585e..56ae30533a70 100644
--- a/drivers/staging/greybus/connection.c
+++ b/drivers/staging/greybus/connection.c
@@ -11,17 +11,13 @@
 #include "greybus.h"
 #include "greybus_trace.h"
 
-
 #define GB_CONNECTION_CPORT_QUIESCE_TIMEOUT	1000
 
-
 static void gb_connection_kref_release(struct kref *kref);
 
-
 static DEFINE_SPINLOCK(gb_connections_lock);
 static DEFINE_MUTEX(gb_connection_mutex);
 
-
 /* Caller holds gb_connection_mutex. */
 static bool gb_connection_cport_in_use(struct gb_interface *intf, u16 cport_id)
 {
-- 
2.19.1


-- 
ta
ioannis


