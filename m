X-GM-THRID: 6619244143382102016
X-Received: by 2002:a24:390c:: with SMTP id l12-v6mr469688ita.28.1541162948141;
        Fri, 02 Nov 2018 05:49:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7686:: with SMTP id z128-v6ls890146itb.5.canary-gmail;
 Fri, 02 Nov 2018 05:49:07 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cqMjVDSvscjf9Z45UUZOS920/11bIIGeweluyCvM0peeY8AmHz1usijwksP4ZMnjujK82S
X-Received: by 2002:a24:254a:: with SMTP id g71-v6mr459181itg.33.1541162947010;
        Fri, 02 Nov 2018 05:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541162946; cv=pass;
        d=google.com; s=arc-20160816;
        b=zbSkde5J9U4gJd2pGz2W8gyD1e8RDnz6qxIK52fELE/k1btxOp0trwb5pm8Y3Q3f43
         eqmGvqIZeUBN415gz6VeYiGYXHp4ppnuskWSkDYPdG3ZBCp+9IkjDgYN1fBBBmtprRlZ
         UqWHsSqQ3bdfV1nSuItxSI3ZwhnaAIMoyOqXEw8BJDPPuDSNTC4amf8YRMMy9flUQyko
         1NEBtZw9vswoAQbunNA8bKd2L/fW8Wp/ntedBfBjsS8OUrQsoZQ4qZahSm3B3NvAh/0o
         AKKo1I8OnJVmyGd2HVj6FMvtTRYL4ss97TepwILEh132D336ui2zolrOLoajJw4HqmzL
         o4BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C6jEuDvV8qQmoLAAFPOwx82RQxy3mIS0xM9qzwyRZUw=;
        b=nJIRRvdGifKvhagcwZoybetC1YoCYVqQo1wGiQFxBcLrIiUmAmPc+87B8ZlvvYXfeZ
         gn9x0/GbJr5P40gDuawaTMpSytlCUna+ujgrkMlVoOVKZakz4kTb/rBeTMmj3scK+31G
         b4ZZeKiKCGqihGjM3WZxPwMAMXwMLBWZwQVtq2ZQuk0kYzIKMiuKM0ztTPb9x3vcNwTp
         k7q7RrfX0dEC9Gr2f9USRJlGeCuPlxqhsI/sw+UOpkcA8QEMiaQnfx2zYmm2Pl08gQmi
         kx+Pq96w0MSh7WYCAUvrgrRJQg1Vzw7CuSAhYLzuyLPoOjkKO2y8UN3QnkWr3OvNs3ZH
         4OqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QizAdolB;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id j67-v6si30179itb.2.2018.11.02.05.49.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QizAdolB;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541162943; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=d6jVfa9oGPfDXdBYSEmqr0LyjWXG0WwCPiBoA27ooKYpFbbiocnpGoDSKCEzted+8e/CpNVYUxUjqVqagr6AkO7SKdVrIi89Hs6iQf/4eDPfUiHK4urbI6haTkrehowDS3we6eVM9TVdC1fsF2cE4sQkKtXpPvDfZy5501cwUFs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541162943; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=C6jEuDvV8qQmoLAAFPOwx82RQxy3mIS0xM9qzwyRZUw=; 
	b=eJMccUJI+U2saQDaPwL11AJo2OX98ZFhV1ocPXPwxjLNkDoqoSdhWjweoG5goEF/rA8ZJL6k+m2KywikoEt31qEPBAUUU04hyAWUE4EvPVU489RAPeqekXvSD3XuW3jdpbJg4Ee8JE5qv4lduQsR2T3hG3lr/b6JBMbExewKy6k=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541162943;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1015; bh=C6jEuDvV8qQmoLAAFPOwx82RQxy3mIS0xM9qzwyRZUw=;
	b=QizAdolBWlhh5IGoEHVcl6hRI9xun2hGaRAGLAcHkx6N+cSZpVbBXFUOs+eCqxxf
	8hl8GNIAH3Mt0Y16Gc7g5oSl2G6xavIY8mcYpAGUBMqF9Rto+Iw47hlGskgyk7D9oJF
	sot1ac3uSDYE7vhJ9rX2PTd/asEI3Odpp7KXj9KY=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541162941343366.7922270814555; Fri, 2 Nov 2018 13:49:01 +0100 (CET)
Date: Fri, 2 Nov 2018 12:49:00 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 5/5] staging: greybus Align arguments with parentheses
Message-ID: <983d4f35b78750c41dfa9490b4d08395484224f2.1541162672.git.code@wizofe.uk>
References: <cover.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541162672.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Align arguments with the right side of the open left parentheses
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



