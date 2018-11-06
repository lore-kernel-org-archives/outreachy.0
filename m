X-GM-THRID: 6620567997579788288
X-Received: by 2002:a17:906:c9c2:: with SMTP id hk2-v6mr1732575ejb.15.1541471108331;
        Mon, 05 Nov 2018 18:25:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3017:: with SMTP id 23-v6ls4349603ejz.13.gmail; Mon,
 05 Nov 2018 18:25:07 -0800 (PST)
X-Google-Smtp-Source: AJdET5ckgj/1HO8DOun+zKLw+X4Ccwh5c6IEKgQvnJDFE+KyKanDGcQlsDZCb42ctRFh+Fik2g8e
X-Received: by 2002:a17:906:3041:: with SMTP id d1-v6mr3261535ejd.1.1541471107683;
        Mon, 05 Nov 2018 18:25:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541471107; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFaoRkcs6VXTajRLRq5FTKc+YQzW0iOJuD6Xq2JdIE5RMUx+2zBOIP3NAqF+EjnKdj
         ofxdKQlQxIbsIRDg3EH6FUYc6mQfOQmu9JwgoVCPdL4l0/5PnV0pkDTzV3b0NSsAsUwD
         R5g6euMejY0bwqIHMnFPREy15FghwDoGAhStK9V9kUmJPdlRs2+sECYGQemB+Ja5jouc
         puTsMyVDYnRzXHORwYZie44CyLi8/whRzUISbXmTAAE3DFlbxmlQuM+fTZ8Z/WqlpOJN
         wC6WzUZRgIuy4q6GSvgU/L9M4+aToOnMtXrgjXue/Vf0HMXPuOhiuiZT0zJ8VkKGVmHv
         8Jbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UT5NcDgXkO45Kh/pagz+L3y5fHIhfnd59beWeYIGGqs=;
        b=teQCMWGJxnqPazIkIVngekqxLQso6Q27ZuR6bIBbjAjohiIxanRdGGhb8GKAZJOIkD
         rPTe8YvtH95wAe93e+l2/JyGUAUDES9tT5sBBASgQHTGohLdl3nSUA3ldDhZeEfuAxwh
         jHgqcUHW0kFJ/31M/LSP0YVfQaZmcjtmi607VNXwSQMtgaUphCTpCw9fUpl3iy3y4GEs
         x0U81yB72E2JJ5Gc8kqCd/DrLqXeWsoOJ/gxpqqyS54UDQJ19bxoyl9eKp/tDJW366DD
         3GzXVH5lzXmPyLsEYT2KEaP0/ujRWouS0dPCxTOBaB3Glpm70pQvchbmNEPVyRDDLh3c
         J/AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FzG+Di47;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id n20-v6si843366edt.3.2018.11.05.18.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:25:07 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FzG+Di47;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541471106; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=KD0b8iuHRaD696XGRPzmjrdW2ANBoa4lE3LyZ3APz9yUcIUQwrmuqWsIEjOm4e5PJWGy95mpQxrhaJglxDOkWlVTBhmqSNAHqBC91eGd86pFB+ib9dv7o0Odwv0UnNaLQkfzWWcGugpxilIG9wVB6OwKVCoZIW6vd+06CWLA3Js=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541471106; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=UT5NcDgXkO45Kh/pagz+L3y5fHIhfnd59beWeYIGGqs=; 
	b=T9uvRTV1EneZ0l/8NdpwjKGngjEaRq19F0Q7Dj9d1+dZ0ZN7bJC9RyAnw5ulfWqJw01X9wP7KKYKGdOyE4lNs/KDzBfqiehxaRO32YkDYPDGH6dtAsZK6rwt6z3KCE15Y38PYdUhzvfO1QXo0tNTHWO6pXxpZB8r1uc2m4WnNgo=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541471106;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1160; bh=UT5NcDgXkO45Kh/pagz+L3y5fHIhfnd59beWeYIGGqs=;
	b=FzG+Di473py2Pt9gaf1H2zs35Vsd0PnEL8yl4obx4nSTTbJ88cPcjlPd9MOYXQAU
	Vqk+F5vWECANbcJX+4dqccyQ4sUHF2F3u0WBxWdZCMMLgAy2PQgy91TR6L4r/Mipb6+
	wGdJBontIUQJi1hATcl+yVnRgmp40iWA/hZ5WVy8=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541471106130403.58075564934006; Tue, 6 Nov 2018 03:25:06 +0100 (CET)
Date: Tue, 6 Nov 2018 02:25:04 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: speakup: move comment up to reduce 80 chars limit
Message-ID: <20181106022504.GA12155@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Move two line comments up in order to reduce the 80 chars exceeding
limit. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/speakup/spk_priv_keyinfo.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/spk_priv_keyinfo.h b/drivers/staging/speakup/spk_priv_keyinfo.h
index cc99fcd1bc6e..493f4ebb3473 100644
--- a/drivers/staging/speakup/spk_priv_keyinfo.h
+++ b/drivers/staging/speakup/spk_priv_keyinfo.h
@@ -61,11 +61,13 @@
 #define SPEAKUP_HELP		0x2d
 #define TOGGLE_CURSORING	0x2e
 #define READ_ALL_DOC		0x2f
-#define SPKUP_MAX_FUNC		0x30 /* one greater than the last func handler */
+/* one greater than the last func handler */
+#define SPKUP_MAX_FUNC		0x30
 #define SPK_KEY		0x80
 #define FIRST_EDIT_BITS	0x22
 #define FIRST_SET_VAR SPELL_DELAY
-#define VAR_START		0x40 /* increase if adding more than 0x3f functions */
+/* increase if adding more than 0x3f functions */
+#define VAR_START		0x40
 
 /* keys for setting variables, must be ordered same as the enum for var_ids */
 /* with dec being even and inc being 1 greater */
-- 
2.19.1



