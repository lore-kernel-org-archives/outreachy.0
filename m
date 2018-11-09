X-GM-THRID: 6621495393645494272
X-Received: by 2002:a2e:350e:: with SMTP id z14-v6mr929043ljz.14.1541771655065;
        Fri, 09 Nov 2018 05:54:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:42c7:: with SMTP id h68-v6ls153200ljf.3.gmail; Fri, 09
 Nov 2018 05:54:14 -0800 (PST)
X-Google-Smtp-Source: AJdET5ce9sjaQeX+T4qFhrMoTLvLp4lB6QPXhix250QgYRkj3trWJ4irS2QDaO2fzCwAJgEQvmwr
X-Received: by 2002:a2e:9e95:: with SMTP id f21-v6mr141857ljk.4.1541771654345;
        Fri, 09 Nov 2018 05:54:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771654; cv=pass;
        d=google.com; s=arc-20160816;
        b=JsXHJz8rFgauhXPDO+6folohxw7iHolnl1vdtwkJYTw35qaCdrgXA4XHAn0KI1EMwW
         vh81y1m9zSuzLZkxtXOX1bpK/8Zhr16L43Ar+NkKW0Egn+Gr8Sqy/h5Xo2jMC3aLI23N
         aaD8W3Ber8D0exM/iR7Ed5uFSAuM4u1I5jr5bhn19+16x88lUS7IlT5beAX69T8XUcvU
         QrajlUcHca0Uj5UDuXx+jnub4nLwYNlsPt619qdu/nSB/8lYBaSEZ+3e21R4F+s54HcJ
         YnOLlWqZYbaG8wb6TXB0kThmwOvcqaLw4zRyFyU52EIM1WErJacD2xzma7m3tnMD80YE
         WrBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=;
        b=k60nfqhfZqlK7fKuIcqX4SkyfF6cPsvM/hm29bMJABjZmmUYhiVpzXfUPtqG+TRTgQ
         aB1QVbvpEHcNA97uhJZrsC0AxuBMd5pPtDhxAFwT1ohpufw8/huAoggF3BBpElI4lwrz
         /hQCcG8iLjR+bQisFOgCh9vdLwk5R7YlfNBvvLmgVTfE3dVqjZPbpVCl0Q6pEUiSlNjF
         SU8ZfWptlkeKZK6PScJq8CqMc1qwENop/M9aylWvH/itd27V3zTIpZvlYUx8r3QfgOQU
         pUmbfbslUC5seuAR4Mfvhg+lsD1Ux2eM9UEm2H5VVn+OGI5Kvtka/h6Tl4sMhMOua0VW
         +R9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=eDmxOZBx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 73-v6si210589ljc.5.2018.11.09.05.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:14 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=eDmxOZBx;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771651; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=SuRrrvcFElcd6WV39FyHt5zBoUVJOHgHvK1LzwtSQYzlR1fCxGxveOvtwDwcAgK9UAuNA3Qcl6I0T7kqKjyZuJ48FHcX3VBBknsRnWEd2KDAeDiJl/imm/dKaNTV0IYoKXHYeQZaa9gv8xwVbnQ1TBxnsZJlX0V9h3hpBiP1k34=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771651; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=; 
	b=QC563Wm2Rw7zBLHZl2MIOzESUVbu9oIMY11mcma38qGRmKzXBewjwyerfNQDEwcjQIFpUrdk+j09lFerjTppyk/efPSI0R56QHdKY2a/gb80hrnN3aIoqfque1jSDXL9ByeJBiRQQ3H8FWVhySDKfz17+ciB9p037jzDesjVQcM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771651;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1323; bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=;
	b=eDmxOZBxtl+GpmkzDVGYYuLY/+au8kltq/6xjqnIh/v2Y4mEsuHuHNNm5lKs7B+d
	aS0dRfI9YWrVn/s5yap4EGP9qkyYMYLRMICfxzqjxG052q6R929W5GPBfjMN/PDsiAJ
	k4zdo+FgUEfRRb+FQKQPP9HB+zR7S7UG+KvssZP4=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771651172615.5234518551317; Fri, 9 Nov 2018 14:54:11 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:09 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 07/15] staging: greybus: remove multiple blank lines
Message-ID: <373179870cc021cbd65b2137ee3807f07618629c.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
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



