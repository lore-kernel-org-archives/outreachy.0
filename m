X-GM-THRID: 6466254193514512384
X-Received: by 10.159.54.44 with SMTP id r41mr17793439uad.58.1505542125497;
        Fri, 15 Sep 2017 23:08:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.151 with SMTP id 23ls8196074ios.1.gmail; Fri, 15 Sep
 2017 23:08:44 -0700 (PDT)
X-Received: by 10.31.108.206 with SMTP id j75mr5514352vki.122.1505542124634;
        Fri, 15 Sep 2017 23:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505542124; cv=none;
        d=google.com; s=arc-20160816;
        b=JsvcG7VwKxDAMLlKUk6U96ojSthEo7OcBDqK1drUDRUxJ+0YiOB1SABvSxrOh6f3QM
         gWzi7owBD/83LayPCGJfJI8rGEgr83Lqb94ukW46mz6P+f3v0OrY5mKzJ3b0/5LY3MmP
         lG1y/+Qr5sizKgLxpt2ky6dXCQYeFRpN6EEuiLXnfjm5As28U1KQ1WeKXdsAkiZg6GsN
         ciUz51pFuYV23Bp0+rvQaX+bFvVHwMb+MeUeDMfaTLe4qn+CytpDAON9dbCqg6z18YX7
         C8SCNLN/Dz5D8Gf2druLq0gOg9WqUv1fP3NdYRY67wTQxLwzgOME2ut2MIU1yyBkH5oi
         tgGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=ljDXIZUbMEwcZGat/ixcFjxxYQYdKGEZYBJebCbnATQ=;
        b=ZwI6VZzkn81EiqkAwyyj69k9BJzbdc0onSFhY4H7bfonbikVRpsJigxzKee9inBaN0
         JH3/7rXUvlO7H6BjdVS0WqFgCiZLxzKp2USACUKJfT1WDoHPpZ/IcsBBf5wXz/UGOZIn
         PVjnZc6kJQFe+kpmvC+dGbX8SmtGJQtPpaTpkIhzYRqPROL1qoujbrVVELldaJtSroLX
         GLRk/7MBOYcGy9Ee66MuRveLkeityRqCtfi3u63Z4ar4x2rZBkzooyz35yc/UE/Dadkt
         BymN5hGgfBaUX86pQIZmnvvqNmUbu5Rcalos9VaAVM0LEPKDRFKAH1kw3exw6eyIeY9W
         BoXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S9nj6F26;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id e63si238793pfm.12.2017.09.15.23.08.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 23:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S9nj6F26;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id v5so2363087pgn.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 23:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ljDXIZUbMEwcZGat/ixcFjxxYQYdKGEZYBJebCbnATQ=;
        b=S9nj6F26C/UXsFpH1+Z7bq0ikU5xowcMPR4nvbeRkjRn67bW2hNFWURNvG6IO2Ayuv
         BtH2d8x/OLw4fK0f95Tez5vxP888I3jqLlWg51xiwR+7ybOiXCqG+CgUEtK0AFi/9qZd
         BIRgZfbDwZJr9heVbBsIHL3zlWSgCUZYn+8h4oFiT4/6K1q92EsR+B+J1l+0i8AlMeso
         x7MCVbxxJj41vJLffYrx502j0Hc6OL2sUsDBz6c/gjZiMq+r8x3H/6VZkaqvgPjgIzd3
         9PaJU2jSXPT975Bq6bV3z9dtgmZmdBg6LaSO2Cc6yG9hYZHXA6CMvHJCSgSNI8iO1cs8
         GIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ljDXIZUbMEwcZGat/ixcFjxxYQYdKGEZYBJebCbnATQ=;
        b=RTTinfVvc27uy2B/TXd9RiFOq0mzpcTLtYzDjq2eyRTfSpMJX4Zf6p/xPhBX89KIm9
         k73wWrshqoQ5CzGkki/kdkZ4mAA2+2LHByxtGE7kmnoWhnL/fKgsGXIbzmWZD6x22Qy1
         2Q6Z4z73VXc43RaZH9ttf+EUw4YTd+pP6K+kLx7KwtfUrLQBsfZAZxcLg9/APCVBBbOc
         uTRziSJ4yw4Szscysil8uInc61dGauYmtrMqKZG588dMUjyVyG8F1BbozzD+bOsC9aUh
         iIB+AMZXJOH60nEuxCdSNVrktXpzyJfYAbRdCVdmhW6sJSsUdbYCHpCj9HXaadO3VqRk
         m/nA==
X-Gm-Message-State: AHPjjUjxZ/ez40hDq1yuoyB+Yupm/MpqfUrd3xVUS/6en8oGv5sZ2EV6
	fdDwi874xuyefEhT
X-Google-Smtp-Source: ADKCNb5vvtT1H25wWADiykF8sK08J1SitUwlGLlxjzKTeW31MCiP83T9GszVKaEAJ0lq+nLMASZ7Sg==
X-Received: by 10.98.49.70 with SMTP id x67mr26991468pfx.257.1505542123945;
        Fri, 15 Sep 2017 23:08:43 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id t73sm4525928pgb.84.2017.09.15.23.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 23:08:43 -0700 (PDT)
Date: Sat, 16 Sep 2017 11:38:38 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: irda: drivers: Move the curly bracket to the same
 line as if
Message-ID: <20170916060833.GA31923@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Move the left curly brace to the same line as the if statement.
This coding style is more common and also reduces the number of
lines of code.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/irda/drivers/ali-ircc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/irda/drivers/ali-ircc.c b/drivers/staging/irda/drivers/ali-ircc.c
index 756ae53..589cd01 100644
--- a/drivers/staging/irda/drivers/ali-ircc.c
+++ b/drivers/staging/irda/drivers/ali-ircc.c
@@ -1876,8 +1876,7 @@ static int  ali_ircc_dma_receive_complete(struct ali_ircc_cb *self)
 			self->stamp = ktime_get();
 
 			skb = dev_alloc_skb(len+1);
-			if (!skb)
-			{
+			if (!skb) {
 				self->netdev->stats.rx_dropped++;
 
 				return FALSE;
-- 
2.7.4


