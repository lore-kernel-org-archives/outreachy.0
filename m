Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D01A4B1B26
	for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 17:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791824436; cv=none; b=GIuRis1jZnAe5nuavuHMs/mAjfU3bfbpccC6G5sRA6yBWqo8RSRPBHD9sNXCs1FggEd/QFPrLYarCr1BGJ0+YfwnJnLGr1VEWRVVSv7L1ncbriFVZ06BEA6LrwOxOsgo814bcbaJBQEndvM4uGE7MAGd22R5krXNr1irBtmWxiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791824436; c=relaxed/simple;
	bh=NChA0uA8/+eZNHQkSxbcV+2zHzjxRFg/wQPl/jusgJw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YDjUFiJDO8HZ2bIUD3a68tGPK8fKLSsvvSj/rpXQJbaWW0Sg+g4L4rWrZ72TBpOmKCDj0GtFo69VrJMyi4aPJYEsSbKh4j/hU2EN5uiH5PM6Oj+GWnMKvgckZNN1ahMiSPwe6/GFmrePn2ULqDslqsh1tomoS8ZypCqyKQqu52w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eIpxvGkh; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eIpxvGkh"
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1419d3416ceso2845515c88.0
        for <outreachy@lists.linux.dev>; Mon, 12 Oct 2026 10:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791824434; x=1792429234; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=s4g8PCfH1fFoEZObwV6RdWowws5NfT3FAx6q9WXCp5o=;
        b=eIpxvGkhdFmnl9EeAUFvH33PaKoBlfNpovesLcHuKtkeAOq3FhUpqxp3UnfT50jF3u
         gsKbwZ6FgeA3f9afGXtjStWy0f+2BW/9+fPAnFn1bIgDo+2pheqzBV7DuVh9pEuK47jy
         zXGH4wLaZvstOdHYQYQm/jzKZuKf7O91Vm+HxcUAur/QFE3Z5FJI8nT9CsiTr89+gRyr
         5TJJHd05uEK3GQuSD/Q29yKNiSzgWehhcldVnsf2hocyw0znjt42ywjOrKFFDXIl1J3i
         DA3/8+be5KKv54QJctABkvw9GNE2LEYQmeadhqChrO+p/74TEYRVRXna+p+zlOzii6eK
         3lIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791824434; x=1792429234;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s4g8PCfH1fFoEZObwV6RdWowws5NfT3FAx6q9WXCp5o=;
        b=XCXeGLRZDr3APHw5uLzm94jQ07MElQ/8Ni14H6IcpluTG1sOyMv1kAz64gOf18YOjY
         ITg44KFf3r8x7OIcQZdyqCYDggEM5OC7MrxClQ6WUlHjE42mFCdhcQEWWo9Jx/GXh73y
         DCOjjcIlPq8Hs3f4jznR6WdKtx8elyvt7ddNc0anE0Qupi737FDq/wWV3FO1VWzAXm7J
         WenIZM7CvlIKEXbPtynGV3CmZxi6HHdCfQpgmqpSXFSoO8uKUDrmrY9K0O3foQ31+x0k
         dqJQOWVdk54tnBngGLdZXS0oVX/31QVjXJ5cfnOnYE13eMtbWEZ/oef1uP8buftPCYFZ
         2fPg==
X-Forwarded-Encrypted: i=1; AKwUvByEWOBvllfJ79OzNqlaeQbJCxGNBKa+rh7JJ2bmr8YZzIy7qETJWWMdkkaG4hrphryJYHa06n1xq1c=@lists.linux.dev
X-Gm-Message-State: AFq9FYLd7xwN4H7tLiN4+fJvFeWneLeOE+6feoDbdNpWTzNluM8zb84h
	/9fe9HB19o09XWgMP6STHLoJCfasbcB8lObsujdUT2brjp5fXFPbLu7z
