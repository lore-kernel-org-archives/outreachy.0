X-GM-THRID: 6619601914535346176
X-Received: by 2002:a5b:305:: with SMTP id j5-v6mr4334508ybp.43.1541771641057;
        Fri, 09 Nov 2018 05:54:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5542:: with SMTP id j63-v6ls892187ywb.2.gmail; Fri, 09
 Nov 2018 05:54:00 -0800 (PST)
X-Google-Smtp-Source: AJdET5fIyFqyYbj/GXwIi1DlGq1Qlv9jnuJY0MtZ/FZNGtqZQONx51LSbe2SbG4aD1NlIXkTAwkh
X-Received: by 2002:a0d:db82:: with SMTP id d124-v6mr4417915ywe.4.1541771640151;
        Fri, 09 Nov 2018 05:54:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771640; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmVM2u8Zs37sb/V/2njJ6VpxkDLtY0yPUshW7qDKOZ4sbNQO8vUtQJh7ZOm7aKOBtd
         QqbXSeIEUgmRocv+ls5hHf+H1uz269i6SkVxzrFPfoQfxIYdJbAQKwL1StZnKWcKsRSi
         0psRiMsbvj8l+548FOCvw2HWWRgfBRs2JxZJbT8Z+ii2swaCd8j/cPxKW2nPHShF4K8I
         kUBkULNpv8ezkdYwdu7r7PMTV1rco5rGB1jG/sOeZL1swmZ2Nwy+v6YmaC7Gw19x+cbb
         4zp0R2kiV5k09+a64UXO48cjwpmS/I/R9EvN9xnAI1qqAQnsdfW1YdzxStNKjBlENJux
         PQgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=;
        b=HzeeCqFshWEKUNOzwZHIOOgGxOKPmnzZ6n0jw3+Umu+2I0qpxh6+aifZ72b4EaldPX
         J3NcGCaBcnYaAK3lV3ez/vEcpcOMRO5d7EPEumOJLqcytz2b5Fy5I226KP7KR63D/Lkj
         5gvDPjHprxoVYBKFDNxf3QnqXVvCVOkbJxCyp4jxVAHNdR90wuMUSsuSoThlSJbx4sx+
         DkujtAy1S7DXdpIONzLmVXRVqpeJgZHNR9/l252O4/avPtPQwpsv3a+/PTxV6zg9wZ+l
         It6pDxIzwjUMroj60eMxh9dgX1NYB+iyNPdTKOgxwzZebZkCO7r6Bry8Wi8phmCvo0av
         2XaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dwm850OZ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id j21-v6si309880ybg.5.2018.11.09.05.53.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:00 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=dwm850OZ;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771637; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=ghDXTZcU+UwE+uAqX+ZZBxgrzAsuktN4ZAzTEdAoCtiayP3q9Wik2AZnI4dzfah0SKTK7wxELinch9Ew/E7rhUWaoObuTiLmyR06fPgJO/rji5CWI834UuMdIRW51Tv8PJHRLTTGZ1IpDeJpqyjsun8KOAf1Jh6HZVdxPOFq7K0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771637; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=; 
	b=WnyY1ImqF7LCAk6ozAgYvsRaNbRqOUv5KXEYv5AgAz1iyURJAohhLPXPYHmIjqpkc4XVHwrCWsGbQQqvfKiwhaYIBEV8bNJjTTxTbRrWsRqFK/ZHbpMw6qxSTyKaXIKmTptZZ2uk+KPyGZ14IL1YsH/3VVFhZQIpXQf8yH00oMw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771637;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1016; bh=e+9PHUjLy0p/On310ynZqA395U7X0UXU/V1lhL1AC8k=;
	b=dwm850OZkLBXZeMz3I0AhXQLvMY3OeAczTEK6kr1GYc8HYocxxwM1kiSyy+IgyJ6
	LqkcZxZfHO6juVsYX3McFYpa5H2WZ4TQQlT/bWPlD1xNZwUilGGTTJ5UfGSj+7D/TUl
	1mCf+veqD105MA72BDcWUv9nK3slIiQPUUOPVb8E=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771636138140.0948864732892; Fri, 9 Nov 2018 14:53:56 +0100 (CET)
Date: Fri, 9 Nov 2018 13:53:54 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 05/15] staging: greybus: align arguments with parentheses
Message-ID: <92b5525f314154e4d2f648c64cab89233091a828.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
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



