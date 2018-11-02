X-GM-THRID: 6619077441472167936
X-Received: by 2002:adf:db0d:: with SMTP id s13-v6mr961525wri.25.1541124129874;
        Thu, 01 Nov 2018 19:02:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b6c1:: with SMTP id g184-v6ls334636wmf.9.canary-gmail;
 Thu, 01 Nov 2018 19:02:09 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fUdLGzcV0tNhMJQRTjKX0bLbiawnRCB/y8jwUOn2KUudlWMFcwrrumaaTHK90f9rOkSqUt
X-Received: by 2002:a1c:12d0:: with SMTP id 199-v6mr966880wms.23.1541124129249;
        Thu, 01 Nov 2018 19:02:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541124129; cv=pass;
        d=google.com; s=arc-20160816;
        b=An6jf99wfe+06FznWXEYJ75+0ECnW6dZ50WNUiP8XPcZwUPnBxn8/t7KuH71A85kXe
         Uo02KmAAozB1nsde3KHsFbnpsU/J7x4IHdzoOMXrnJb1B2H7uiz3XABRGb6eNdktsaiK
         QmlrjXX5UZWPQWVIWItIcT2qK6u9DMiHPy1wC0Hgnhj+taDdCeHk9mkfOP9tFxLHAUSF
         oQGl5W3EqkdsLu7bhimGjJoNJYbsdin5+cA1rN+GdHJXfCVnhuZakKx5cf3mrzYnYij7
         ttRAXLaB51e4ss7LgiFbZSXoU1UWmK5GoW6PSSkj0eo6HmtNPKlyaJAHBNwYDWgEuqBc
         fuig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VAgZ9uUS4cjQcHEyVv0Ss4lsbOe5AjOi7TurdOsK3EM=;
        b=rcnLczGAOK1VdteYrr+fqDOs0m6t4eIn+y1hqOmmwsmYqxUI8Pt3qA1bpKRVtFo+dI
         /j7BCx3NozLY4Ra3AAJkGNxpMO2LUuqApWGA5JRZRcB7EXMZwPZyubOeaNQ/9Ia+9v4i
         JgsyreMzK7DUWd5scFyTozKCmC3JNHj2Vl8RpQJp/QcCdMojnRMzV9vP6+Qk2FFOPI1I
         ijru52hiavwAKWilmQxIkPa9jCWfYIa4qJzT9T4iGM7sW6qmQYPWckHTRbuqFWVs7dAO
         Jkc3WKtRYzEsa1zwR6pChkSjPkGlNqyTb8XfkZBbRJuQPEhb9Qdjfm4pkucbV8PVyp1U
         o3Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=RiZ4ySzK;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id e5-v6si871585wru.1.2018.11.01.19.02.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 19:02:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=RiZ4ySzK;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541124127; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=fyBaWeC1zRyjlsa8ME2n8HwGSA8PATF+iclwZTPCGRHXqBggez6EOGVfjIEl6ZcNiduOasYMk0l6x+BK/WRLw6l2PN5H/5Ul9mZp+T9b3asbRDNN1sBUAFg9EffwLkkTU09oDYTkA9SAoKWx3v/YpiMi5mpnyXy2W8c4NeKaxp4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541124127; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=VAgZ9uUS4cjQcHEyVv0Ss4lsbOe5AjOi7TurdOsK3EM=; 
	b=DjdSJXajc0Kw28jrM/E/joVZPekWPsomJeULQGIUS69/oxii+xMXlSiKIzwIdu0RiJKm5h/XKjOWdfPEuWZKpN0u4AZ/5EH515NnNlVvNIED0W1H4qof7oAucWqRghRXkbFNLQFSfJoWSW0SB+OeQrKleiQQUp74Ge+mvW0jUfk=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541124127;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1367; bh=VAgZ9uUS4cjQcHEyVv0Ss4lsbOe5AjOi7TurdOsK3EM=;
	b=RiZ4ySzKvCsSTraBwGzJb+d0IspaZW2ybJNzuNZlqcZk3iPvuMKaCCiPJx1swfml
	hzwLskdzzNl6sdwm7hqisqyltW0cU87Qn53KrKQ9YRekVP1JlCp8CXozZaAmc/oYHED
	GUAhB+awj4rlDtR6i0MSKMiy9d1jIu70XED7PqnI=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541124125585532.4602747291974; Fri, 2 Nov 2018 03:02:05 +0100 (CET)
Date: Fri, 2 Nov 2018 02:02:04 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: greybus Fix styling, parenthesis matching
Message-ID: <833e98c464540e296f7a577fe672ab5c7931ee10.1541123999.git.code@wizofe.uk>
References: <cover.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541123999.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix two instances where a styling issue is found. That is unmatched
parentheses correct to match.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index dafa430d176e..d28773e06838 100644
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
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (id == NULL)
+	if (!id == NULL)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
@@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
 }
 
 int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
-		const char *mod_name)
+			    const char *mod_name)
 {
 	int retval;
 
-- 
2.19.1



