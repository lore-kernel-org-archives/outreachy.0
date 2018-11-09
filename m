X-GM-THRID: 6621495393645494272
X-Received: by 2002:ac2:410b:: with SMTP id b11-v6mr139191lfi.11.1541771664245;
        Fri, 09 Nov 2018 05:54:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:407:: with SMTP id 7-v6ls152244lje.15.gmail; Fri, 09 Nov
 2018 05:54:23 -0800 (PST)
X-Google-Smtp-Source: AJdET5fC4Gh5/XOiT9YuPMloVeFVK1M0AKkvSA8ap/zwnwGvpgvyiWHNTdn50XPAbVHXlK3ss+hH
X-Received: by 2002:a2e:9a59:: with SMTP id k25-v6mr950632ljj.0.1541771663557;
        Fri, 09 Nov 2018 05:54:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541771663; cv=pass;
        d=google.com; s=arc-20160816;
        b=ot2e83O65SG77IPhU+fgMA+V8bjH7d2l/10fLZr2WrcDVGFiR0lcWMaW0e13Ske8+d
         GhtxrZSlcKCAriJAUadiyJaEvL/KRL7N/dIgKX+FXbhP8v2QqPW7lbv7vR7G8Pt57LUU
         ZGxBZ3P4OVNVAPWQ2EAP2TKdUG3Dsp7Ji9hlkNOdqJUQiE/eRm8CJaGQXJXz2Ev9o5pz
         VTtV8Yi2TCDRMHbN/+JgSOxgGFQ31a4+rBU+DZGSoQpkdLXwj4aPYsq9XHaVP3pjk9l3
         S4+fpIrtl/5foNV2ea1D1x6TfMhOIj9cO//eKPdakVaKR8ypeSHoc9T7dlGgYEcPUlXM
         eyow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=;
        b=E6J+x97CBN+B3WM38eIXaxCzdT2ZqBtIedYs74H9Fd+I0vvoKG4bstguNTWImy+fIw
         9BiLgS9wCRFd0WlLeu/GvnYWEg73yE/5Fs5/2KQNyOlyRxDOl/m7IM/8m7nz9vKjMXnl
         JsQPflg7phmkBZHHt7MItPBqG0BQhnKROg3AECixboknuK+IMintqcaOdW6vcEtV+3JL
         2/5iUTic3V56s01nBZ5/dFg0TyP/hz/5yy7AO8xWEPLdNSVUmaI2CluJ2DjuQ2uvTsy+
         P72fwj5kcunSXmi5/3xNW2KaZ7gvC49Y1e+JDbWSk5QvUBquUAn0+7VOgiQjiC1cqRi+
         bd0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="K/AYIVRi";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id w10si272079lfc.5.2018.11.09.05.54.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 05:54:23 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="K/AYIVRi";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541771659; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=K7J0K36ayIGmZKORE3IxpVfywonJXsInIPSIZWcwQ2iKYMOXyyCIkXZciS0K5LVtY8Tc6756dJ8NsYmL4tB4Piu5BJg62SFXOnRnYupKTT814noq+7fd+mBb5Ldip3b9/fAil4KUiqcOWkCb6t8y+73Mky79SNXCztQCLwy/kE0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541771659; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=; 
	b=A2e8REqpQCJrbA9JIhpKDj+HFd4awT+EXRHfhYnpsWSi3fydCTosgu3qX+t8I6tKe+DtVT3gcJ8PS+34CxQgxOVfegKlAGlqhLFl5odp0Kwqmh0OD4HaZDSl9UghhUxTIj5t4bhrg93hElmsDFGwOxRTnyAehEugdmWx3rZFwCs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541771659;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=623; bh=JXsMvhJzDmX+VyFmTUChrCGK+8F2jIAFlBOvE2KhLwo=;
	b=K/AYIVRiHVJUXxXpi9fF0iJSRwAdN7W3S1CBhxNCI3AJTsHfiB/E9VAmpD67+cPl
	GXaSMeIcLZ1UDZSQlR6pkXAHi5glbUyTVAGAWqFSCOJCFosRK+o/CMQld9zoNbF9sh6
	zbnKwx8s1A35LTQ9XvUciYmY93nJRspWv6zwDqm0=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541771658647689.0241937701497; Fri, 9 Nov 2018 14:54:18 +0100 (CET)
Date: Fri, 9 Nov 2018 13:54:17 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3 08/15] staging: greybus: insert empty line after struct
Message-ID: <d69eb9b74f95d985be6e017b85eb7cac8958606c.1541771591.git.code@wizofe.uk>
References: <cover.1541771591.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541771591.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Insert empty line after struct definition.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/bundle.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..4aaf7a0880fd 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
-- 
2.19.1



