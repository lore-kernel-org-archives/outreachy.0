X-GM-THRID: 6669000631583244288
X-Received: by 2002:a24:5c81:: with SMTP id q123mr5020461itb.34.1552747713611;
        Sat, 16 Mar 2019 07:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls2255609itc.5.canary-gmail;
 Sat, 16 Mar 2019 07:48:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwtHpuu/8JWnhuPWa7Qz2O4HXpmlT+5uWLXK1JjIrcV9HfDJuQWyIqb3HNP1CLlRPSxkOyO
X-Received: by 2002:a24:4394:: with SMTP id s142mr5239589itb.40.1552747712831;
        Sat, 16 Mar 2019 07:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552747712; cv=none;
        d=google.com; s=arc-20160816;
        b=sVY1oI/hROCVwzKxVaOvNl1gQGk/JOF8rPCgW0A5FQa1pB13ZSio7Clxo9Q8Nw6rp0
         8v3nqyZPNbmR9C9BT+2cSGg0/UfTEEMDJ2cclBxuHLxDwHBbzos+VyZta4DV81PRLfRY
         HWCBK8bdPrHBbbT1sL4Jfa4SOWZiMV7rWYir5DXV9teWu0xBx72cKioGlpcE37Kp4H2g
         fZjpz55KjA3DIvQ+TzzJ3zRIq8MZ7YgWsD5o3KMwMwI2GWbnPywZIjA7iyPZnYnx87su
         c+3p4EMKT2n1VyPBA1y5ue88vIYyKc7lEFKcMa2ROAptXXX5MxoeFgC/nIOtTR5ktV2z
         mwxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=tj+PZnwNBRxgUri1uLZKC+gIqIMA1yRkOFqbL3Iakrc=;
        b=nJgfnn4Q6IiuxH5Rrcyf1tHpxeIE9EaPnJz1jYPQ5PVY1vQHRO5r6YPuFNXfkAeazf
         3knCp4lqeWq1yNeGJDSIl04eQIsII9buGfITD/pB0pV5k8HNROgqhLztnOYD+YXXpP/L
         j3Wmql+heCVTMXB+/QMa3EszdGdS0iPNzkf5xRk+V8MFdBkRV0/jaxbZQ3DD5Fa0lUk0
         o6S7CMK8UjaqdIw7AcOXvgq74UP6xvz9KE8Lx1G8hIHkJ+KoULhRXC8JzWF/nIWwTgHZ
         eVZNGG6+8aJWUFdb4V85f7jI2x1QjCDKrpzVW5RLr9sfYV97vnpg+ibAgeKmQ5L0SqWH
         4V/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ndtuDyw0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j6si695368itb.0.2019.03.16.07.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ndtuDyw0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b2so8394202pgl.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 07:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tj+PZnwNBRxgUri1uLZKC+gIqIMA1yRkOFqbL3Iakrc=;
        b=ndtuDyw03nmDGu0vSDbPZ+fKSar3nAQMfmqRr4fkbyuNf5CVBOV4pgpHFUW+l8ppF+
         yuXGoRL6jNd86KRCl+CFhmnIbP1f0Jm++mo+fSkgM514UYIa/LFI1UCNLl06x6ke/ChO
         cCgzNXuJ6bk/CpGXGZld76lvkSnn+5GO/pDnLS18g+L5fzKs69lHOHjaWjx8Wru4+E3Y
         b05+v/GNoaJYCSLCd9cXLiFFe8MKi4fkXScvUnMdTR9wJYDM/UtHlIikOm1B2YP6PyHY
         V1Eqe4eklSn+pf128RGkoERu8cP4eAWn7mq39tmM87YYSO/fupnUqVAz8rNG+lMgaXRa
         vL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tj+PZnwNBRxgUri1uLZKC+gIqIMA1yRkOFqbL3Iakrc=;
        b=kvuyPffHrUiqcd+gDovJmyjuiQrMEIkgLtXK47nYNsjqdqA096tFHKDkCaIYY9U61v
         LK7tjy3PkjE3AnIoNpj08Z48t6dVb6Dda5CRNb6jI06g1vRZZNA9AHPj+dyAsqVrRd4n
         2VW0z5UJYLnFPKEh+vl7oLKZNSBc8Jn8Hw4t+Lajr3byk/ftw8vRGgexUWbOy9cyPGqe
         2zECpOzLvWxOWJ9jKwRXHDA8ORSuOAGdPjZ2EdHOnSxWI1yIS30SNycTWf8khOrGUuHv
         Bmooj4todcs6lMYmhJ9BU1X6UmDncVpi52lJXVXeKGejuB583B0Cve91Wfsv+jAaVt9f
         qaBw==
X-Gm-Message-State: APjAAAVTPQacoiIFMrmUCfvfQbYaJoA45OyQ7dAVUjNryeVEYLxMhJjP
	VF0698/792UzcmWw6b+xhH01puYX2AA=
X-Received: by 2002:a65:4843:: with SMTP id i3mr8932968pgs.176.1552747712110;
        Sat, 16 Mar 2019 07:48:32 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id t10sm7997761pfa.151.2019.03.16.07.48.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:48:31 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 2/2] Staging: mt7621-mmc: Remove unused local variable
Date: Sat, 16 Mar 2019 20:18:12 +0530
Message-Id: <20190316144812.7427-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316144812.7427-1-bhanusreemahesh@gmail.com>
References: <20190316144812.7427-1-bhanusreemahesh@gmail.com>

Remove the unused local variable err.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-mmc/sd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
index 5943e95ed1c3..8857cdb9dafd 100644
--- a/drivers/staging/mt7621-mmc/sd.c
+++ b/drivers/staging/mt7621-mmc/sd.c
@@ -752,7 +752,6 @@ static int msdc_app_cmd(struct mmc_host *mmc, struct msdc_host *host)
 {
 	struct mmc_command cmd;
 	struct mmc_request mrq;
-	u32 err;
 
 	memset(&cmd, 0, sizeof(struct mmc_command));
 	cmd.opcode = MMC_APP_CMD;
-- 
2.17.1


