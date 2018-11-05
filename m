X-GM-THRID: 6620380698493583360
X-Received: by 2002:a17:902:243:: with SMTP id 61-v6mr1705604plc.73.1541427532358;
        Mon, 05 Nov 2018 06:18:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4511:: with SMTP id s17-v6ls4484903pga.3.gmail; Mon, 05
 Nov 2018 06:18:51 -0800 (PST)
X-Google-Smtp-Source: AJdET5f4a9bwvBQ00UsJdjoF94TjOt5IAl9XC9ge+eWZZBVkEsuaUHr+FKICo0Eg2lGNEgJe/RcM
X-Received: by 2002:a62:969a:: with SMTP id s26-v6mr3948727pfk.29.1541427531676;
        Mon, 05 Nov 2018 06:18:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427531; cv=pass;
        d=google.com; s=arc-20160816;
        b=zseovJf6nnvQCeS2jSqm7heF/hgg6h33+EZBTkXDQ52DuZ0PV6h/3ZI6RAGqjM5YyV
         P1rwyXOwrLJZfR4cAZz6jWQ/ut6osvyKVTvI8gahkF+ZSAobWXI1Z74J/6IrJyJirDIp
         fwYV/Wp65dns4rOAnGRKHsjNGNl2A/gYmtOHA9SUYeH5vsJ6ldJaysrid9sD9bPro6Ak
         8ZFe0bvaU9fqCcGTXXJiF8je935W0yaVt0NYMK6f41KWVCIctMv64SFwiP+rhvHBxdk+
         uOXWkDJ36KwSSELuwOt5oxVzXQqSKmXcMrzwZ2B7QR1PD3n6yNC9vHrHRUL+yswvnDQ0
         PtpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=;
        b=n17IyijF6I5Lxhu0HofWNQGVUiUz7tRY0E8x3U0eiGWyglaIRLRI3bx4Uwixyw+RQk
         XJDk2lmONG21zZi90JYh2lf5EhUZSWgIIsXnbNgW6dd9xzhm2vNgCetVNTurw1IgzQD/
         Mv0A0tevPw2SPIQzipthDD6Dj+LzYXu0Uko7BhjsanplHex4H0y5afPiubYkXm3t32cm
         yByzlpFn5c6dFZyDRagNp7sOC3wi90th4mdwjZK7UzciWoCHWQPT2YtEUuj9h3I3ODLL
         Ll/yrv0KJQ4ON/+NUhH/wAQkbEUpmmX2LlM3EcnkH2W8amxjho87+rqa7TB4NjgOvtfv
         6XCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=f4Ow3x7W;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 184-v6si2315381pgb.4.2018.11.05.06.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:18:51 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=f4Ow3x7W;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427528; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=CUC7FJYCNtLHy6pQNMmcMwmpNGJUkcaPvhHtrya3pQH1MV0gHhCtRptHa0hsTzhFjCYRPAAiZQfK5ESP+08GEZWP2zvx2qkOMyWw3q6eNGMvG5CniVxxVuyBYSRSMmpHra796kheh+5gXZESQf7dQv+l+wTSmMDhWPxYP5Aar5Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427528; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=; 
	b=DCg/B6NGgAMyr/KHzuvpt+FfJ01yzxJHyu78BOWGKIfRfBSnUfhNSfvM4xCOEm3oO0CU8yF9p+q3oY2ZYIO+anZtXcfxJiQKCEMOBsnF3n6zmPpui5Adw/MxIw6rlXWJM4S7WRGgQuUaDTh/agx1A65CNPSm48W4FN9pkaSdRss=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427528;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=656; bh=WCJSPJ/DxQJSKaVK8s4p7mgaXOH5rxd3XRDYAk1nBck=;
	b=f4Ow3x7W404OlZimxw0hokckFFICj4fPxYRxq1m+5hwqTyTrEIQl0DsC1xZiq3wu
	yPvbgoiidm1h6kwttWh4q5FnlUBInUfVc8JuUI38uDI8kBRaBREbGillplzkOSjp8cH
	4uzamWGC3KTbQzukCjENT03H8lv93lCIZrz4oitU=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427527864445.9836284833333; Mon, 5 Nov 2018 15:18:47 +0100 (CET)
Date: Mon, 5 Nov 2018 14:18:46 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 02/14] staging: greybus Add a blank line after declaration
Message-ID: <ed9d73ed8b76cbadadcb5c00cf4ae6ef513c17b8.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add a blank line after the struct declaration
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 643ddb9e0f92..9c453e0b1b33 100644
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
2.19.1



