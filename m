X-GM-THRID: 6674267883353145344
X-Received: by 2002:a9d:5cc6:: with SMTP id r6mr6786027oti.43.1554149455324;
        Mon, 01 Apr 2019 13:10:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6c4a:: with SMTP id g10ls1796816otq.6.gmail; Mon, 01 Apr
 2019 13:10:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTrdikImUTBlbPXk6zmlNYhjFkXePXqKoJyiEXpQEagpCK4gpL4ZferL/q9lUXhcr2831a
X-Received: by 2002:a9d:61d9:: with SMTP id h25mr6474605otk.27.1554149454755;
        Mon, 01 Apr 2019 13:10:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554149454; cv=none;
        d=google.com; s=arc-20160816;
        b=EzItHMVylfaqWlZA7Sfvn4+FEjTYgzsSTkXTkb+2+to10kFz7blnZ7Z/+JL2OoK5g5
         MaLQRQ4Vrp0x8EjBF6U5QbN+HSCap2lzTQio1cxT0wv6Nctk3/TABwd2MDZOvLUiZV8G
         u+JFkNrlWC6oa7s7Hn8Cf5I9foKmeqxV1h5kj3xqG8TXW7fsV5G+RVKH3Tjxcy5OToMz
         6IqPkOTwiZAudfnKY2SvRwHa9rbCny3HT2/vyLBLjBs2BYRu9M7Zgc1us74Cg6/WYjlN
         0rL6eW0ckJVkk2D2v1wIppOtG3gEvBwoDfJbi8DuIg7cJxX1EfNA08Pz+b9vunRBIUl0
         Ee9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=nnI/2l65uMP0TZklKQg7BzMCcLwwmIQORTiL5z3lTnA=;
        b=UTzyw3NW9Ba9Pjp6/W7c3m6neIqW9WBoQ3bQHTxMbwXYmFRNQ0z2ostXXFKkyrg6pb
         oh77H8j6QXo5lJB5Ng2vqGfYia7JsQawiOtOceD6x59zAnC0xS0ndxGhZ8RJ0BwDO+0i
         nSA230i93URT7u4RadgrAcaT11x+9pVF5gBSk2AxW/FX90bTZKISNoRzOWq4M5IS1ZcA
         sQvPzhxXd6WH25ZsDzf00CG4Z3/7RVRMeTuPEa25J1HaA9sfkg3ZiEFVZ6XOxCoi8m6n
         XF2lXMxZpOEu5W/WwaNWx99jC5GYwB24V4fBi6TdHF2U+ED11j00vty24mLdXS5I45DD
         GWDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B8wQ70x8;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id r62si47169oig.1.2019.04.01.13.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B8wQ70x8;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id y13so5103220pfm.11
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 13:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=nnI/2l65uMP0TZklKQg7BzMCcLwwmIQORTiL5z3lTnA=;
        b=B8wQ70x8KgRbJiA2OpqIAz40GkF7yWsRRwfB6lhwoMbx8A7vUZnb8v3bNIviKyKhpc
         WTjhqO5vA1RfuXx6N1moLY9800OEtb/KRWOQ6N1hasIqgb4QifgbXSYTFKrJGZvjaMfF
         2veCN19TAiNxWKURbQwEm1x8gA8ZaxO9COmMGQz5HSpV9PTdBV80JjinnAiFyIwW79PB
         lF2WwTHR/GtjFANNldM/2SAUwRPRMjhEMTIJc8rwobzwcLG20NlN5pFQOVV7rf+yqeP+
         sRM/cLQMWmVSJyBMgfOCnp415Lq7q+VWJ6gBrhr9111yxvEPzhe3q83cRMVGwm+b9WZs
         Z1Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=nnI/2l65uMP0TZklKQg7BzMCcLwwmIQORTiL5z3lTnA=;
        b=h3sCZ0o2iq9d9WcEXeGWd95xRFO7vqXmcC9qFjKSNgwBLe9XIN2HPsk+Ba5zyuAMCb
         WaX2PK9C9aP4uYN/vFgNvdRPPYzbaONFI4gVAtE5G13ACvvFW8ut+8CKSQH2L/5uMRVe
         xjuMFX4v7aUYoL1WgMvJY2silVNjlZWRyGkFQucVrMAFfO4jEICkgWEvi36gQvz1YHN8
         RSt4+nUhk6mCHo4rMcg7gAwoqOJVQQhDGOKqXuhdn5LLkHG/Hxx4JTGS9ZRVdF9tBbKm
         X5x6oRA7Q1yDAYmJKpX3OgNWx8G2b1cTSzHNIXgdmkTk6X+tE2kSKpHT5Mu27uVAylDm
         DYkQ==
X-Gm-Message-State: APjAAAWJSIhGg7TlJuHGsOxXYiUMgq0wLPuFrCFvlIy5mp59NjRG5h9Z
	6Qipp23XDzz86tbI3CHjSxI=
X-Received: by 2002:a65:5941:: with SMTP id g1mr33292668pgu.51.1554149453991;
        Mon, 01 Apr 2019 13:10:53 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id t22sm13540004pgu.45.2019.04.01.13.10.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 13:10:53 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 5/6] staging: rtl8712: use list_entry in function update_scanned_network
Date: Tue,  2 Apr 2019 01:39:54 +0530
Message-Id: <20190401200955.98744-6-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401200955.98744-1-himadri18.07@gmail.com>
References: <20190401200955.98744-1-himadri18.07@gmail.com>

struct wlan_network contains field list of type list_head. Hence,
getting the address of wlan_network using list_entry is equivalent
of using container_of to do the same. And to use list_entry for list
manipulations is a better choice.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V4:
	- Change log message
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 05bfc2a60eb9..1a15c45aa83b 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -370,7 +370,7 @@ static void update_scanned_network(struct _adapter *adapter,
 		if (end_of_queue_search(phead, plist))
 			break;
 
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		if (is_same_network(&pnetwork->network, target))
 			break;
 		if ((oldest == ((struct wlan_network *)0)) ||
-- 
2.17.1


