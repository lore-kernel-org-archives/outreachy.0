X-GM-THRID: 6399107209686417408
X-Received: by 10.99.123.22 with SMTP id w22mr3737888pgc.11.1489908255961;
        Sun, 19 Mar 2017 00:24:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls11527906ota.4.gmail; Sun, 19 Mar
 2017 00:24:15 -0700 (PDT)
X-Received: by 10.129.76.210 with SMTP id z201mr11285432ywa.172.1489908255285;
        Sun, 19 Mar 2017 00:24:15 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si2049621pfa.4.2017.03.19.00.24.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 00:24:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n11so1975246pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 00:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zuEZAe0hfq5br/co8ZkQH22PNfeB0Gi59rS9wCfd5jw=;
        b=kcPkLtZT9UR7feC8BKDld3tJ81hA0toiW5TJcj8YDkP9JD1GxN9QLY0LfuaXJLzDDb
         63jL3glfysFn3bwJV1dDNhbXbHvepzDk0EMNu+gZQAQ4e8FoTKGBUH02nOUwbZbvyjU9
         mHG4UUuBjSNzNeYOA8BDxZVUFysiV3lYsdbVxR8kty3IH/+fkaQ5cDgcjhJmVljvIxsl
         aS2ekUBxO3gGAh/HnsiwNDN9iTF3NloCdLeM/kC7IpIs9J4+fPkHVEG73CWLiiWK8zE6
         VUnYzaByaCVwkKLYlA9qoKEFqhEGQ6zpqVSdcSxxlsJF71WBTQARqYzth67SZ6aONacS
         pU9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zuEZAe0hfq5br/co8ZkQH22PNfeB0Gi59rS9wCfd5jw=;
        b=g1D+Iz6Vv3UNgPUpiBrZg8UkmpYJV3XDLkO/hfJx4fUJEADzOsjGylXIHJAIT0uNlv
         GpOu3333LOgkCH8Ua525WwQM63gk0NyA1cw93Kt4q8K7BoVSlVlDJEojUwUFQKAPeBAO
         nuFRUpdus9vIlfTPKXfTXCTer1/pt6A4wvKUOJ9gxm4X9UzA9VmzafUMje8bIfU8cVgJ
         esKgwYdXbNx4r+Z9tTpWfrVLQ/9pfL2rZe+OYU/uuiz9YwxPjyQlKSy867E33Y+8j2Ut
         JnHgpnIOtLmOReRm1O99bX9l9v0FSNfxzOlq85HEZq3+/uNmvL6MOuDxnNSL/Fvj5Kdz
         Qrqg==
X-Gm-Message-State: AFeK/H2zVWv1FEzq9MEYgwdr2zBopl56VPnqEk8AKcpAUl7GG4r24w1NIEE5HcioGjvYMg==
X-Received: by 10.84.230.129 with SMTP id e1mr31566372plk.66.1489908255058;
        Sun, 19 Mar 2017 00:24:15 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i15sm25979206pfj.0.2017.03.19.00.24.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 00:24:14 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/2] staging: speakup: Moved AND operator to previous line.
Date: Sun, 19 Mar 2017 12:54:02 +0530
Message-Id: <20170319072403.10354-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170319072403.10354-1-arushisinghal19971997@gmail.com>
References: <20170319072403.10354-1-arushisinghal19971997@gmail.com>

Moved logical AND operator to previous line to fix the following
checkpatch issue:

CHECK: Logical continuations should be on the previous line.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index c10445624e92..def1a36da9dd 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -2173,10 +2173,10 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 	if (up_flag || spk_killed || type == KT_SHIFT)
 		goto out;
 	spk_shut_up &= 0xfe;
-	kh = (value == KVAL(K_DOWN))
-	    || (value == KVAL(K_UP))
-	    || (value == KVAL(K_LEFT))
-	    || (value == KVAL(K_RIGHT));
+	kh = (value == KVAL(K_DOWN)) ||
+	    (value == KVAL(K_UP)) ||
+	    (value == KVAL(K_LEFT)) ||
+	    (value == KVAL(K_RIGHT));
 	if ((cursor_track != read_all_mode) || !kh)
 		if (!spk_no_intr)
 			spk_do_flush();
-- 
2.11.0


