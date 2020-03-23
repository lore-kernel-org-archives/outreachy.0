X-GM-THRID: 6807378568444641280
X-Received: by 2002:a25:338a:: with SMTP id z132mr31218049ybz.430.1584966369590;
        Mon, 23 Mar 2020 05:26:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ac26:: with SMTP id w38ls3985511ybi.11.gmail; Mon, 23
 Mar 2020 05:26:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vua56m1HuK7fas+1AhO2xBb7Q3dtYb3ZFNlxss2XeJf1TSPkdP1ZfPN4eZ0fVFopiYtDG2O
X-Received: by 2002:a25:6a82:: with SMTP id f124mr34640464ybc.129.1584966368322;
        Mon, 23 Mar 2020 05:26:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584966368; cv=none;
        d=google.com; s=arc-20160816;
        b=bE3AN5OergYP36ql29KLMqHnetKUwMcYoLFjd2lhISxa/a9vpHQZyc4e4MnJ4OheAv
         PhFJR/wRSyOlpCaFf6SWHgrCvEO/Q/vCFjRMxalU70tdWoBdf7Lq736q6jdeR/JS20wD
         z1ba9nNuiv0HmXPkgeJkP/ZuyyNM86LCDYnkXFnto24xGkZQGLsU4rC+nmBwSrf5+5FQ
         TEqUI7mvViJLKqAst4suxdt6KOfKVe99pyxbHcISOBkDdCrqkSLZ3oDcqYVoSR4ehsQW
         edSw7KhgZk5V5qD3EdoeftT42i/TvWJj5YnVAWak1LX9//kaqw08PtSVU3uADVWp/LLc
         0VYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=BDP28dIa6yyC8/X0Voymg6sJs4epfII4kKBtRiV6RgUPMElopucQHLS4ApZCcKBWrb
         ZcMD+pDf0R5QOEjkOIb8WroAB6wORIZi1BDJXFmrjUM9WKFSLaI+YhU5ZRAMh28Dk0pp
         MFeJ9g09+8Az7IG8trB78h9nsbD4+6IdsSzubH0MMi/J1vxgJPl9VqCqCWe9gWhkppRp
         JXMpNxh2N2+UJmfZ3R/f20WHyjpCPXDhar0EeuyxOU5OWnEarAfdwYc3x789NPAH0UEq
         ssc7M3r39bMtoGjUTpk+aHMmBo+K8J/9KoqnBgrvS6y1YZRrj+qEzpL+PzLIWowrvxPg
         bR/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A5fUPYVd;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 207si738613ybe.5.2020.03.23.05.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 05:26:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A5fUPYVd;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id j29so238620pgl.3
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 05:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=A5fUPYVdbOAnsCaeJMTJixmT12f67uqvDjuJTGgoEwXVuVJLVUyHikjy/DmgvxVz32
         bx4XDlZy95tfDGJLkf4Kmjy7/sY1uMjMbidvK8+HB8W5A8A1M9C+hjuSJGGNa7nd8FiL
         q7dpo1BEKWvMtlFnNFT8bsJJlX3cT/7RTA25zfE4SuNRrVxQdYDgR/Z5PMOAvdVMGquQ
         fVnrvb39hwxIi/9xF09Ib1o6HYtgt80DeF/KhqiWiR9TYucYRJ4v8xHOZOkFID1/Cnxq
         sq/OrP+6XR//l7zUeXht7IWHaXZg9ZN7tajHOsKEycPHzfRdujAsfbu9ffDAwRBuEdzY
         z38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZSoPFSIoYuevJ/KpvqckuaOqUqAljl6gtKbHNbZT/3E=;
        b=d7JO4xjeNV0rn8ufqRYAPhVvaqFFW134g0jFnyr/tncdwlcpfD+qti1jdJTl16QfZc
         WO1WgICg6v8LcALgo7O0Rh+dSzAkZX5Swxsc5BMnQdqGIHLAok/fSKtN+ja+OIvjr0CL
         RjnWGFPsX3vm1kYsOn9yUD8sQGuuVEW6FE+Grww6a9XhINFHMQwLl54O8BgdpbgJxhG1
         M3SSdH+Tir+HAjIJ52H8yemLKJRRI8v0br+jBuBPxN0greTW5y/LI6+Ax2XHhRLGLfKg
         Pr0J9pbknj2By9Jq3Hmxs2TOuxe3pJ7f8M9WL8Y+8wMwLjxdZnruWHAJolT0/GTOEPc5
         MjjQ==
X-Gm-Message-State: ANhLgQ1MB0zm2euN3tZQ2bCK7S5tMIqaHgwMB3Xt9oyf8hmOdh+1g8AZ
	pxoobdb2pacpmTeyzkhJrL/NzlIgfcCQOw==
X-Received: by 2002:a65:6805:: with SMTP id l5mr14638753pgt.256.1584966367152;
        Mon, 23 Mar 2020 05:26:07 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.207.88])
        by smtp.googlemail.com with ESMTPSA id o15sm6796602pjp.41.2020.03.23.05.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 05:26:06 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v1 1/3] staging: hp100: Add space around operator +
Date: Mon, 23 Mar 2020 17:54:24 +0530
Message-Id: <20200323122426.60340-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323122426.60340-1-debsoumyajit100@gmail.com>
References: <20200323122426.60340-1-debsoumyajit100@gmail.com>

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


