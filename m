X-GM-THRID: 6621495393645494272
X-Received: by 2002:a62:6a43:: with SMTP id f64-v6mr2003191pfc.77.1541687057507;
        Thu, 08 Nov 2018 06:24:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b203:: with SMTP id t3-v6ls942412plr.8.gmail; Thu,
 08 Nov 2018 06:24:16 -0800 (PST)
X-Google-Smtp-Source: AJdET5e7s/yoCGPAqREWbsXY8pXkgTAOJ2Jf7zkukQdjkNpoCHg4YSjlVHZWpk5wmPKTZKqLnhfl
X-Received: by 2002:a17:902:f217:: with SMTP id gn23mr1706654plb.85.1541687056618;
        Thu, 08 Nov 2018 06:24:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687056; cv=pass;
        d=google.com; s=arc-20160816;
        b=OeUUoZ8zV1YrUxvK5x/TGERy4bLS9LnYO7O5pnHpH70dNQEIOxvH0VmmdWyVVGUdsr
         z866FVk0b+OEQMTDp6meZ0o0eSehkrud8N/0UiQOAWIsLyTNHstraH7a1sq+ufZbGzu1
         /VB+FXKBnrjfGkL4kUupBC5PJJPejcDvX8NuNLFovjeeEU/CfUtMqcae0uuu24w6rwe4
         geWhVhUjvha4rXFLNejvQTOhB8xlbav3xuwzvtav+e/EfVCNHy2GthJbXJtwZLPXcgLz
         Hx05z13FJLjEfAeRqILbR1boLxMFHeXgBT3aAX1mteLbcCzSyr3JzLsni15POa3q1OrO
         Gcbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=;
        b=kBjCwuYd+9dy7kqVBUQ7HXstlN9/qnUZx2523CHo7MbDtRV+bIuuJQseP9dHDuF0Sh
         cjqDbtt5Xd3xL4kBnSzTDb8LZXkUBmGX+fWRFvrPsKleO0m6nwZPVyLkuTu+xdD5AWey
         Pkuciwa7+hvKHFMreDdseS5fWmb131C2oyoc319eeCkiJeZHNV7G4U3aMwsnUme7kEcZ
         HjWLDpj8S8llil1ccyPQCT0NUGTuXooYxxQP5QocouPAXJnPLQl21oiaIwy4deOquxOW
         fRptkAcC/lHf0WjS7WQD0AFEkMXD7dBIRhZeU1YVnBqL8dCNZE5yu/EgN0IDjiYhwaBQ
         Sl+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=KpShz8qs;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 7-v6si163463pga.5.2018.11.08.06.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:24:16 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=KpShz8qs;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687052; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=GpuPsoj+bk8UOPQus1BIwKQ0983/a8cDrFtA2Sjh0APMiseJu35F5KQK6cglgtzEaEe+7/yz741jbdGXC15f9HVU29sG8101dZdTQsoF86KZHXVPq14We3vR2GkYJoNZgnCwhtr8ChwjQQRTQXGjC4/3tusMhgMnQAx1P7rfNEg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687052; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=; 
	b=CIQh1C6WDFQTmXQt5xXYqgXtzJ23cIyDM9xq4/LVYzLphJvws/jP1mF/ZroQzDMAiAi5cZSxGRA7B/7p7iiUW/g+EI9EMDNssy8HzN60epu2diKUyfx9T6ctwA5OM6/zOGpOfByRy8E4Qu0l1nlS8IFU8GEEWYw+I3e0uboavko=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687052;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=766; bh=ivuak6gNdatxyxi++D5ZObuTF8XVg7OX1MX/dZrC8ms=;
	b=KpShz8qsddLMRuI97858rlL6RFGicWZC+YJLsaITjDOvokUCAGko1QVYs5OCcvsA
	qxgEZXPJFvQp/dQVFiU2aLb/kjXQBtnJIjrH0kAIBWrIupvWBJmKYdd/NBARZ508JBz
	DjNrzGojMXgzWi0oT9zaZenDLEI+vC4fmv/FD5uk=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687051473174.15524328682363; Thu, 8 Nov 2018 15:24:11 +0100 (CET)
Date: Thu, 8 Nov 2018 14:24:08 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 02/15] staging: greybus: align parameters to parentheses
Message-ID: <ccfe9475999ca0c387c267c5fc9c664bced8a7d6.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align parameters to the right side of the left parentheses
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index 5d14a4e8dada..412337daf45c 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -28,7 +28,7 @@ int greybus_disabled(void)
 EXPORT_SYMBOL_GPL(greybus_disabled);
 
 static bool greybus_match_one_id(struct gb_bundle *bundle,
-				     const struct greybus_bundle_id *id)
+				 const struct greybus_bundle_id *id)
 {
 	if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
 	    (id->vendor != bundle->intf->vendor_id))
-- 
2.19.1



