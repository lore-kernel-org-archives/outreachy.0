X-GM-THRID: 6464947819093426176
X-Received: by 10.176.82.179 with SMTP id v48mr10534281uav.33.1505238752068;
        Tue, 12 Sep 2017 10:52:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.211 with SMTP id q202ls1672609iod.11.gmail; Tue, 12
 Sep 2017 10:52:31 -0700 (PDT)
X-Received: by 10.101.93.11 with SMTP id e11mr1014596pgr.2.1505238751185;
        Tue, 12 Sep 2017 10:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505238751; cv=none;
        d=google.com; s=arc-20160816;
        b=eN+djO0FUeSDJ+CnRFv+5HzvqpiDm5S4I2gJG2EmLCot5qneSb5uQDKAOG6z1hNOHw
         GR1LmldzxGpZ6xZ0Fq9VkMwwl3X1CMASD7nBnQLKvwDyMEwq8qyPzwnq+Rd/WgcIz+l/
         6Qzl19bqGiAlnojOvKWxNzaHKixfb5PKHIqpD+k09RWM9yh82IFEjLGPy49r5kwVun3t
         TevrgQLckHsA5j+iqIZtemxRALgBaV2wLc4k2+ZShxnk3vJatLe/6GKNPrJR40r5J65j
         Fdss6xWaYHZk8EJOgcLEGKhWYrHaAhHY8u9Edeh1RyzNO4VAF9oXC2lzBaQVjEEr75x6
         NAQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=oeXumAX9DUn4BTTKHjmrknrl0FF1SG4j55ZY/g6Ivu4=;
        b=MYVBj80TVv5Nll+Ww4TdS+KRLZs7po3UnlMrAMKHDzzTZbR7hu86wdlVC1IJTcIvjW
         owlhEKJROQDyUzU7Twxmuku714DgLDP92Me85SO4Gw8QQZldMuOQ3EFDcbd9GBBWePSd
         CgCOAmwhA8lMkOR75TXgAMa6ytG2/m+dkqvzjjVKyhoXZnVC/f+DFBRB3ghp+v/M0KZj
         VX/SQGRuXHnla/+6nQ+9XS7E6Xp4TzUqmMDfklTffGDoI075yzpkHqwYMocfMG53qbr9
         8zacYlgb1Xp7+K/KtFFodyi3fQKqjPJuc5SqRvybh4Mn4lEohOt/p0zLicwytM6qPw5P
         RpLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eiesd6m/;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id q65si1219048pfj.8.2017.09.12.10.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eiesd6m/;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e69so4717818pfg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 10:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oeXumAX9DUn4BTTKHjmrknrl0FF1SG4j55ZY/g6Ivu4=;
        b=eiesd6m/L3Niu7uDdor6RZ5uYFSycTaa4UKI1XNC2MKbuJsmJHpe+PyWDkp82HADy8
         4W+BX4M5y+fk3Uiw0kiWgHZ6iX/lMpnUPVzGRhc4wzTjb1kWAp5pN24F2zYCdyhwd+xa
         RjUWR3nIrpW2buX2C8ZnlSRJsJSAiKxqsyiYH3z/k0HJQqQsOMU8i3ZYkAg00ULPNZfn
         uSuaUsrwM96ChgR8DwBl4npEiOyhWOqBRgV2rAG3rXYm1S4/v64fEgiPRN5D9pRgehy8
         MocPImfsuV5uxsuTjbH3ihcI+3xDrpMYxhOJSLywTHhDEldLjP09S0Jw3RV2PyTmgGTw
         sZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oeXumAX9DUn4BTTKHjmrknrl0FF1SG4j55ZY/g6Ivu4=;
        b=FZzwXU61IKKbVCZeaTCdLCj70Acim/6mLB4O2qDeRRuBboRhcK7qHDCx/h0ZB6R5q4
         eRmq6u2oWv8VTaV0U/BPSffBhfBeKGDYu8ToAQgYM+vJzTX20zZPGMsVXu2qyLP0myfn
         siqmj1b0aDFL/bpPy3doP7GJKb9RaKjFt/wbDOsQh+HR7NHW5r8+w4ifklVKCS0OGHsA
         fwLhz7O1KhGTw4wGGUJStfGYk8uTUgjZItN0NusgK7Dz/dc4VGVk/s4yinF7jTfDK6tv
         PYhqMrx+NOy3zpQxc/D06AiQV5RL3PldGw6KxetHqQhhWPwUjLUoxCikCI/YckQL9WqI
         NouA==
X-Gm-Message-State: AHPjjUidy1M2zS57Cd13BpYtaHj6508KK3/ie6vbpx/IDh/boWRA+1bU
	tVhKOz4p+kvpgQ==
X-Google-Smtp-Source: ADKCNb4mNGlxPoPWGbnNcrv57u8oLoqel5YWo1w04R1Jpajvwyvq/jhIHI3FVLTsS9NLlB9uIyO30w==
X-Received: by 10.84.128.14 with SMTP id 14mr11537503pla.329.1505238750997;
        Tue, 12 Sep 2017 10:52:30 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id a29sm21547563pgn.75.2017.09.12.10.52.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:52:30 -0700 (PDT)
Date: Tue, 12 Sep 2017 23:22:24 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: vc04_services: Replace "foo * bar" with "foo
 *bar"
Message-ID: <50a2d460fbe9c785b7f8d7b66af494c70246bf7a.1505234866.git.meghana.madhyastha@gmail.com>
References: <cover.1505234866.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505234866.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Preferred coding style.
Found by checkpath.pl

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 6fea154..7281a01 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -160,7 +160,7 @@ extern "C" {
 #endif
 
 extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection(
-	const struct opaque_vchi_connection_api_t * function_table,
+	const struct opaque_vchi_connection_api_t *function_table,
 	const VCHI_MESSAGE_DRIVER_T * low_level);
 
 
-- 
2.7.4


