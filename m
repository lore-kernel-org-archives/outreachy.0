Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1975CAA
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 19:53:11 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id fb18so7089066qtb.12
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 12:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=khIIyeoXHfPgvY+X1zspwGbxvUP3LhvHEIyaDetkH3E=;
        b=JOr6rH6bSkiElHVgWyaW4fj0oNeQ3HBJOzXI+LB5nttA4bu9CM45jxcnhW3ukmAawN
         X5Kk+kf/7pgOLYi+AYhzqSSs4xEE2tcvSBPu2QlJBmGI3fr6mSGbj9R1vNVBz8kVWmi7
         1+7FiQ9VLzCjlYTLIxvbjEgU4dxqI1GdWz+US9Ft8p/T4at3SU+1K2NHlBh6id2HrgA+
         0+9Z+EFmA9iD7Vd7EqhL0xmmbUx8QkbLtoELL3F4wkFzEC/M3+/nGASHeEIl+iGTGIu7
         IQv20hcsFQEYneie4qKmn7g0hCQl1hAbuLnZL11R+YVXogDfxfx3nyRAYjTyP9Tr9WdD
         tOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=khIIyeoXHfPgvY+X1zspwGbxvUP3LhvHEIyaDetkH3E=;
        b=PeGiuJe56YYzPkiPHbQM2byCjyP8dLTOfJ/xIlwWK9bwoKVBQFJyrrhysUajoMwd88
         bVwW7E9NaEUVG7CNKXyWrDX0xgy1Z/HngfWQQPEMt8hqm6F+0+uLl9AyVqCtfjEymTd8
         zStXyfRmVCZ8IwRhYVOByzd60B6NomOpMySMINtPZWMEzsr7Axlzpji0IgTEcK431rIH
         3k71ji7K6u+00X28y+5LhdMw4rNQseVMfOTvXmvEzVZwl6pTz3RwA7DBRmFHpbaVD+F2
         FTKgzZ2kKxIZbi/Z1Ok9LdxkbWTfpC/v8ZGcgcS2ilPepoW0lEnkU+/bEOiJYOkdtt17
         TAJQ==
X-Gm-Message-State: ACrzQf0HHtTXCWRmF/tRiMmJMxEJ5L1EpDCHvNhZRelsCJt8Yc7gVx1Q
	CTxkik3+z4eYdFxl97W2/kMJZ+7Mic3rW84lQiRSmEKbJV6Sfm0j6KWESm8b/hMv7Cw/KPVMiZz
	sA+L4S+wAxyKiDfPrkgbeJ3FOkAn/DNqgy11VF7ScVBMgKl/Pb18kOn52TYEB0DIItgJUMVrh5O
	8hrqo=
X-Google-Smtp-Source: AMsMyM42Cf3iZr3rbLVJ25Ro6n/Fdm28AES5FyI12py6Kwh06H0LKCzjFl2XBcHb0/0SBq0LQ/V2ww==
X-Received: by 2002:ac8:5f87:0:b0:35c:bf66:f52e with SMTP id j7-20020ac85f87000000b0035cbf66f52emr16398619qta.93.1665431590586;
        Mon, 10 Oct 2022 12:53:10 -0700 (PDT)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id y15-20020a05620a25cf00b006bbf85cad0fsm11177586qko.20.2022.10.10.12.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 12:53:10 -0700 (PDT)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH v2 2/2] Staging: greybus: Removed redundent 'int'
Date: Mon, 10 Oct 2022 15:51:59 -0400
Message-Id: <2a829d54ed04d78e5ac455e55b88cde7c22dbfe0.1665430031.git.hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <cover.1665430030.git.hunter.chasens18@ncf.edu>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed redundent 'int' from phrase `unsigned long long int`.

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
2.37.3

