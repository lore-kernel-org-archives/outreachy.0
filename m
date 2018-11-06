X-GM-THRID: 6620547167797903360
X-Received: by 2002:a63:5d5f:: with SMTP id o31mr1371740pgm.122.1541466313531;
        Mon, 05 Nov 2018 17:05:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1007:: with SMTP id y7-v6ls3118864pfi.0.gmail; Mon, 05
 Nov 2018 17:05:12 -0800 (PST)
X-Google-Smtp-Source: AJdET5dleaJDQZ3rVnxe7zy5+fuk0xQZ5gufUwZQRSYvCfFXhK1+DmHlbobudurKQ/CqmsbE1tkx
X-Received: by 2002:a62:1c48:: with SMTP id c69-v6mr166912pfc.85.1541466312803;
        Mon, 05 Nov 2018 17:05:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466312; cv=pass;
        d=google.com; s=arc-20160816;
        b=TgY4+rtJAYkfKfDAv0yRcEqJnCmM3zuXgVwYO/lIjxYUxQ68bpiu691oyaaDoZYrGB
         hhoZ51jr2WliLGq/n0CR2P2B3N53D+z2QbI1/rRcwzbVIm7w4691qJi0JMrNj8bha17w
         YotzufHfMFCjjUyIkMUzaP3NafLIsHQxB+Ng7mrIhSUyr3C+/qzFMeeA4jKUe+ddHvSA
         A5F339y2iflhng8AuMs7QjP8deIBH9i/gXXQYP8NUsi8ze5Rt26BC/8Fk1OgMZOgPrmj
         /femUHVf7RTUVn/3+cX8EostLEF/VF/DrnNfdXPIN3PV3JHQi3f2JE9LkaI/ohbeDkm/
         IesQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=;
        b=KgJ6GwZewECj3NlL+6ZCrJZrHT4nxSqGJY19L7ZwDazj7wBw+U9QzcXGwZ/DppcKkH
         BveBC2w+WVBJT3qD3Y3Pf1EvTA8F5K+3obcSZ/5Qo7h8J/0AZajKIsX8GzpUltqFaaZJ
         xDJVyzqrhY77WJBwT7S0c+jg2kXejfzs1hQ8ehUmRAsN0rWIHsm66ojcnx6NA27Gm40O
         u8t69tm3E6HP4kcS+uCJmxS4fcuokBIV4U8D4KgaSABL7OTi65FwR2eJMfh1JB90jGF9
         EjiqLfq2w3csKCFfQ9U4zTrQGCv1SXJSOcYKpGUr6zN7CA3oYaUfuAmRhN6eqQO3g4In
         rIZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=UvT+vOhy;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y18-v6si756068pll.0.2018.11.05.17.05.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:05:12 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=UvT+vOhy;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466308; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=TDstvUQ1k9B6qk0na4hRmrwuK9aY57ySjDeAMyaLpj2xxtSr+uXSSFFK1oRxq2yDP5Kqix+rF/DL4EPkY2yGNhD0+vXSPTHw4o/dtAKXPdlNQbpELuNaphLu4ep0IQpg/Mzio9/UiiW9NqU+vp40Yn68SJjK3Zrmb+tXY8p8c0s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466308; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=; 
	b=KozO5vS0jRsaLUC2O/J51H5SMjZYHHZdADlgA1Lyn2gX2QZfgKZRR0ltMfV4IqcTpiTgAMjaDGMdgHOCsAZd8jpijyJE6kfaFS/E+d7x4DHJOMUVQIBlGeGfa3g3ug03ODPY5G9KYWt55FIt4Hp6yM+zF02ZgY3jUBdfDuxsp8U=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466308;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1323; bh=TsMTunaujQTeBqltjd2cBnQ368fAt6eywqZM/tuYhes=;
	b=UvT+vOhyoEYd/XaCPjlnBX+WMBe7bD29zR5YaooHxoMNAb5tPwRADkRUBQHaHm2Q
	FVOGY0y7hNLAUuXcS/yl5jF+/ElKaxk02E+pgNdEIaEJSSX7+ZUHGN6shI/TTCXy6Yi
	SFaBLnVmnWq5IWmmmrW7JKh33kDsHDU4Kzuvb8Xo=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466308358152.15368093125142; Tue, 6 Nov 2018 02:05:08 +0100 (CET)
Date: Tue, 6 Nov 2018 01:05:07 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 07/15] staging: greybus: remove multiple blank lines
Message-ID: <ed7825044bf3758f85524145130ed20913fe7146.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
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



