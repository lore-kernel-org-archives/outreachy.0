X-GM-THRID: 6807276568426053632
X-Received: by 2002:a05:6102:21a7:: with SMTP id i7mr4960202vsb.239.1584942593904;
        Sun, 22 Mar 2020 22:49:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls1622840vsd.3.gmail; Sun, 22
 Mar 2020 22:49:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vucrtktgy15EuWUwQTphHOjiQ2HoZuPsCrvKsJ7bLKhEpbFN0Bt3jIp5+tCoXZe2qjho1AC
X-Received: by 2002:a67:ffd0:: with SMTP id w16mr5589309vsq.151.1584942592594;
        Sun, 22 Mar 2020 22:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584942592; cv=none;
        d=google.com; s=arc-20160816;
        b=k3oirTEZh5U1XJOBYdtYzf7JifQEF6MKwqY4kfLSEKLFV687gnJbcIHkNWAutCeUN7
         gQji5PNqFUJc5CnivhC7KqEMZamVphXDM/9ZwIjTikjGpSrAN21FrdzQGAXVlFbfNxH9
         6C+2A7TNSVP+QYLTRzGUHOg34+e/w0/3nQ0C2Bwjn8n+ypUOaV4mHk/5ENTOOizdce9U
         /OwtwmOMFl8T0JOHoaMBmMWymwsNsgcumLihajKEzYkVWIPN4CusqXstNPIPBdQ88lEP
         sI7FN6Qqys5j5w81KCJTQRIdgnqFF9BJosHRrXpX8mEx6uFoVGhXjkg91lbWor2h0KHc
         DxrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=cJ8UVYcN6FS8QVtlMy9xVCl5W7sp2yIbdKUdxsT1cDOZZDiibS+zeqBSlADnN/PVkF
         qjrIUWoV3Ek4vdrg+PCVnJHyJRc7Nu2BNKMoP3zHZVMnOGVPpa+ETedK7bFYRJuN8bih
         MsiZ4i/xzZ5o2jzHJ9h2E8ThTt+6grLqFaG5Uz8wDO2J4woCcLEKGEbFMkIyFK9S94GP
         GjxswofT+zrQw6YtWeiQKIz1yKPee/nejuGOpzz7IvK7pZ+IUxN06wP5XPWnIJgp1s+M
         qUwRZfcsQIbpIgHo4U/Rn7CaD+UBja520q8ds/3SfKCAzfDwI6gagzXP/aiOaBCoIrXa
         c1aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JCO4/wtz";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id g6si440480uab.1.2020.03.22.22.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 22:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JCO4/wtz";
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id o12so1839825pjs.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 22:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=JCO4/wtz5mTg31ZsEeznAdkx/9+6zkLQ18UD5s03/mo+9roZri48QDXi/zS31EgQxy
         Sv8HK2m8Z0NRS3Pru3G75ESe7fnmQnjHuMuYL+tz+XnlkTDncT+baotPADe385f2zzSu
         Sc6W+TypUSQmuVbOBNXtRIOpMWqb91/XzvGwjHZNbfeo+7VamA0CH5bKlybWilLWA60p
         1ruVWyjpPziQdoMz+Ij1rWrG4TbGyPTXNCL8grRWLt3weLwnyTxznXJAZcxQzbf7NK+c
         R77apdzvKLsCtPArdfxxO4Q9sHR3aP97TfVNsqAZeTXI9ACpNORv1B45NNSgRfFFsBFJ
         Ye1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=Z/xf9oOJ7VNJ/914uJCHuvtIQ9pglKJcLzauFPgSHtbsIBjZTAGchwqy5SVcSRq3VI
         xR5npSYQqXl115eX4TMUyOBmhaID5t1CT0dTpVVxVE4xrRVVLrZOuIIY9zXrrHEuMHZ2
         wB4oIdQZlThmdne2nf/94xlgfFpQbuDFbc5uVrGz0bsxUlM9jtLv1SkQS50cl0//SlKg
         ViyLeKkdZdn0kaAJy18k9lHuhRfPPfVnUnIo2OuSrh9+pU6M/Tl23mlhjSn+MjD/A7sF
         e0udjQn/G9fgdchgSYo1Zu+Lgp8OEqRfPi/3FybeoZY/vcAH3Fpb5uoHbCmh8ERgZlWk
         Xgiw==
X-Gm-Message-State: ANhLgQ2DM+hEKF+WlFlQy76yklMBsZ04S/OYX+7lizaEvrhWVt9taw6Q
	nmcXfFJiR11ySvD7l1ZFbrRunj1jKRRuFw==
X-Received: by 2002:a17:90a:9f88:: with SMTP id o8mr11620778pjp.145.1584942591168;
        Sun, 22 Mar 2020 22:49:51 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.172.125])
        by smtp.googlemail.com with ESMTPSA id r17sm335142pgl.80.2020.03.22.22.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 22:49:50 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 1/3] staging: hp100: Add space around operator +
Date: Mon, 23 Mar 2020 11:18:34 +0530
Message-Id: <20200323054836.48816-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323054836.48816-1-debsoumyajit100@gmail.com>
References: <20200323054836.48816-1-debsoumyajit100@gmail.com>

Add space around operator + to improve code readability.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index b89c4dcf53f5..00b3db8144c3 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -119,7 +119,7 @@
 #define HP100_REGION_SIZE	0x20	/* for ioports */
 #define HP100_SIG_LEN		8	/* same as EISA_SIG_LEN */
 
-#define HP100_MAX_PACKET_SIZE	(1536+4)
+#define HP100_MAX_PACKET_SIZE	(1536 + 4)
 #define HP100_MIN_PACKET_SIZE	60
 
 #ifndef HP100_DEFAULT_RX_RATIO
-- 
2.17.1


