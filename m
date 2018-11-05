X-GM-THRID: 6620380698493583360
X-Received: by 2002:a25:d2d5:: with SMTP id j204-v6mr1283148ybg.46.1541427550492;
        Mon, 05 Nov 2018 06:19:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:487:: with SMTP id n7-v6ls12380419ybp.5.gmail; Mon, 05
 Nov 2018 06:19:09 -0800 (PST)
X-Google-Smtp-Source: AJdET5c4ZbSAYUvkxtzE6n6+6p2J8eTSNZPnOGRTO5Fu/nZo7o/Nt69hm9Tc+KkUB4u3quvsXoVi
X-Received: by 2002:a25:d904:: with SMTP id q4-v6mr12089478ybg.38.1541427549947;
        Mon, 05 Nov 2018 06:19:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427549; cv=pass;
        d=google.com; s=arc-20160816;
        b=foskzVSlYdO1TZ7O7ZvoNH9EZFjM7rZH7bVeJNgb/n7S8f2z6t/DqIDWu0ss3M6S9s
         0cybBhPHHb1gn3qp/eKJiEqb46cYL1ZnHTvKbRPTNKSTRJHFBymqQCAXjzwzqSm5RLj6
         g9bz5Cki3RsCB4Xg/eQf03QaD31A1Cw3h+O3fxpaOYnWqrv2slVwgPTPxrvtmBiaWYh5
         KQWQaytvUdPVEx3KNDkVjuxVWNAVZRg8hkrmc5B4YaaB95ld9OOEdc1W7cUZbNrpflNo
         Nd3BQ6rtYpGlFLvyzIBMYNcQSPy5zCHa8wLQX9UHEBVCoubqEIlPP8AZVp9iIMnuWSni
         47wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C6jEuDvV8qQmoLAAFPOwx82RQxy3mIS0xM9qzwyRZUw=;
        b=BEv0hm9nwYNA/zPpwH+HFP5vlWMGy7eLlPT7dxp9oFBopILZFNQsEqlQzsIlkNnBmB
         2ackNxQZTY0UleGuN0zxKDVelDdUXg+mkUpIfhyrBz/eG7TVMAogchQCv9ZHh6ZVlSJw
         MD3uA9WDVh5pdBheTk8+0qnix+b8pfc8OPDzmtIVsdqMi63cyWbedkVH82USoISJNXx9
         oFrDH9xzCOTMqpMw3uj0Zxkvp1DjwJLo53Pq3D0KYrN+0Vz59SXhiOrT4BuXlQNsVovw
         Zwj9phRV+CuCib0EQMGqM5/lUSN00dvSpk4Ejb8nika0StJYlhEC+v6c1kvTtkOZsmWq
         dtqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=RMv4yfgO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id t186-v6si1608678ywc.2.2018.11.05.06.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:09 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=RMv4yfgO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427547; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=DGVM/l4dLte3Oh84JIjfzmZiaPJzn1Mw5vykzYxkeKcrd3csIciQWgdIajAIUVMmw/32ZB00bR95dQlw6EwbdlT12py2UqZGIDsV/Bd6+UtxCLrCJ8o6cF9xDjCgg8JPQZiWr7u9XX0GEKP3aGQX4bD9QyDQSyMZbGDYVcjV9mI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427547; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=C6jEuDvV8qQmoLAAFPOwx82RQxy3mIS0xM9qzwyRZUw=; 
	b=OF/ndv+HmZDY5sQ+elWcj0Ry3kG6vOMV3AC54xRzcHlk5IlyxfYtst99t9ldzOTVHleR8X62pnUUTjUEy14VmOP7PnVGRnLPuPZwpYByzkxAUtV9763d+KUdrFBi8XrtqiFi9lyRmOprzoKtKV3KHEF5YI/V4SReu5NBl6DsqPY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427547;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1015; bh=C6jEuDvV8qQmoLAAFPOwx82RQxy3mIS0xM9qzwyRZUw=;
	b=RMv4yfgOFSv6gtpSTzaVwmYdTFXDApO4Ca6vF6nZEphUgb2VM0l/ouToTCYhGzcM
	W8DA5aNq88SELeuK7Ga8rvqAAIN7nC3cyYmWmG8uBgnwqjzf2KR/P5pempU3y4SqPMY
	qTiq5x9uL7zf2WWyGL8h4Sz1h7xSlHJ0H+DRdE3E=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 154142754709063.932684800786205; Mon, 5 Nov 2018 15:19:07 +0100 (CET)
Date: Mon, 5 Nov 2018 14:19:05 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 04/14] staging: greybus Align arguments with parentheses
Message-ID: <a7b4492032517f6107f378ef935964e315aa8046.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
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