X-Gm-Gg: AYBFou1oKMrSI3HiS1XbccjG5UoT4rb1fU5/XqUZRgkzeIZxQ2KLtOMQJvMJqSrVK+a
	C2TnFZVKUHt5lUWyboOK5R60KWfWoMrs2PBnd7383ovSTAeFtdz4BCSwPRYkbnn40mjfgsBzTf+
	E0V7+8AjkyPMFGvskk8n4EgPgwX+5fxlea+vVX61ccccu++FTvZMgunjvs4FYMu4bxh4p6dvgGZ
	xahGdTysysgPNv7rBn9yybknyBRYdGHBOIVDVxODPJdfETNPLicCoo7QBYNkXGjK2fxXUWXU0p2
	NYk9RBNiI5hXuc50qknPUB1rIjk7yd1kKuKYD3GJrp7Cj5LwWTZtlN6ZB2zmriHN//D1luVnQ7m
	YjTzAI73sl9Pv/cgI5IpUSFfXtzF+NKXMYJQniTraKuY+y65D60Cu7OKtKat/7w6QK6zK/F+JBM
	mcqkkYehtD9+Mwx5nxHOaRxS/rMtWHeZ0pfIgdG66iEFmsCvKTlln4Jhr6x60j35IkR0f5BfQGX
	8sv/qc=
X-Received: by 2002:a05:701b:230c:b0:14f:5cd:f286 with SMTP id a92af1059eb24-16a6203dc73mr15566611c88.34.1791824432780;
        Mon, 12 Oct 2026 10:00:32 -0700 (PDT)
Received: from user.. ([2405:201:c052:b00b:c154:b925:c82b:b0a0])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a567aef5sm31171142c88.19.2026.10.12.10.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 10:00:32 -0700 (PDT)
From: pavankumaryalagada@gmail.com
To: johan@kernel.org,
	gregkh@linuxfoundation.org
Cc: vireshk@kernel.org,
	elder@kernel.org,
	greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
Subject: [PATCH] staging: greybus: replace PTR_ERR() with %pe in error messages
Date: Mon, 12 Oct 2026 22:30:13 +0530
Message-ID: <20261012170014.68898-1-pavankumaryalagada@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Use %pe to print error pointers directly and display their
error names.

Keep the other PTR_ERR() call because its return value is
needed for ret.

Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
---
 drivers/staging/greybus/fw-core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/greybus/fw-core.c b/drivers/staging/greybus/fw-core.c
index 2016a74f137f..7053afa9ab3e 100644
--- a/drivers/staging/greybus/fw-core.c
+++ b/drivers/staging/greybus/fw-core.c
@@ -112,8 +112,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
 			connection = gb_connection_create(bundle, cport_id,
 							  gb_fw_download_request_handler);
 			if (IS_ERR(connection)) {
-				dev_err(&bundle->dev, "failed to create download connection (%ld)\n",
-					PTR_ERR(connection));
+				dev_err(&bundle->dev, "failed to create download connection (%pe)\n",
+					connection);
 			} else {
 				fw_core->download_connection = connection;
 			}
@@ -131,8 +131,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
 			connection = gb_connection_create(bundle, cport_id,
 							  NULL);
 			if (IS_ERR(connection)) {
-				dev_err(&bundle->dev, "failed to create SPI connection (%ld)\n",
-					PTR_ERR(connection));
+				dev_err(&bundle->dev, "failed to create SPI connection (%pe)\n",
+					connection);
 			} else {
 				fw_core->spi_connection = connection;
 			}
@@ -149,8 +149,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
 			connection = gb_connection_create(bundle, cport_id,
 							  NULL);
 			if (IS_ERR(connection)) {
-				dev_err(&bundle->dev, "failed to create Authentication connection (%ld)\n",
-					PTR_ERR(connection));
+				dev_err(&bundle->dev, "failed to create Authentication connection (%pe)\n",
+					connection);
 			} else {
 				fw_core->cap_connection = connection;
 			}
-- 
2.43.0

