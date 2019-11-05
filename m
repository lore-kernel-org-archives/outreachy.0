X-GM-THRID: 6754760383787958272
X-Received: by 2002:adf:f70f:: with SMTP id r15mr26845818wrp.262.1572915854619;
        Mon, 04 Nov 2019 17:04:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f091:: with SMTP id n17ls15358094wro.4.gmail; Mon, 04
 Nov 2019 17:04:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqxqjxYAp/1OpBmAv1h/i3PCNS3oVZx8GTax1P2BeY4wBzFt3viZVoPSdeOakfUjlF4j2Ula
X-Received: by 2002:a5d:4f09:: with SMTP id c9mr7403453wru.175.1572915853592;
        Mon, 04 Nov 2019 17:04:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915853; cv=none;
        d=google.com; s=arc-20160816;
        b=FQ4Ny9hJxgxGI5cX54Q7DyuLNO2UwLOqlvcd7EP5ArNIsX0viLLKs7F89dLRTEtJ8Q
         V4F7flAoC4oddLbYxuGtrE1t/czGA2a5uj4bhy3WxqzhNtAA9CX1v9aksSSqSIzU0X94
         yR8Sm0zIbzwvIXYMH43/VB015xJeEMYxBAkliGGjYJWDxKvaT6d/WpD219VY/n70t7Zz
         8EZTRi0wNwjI8USkUIqJdceMB3R3g+sFbhSs0Jkw7ZhyX7kJxpMgow0ke1/zL5uiXQza
         2gK6E+ZGDgWkkBEhC+p0YI1cNhpui5RLEcbdBxUwxE11tKDLWdxsHF36xiOSgsoZshIE
         YyGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lAB8/rHaGZeFyPil7DZKUbOJiYz4qtBYdoO13fIbAvE=;
        b=SBypOBB2MfEFVQ86/xO7LXbvPyytYuh+JlSWHIbDy/5gLKRzcw2VGMaw8yQGfxujam
         o61kqKkMn6nuMbIR90nfSsLZYu8T/5jZeLEdWIi/56vnTKM3kkeV9xDYnYqebTZh7wWW
         8hdpUE1DtHol0kj1SJTaeem6S9bvATO5UBvoY8YkWKPCnkgbTHKGNtNHW7Ial2WM/+b4
         Jn1eIbAmABxUjXxZkULtPzgMCYCl6mh5LTcP4RLSI+82ElMmCsVVsTLBpsSLE/0gXcmX
         XvWCGh7ib94w5YYrGs3HjwPGXmr3sqWUlK8A2IxfWAiDZ8lUj7tVrO74AcTRVpUibWfI
         ly2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YaU/bfo5";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l10si963317wmd.0.2019.11.04.17.04.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 17:04:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YaU/bfo5";
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id a11so19280450wra.6
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 17:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lAB8/rHaGZeFyPil7DZKUbOJiYz4qtBYdoO13fIbAvE=;
        b=YaU/bfo5OnrcyIx0ENrF6Kk+UK2WJlgnAJx0rxTVqvgNfRBf67hIb85zKVgMzmNR3+
         K1IDYpSjpbIM5RgMZzu6YkQgHVsower074hal8j8PjZmg5PEoZbd+4Bcwv5IcO3fnxSR
         oZtv+ubNgvtmb8ZGMCGUoVcRvWWnYxK21/Gxov/0B+/GESsQkyTxXsvyG6esZ7i011Np
         QsL8jEeGRpVpY/mXd8DYuY9FzMbqWYI1Fai34XzxlkRg3iONLcl9W+BsMmfdv0GatHZt
         lEWar2edSVhoSQr4+zpU5eVpr6bfwhm8dBP8rYu9Cg4Ul8sJtl01F3faPd/xq7QPaIBW
         7RRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lAB8/rHaGZeFyPil7DZKUbOJiYz4qtBYdoO13fIbAvE=;
        b=cyzUJ+Al8j7vXLmnsKf/Z2EOq/VC6eSxg5HojNAfwHAjRLEqPDqOuKNqvZGPeZ796Z
         f7jZjGNzLisWBpPSU/33t3kh3NO865+0rrSgDdQugGHdq8sv1mtaIMbH7amDkJH0Wo6C
         PqvmDBj2n/sfFSZB4MdLx77EYgdmBKZf9pyMCo/z2oVtk6JnZlRG3LkpKHHeicUWwkyz
         T0CRPpTQVMDqQgaNNLWfH945BXAmIm5A/vF7LW9CZp3ba5bIkvVhsSoz1SnjlunBKV6W
         zxAIY4bVrF7i0MgJpDnPwL9OqS7HBuCXPWuByOrpdgIliQYgFKQP+e06S+hg6cyN3y+a
         jOIg==
X-Gm-Message-State: APjAAAX8Mw/37IlonveH3T2s2HRhXaUDHRwRt7QitvBENBJ9qlsVt9dP
	R09WVwKDd5XAkm+BgVuD3r15nVux2WvN
X-Received: by 2002:adf:f147:: with SMTP id y7mr12363244wro.236.1572915852955;
        Mon, 04 Nov 2019 17:04:12 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id t29sm35903399wrb.53.2019.11.04.17.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 17:04:12 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Boqun.Feng@microsoft.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH V5 1/2] staging: wfx: replace 0 by NULL
Date: Tue,  5 Nov 2019 01:03:51 +0000
Message-Id: <20191105010352.222479-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191105010352.222479-1-jbi.octave@gmail.com>
References: <20191105010352.222479-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 0 by NULL as the return value of a pointer-returning function.
Issue detected by sparse tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
changes since
v1 submits change of zero to NULL with no accurate log message of what
was done and title.
v2 improves on log message description: remove the word "fixing", rephrase
log message and title.
v3 gives accurate log description on changes and reason behind.
v4 includes a log of changes done on each version.
v5 shorten subject line not to be identical as commit log

 drivers/staging/wfx/queue.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index ef3ee55cf621..5d29bce65f71 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		}
 
 		if (ret)
-			return 0;
+			return NULL;
 
 		queue_num = queue - wdev->tx_queue;
 
-- 
2.23.0


