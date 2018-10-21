X-GM-THRID: 6614906507069751296
X-Received: by 2002:adf:b651:: with SMTP id i17-v6mr516679wre.10.1540152939083;
        Sun, 21 Oct 2018 13:15:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:544b:: with SMTP id p11-v6ls1140864wmi.15.gmail; Sun, 21
 Oct 2018 13:15:37 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62ctn1vtdPb0NBUAC4lGomuAk/g/QhsPylr6F3akRX9U8Lw7dhTPANkTqNOb8vcWAZLD28d
X-Received: by 2002:a1c:8681:: with SMTP id i123-v6mr1256818wmd.13.1540152937727;
        Sun, 21 Oct 2018 13:15:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540152937; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNpZInSdSp3H+hIa36CiuUxXdAz5Hs3UghBYywhnwh6CgOfgRgJM3QJFLNKj3SHu2f
         5iGGvuolZ+337GtFOrxUz8BwzsSaWTqUJVMbSe3+ehtThUnBbmK6m4tEm7xbRNp5TVBc
         au6Yi7Q0N1dMJOuzy6oQ8amxmGO2gNqbusq9Jay7WiVOsR3goCHHfIqkuQbfwZ4Nhg6/
         Q4wT6S8BYDEdumROU6TwO5FIZ8Phg/cqDwJZmGgw/73BkuMiAQX/ojWX8Suz4OAQmFWE
         wh+SwP+2qBIMbP9gWs2egjvERsOxsAAoxDExrCRHMtMDrUw0TqbhgiZzepwvy+BYAekv
         83TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3y9gsvtvDRoLn+p9hp2OznF87MRQxvx92M8IjzWxT2c=;
        b=u8yIP1l0xGvEgNx3u645t4fdxwdo9xYCXhVIBgoRp7pBK3iJSnIsVmvYW9KtogaSaO
         S8cUdP6sZkq181v3mujWYcVcXp3SLm8kWLcqHpcFq0lRJdIIwQQAlSYnYeYWZfoeFygl
         hWHAwCAFPTV13OZKBOzUQi4XaJy5pzRE8d4Z3kYx6kfQzvjXW5G5hKIrP8mhZ2BUULWi
         DjKYiezMAzNdspVf+G/lVKwScwzvqOgT+s/cHNJUGMLeuJqBsOGIzkuGvnrYaimSfI+7
         yNC4R7TwF4jzmM+ZFMQcSZHTHTni70uMExgsSIyETbxyADZaeW0wWOETQ7Wz/4osK424
         O0jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="N5X/f0SY";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id h137-v6si318094wmd.1.2018.10.21.13.15.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 13:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="N5X/f0SY";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540152935; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=hacZYkxyzya2FRPcSpoFoTDXtfr3hZFiNcn5+1WPaajQNy1yDU54eitGcJkZanXiCygKQwVhRl1Fr6MjX4/CrL4pJSyRHmtlpODPqn7QturpVEjp1UOun+4SstydtQniDlIdjpZRmVkRu0oEHAztR45mBAe8t8pH2hG9iB2w4/c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540152935; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=3y9gsvtvDRoLn+p9hp2OznF87MRQxvx92M8IjzWxT2c=; 
	b=agqGpCzvPG2UzYcUY9k+EG3YsITNIeQ57EAfc2HivmQ4T5yaKljN+6j/ShOybsv+CddzYF44pwEeQ04uD3J9rpbpQrqNppvN/0aoENCLLSZ+gEsPnT+jWILzUiSWqnskYaAoi1GjFbJs0vH0XNBJgayKOC7suhJ69oCuXU+FNx0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540152935;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=666; bh=3y9gsvtvDRoLn+p9hp2OznF87MRQxvx92M8IjzWxT2c=;
	b=N5X/f0SYvGTUV6JDE/rhsTE5bD8hE9BuIxXXw+8D4VfBCjgbEyuncbLUZI2FdEU3
	xltjhfaovzpYxKDYNtMNNrCcphCCKuyLJxSf9lYeqgJaUrNtsI0TdbHNegPBNwtK3as
	tisDYPucTaDIDF78QNdyB+jZJ6p0dZpHoDbetxwk=
Received: from kvasir.local (cpc102380-sgyl38-2-0-cust101.18-2.cable.virginm.net [77.103.16.102]) by mx.zoho.eu
	with SMTPS id 1540152934930416.5724668364237; Sun, 21 Oct 2018 22:15:34 +0200 (CEST)
Date: Sun, 21 Oct 2018 21:15:33 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: netlogic: replace old kconfig with new syntax
Message-ID: <3195896e23d4800e07c1aee097f8900d5091ecee.1540152794.git.code@wizofe.uk>
References: <cover.1540152794.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540152794.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

KConfig prefers the help macro instead of the old slashed one.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/netlogic/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/Kconfig b/drivers/staging/netlogic/Kconfig
index d660de51b541..c25a00dd2d5f 100644
--- a/drivers/staging/netlogic/Kconfig
+++ b/drivers/staging/netlogic/Kconfig
@@ -2,6 +2,6 @@ config NETLOGIC_XLR_NET
 	tristate "Netlogic XLR/XLS network device"
 	depends on CPU_XLR
 	select PHYLIB
-	---help---
+	help
 	This driver support Netlogic XLR/XLS on chip gigabit
 	Ethernet.
-- 
2.19.1



