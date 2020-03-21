X-GM-THRID: 6806472827203485696
X-Received: by 2002:a17:906:5045:: with SMTP id e5mr13337873ejk.325.1584806029292;
        Sat, 21 Mar 2020 08:53:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a40f:: with SMTP id u15ls5229390edb.5.gmail; Sat, 21 Mar
 2020 08:53:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvF6JO8IkxO/769Mz1A22jmEWoG2IKmnmtoOqS8QV6KOFdLsmTSW54cgE4lz0xw/EMfthXa
X-Received: by 2002:a05:6402:613:: with SMTP id n19mr13510891edv.73.1584806028042;
        Sat, 21 Mar 2020 08:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584806028; cv=none;
        d=google.com; s=arc-20160816;
        b=ZPcu8d7NlXmmRFuBRFLFExAgb6XFST1/3OzTTkWUmuibj50E5EEi5A1yFt9vg+tQyI
         6c9vZwWCFfisn4JWq6l605HMogyWVXzdxhEdyQFd6r8PSZorfmKOsPxQ2X7od5v1RX+A
         QgdFQBpuzRk1L74F7rasCZ2W2c1iQP1bL+YViqgcR8glfiKqRbqJHydmdOgbKQ+sLHGW
         rqSQPlC+xR/PrLYM/fFcYf5emF6HmDgDojJSYLJMlq1hL31yfFWeeKz7vPedv+EEjek3
         J8mE667EzcS6e65rJ6iFT5NL02ZzwcYX4tdm6CwWmFBciRRMCR4ea3gk1rlhP+XdjAuw
         XTeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=K8dotycww8PwTtKT+Qf7IA6fqnqiJqtQtL+VXVCPbvU=;
        b=eBn0SYbyUd7n0NByNi0y63PUHcu8WE/3cSLkiukdTkceN/Orm031E9flGECy8ej2nv
         GlAyIHfqM2IvRMdczQigyCV/RNRUB1mSqbjIRvD3UuHPsyyCbnsYXc6FJkwHKpmabBFj
         SENdYcxJcU2Wmg9lD4PZO+8Tot6Mg8DrGWNcgflGvnB6Cy43k+0RcjSHC7jHl11S2jwB
         jRAqe/OiM8wz2hsWvfd4+2icl0Plb108ys4go2V3mtK+yGh7LuVfTJ7wJ0fvbwPcdQRq
         LyojRUrrrZcFpFst86ZlHNYtUU2DxQ4fgaFjD0SJkRjO3jnEHkKFQKwszRqnnJw9cuZE
         Ik2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=twRR1PTP;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f2si215042edm.1.2020.03.21.08.53.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 08:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=twRR1PTP;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id v16so2718870ljk.13
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 08:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K8dotycww8PwTtKT+Qf7IA6fqnqiJqtQtL+VXVCPbvU=;
        b=twRR1PTPOu/Lq+KyMDkBzU6oRY9MHIBlrNxMv4etpht0TjxfGAfUVLslmU4/EndCtQ
         MxcWRcz9sji/h2qJQCckVk4Sx10O224dfcyjSDTvWhi2kj/ja9d5+6Xpw5jAIBy/oJTI
         rkOzC0+35LLDribyXxKouXXpvI68y1DXypEICn/heiCsQVVr+VtiwNBg2tJE7ct9Lbip
         yOXY6slBWuj2Y1SNT8T26oHzOE8/g/Zjc0p3zBXpknpQGksUcQAFlPo4lVtDJ5dGKxVH
         mDF4lKNT0Sr4rFTeAV1DwhA/y9jCGBaTvEsFJKY6BXBiU13j0HbR4BRvUXO5y8PxoPdd
         kRbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K8dotycww8PwTtKT+Qf7IA6fqnqiJqtQtL+VXVCPbvU=;
        b=aYSfyfo9xoBp7ttW7nypgq2lhIJZMkaJISA+mRjoI6vXQ/dqQedYeBBPN1mpkXoIPv
         ahFbAL/ct20nvSSJzPdrD7rfkTwLfuFAPEipIwxxNVVyMfZdD55eNWHW/40OdfgQlUy9
         67BH+678RAvBDGD0hh6sUgFc841JFbaKHR8EXoK0Vb8sN2AfUs95Qs0/OiWuUJ6RRend
         BXNvZDME81x3CUnu+ra2tGm1nGOWQ2EHuUBv9CWTbs7owZBZLKB5ZtVne4DN14VerXHK
         ECnDzUpSRoF8QTqAGBLEgKOpEDeNHSVUUBIdDAKoX8k5CFkRmE1UDSoVYd/fzRhmwqIz
         m7rw==
X-Gm-Message-State: ANhLgQ2NxM2uJropiQ4TVHQ3TRn8wN0anY6TOO3HMJz9ZEgdRvZdl5ZH
	jbkmaF2BfRzXmugSP8QCY/k=
X-Received: by 2002:a2e:9284:: with SMTP id d4mr8490412ljh.226.1584806027525;
        Sat, 21 Mar 2020 08:53:47 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id r2sm5395105lfn.92.2020.03.21.08.53.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2020 08:53:46 -0700 (PDT)
Date: Sat, 21 Mar 2020 18:53:36 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: hp100: quoted string split across lines
Message-ID: <20200321155336.GA9439@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Added " sign for be the same original code

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 6487b3a..6041043 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2931,7 +2931,7 @@ static struct pci_driver hp100_pci_driver = {
  */
 
 MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>,Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
+MODULE_AUTHOR("Jaroslav Kysela <perex@perex.cz>","Siegfried \"Frieder\" Loeffler (dg1sek) <floeff@mathematik.uni-stuttgart.de>");
 MODULE_DESCRIPTION("HP CASCADE Architecture Driver for 100VG-AnyLan Network Adapters");
 
 /*
-- 
2.7.4


