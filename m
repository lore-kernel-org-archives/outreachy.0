X-GM-THRID: 6619601914535346176
X-Received: by 2002:a1c:e482:: with SMTP id b124-v6mr80368wmh.22.1541246205375;
        Sat, 03 Nov 2018 04:56:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:85d5:: with SMTP id h204-v6ls681154wmd.19.canary-gmail;
 Sat, 03 Nov 2018 04:56:44 -0700 (PDT)
X-Google-Smtp-Source: AJdET5el4aw+ayVZVxXYUbbA6mf3AceUpJNKZciYSxOxauhwcsdgt8bBLwPfdRsy74LKb83Ob58A
X-Received: by 2002:a1c:9902:: with SMTP id b2-v6mr75753wme.4.1541246204574;
        Sat, 03 Nov 2018 04:56:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541246204; cv=pass;
        d=google.com; s=arc-20160816;
        b=GyhLcfvxYx9G2pVbOeoJAUIhEsYEnq95JzwswZSPZgH8m7eVcmJgEDV0fgGoVBAK7k
         ccQ4ExL7ex7mpxvsfFXCRcjiu0JqsjeokM9I8MfHq3K5+XEFQdZdf9D8TG/dEa588olh
         5x5hSFRgF4zoC3a38Lo3MvLTUuhLX7xpxWpO0mroiumI4U8gQC7wWGFPQcPgpD48hHiM
         zLqF6NHNwjLFZhbMdRM+75AaraM8TAif4doXx+ThGIbKjZc25Abn0gqzvlS+1InbwzyZ
         if3z8XBKWxHHMfj8tCIIV7KNtLeMqo6HtZSwct2ukiAxYGeQml7ks+TsuD1n1Doe57rF
         R0Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ugyg1RtTqP8ji9CX4gR3FF5reT/Co4gQ+frSAgWUazk=;
        b=iqEVuF0YGjE9zAkF8vaVf4mT08HU5TgTmqY2VPv9VkB/Gd6jZQDVEXgtc7rK3yv2wc
         fIRhF9dvWGzw0Q+by77Kdy54qsmW2YC+3m5baTNm0k3su3B3A/SnJIT6n9Vo4Jjso0f8
         sFAkJd50aehI0eM5bXSWIJL2MdvUgxSuNXADz3S2ivSBfnwc7SWoy+m05rUWjpzPRb1p
         hN1FCU5GiGgfGXZSwvt6NV2PtYwxOf6QwIeGzitnACSnwO7kePUF6R2kYLJrKO8hK0ph
         AKoD84YQzJV19HXFIhOveGGWnKe//36uyPg+rV4N+ZzNzsCqJESck89dYMu9Z8ra8eBU
         glBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=X6dji3nW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id b12-v6si362375wme.1.2018.11.03.04.56.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 04:56:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=X6dji3nW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541246202; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=DsUgODbkKQ/fMQUW4/x2aPxAqoR9PS9l7JhltnunoIZWmCD8ypf6E8a33M3DsQrbn2Gux48qayM4FeSVB67d7oFX6KjZOsyKmtfj0eyoc6qf4oK6af3tqMBumk54zEBDNF64PwUnitQdbHhPFyHXHrWpksJBJKxBC+Am25Hk69k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541246202; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Ugyg1RtTqP8ji9CX4gR3FF5reT/Co4gQ+frSAgWUazk=; 
	b=bZP2KflybKKkdK4F7ReP9Q1O76fVcBzcqR7JHrNPnfUBAgwOoi6xhL+RSSrdwossWcUIoTuduxK+Ej89D/ETU/a7cHQMnjdqRYtk1ZbXX8WYH+rbolkn1oz9w5gZVwi1SHXgNIjy/5Rub3M2iwiwfad/89fiMZxMnwxLofdDEzk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541246202;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=681; bh=Ugyg1RtTqP8ji9CX4gR3FF5reT/Co4gQ+frSAgWUazk=;
	b=X6dji3nWb6b6EYbZkseY/O7xpO58E9xvUx0+seB4vzibLvjNyjjlkJhtkKzA8WX+
	4tn6/AjwgoJPg7Ru99PalfshmhqvrLF5DRzzmvnKAAymsEUiuxq3iWEmj8c4N+VSWAa
	mU/hNDIJeLj+pZ2Cz/q7GkaKXabkqyAG+D41zT2w=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541246201444624.3160246523686; Sat, 3 Nov 2018 12:56:41 +0100 (CET)
Date: Sat, 3 Nov 2018 11:56:40 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4 3/5] staging: greybus: insert blank line after struct
Message-ID: <110c66f9f5dd41df01059538dd8918a005b12865.1541246060.git.code@wizofe.uk>
References: <cover.1541246060.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541246060.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Insert a blank line after the struct declaration.
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


-- 
ta
ioannis


