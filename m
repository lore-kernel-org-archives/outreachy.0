X-GM-THRID: 6621495393645494272
X-Received: by 2002:aca:4bd2:: with SMTP id y201-v6mr3110200oia.22.1541687112325;
        Thu, 08 Nov 2018 06:25:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:bea:: with SMTP id 97ls812013oth.8.gmail; Thu, 08 Nov
 2018 06:25:10 -0800 (PST)
X-Google-Smtp-Source: AJdET5dPI6bJSR9H+vr4lGymHEVY6EyXozGtNg4ptA3l1OwpN8oSvLWte+4fSwaxzzupif0b5gJh
X-Received: by 2002:a9d:5161:: with SMTP id u30mr3394603oti.39.1541687110680;
        Thu, 08 Nov 2018 06:25:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687110; cv=pass;
        d=google.com; s=arc-20160816;
        b=OLh+iPuNzp3onOV6CNLRLhTeruO/wgXsL58LXIBHi3r4Krerjn7j+MpfgXtxdSKHQF
         2lOtDy4cYVq5TCuCBAf6lCMTxlB2idW65KxMwOSbU8q8fyvIbfl3jmlHiH0dLIBKG/0y
         5glo/aRumNyqCHN5O6TexTKO9hNGw5EOkpDtdW2uGFNtF7F1DH3P62aAjsZzNdQFT8W9
         LTaQbzvStfXhqi24SQQOpZ3Eqf6JGhTRSSVxh6/nyDWdFrQyzF8bj+6Yb4lF2OMrFTzq
         JNUx7Yr78NVXV1PxtyGxOkAQHhRXeYutFG3vqhp2TbwKJYEgKe1LplBegv9stKkynipd
         AzOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=;
        b=tPh4P02lS6v6Blbi8ovwJdEm5x8PKLnjypfaM6Qam34M9InN7TeetUdtTA7y4oYUfz
         9k5ed8JGRHVmR7jUHFqnxD2ywqRL2ZavKkshJOJj9tMcL5tDMuFZg6+xR7WxLF4M99TB
         DbKkzI4JO7rQSgRt4QASCFLHMSEpzQCVzOVeFouUE7e09VmVLApnptNLBWejEXXUbdv7
         Tnr3FllVOyuHNvV/2P2i4+54+bOp3PqSuPmuBsPmO0lMNq9SdjdpPUdle8HSVRWj4l5H
         MTvOAtal9L2Y9nuBUNN2kHZtrUb2pIrMrSm1g33v77fV0qQXHcGFb6Dc444hTFIzaLnS
         ziCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=GDnUcz84;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 25-v6si141353oij.4.2018.11.08.06.25.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:25:10 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=GDnUcz84;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687106; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=PfVgbTwFA8dSNYZLSX8JosBbxN8SWTYm5okIkqM1kER1G4UfbmcTM5YkbGI3LwDLivR7ripHl7zoqRuY49gZfCn6HHVG1YjOm9cK11JKI0xdf0/h06iYDp0cbH5sVD+czdEWRBZOw9nL+ntGwse7yNkW9wUHqAEELjY5ZF0A1AQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687106; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=; 
	b=Bwi9hHlMkHH6fgmdTOtw/059AIr051FL9ohGXq0g8hw5ABfRZgA/mV+6RQqOA3qygRFE9dZRG2P5BWaSL3xp6EhNQqOmqKtSVK2IKBvq6COuy03+Ce9RQI6dnPhv8eRrtQsKQ8mTvPDR6hR519oePSakJ1PEw5OOvH9/npK5rpc=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687106;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1323; bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=;
	b=GDnUcz8409dJ42G5PrbKhGC7kN7+97DjqxG40xehlbSh7TaChNcNTmarQroI8YPf
	m88Jj9r9m30agyObuEb2oUhX0H1R6C9247Tno8e2TNlWpDS9bwPhPruC0O3w5PxbNbX
	hFipJQMVR7oqdwVSqkbAkMlMlF2/u/JXfdD2Y1k4=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687105407534.1328821168776; Thu, 8 Nov 2018 15:25:05 +0100 (CET)
Date: Thu, 8 Nov 2018 14:25:02 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 07/15] staging: greybus: remove multiple blank lines
Message-ID: <ed7825044bf3758f85524145130ed20913fe7146.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove continuous multiple blank lines.
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



