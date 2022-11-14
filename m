Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F251113
	for <outreachy@lists.linux.dev>; Mon, 14 Nov 2022 03:27:18 +0000 (UTC)
Received: by mail-vs1-f44.google.com with SMTP id p4so10216746vsa.11
        for <outreachy@lists.linux.dev>; Sun, 13 Nov 2022 19:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+6lUbTFZDUdRnPC7DVEU1qVyw6/2Qd+XvfShvhHG0A=;
        b=WOIAAwycJH6RpBcerWips3530S5uPJNvdbK3EUd9yQ1K9e2wZUTgA/1tUq2sECgX2p
         S7MXXYIaaZJf8/nOAQCmJJpRkuxqBLYTv+BkSkB123Ax/6WMkkVdg5PDY3iXwdQtrotl
         3JDfdrByjs7151h6h/T5XrRUVsyS5TncLQ3ZOhMEJfQSisXw802dkPatUu7FUkpaZdQY
         C4HPLeyipD9ieTCz8VPk3NOculkqWlABqi7nc6b+g6/pi9+pAsMrOm8SvsbEq54YsFZR
         kzxGlcsgW2uFHKVVPu60UCY39KWTT/6WaEJuv4y41ON6wgRNkaIMrNp/hfNkCQljdtbs
         ElTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O+6lUbTFZDUdRnPC7DVEU1qVyw6/2Qd+XvfShvhHG0A=;
        b=H/1miG5KFXA2ES92XNHOAZb7NtqbjwIYECm1vcHv3iVPBk+npWGV11hknPnafLItJ3
         Cr6CLtOh9eSbqKeXoSYj+mef+qyIrtnkJ3gJ6JxUp0+N9J+jHl5Jcpqq/R8qV0f+vICr
         hLXfEhKXxIcZPIdXlUu5M0zwCikVg6bBecZmltG1RaR0H3okT0moW7OFYH7cZQmI3MOn
         8P6VZZ7ClehbGporhlufQj/Wbw2Zi7F9x3w735QO+7ZekHGCR+MqNRnGWlKFvZf5zqLP
         mZVk9QFxkMdyxTVlCXrgvWm5gdj2dFjiY9nB1xoQCDFO77hUixunfuTf4ybWZHKJEaRK
         rvmw==
X-Gm-Message-State: ANoB5pmQQ1sRPsGcSUYIGt2gINzwURisk7OO7pdFlvPZAat+aMHB1kTt
	Hx4eh2fadsP19TzGW7nwOs052suyKThof34SdXXCrtFNeAjJ29JEDnjzHlflcjhJ/YkhdB5ffSU
	95wzygzNMQvBHDiZ6gW7hok9LnA5k/nzouKjhXP9U081+0QuH0Bqq8U3C2CJ8X8BttMXojxB5Hn
	TuS6wJhg==
X-Google-Smtp-Source: AA0mqf7TKgy/Pz0+aBvTr0B/oW9mdcOwmFlYWsVE9Cj5/wUOaVnwthJx25ECrBKhiaDaGzBPv2GBcQ==
X-Received: by 2002:a67:fa16:0:b0:3aa:5ef7:bc48 with SMTP id i22-20020a67fa16000000b003aa5ef7bc48mr5166773vsq.12.1668396437813;
        Sun, 13 Nov 2022 19:27:17 -0800 (PST)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id h2-20020a1f9e02000000b003bbd05d3370sm1206897vke.47.2022.11.13.19.27.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 19:27:17 -0800 (PST)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	hvaibhav.linux@gmail.com,
	vireshk@kernel.org,
	pure.logic@nexus-software.ie,
	Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH v3 2/2] Staging: greybus: Removes redundant 'int'
Date: Sun, 13 Nov 2022 22:26:46 -0500
Message-Id: <ba94cc91fd452319a198e55884a1e4a18518bb75.1668395762.git.hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1668395762.git.hunter.chasens18@ncf.edu>
References: <cover.1668395762.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes redundant 'int' from phrase `unsigned long long int`.

Signed-off-by: Hunter Chasens <hunter.chasens18@ncf.edu>
---
 drivers/staging/greybus/Documentation/firmware/authenticate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/Documentation/firmware/authenticate.c b/drivers/staging/greybus/Documentation/firmware/authenticate.c
index 80f30c907905..ba4b16b04557 100644
--- a/drivers/staging/greybus/Documentation/firmware/authenticate.c
+++ b/drivers/staging/greybus/Documentation/firmware/authenticate.c
@@ -58,7 +58,7 @@ int main(int argc, char *argv[])
 		goto close_fd;
 	}
 
-	printf("UID received: 0x%llx\n", *(unsigned long long int *)(uid.uid));
+	printf("UID received: 0x%llx\n", *(unsigned long long *)(uid.uid));
 
 	/* Get certificate */
 	printf("Get IMS certificate\n");
-- 
2.38.1

