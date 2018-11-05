X-GM-THRID: 6620380698493583360
X-Received: by 2002:a9d:6351:: with SMTP id y17mr16646611otk.65.1541427543988;
        Mon, 05 Nov 2018 06:19:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:45c6:: with SMTP id s189-v6ls11889481oia.1.gmail; Mon,
 05 Nov 2018 06:19:03 -0800 (PST)
X-Google-Smtp-Source: AJdET5dXWbhSRejQuCpJmga1uiNd/qYrUlcXQS7O9qkeC6elZV2WqoTaEu1pnQ+QjC0awiSZtDvt
X-Received: by 2002:aca:4fd5:: with SMTP id d204-v6mr6110034oib.3.1541427543477;
        Mon, 05 Nov 2018 06:19:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427543; cv=pass;
        d=google.com; s=arc-20160816;
        b=bPJUijIdYinC3eAYqvwVO1xqvUg8mj/rrsvXTOAEL+VmLN/FHRuKUz7UNq7bxYmCCD
         vKILm99+eDZ95tQhmb6zgKThSZum84yMh8fYO1peHqTFwTSSQcdPW/G7pQ/XYlA2sl6R
         EkZ0pvmMHrwUkjLpmUwGgKsIfo1pgtxXhgIsDyyErX1JDn5KGbiwwWu18gP/c22wZY6z
         t8AaPiPePLnkf2t6AsuZhRH8YIOqzrchkiXgC3uBcYxTySnENKlhotv0icjIWAQtizJ8
         oCsTNG165w+z4zSS9IreXXCXQgv53Kxl7pXsNCjWdDwFuAwP1PDjqUehvP/I8yzf+o9F
         lgtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Tf2B8Yn548iwPJMf2syfVUBXwcP/Cz77+lt3eG0FwpE=;
        b=WogPy/OPtaHA5fH2fQvX1IzQ8OCb0bY4CSAQqqQcxm1f0SN2EPd/tC8bv2XKTEQ5gO
         wt3FuY8Vt3/BfdsoNsCLbyMpRsQxUP/855AySZ8gVZAWaKXWjKUblRYDsJA/6rKCYq5z
         hPk5eK6026Zkb9WuM5+pDEL2994iLxswVWdzrpxNRFzwz0d2ifvD1jwZ+A129ge9LXsk
         PhiOzufkzd2MMdBhmQvBz+ue48mybNXFW3mWTPDUQLJZ5Xes7Ywp6Kj0RGwr+JeuT0rb
         wBR4MEAim9MsWLnYTbFNGyYI516xzkvCPkp1+n8z2EmqyUVbVWDW5eDWX6hkJhEQuwCc
         pf2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="D/RNVxZn";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id j187-v6si211590oia.5.2018.11.05.06.19.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:03 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="D/RNVxZn";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427539; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=LQe+iZ8PFstk+mFUN9d73SJ9h9IZdAeqtI2KE7qeJE/5c4kWN1zFtWLqO9Si1v4H3R3jrANkiPw5YsryBDRc4DfNH2iOTrxn0vb+abuTvoI7Z6KGpqXhFmUfb5NzhnI6ODla/lrDAhYbnJzpHz3t0hncFtPbDxiaxBiXELK6htg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427539; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Tf2B8Yn548iwPJMf2syfVUBXwcP/Cz77+lt3eG0FwpE=; 
	b=D4ZUouISbBICW/lrJn7BkdngEMfwOb2xLZzw388sCQjcuMwGivwTdjxE+Xe1W/o0FeY2HOMU+ejjXp9iwBdEIqrD5DjH1R56fwczCVFUHXM7Yyhoi9MbGnVXC0GoDT70KGw/ILn6DKRbq/F0Qk6UYemH7ebShR7SJD/d9TePgLI=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427539;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=609; bh=Tf2B8Yn548iwPJMf2syfVUBXwcP/Cz77+lt3eG0FwpE=;
	b=D/RNVxZnDgLqPDwNIoJtlhEFTa/RIAAEqBUY2VM8wn0Lx0LdQz7zVOO6JOjl+g7J
	hidgzkha0pQqrBNLAskDyPYp3fi7Q5DQevJ7fF8Xnr/9/W6A4j5IgIkhZau6GMxzV9K
	WFaxN4bIROQxIaUaSJo49O9qqj2iR0MQIaUk8OJk=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427537921748.9080574813233; Mon, 5 Nov 2018 15:18:57 +0100 (CET)
Date: Mon, 5 Nov 2018 14:18:56 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 03/14] staging: greybus Fix SPDX identifier
Message-ID: <b82c2ac74a59767917badeda6265c6692ecc7819.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix the SPDX identifier as by replacing with standard C comment the
file
Reported by checkpatch

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 9c453e0b1b33..ebb7a2ee17dc 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Greybus CPort control protocol
  *
-- 
2.19.1



