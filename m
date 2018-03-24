X-GM-THRID: 6536501456103538688
X-Received: by 2002:a24:7d94:: with SMTP id b142-v6mr5573125itc.12.1521897841532;
        Sat, 24 Mar 2018 06:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:524e:: with SMTP id d75-v6ls823956itb.4.gmail; Sat, 24
 Mar 2018 06:24:00 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuaGyikFoRxxgu6vw0utqBAqFB9U56aAp9n5CM7r+KzkIVbTPxIuvk/yDQZ/zwSi/8xYMeW
X-Received: by 2002:a24:6c51:: with SMTP id w78-v6mr6863204itb.43.1521897840606;
        Sat, 24 Mar 2018 06:24:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521897840; cv=none;
        d=google.com; s=arc-20160816;
        b=KvTRUDK6Lz9dtzTRpf6zLztuxVCx/KhH6MAWwTeOoaGjBXRw/0fzYVmi0YG8fei9S/
         apbB63wj1N1sfAcoY16u2w8V+q2CIZIOlXaHtJ6X83oq49h7hWqMq1nPcWTmWqw0OjRk
         4fXquRDvRZTs5jk3i8sKGINOvpDLx2Xpnrk8szL04muEMDmJobdsCgokMXvx4G/wMH+E
         G/JUxyFuPuKZyfdoCaizpqq29ewCPNTdm96DnVkZ36jpzbE80xSBNYI/6lGI/kDqnOX8
         qNo+03VBvJvSxccflMTiQrpCKwytEMY3WSfubYEUSUIKlISra+kl2Z/I4jvRFaE6VYM3
         mNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=4qCfJ2wm2C25MjD5CczM0JWo/uNIVYz5DsMMPIjewjc=;
        b=gXyndKSzwOIG34xm5zPAFmc+R/Q/D0i7/8da638E2Jocm+XdsP0px/W13XFlwRS2Rq
         wQWcQ2bMDfTGSIQn/tzT1CItfZLjjQvKQGXyoGad66AHEs4spHjIHp8raD6g5vvcJb47
         n7QC9XSBSXE8RMROL9Hz5/HtsSLdc/2OzCkbZXLS29jLdWdCgBjSBJuR9xjxJWTARETy
         KiRbDvBG6qoLrxW2rBEvw0Fsy6gMP8GShjsZVxrKlMxtUpCF5dJ8hlFuZ7dQC8C9TXnO
         y1h3tHqBTSbo0hRCJgH58A0WJDwDYPi7syYIfH5+8tEJf0jhpVoFWJUhbELMZIuIO1vB
         p0sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=O01QCWI/;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id t131si24762iof.0.2018.03.24.06.24.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:24:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=O01QCWI/;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x243.google.com with SMTP id f15so43629pfn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=4qCfJ2wm2C25MjD5CczM0JWo/uNIVYz5DsMMPIjewjc=;
        b=O01QCWI/TapBnSQgcPB6fbojxWoMcHl6RHB68KIH6b0sZDmfh71V8xRn6/40ROAYpA
         6fSgwH3Rn9rUtE/+qoH3LKZxswROS8GQQly8ZDq9RFyzn+ZdMLpGYrJ4go7gaSVnXvRM
         21npOUyUohkZm/V7zN+mIAWpeQe7tlwOuHAyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4qCfJ2wm2C25MjD5CczM0JWo/uNIVYz5DsMMPIjewjc=;
        b=ZAjWaSDtvqtfD0VhWGC9R3DtrKcCD8HLHjTQKqkFUwBt4vppgZxwkLzPXzqxEFwNsv
         jdAuVq+jVS07ZAFBUkWA8/6tOTgzA1qLuKgBEYhJ2+ymknHGPWjFxih1T3tO9des+EZ9
         UkB/sQxsfMWfH/JdFN7tKPqO7/JcheWkBqwnxTxK+SwJP7eWZsPA0aXvjnAZsxS6jiF+
         vTuobB+eJREgFs1KRMxiDVdBmjJxnoLjhMcK7fViRQZ72GcsGHrZ/1cdflacHNYFRvxQ
         hAp2mqobEoO6SDg0N5wbPvwD+wug8epeYm2qvqwxPttPC2U43WNmEjdo4O23D2Zbbw1S
         gJyQ==
X-Gm-Message-State: AElRT7ElrYRSj1VSKG/+esv394tOhtQ+7qC3QwvGd6QLFwFRnxcZ+NaY
	h7+cZMi5iGqEMqtqTxZdojVgAQ==
X-Received: by 10.99.119.79 with SMTP id s76mr8275906pgc.291.1521897839623;
        Sat, 24 Mar 2018 06:23:59 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k78sm22474303pfk.111.2018.03.24.06.23.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:23:59 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 1/5] staging: media: Remove explicit function name
Date: Sat, 24 Mar 2018 13:23:42 +0000
Message-Id: <1521897826-28871-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Replace explicit function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Clean up subject line.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 7d3349b..0f94b8e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -703,7 +703,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g && !gamma_param->table_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
-- 
2.7.4


