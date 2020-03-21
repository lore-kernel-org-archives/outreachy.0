X-GM-THRID: 6806459520499318784
X-Received: by 2002:a05:6402:1241:: with SMTP id l1mr9369509edw.239.1584752351717;
        Fri, 20 Mar 2020 17:59:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls4061122ejb.6.gmail; Fri, 20
 Mar 2020 17:59:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtlHAXwWF9uVEs5IFhWqrAEcKydLhBg94Nz0DzFO3WZ0kwOGAjZi2NBuhn0azmRIxfBS9AQ
X-Received: by 2002:a17:906:614a:: with SMTP id p10mr1540467ejl.88.1584752350592;
        Fri, 20 Mar 2020 17:59:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584752350; cv=none;
        d=google.com; s=arc-20160816;
        b=l6UXD6hpr63dbpUEDMKKRS/jkxYe9OfPHFDtL+umZBTiSQM7MzfC2w+8POUd06nj8A
         AJejSg0GsP878YsREx7j7cPyQVZ/w6+x/vnSsJAPHCEn5NpqtRw0rndZ5dvKeD8kc4hI
         WJwAMqtBi5AChekwNU0VZ0AH1+1YytfNpxtnfFHhjDTw+nlf8fPhDi9MxhPf1SwQRgpq
         NxWPUwd3IHjd0hOhBlSY5NwdiOIR/SIZ+PsOL5A7XBtFBZ8sksIwxClhJyhYyrLYAdyA
         KPS4EDjuesBI0jLu2JaiyrV/ybb5K+vq4ddpGlzQNSyEfZzWksKQz1w3iyAy+SLyQOug
         dy8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=M+cfJ4foDQjYFYhknHZfYfgVSKE6rukUDVcvDux0L1Q=;
        b=h457nMrM5Dobeqt9kZJITFxdlq/MfqqKmCBsw1erQeiLrfBNRdNqaWwMYiDx6FFuRe
         KgHEoT3xqe/EOvHVM6R72mEo6rZbqJEFZQQl4qxKuB3IkXS4qk+DYxl1ocehy0zQliwf
         LNvdu1XhnaX2xZvIwXXfQ5sqgojYYKrBgH8FrjXjWmA51zUJOfW1L4j1M9gas39V7KDf
         LOy36z7gR+odtkBeuZa3XkSX9BW6h11CmZAtAtU3qk3EWeYn2uR5US+kws8KjaCkJWEL
         F9Nl7hUZUONEo1/ZRpZrp3PituXd2JTqbn6AsaI596XhPwS0mC9f15K3QbdkAaQHNSzU
         Yq5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwMhHyJN;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id x7si415885ejw.0.2020.03.20.17.59.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 17:59:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lwMhHyJN;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id i1so5259832lfo.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 17:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=M+cfJ4foDQjYFYhknHZfYfgVSKE6rukUDVcvDux0L1Q=;
        b=lwMhHyJN27Th+fheDdVvkIkeshCnQxK0bv7mCUGG9BkINjNtFQoLp4zsaJssmfRCCE
         r0ZFMPGs0IDtFj+C3KzGW48HRy6mqw8zYFKHtzLYG8zc0QQ6zohCdVVjm+TfmxbjQtbV
         cbSYXOMysToZxJDMV7+mdnHjSoOouZC585Aa7+zlc9xz3GtxT/bO1ftywgiI7e7M3m0K
         Yc6ViKwSAwqE7h1o9FyJ8NoQ0+TpJwKFMqNPW6SU1GuLOScfJjOGbYCRooLJQ8GCOsI9
         RzCfT/zMCl7ABplg0mskYsqApL6bjrQAM0mfQbTu0p1++eaSiL3xJDyBt3OHdT7NqnsB
         trSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=M+cfJ4foDQjYFYhknHZfYfgVSKE6rukUDVcvDux0L1Q=;
        b=LhPc/tgewFZf9r0iYkiqusyju5uk6ItG4KQXBKaAfgsPhBsaAcYhDqrKwP0bbamEVz
         EiTLcZOVVnBgvmi+5XAFnyuKi/5m+HL+e83ujF24gb7U/6rY2IMzaj4UVkSgX4ffKGuP
         awPTDsEvuQoouzx4+EJbUAUYhzvDTjy42IbaU1RxeZMJWocXX5ZdSncIDdw3ezWqFQre
         yNkujx6VCxADCLNNPr//kPz1U1GMbrSWo1XqtCNmwRxfHEi+K/ALU4Hdie2EcWKq3uO7
         IFr3DanEJT5wI+6hw9UfyelTyXkDntLra7dX7oU3uHNfRZakj9z8KyLbxe0cEq3VkUOy
         I08Q==
X-Gm-Message-State: ANhLgQ3ecOIBSPl9WcxSkzuOBK+HsyGnSGjldUJMtQKW1e3+PX7yBrf2
	xeLeBCDdOL6SSFOvEIKR0lBUrk5JMDk=
X-Received: by 2002:a19:5e06:: with SMTP id s6mr7082355lfb.154.1584752350002;
        Fri, 20 Mar 2020 17:59:10 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id m17sm4304998ljb.61.2020.03.20.17.59.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 17:59:09 -0700 (PDT)
Date: Sat, 21 Mar 2020 03:59:07 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: change ---help--- as help
Message-ID: <20200321005907.GA15206@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Edited ---help--- as help

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/Kconfig b/drivers/staging/hp/Kconfig
index f20ab21..ef0a0e5 100644
--- a/drivers/staging/hp/Kconfig
+++ b/drivers/staging/hp/Kconfig
@@ -8,7 +8,7 @@ config NET_VENDOR_HP
 	default y
 	depends on ETHERNET
 	depends on ISA || EISA || PCI
-	---help---
+	help
 	  If you have a network (Ethernet) card belonging to this class, say Y.
 
 	  Note that the answer to this question doesn't directly affect the
-- 
2.7.4


