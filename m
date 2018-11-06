X-GM-THRID: 6620547167797903360
X-Received: by 2002:a81:a082:: with SMTP id x124-v6mr7508903ywg.18.1541466281885;
        Mon, 05 Nov 2018 17:04:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ba08:: with SMTP id t8-v6ls12895501ybg.19.gmail; Mon, 05
 Nov 2018 17:04:41 -0800 (PST)
X-Google-Smtp-Source: AJdET5dBcVTWsKzD8ubk6PQP6BrkIZ8Pula7EvNDQkToXhc9OqyGxqpLJ/din97wMp6u0i6V+Bxv
X-Received: by 2002:a25:b98f:: with SMTP id r15-v6mr14059201ybg.42.1541466281334;
        Mon, 05 Nov 2018 17:04:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541466281; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtCNPDMBLHpbIOHUiZDkRNYqKMLUsQ8H6cvXQTYyKcVPoLxs0/O6FDWni9yOVwmK+O
         7Sz27H8xg/2wGeM1gd4UUH07fJA1zMNQMf7grBaoJcMZagHDPCJMfkCNNLsCEXS00PKo
         ry9mGCd/vcxVnsrQ1VXxECjwxkhxhGxhqlxY2OGpTF/Ff40sH2Lxs/g8sqHDPeIsBtpp
         mgzQRnqtIAoowZshSaKksVo/LY9FI+WOaSpZAY7LkLqgl2rnUO5/YS8gMzJsR+oxwn4H
         z1hAN2qC/muCulwKyeQor9IpxP+V0rTttyEPHZTOqZNFZKNzG+smGFPEpjrLd6sIefO0
         yfYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=;
        b=zJ6dyPSMFLdS9ZjWQG/0jE7Axqyt1vO5MvZuZL5Rn7nL+7ohb4j+7uhVqs5nApbLo7
         ZD5YmTFmatNx9QSClx004GQ6INO5thPI/RWCp8wDYfaw4DbhKQceTsFLaL4YMMq8EDbL
         QcveHaT5e5diqjH2+b06N97Anaw75mi0YjcIfiwaXkHYabv9/TqpnAqpwPXx6VGSnKy9
         ONUzzs5bj2HLuTIG2ipog+zsibVjDPpeGjI4T+invGD4vOEVN7pfSAipCwM5i7LVkFXu
         V62CC3yQIVWYG0FiXdaM04MTgEvapIbXcb+C3ETkjYW6isESVdcFo7qFK0f+C+ClUtJX
         EDkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=EdXCq4QL;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 192-v6si1641689ybv.0.2018.11.05.17.04.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:04:41 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=EdXCq4QL;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541466276; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=e6CKTivsaLcU3HFeA0HcEsz3iEGgf/tOhU+Ue+s4rMREqT9KprVvMkf9hN5EW1BmgFqArO1pr/ZztoN0KDGN2HJb/4aT/ZjfrMaiAZdItohk7aX3NnDAe5C+VOVSkvya+EPZ2C8oIMgbQh7eHki2kvfO/cAKp2SnRkPrWxR8ut4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541466276; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=; 
	b=EyCS4T3yUdOhLjX+kdanZ5fT1qDMBXKxeR7g7fPhmbphbpWHgY3KhG1hGE8/b0+cVlyIzppmsOD/yTBw1c12lQSgM1mh6miS9+9Kc+pqpZwsqz3Je46x2rOgxE1Q1PGPGt4J96dPMG/5Y3EEWA11odgDzOICoWRN5nm1DQCmXjw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541466276;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=657; bh=JNNFLUEbv49w4UH4t0gWjSnzhe4ROpYgY1N4XaYMx/Y=;
	b=EdXCq4QLzV1u7+cXdPsar2jGdVySWItJkEI6YOne6VuwqeyDgQDCxQlc24US9kNa
	nDblcK3sXbptD/YhJHRkUC5CPPrbworvzCXD12IUw8ViqxEFDgGs65/xa4gryXvVzj0
	8pHDiBQwMymOSdj9ejB/vftDV/qS3/2o0d9nzwmM=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541466275672255.26798782289097; Tue, 6 Nov 2018 02:04:35 +0100 (CET)
Date: Tue, 6 Nov 2018 01:04:34 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 03/15] staging: greybus: add a blank line after declaration
Message-ID: <8a1f2c0553ce7d4719c5684370c78c0638624378.1541466185.git.code@wizofe.uk>
References: <cover.1541466184.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541466184.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add a blank line after the struct declaration.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/control.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 643ddb9e0f92..9c453e0b1b33 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -24,6 +24,7 @@ struct gb_control {
 	char *vendor_string;
 	char *product_string;
 };
+
 #define to_gb_control(d) container_of(d, struct gb_control, dev)
 
 struct gb_control *gb_control_create(struct gb_interface *intf);
-- 
2.19.1



