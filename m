X-GM-THRID: 6620380698493583360
X-Received: by 2002:a17:906:c9c2:: with SMTP id hk2-v6mr1313714ejb.15.1541427580261;
        Mon, 05 Nov 2018 06:19:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b1bc:: with SMTP id m57-v6ls504861edd.7.gmail; Mon, 05
 Nov 2018 06:19:39 -0800 (PST)
X-Google-Smtp-Source: AJdET5deetytY8hinjx3K8ZNYZGBD0xtb0KbLG7XZhE414SEvrDZTkU+D8Kuu+qkvHr80IZSjkMq
X-Received: by 2002:a50:cb48:: with SMTP id h8-v6mr4011843edi.3.1541427579628;
        Mon, 05 Nov 2018 06:19:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427579; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAcljpJdBdECjT2J0DcCjlKGIssdRg3OET8J4zENlpcV2DXiCqUwQgjrqeQxsYLk9D
         6WbcKFsuUcgP7jfHXpNLvWAiUxL6ljdg5V1ewGaLX7Iz4Ytmk0Z0D89uLX+LaEHFc5sg
         qE6SQGzZYzUAXEYY4ZyblviAv4o8E/rnVGitMjPsh3ci8Tjwffkgh6cr9L8At8iQitHe
         4oyVr2teYv7slL9FRmUSfL1CDUj5XtZSWaODj6jvLkoiG9+PZye8IL62kNt+KiiuQAww
         jUDQgTMT5h4YDmhF8Ftal3xTiA6amse+Y3o5mROrB/dt8UXwm4WmiVKjkCT82OZYGwuP
         Cx8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6lBvn07vL8BmQRCmG79/1rhyJShjV9WmsyIKFrTUYxM=;
        b=d78RrSRyjnsIJjrZKk51bbDpZ0ts8hSnZKAp6R/tRNuvJ90onacwZzNBXzA2l3cAUt
         XXrbbPJ5N10om6mCcW3sO0dsAHIRg0bmddT5EhXdzbPvzs7kfVl47/B4i2BbQsNsBZ3H
         4ohw8fVtGA4Uk4xrO14whqsK/4JI3zSmFbZiiHDsas6N2BHAdjiTq4NOCV/xujNJ5M4O
         n/TXLn7553KLgynYiFPYqoG/IjAHosxvGm0mlsuGKSgH+ELXGAKJn/TBfeLir6GBqZQf
         Ds1wSrnPuOGjec4KyvWfv7OiDL8XPsuG2hoAwtsfR3BwQcJr3cHsM6xNuik/f+3bN1SD
         aelg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=ALwWEbSm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o10-v6si1361781ejc.0.2018.11.05.06.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:39 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=ALwWEbSm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427577; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=KLwEa3ozaG6CXJmV67yJ1CVSxyKEEaPCmvUWL9QxqXK2LJRQJSl7JC9X3zi6qAxvIsZlzumjvctuem1jjppcA9ybWCg3g7/mGtwICg6w+UukvkLewfgAd/SSPs+E68vfwIVgX6/SjDdlD9f/Lxx1JD2DDgF9doi0x+CV8zoOuFc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427577; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=6lBvn07vL8BmQRCmG79/1rhyJShjV9WmsyIKFrTUYxM=; 
	b=g3Yg/2qm7OAJxOqzaMJ1CtSFaXw2mKyDn+29cJRYb6mCg52A9xOXHxiMhy7my1dbH9/nRca3EUREUdOaqAe5c9jnnR/dW1atOLGCiMSvScoD6nppio4fvVGJ0xWkGp6M6etj0+9RzMlEgCb7jnKUp/70BAzfx+66Ow4Sms/k91M=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427577;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1322; bh=6lBvn07vL8BmQRCmG79/1rhyJShjV9WmsyIKFrTUYxM=;
	b=ALwWEbSmHQRXlgdkIAlMv39nA1WQywB2fJssN9fw074b2zvjIaFGzsp8WQiZ46L3
	gy5Id90p+FnrxIFihGrOxqxq1dtXM2oyyPIluR9/tq0D4YzaViywr+t1UayRHV6nCZx
	7UmBrgFtZJigZy5Z64KHXH9clhVcvHeY0kAX8nbM=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427576179514.2427633512156; Mon, 5 Nov 2018 15:19:36 +0100 (CET)
Date: Mon, 5 Nov 2018 14:19:34 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 07/14] staging: greybus Remove multiple blank lines
Message-ID: <19318e811a782db3c0e934c7e2b2abf4c9f24fcd.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
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



