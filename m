X-GM-THRID: 6479957249539178496
X-Received: by 10.55.79.212 with SMTP id d203mr10015091qkb.10.1508732617828;
        Sun, 22 Oct 2017 21:23:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.19.197 with SMTP id i5ls2129740qtj.13.gmail; Sun, 22 Oct
 2017 21:23:37 -0700 (PDT)
X-Received: by 10.55.162.204 with SMTP id l195mr9274721qke.8.1508732617299;
        Sun, 22 Oct 2017 21:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508732617; cv=none;
        d=google.com; s=arc-20160816;
        b=hXYjcR9CVc2arn1n4BoPjl+tBUrhudGvEupoC8vIyxgsgKtGyuLmHYl0YuzhM5+PII
         04H5usksfSrVwj9ljKY9+fsC1kQGuMTLLmC+ARbMadylv6L4K1OqUuvwKbKk0qFoCu2q
         L5oOqlIN/R5W04gV4pJs7ZrTfstUJFKnMwQHoa6EtKOceEJmpKeTVDwOGviNasuRJ0Xa
         NIz64RlH2xsE4T5wkWfpS813s6GqC/Fc9tMgjRuvBFYIHV/hXJ+Lia8ZqPGSLMqUu/O7
         FZrR8w8b9Vlfg5zsfctOxP3Iol5muUmMGmWCHAa+GptR4W46LshjDfygWaSzhcV3ak4t
         oRkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=EggxX/JreqBxXKZyxhTDyxcwL0OBEA7de9LgY05i2EM=;
        b=khMbj8bM1zGIqccZnk3gtPdRI9BTLZNCQWrZsSAYfGAQ7mivjsJlQ1vc164hX93eAb
         HYtkcyZgjfs/Xm5X+ZQebPq7hSJZ0KUF1I19AjO9rrOMUo8foonuKfp/uAp10dL4QFNU
         mzcU+61zURLiAUAg6jvoCVNd/+wvQ/ibH3ycrTEi4pV0yblazlbX8ScpyN9W4D3zGPx8
         jKc94ARZlNc2bo5fxyNMK72DZrOQWCAbx+cvo/pJcFXueU1VhfVK2wQJuLHEjGEtZkjJ
         YAFzaaLJxcbrmiHR0xO0lroH4l1XvS/VJTeZ0ifg6HY07wHBrHmV6iGE2qS3tpssS5WN
         l9bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gojl7fAN;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id x10si429311qkl.5.2017.10.22.21.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2017 21:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gojl7fAN;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e64so16153943pfk.9
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Oct 2017 21:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EggxX/JreqBxXKZyxhTDyxcwL0OBEA7de9LgY05i2EM=;
        b=Gojl7fANB9ANWhJVzjDVry3BVF0ISHrlHNmCiW9QQTh0l6cr8n7VpKU/GgR+/fymXa
         RRbkx6So/DApy2eX8JRZj0dxCcTtIwgCGn6LVFho/QavMLeDW4J/5Z2uym+1PveebjDr
         c57kRNJaclmne882CNLhRFmUg3t0Oc/dALho2a1S82irf6rKDvhhh+wUUgMoNYPYDm6a
         sO7hSmKaxhplCHO6nOz1omyjOYpWg3CHPrRIUxDqWQeNvha1YniHTYA5uzOr8rA/9teN
         c+XWxrUS5HxnLxI8pVUSJQ1dyNMQubx+fxjG9h9q/NHS7mhNRq8tMKyGuVcuSoe4Exqf
         UAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EggxX/JreqBxXKZyxhTDyxcwL0OBEA7de9LgY05i2EM=;
        b=BDz+QGuH+HSICMqw/feQkiFaTtBfATq04GLL0fx7h6f98/z9VfpkOpl2qDXMEI2Jl8
         kGhbouVnyr3JIpeYtuwW2VUeGKe3v8sqkXEejQr5dC+2h1zky8oEfODv/UzFkQp1lAzc
         JWOvDyhxfxql5nGnHvlMuwj5vqdQxmIdsoTI5ivdhsnTq1PCoC09bGXKbY+gn9Esk24i
         xHw6r1cQhAhbtD6Ondqq0Y83gbWYwibZi7zsbwm52YK9El1R6nDIuDU9/LYSAStcRv0K
         AGNlwRYs8uKibrujZOJR0FxMVsrAI3K3s0kTRWEh3ksIgO4aULXGAVsKrwVmv5Y3/Le0
         7Aow==
X-Gm-Message-State: AMCzsaVBas3u2VCZfw0gg+wTpviikseCDLqlkmMtsDu6vRES6lkFE0X3
	d/IoKq0xrn0KuCkqhpQmUKXX+A8T
X-Google-Smtp-Source: ABhQp+Q9/CGpHQ8fzvwn6p9y5soJOIvjKYiBflR2hR1bXSJKO1Yf6WmYjiCxztMHG2UWQh9rRVmUsA==
X-Received: by 10.84.194.37 with SMTP id g34mr9302272pld.132.1508732616764;
        Sun, 22 Oct 2017 21:23:36 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id c8sm10663740pfm.47.2017.10.22.21.23.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2017 21:23:36 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] extensions: add tests for ipcomp protocol
Date: Mon, 23 Oct 2017 09:53:16 +0530
Message-Id: <20171023042316.4278-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

This patch adds test for ipcomp protocol.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 extensions/libxt_ipcomp.t | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 extensions/libxt_ipcomp.t

diff --git a/extensions/libxt_ipcomp.t b/extensions/libxt_ipcomp.t
new file mode 100644
index 00000000..ce111142
--- /dev/null
+++ b/extensions/libxt_ipcomp.t
@@ -0,0 +1,5 @@
+:INPUT,FORWARD
+-m policy --dir in --pol ipsec --proto ipcomp;=;OK
+-m policy --dir in --pol none --proto ipcomp;;FAIL
+-m policy --dir in --pol ipsec --strict --reqid 1 --spi 0x1 --proto ipcomp;=;OK
+-m policy --dir in --pol ipsec --strict --reqid 1 --spi 0x1 --proto ipcomp --mode tunnel --tunnel-dst 10.0.0.0/8 --tunnel-src 10.0.0.0/8 --next --reqid 2;=;OK
-- 
2.11.0


