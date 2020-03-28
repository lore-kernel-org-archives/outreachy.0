X-GM-THRID: 6809407412551811072
X-Received: by 2002:a19:22cf:: with SMTP id i198mr3818543lfi.199.1585438710240;
        Sat, 28 Mar 2020 16:38:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4897:: with SMTP id x23ls970843lfc.3.gmail; Sat, 28 Mar
 2020 16:38:28 -0700 (PDT)
X-Google-Smtp-Source: APiQypJYd4o4IgDBv9ldSGBB3TN9gQVS87KOcWlZxdy+f5XaxNnIeWMXGCyjVj+ijuwOmH+SYuDn
X-Received: by 2002:a19:c752:: with SMTP id x79mr3703564lff.144.1585438708867;
        Sat, 28 Mar 2020 16:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585438708; cv=none;
        d=google.com; s=arc-20160816;
        b=dVMaDJJ3mQ86RTEAp9Pw+KQLpPQQEj5Ep8uHbesQN8lsqtK1+UdJ8QyyoT/ICUbWLC
         HadNnrvd/lEggoTkZaupwkgbVOlXvvfvQUE3ACt8+Lz0tWbTwxkauKIySEM4ULXjQGd5
         vuYNhUGm6V23eAFbUtqwcHO+4mV3z0eEoVKijeKOR2Jf8EkhDrTu6N5MBozj0WmSF3Ou
         4bFvYc6IQO1GS/ikqsKqry8l5PXZ9kdG2BOPE8JpH1Q0/VVIYyzvyTGD7SWB/A6zyVgr
         Hmc/aE7Ahe8HXXNQwU/btR5G0moC77M5QXX8M6tSVGzA+oEtGhlGw1TZFimeDS+uZxmE
         Gnxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=3YHfJrWJIC84CYmoJcCPkW30pEYlkDeVISU5v+XgF7s=;
        b=D0a8xhwoR1VXG0WkdNIvBLwdWuwLQdrLqgYPJPoRnqIMQ2JFl7EbU8bGPjXr2FAXwj
         0ehqm0dTTnl931zAgcTrSi4ZeYA6vqgzMIGcWSudiGqUz7dduTCMwhM9NDtYYSpFoZp+
         KkU1A7ZWMO/DLw4uJw26Mu8YegS0s3nV2+709S9Qt3ma6mPhNDHC5POQpVCGGD/JRcqT
         q8/Lwjz4xk31RSiKLLu/Q57cFELGW9FfqHJpIa+D1F+pxRvaiCZZdjjz2Ez32DfKjj/b
         lUWYKoxgTNVi11jz/4gS4nnUiRCTS0vSyLg8UsgitPp5NEn3Ujb8jys8172r9BPAZHDj
         FhlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LQWls0Yc;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id b26si443994ljk.4.2020.03.28.16.38.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 16:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LQWls0Yc;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id h6so5120774lfp.6
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 16:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3YHfJrWJIC84CYmoJcCPkW30pEYlkDeVISU5v+XgF7s=;
        b=LQWls0Ycd6hJO8uQuJWRIcg/oraeFKBv6BhNBFSgbgbZrmRy0hgNi9on4v1cq/DpSM
         5Q9uLPNA9bQB6CEBe6MdxjYG4RjvLGqjXyOhQ46MoB9xwadX/t6dSiVkMIzBqXJD2Z7i
         cCUlBLTXK0avUQ/yGGYmE43wi7wrnOwlUYmBchwU25CFXhNXISJkApEudugco4Y+FSyd
         Xhe8EiKSy5VSsmMHzB/oakjZhJ97ayckuOUPIXo+PPF2MGolTNojZZMJI38IEIS9o0Aj
         q4gKoPW+7MKgX6rlPvXO+qWXcffsWUoN2P3cyyAVnq20RMYkxRNzFHuGmEdZtjJ5jB7X
         dacQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3YHfJrWJIC84CYmoJcCPkW30pEYlkDeVISU5v+XgF7s=;
        b=INCc3lizaYymjLVGotoQHo6nq73/+9Uk7gXeAxBPbZGN5wFnwj/vuXfuFp2y9kpYNR
         qnZslxOTWpbAqRYqQhNKb3bKdryCgpX8PM+5edimjFHMx7JsYpXxsNBpHItyNRn2ZeS/
         zHRWzFuahYJVLXt+P3N+s+9rUtChjEasOSF+FMjfxJo/C8Mja35QapP4EvHWrcMjE8aM
         vVQqhQsZxhyESKOzXWNPISwewrYlgLq7I7sh5rJvZ9FkIz6oI/rGU0dqDaPWOZNdjlxL
         dm2wmq1gFRxn86lUrLMwH7kBFjcV8/aG3X/5Su5oJjVg115UQQ0yTnhusI2wrqlTsrqZ
         OosQ==
X-Gm-Message-State: AGi0PuZMYuGsBcIzAN+/TzpnfSymEMRcLjNwq7B17bqzE9YH3KR2J+EQ
	CHwN9W3ousxOWAzOTv1KfahHXAGJ
X-Received: by 2002:a05:6512:6cd:: with SMTP id u13mr3825200lff.1.1585438708596;
        Sat, 28 Mar 2020 16:38:28 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id a19sm4576619ljm.48.2020.03.28.16.38.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2020 16:38:28 -0700 (PDT)
Date: Sun, 29 Mar 2020 02:38:25 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux@armlinux.org.uk, gregkh@linuxfoundation.org
Subject: [PATCH] ARM: amba: Add blank line
Message-ID: <20200328233825.GA28891@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add missing blank line after declarations.Problem found using checkpatch.

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/amba/bus.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index fe15236..5b17456 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -319,6 +319,7 @@ static int amba_remove(struct device *dev)
 static void amba_shutdown(struct device *dev)
 {
 	struct amba_driver *drv = to_amba_driver(dev->driver);
+
 	drv->shutdown(to_amba_device(dev));
 }
 
-- 
2.7.4


