X-GM-THRID: 6464947819093426176
X-Received: by 10.129.116.11 with SMTP id p11mr11196580ywc.129.1505284749460;
        Tue, 12 Sep 2017 23:39:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.196 with SMTP id p187ls2702780itp.9.gmail; Tue, 12 Sep
 2017 23:39:08 -0700 (PDT)
X-Received: by 10.202.76.195 with SMTP id z186mr9731923oia.16.1505284748812;
        Tue, 12 Sep 2017 23:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505284748; cv=none;
        d=google.com; s=arc-20160816;
        b=AkPZD8aR1LtgzfKGBKxQEpyMIW6UsGNHE0Oq4CY26ewTX0mmNGrjRewbsf1AzqJ+tW
         4YS55ccPQ8HvDNlZ65MzlvX8iUpNfTJ7L9aLyXwcSoSK2xorkhq1yJhsm0Rc6TaCTL/K
         M6soy+Bl95mIQ4J8CVgF7ZL0chEFFkw9KF3o7niAO8IGU9dbn5jf4PnmI4HPW9AEuyAO
         QEd28iQ97hkCRX3JkTg2LJN7cVylY1wM6LmssnPZrzeN94KwC003dC8fk155hOw7gva0
         RADZ1n7nHRIzhq0VJY3/05tIWzCAMxUeH8Lxu6w6Vvp2c13AGTrT7g4eMnQQSsMSZCG3
         y27Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=glPHZHnmkfJQxnsJg/f4qUL6Kw/kYqLQa85ONTmCA+U=;
        b=hz6zCAsU/qw5vSeE7SbKf0wcTQ4623UaZQ62FVgg0dwhXJot936lvtOWNwnlU91NbR
         XmtCXuqPlWNSGlhOd4AJGK1JTk1F3JPO1hrw+J+XK4ThDXwD+diII0tP0xfjcSSKPNAn
         OrHHyQY1TQ25+i0KbwA8DLR2nd+LgmDJiIh3hRf1w8zBUmQDOi89olotx+8vxHnjsNOZ
         kLX1wzuzmcidRLd49ORkyJ5s1JsyexwKmXiN3fDKDgmKAn1EphUJQShU71gc1c6Bc2+1
         h1ihA6JFJV8Q0s3RPVMwJde4Iw8lpgNcoUrhPHJ6R8eue27OmTM3/JF9671EWXEOgFS7
         m5RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lJzKDgMa;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id c19si1356833pfk.9.2017.09.12.23.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lJzKDgMa;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id d8so7242854pgt.3
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 23:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=glPHZHnmkfJQxnsJg/f4qUL6Kw/kYqLQa85ONTmCA+U=;
        b=lJzKDgMaNDK/djLIUWZ/m2T/L7IeuDB1XiGEzpvPxrtKsvlSaJj2uqdxmNMqmw3ciN
         +ZOvJzPhu+VeIVuX+CY+96rkWm8eKRm9B7aJzkZKmk9Qm3p7rHGuumyWHIv88DnY+fW0
         DPFaDE7p6tMZW0lJ75bjhFHCMCxQW9qrY6muqAOIPhzzMqSrEc2r9+ak8uywH31KDn7N
         kzuiRVAP4yAgv2J6VIpfPUiJPfhRK3TNqg8PUYYQ0bymmyhTbIJBOp5fzpwofhsXOjCy
         YzbnEt29kVXOVvFYLso4ykKT3Lh/683I8AoVk6ACYuDx4TpCjqEDe/OcsYoDj9Mxylb9
         hDEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=glPHZHnmkfJQxnsJg/f4qUL6Kw/kYqLQa85ONTmCA+U=;
        b=OaXqnmE3cW1AjwijfOrAHlP5nV6JYxEdgvOKDl4lS5JH6euzXjcQ00WAGwK8Kl65qv
         dyldb+x/PqWnUm5mvUoQgUSeDV8l4RR23V7In4RFxTEXlaAflV0uEv7vnoPhvrFlLcAW
         IFYLqCcSvzQGKhzmhYBVfB9+fdqbbediWJ8mTtxrC49vFYDbkd+PBORQA/eCV0oIHf3O
         kQcQaqZdZ9/lPtSItC2fyYgApzqQbU/B2vXHNA0g0CMJTkXrqKvMVRlABmh59qPLO68C
         7zEJYvfe174vENqLKOT6GXCwibq3luaOYHJnWp0nURKEyqfFD/7ubUsqO66PaBfvv6oc
         i9GA==
X-Gm-Message-State: AHPjjUjJfCDY0U0xYQJmNUtBKQwL0uX9kKuXnCMz9MZvWngc50cqLHUz
	gUUrW2gG/+GbjCOC
X-Google-Smtp-Source: ADKCNb5WLqPqH2W1Mqef7fGBtiD5D4YwQFtEJcuLziW6GtA3RU00YhCv5GN18kVFBgDBTrI5f/fLRQ==
X-Received: by 10.98.152.76 with SMTP id q73mr16409673pfd.247.1505284748552;
        Tue, 12 Sep 2017 23:39:08 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id q77sm22344170pfa.173.2017.09.12.23.39.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 23:39:07 -0700 (PDT)
Date: Wed, 13 Sep 2017 12:09:02 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] Staging: vc04_services: Fix 80 column issue
Message-ID: <ba40ee7f5588fe43a51bc92b05ed5afaf0f784b2.1505284040.git.meghana.madhyastha@gmail.com>
References: <cover.1505284040.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505284040.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Make parameter appear on the next line to avoid
a single long line and split into smaller lines
for cleaner syntax.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 9fa9b93..a1c3371 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -159,8 +159,9 @@ typedef struct service_info_tag {
 extern "C" {
 #endif
 
-extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api * function_table,
-                                                   const VCHI_MESSAGE_DRIVER_T * low_level);
+extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( 
+	const struct opaque_vchi_connection_api * function_table,
+	const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
 // Routine used to initialise the vchi on both local + remote connections
-- 
2.7.4


