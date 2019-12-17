X-GM-THRID: 6771501280908017664
X-Received: by 2002:a05:6512:48c:: with SMTP id v12mr4020347lfq.56.1576613001510;
        Tue, 17 Dec 2019 12:03:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e01:: with SMTP id e1ls282333ljk.15.gmail; Tue, 17 Dec
 2019 12:03:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqy2L/Pr4T3TO6zBeM0jTQFKg3prYmMaKvWoY1ZQUXXazF/WCTc6ZC0kc6FyAWsl0Iu2/jTX
X-Received: by 2002:a05:651c:1049:: with SMTP id x9mr4423500ljm.233.1576613000083;
        Tue, 17 Dec 2019 12:03:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576613000; cv=none;
        d=google.com; s=arc-20160816;
        b=A2FQHmR4OD2BM4nx0+FpSVl4LdtNqPMEZ4icEyUHUCK3C6jXRqcjcFDdehI3EEFN5H
         z4uBYMbFs9aVahKPGQOULANdEwqRwbqv12U1JPv5ITq8TFSASnGDyPiUmGaOMOiP89cf
         +J4lzR8zQPkXcgY4C7TbjPO28j0nd82GwBSKHQNphHiRCA6NwlAE4OwMOd3B4LdQBfxh
         XlFwmdaQrmsy7xrI5PIp6IMHCN41/4GHnOJZcIE79BJde1JGgl/MUGz7VQCbf83rnrpH
         XOv2ekiltXw3r3CAsPYV4BAC2gfHTNqsOhdz63Di9PPvsWiTOd8rrn2Hv9HBCS8Y2b1G
         B65g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+TUvDoKcIZ5DCGGcDSAGdLdrlmatvPNo72nYGzYLQqQ=;
        b=XEnCnV/gW7eFq+hdhYFOHmFBZ3fan635rzmK/ieZOPjizXpPLAnxbmdYB9x+3VWoik
         wNyX1hba29M9KQIbrUeyWqjtvh8FRvyw3bjij7ifaMc2mM+7jicrGkaXszlzjzQMfgqT
         ePicsbD8RnQoVaIOKqDK8OEYaI/ohnM3kfbpQYSNrjOUPSs64rKqnQ3fJzBmyuRs9iXy
         /mdAoHw81IIlfZh8apRIS0/1KJdeUd28PJ8DqHXT22KcLqR6Or59pDAOaSFFznVQbMhj
         aXbLpwYWVTayMlJ6jteyy3sUTjOCsP5CAgzz+YdAi52LOg3SiIwwqznZXMcrJ3XVZYML
         nVsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ATTYMQA8;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id a26si684694ljn.1.2019.12.17.12.03.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 12:03:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ATTYMQA8;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x141.google.com with SMTP id b15so7872813lfc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Dec 2019 12:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+TUvDoKcIZ5DCGGcDSAGdLdrlmatvPNo72nYGzYLQqQ=;
        b=ATTYMQA8aThmxYZm/UJY5s72/PC6SSJzmjBZpgQeT9Yj/gW4YE9aHoYF/7L28GaoQh
         lfkFJ+ZUBuoUNO4SBT5j7pR+2Uqsk1fkfM+HNuQmz32I9Ds3h1I3BrkxSZk3/cG1Ws7b
         G/3KxJx7DzfrdEjeM8z/iyB3EOYC6p3AMpaW0q351a2bnhIFu/uvxpK80qwEYgh2wmvf
         REEPeQ+KikcjCPfQqmY6VK2nz5GZftovVCa/Egxqqz2iFMzrbKWe9Y/SebWSO3ckZZMu
         EpYzRHhzNnvfE5f8ODaXZcCWfBcjfGlhMV1GzwybNG0CfbcGRsSQGBfX8a7SObd0EYrb
         UOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+TUvDoKcIZ5DCGGcDSAGdLdrlmatvPNo72nYGzYLQqQ=;
        b=KxLKfcg1QZnw5ratGpz5zojuuOawR4zQrT0xbKYDtNRMPGX8nHA2EIFwfwV+19z9Nl
         3pmSKW23YkxJL3ST3lq7KivyXgx35jGQ/AKiE2i3XUFdXBB0VPW1BqxJhEr4N5Du574w
         Tg+ZC7ZjKbH2dCiwkVlM+09cXiZd7UJ9ipWM1xFBSxW8Hw2NoU9m7a3UIhm/S1YS4U47
         wHdfidvjaOgnUaUo8D93g8e8L6ySZwMDsgsa4unrxvnJ5QqCfvMYt/pfLV+PYeA/Wr8B
         vmMHV2vJSI1xW77MvifkYxP7oArPy82GQhlJtoo13oOpk/GUla0DwhgEO6bsLPZ1aSyJ
         R8rg==
X-Gm-Message-State: APjAAAU1pR3bpD+K6T9gD6x5hU51W54qFJrlNRAZBIWUEU537PKaP+aG
	C2z/wPLUtOvluDxakl9B47yu/fszsFg=
X-Received: by 2002:a19:f10e:: with SMTP id p14mr3808334lfh.3.1576612999563;
        Tue, 17 Dec 2019 12:03:19 -0800 (PST)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([78.190.237.100])
        by smtp.gmail.com with ESMTPSA id b22sm13430843lji.66.2019.12.17.12.03.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Dec 2019 12:03:19 -0800 (PST)
Date: Tue, 17 Dec 2019 23:03:17 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Fix line over 80 characters
Message-ID: <20191217200317.GA6493@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/exfat/exfat_core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index b23fbf3..e4777e8 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2312,7 +2312,8 @@ s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 
 				if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR)) {
 					file_ep = (struct file_dentry_t *)ep;
-					if ((type == TYPE_ALL) || (type == entry_type)) {
+					if ((type == TYPE_ALL) ||
+			         	    (type == entry_type)) {
 						num_ext_entries = file_ep->num_ext;
 						is_feasible_entry = true;
 					} else {
-- 
2.7.4


