X-GM-THRID: 6620547167797903360
X-Received: by 2002:a17:902:5998:: with SMTP id p24-v6mr1166759pli.113.1541466300321;
        Mon, 05 Nov 2018 17:05:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:618a:: with SMTP id v132ls3278362pgb.6.gmail; Mon, 05
 Nov 2018 17:04:59 -0800 (PST)
X-Google-Smtp-Source: AJdET5eZMAlr5K9Mq6JvnKHIEB18ABRCBDGHxx9HHpjcJu09dwtCwxjBtZ/9uoAjefPnSZ+xrnrJ
X-Received: by 2002:a62:93cc:: with SMTP id r73-v6mr6192027pfk.86.1541466299543;
        Mon, 05 Nov 2018 17:04:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466299; cv=pass;
        d=google.com; s=arc-20160816;
        b=NqO/bUpxdjjgF8Mk2I8puVERuAnt7f1tWnzHNBppwW12QIPJReLvqGvq7RX9U958ez
         g/E3tCMd/3tMWyD5P44h11g7/yrLibo0kHJqKKhHSKXHoETc7zBXGUigcsZf2IJrQ0CO
         KsAp24DE2KWOoD0Cop/w9pjoo8rTvBDS69cbwNolaKAVv0XJAwIix1CEIiZ8YGtu1yxD
         ZHNqPH6jL4EEIBLt6VCScdqs69FKw5TMHnxWfQDfYaMeKWZ/52qpyB/txuLhC7O1M8l3
         Thqmayqd4P8rRIwLy/ew/NeQOy3K59piohIAuNGfbo1hxSpaUZNI9vVnlEUX8q3Q/puj
         qI3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=;
        b=OOQDF4WgkMyaQaA8J2fGpA9ZUbZa9GV29dWIBN905k0wjKESVitTeljlpFWnsjc9jA
         EfGBMGMs5lGoRFXWqXoeX4SWUTZQX8LUVqZBBnruHddJQJV9yFIw9dAUlcV0mq2Qy7e2
         wBNLjPh53abE4+8Not7gDjmh2QqHIfYSjuUiqKAjSZS21Y3Ps9fYIY5PJPMbWWxdb/4c
         87rZ3dbMYqfL2rmG/SAwKYHixHrE5U0itnR4VXzMcQMBAndJy8imK4PS5NDG1/RvhZTC
         wMhbYiMX13oxymkR0LfcSDz4onWX4jcUnxHLZbCJgKh+nzd0+W9A5zqsZ3Z/nTLoZLEJ
         UsZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gFJkeWV3;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id y18-v6si756039pll.0.2018.11.05.17.04.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:04:59 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gFJkeWV3;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466294; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=HyQIOLluM0xUeyAW4WUKm++ZBflYivQSbsyzmrY1JTkoRWbW6sKGHgqY9yv+hRWWqgmDeDR8KAuricSCOjnfW66+6w5MyTvp+D1D3uTS63TUUZ3v+foWQwdCFaFfSNnw8dGR2ESbcqkiyTF3QG0pMPMzI1drGA43R7wIKW6WB9w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466294; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=; 
	b=G3j+2DLedVqiZNwMUobt1i0tjEXC/ZaVrUFhG2om7U6Go0acjFoAH9NH53OJBCzLt6Txib4KIbns6TaZDUwIdjoAita7fKydDSlznL9Pj+si+c238cUsPQWik0+ybfXqJukhI4D+VeLfzxs0N1+MPBj9123Tpsdl5wbMCqFeClM=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466294;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1016; bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=;
	b=gFJkeWV3/8CKyC9DB0UJECh26kxtnv2dNhUvV6rGC4/XlRrdqV26yrQmKd4oTMrf
	LmlcLUBW6xLTFAdfadQoZcCtvnQQNG9kYEPTJSNP/h0yfQMYkx24Ln1JOWJEAPTPif8
	wsQs6Sr93tBfejuoglweZziXmlTjnshX765wae9c=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 15414662929241002.2592785877299; Tue, 6 Nov 2018 02:04:52 +0100 (CET)
Date: Tue, 6 Nov 2018 01:04:51 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 05/15] greybus: staging: align arguments with parentheses
Message-ID: <d24f277ccc31f4807b54513acff6ef5c7d6b19b2.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align arguments with the right side of the open left parentheses.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index ebb7a2ee17dc..5a45d55349a1 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
 int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
 int gb_control_disconnecting_operation(struct gb_control *control,
-					u16 cport_id);
+				       u16 cport_id);
 int gb_control_mode_switch_operation(struct gb_control *control);
 void gb_control_mode_switch_prepare(struct gb_control *control);
 void gb_control_mode_switch_complete(struct gb_control *control);
-- 
2.19.1



