X-GM-THRID: 6950220202165403648
X-Received: by 2002:ac8:6f59:: with SMTP id n25mr25284631qtv.307.1618224261376;
        Mon, 12 Apr 2021 03:44:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:f20e:: with SMTP id m14ls9025617qkg.8.gmail; Mon, 12 Apr
 2021 03:44:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOUf/dfRnlkF6JEhJ2Nvh8Gu34iy1Ov+g2wNNyBRUo6IKXw3b7L4HFCWPB/YzQocaE0AcB
X-Received: by 2002:a05:620a:2013:: with SMTP id c19mr26398270qka.403.1618224260603;
        Mon, 12 Apr 2021 03:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618224260; cv=none;
        d=google.com; s=arc-20160816;
        b=Wm/IiiJUxlby1mIhb3/uObFgKPTxFBT8H7uFMCPBUvf9UAIf00pJofvqO3c5uSx7Ie
         c3O+1CaqkZF6f3OcIfITbTKRrd7o0hnZMOn7Fx+bA9r5u1q+OfuEt27gYV/U4zyM1+BJ
         o1J3fZ791Rcai8SuGliVCTWyqBPESmL3vld1yCXx13RkS98uEHAvSGk6OYSKyXO/wgcE
         gqd5LjfRTZSc8/ZeAj9mtTUAtFt0lTZ01hpqnCfUSAHT9Z7/w1pcvGhZk8aNfXxpZh28
         TvxftrIZRgtz3dl51HbcNAgJmfMPuzneaR7L6GZcfnORNa22ogMp2O4d2gzO+VNlIAUh
         jNVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aK68x+At4MGL6Gp4oOcXkofX3goWjEGh1fkkQH9ZBPk=;
        b=tzhLrSiRS7hlHMalQwljCZpEMzdaSX1CBdd4xijuauxfi/tbrqmhgBibh0PkO1JPD5
         FX7Nv7/jEsH+noDMZF5/QOKy9yhKTWK5nhnjxP3x/HbIiRAAJTT2EI+L52WTvzdmXuzb
         x391lEsPtMEQYAoWXO2FXdOAYA9vEashHrRfmFwgq57eemDaLOXTF5cWef7xN8xSYa/c
         kzwyJVvVTW03gpu9AjH0mVFfgGoq2ycik1VLRmHbWtEBXwF6iWLehGiTxabh+YyKd6kn
         Q6HN4x7FxK6hw1AvfxADFGfIL8aZIJSLqEknkf0C7QCb7GiuCuluR30dpgpYKXxVaA8E
         SX9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q93B1RXj;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id n9si797909qkg.0.2021.04.12.03.44.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q93B1RXj;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id t22so9076646pgu.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 03:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=aK68x+At4MGL6Gp4oOcXkofX3goWjEGh1fkkQH9ZBPk=;
        b=Q93B1RXjm2AuT5o48BAguqnNgVw+uHuSd6eXJ9ucN5bxdNe5BvxH8s/Qug4GLJYb1C
         k+Z/49Dt1BMQAUSp+KA7bm0CZc7nAB6wn9ogdZwCT+Jg/S06aRstk97Ql33T6/FzwEFA
         cz43u9KFfiVQRf7wKJ9wi+DNyb5j/TrZYrERwWGjCAqBy9sUGm7ErR1t6CRY3D/YNEMS
         JHtrF+c12P+ZW8BkbNkTfM7qrQybpSjHAyOH2/YpDJlsPosE8TM6rv+zrWDPcZ+LC8eq
         IDMkKWLyJPwDCYlDFZfSB7AdGt4+HqKypyeI1lT3EaQyTI3B6jwMUjLHjdA7T/0l60b/
         d0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aK68x+At4MGL6Gp4oOcXkofX3goWjEGh1fkkQH9ZBPk=;
        b=Jv4XWxDvc34QcniU3YeE9TDjb/ZTdd/nYGi87fbI1Vcz/VJkWvQ5HwGRQ1qXok5+gd
         IHZJQkzRjTZzzD71XjgARUjREuYvXeRZ0pgGwwWARUM7l9moqdJjrVnP5m9d+h+hJX03
         EwgkDJlN434yz6XV/rJgxaKX5I5izu4V+RbmLtfVC+t8YQSQaYaR4nodZUMiIQskDLwQ
         BRN0nqJyNm6gVwyk7gFnz/QPHKjM435HDvJ8A5gEEciOhAhSJJSfCHvSfFNgSkx7ejL4
         eVG146YvV6Iy4M/B+ANgB/EIbTKm9KSTLGfG1Xj+IOHP+BlrHj5kUCaHHeFlLOnOg9zF
         67IQ==
X-Gm-Message-State: AOAM53325bhbuG4dhJkyp42A60Cp0Jg+a1FYq0ArauMnLQdR7Fu/9M4t
	sdokYHhYfMgoPo5mLdwjPkfXNLq8zOZuxA==
X-Received: by 2002:a63:7e02:: with SMTP id z2mr25523575pgc.404.1618224259724;
        Mon, 12 Apr 2021 03:44:19 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id gg22sm10685553pjb.20.2021.04.12.03.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 03:44:19 -0700 (PDT)
Date: Mon, 12 Apr 2021 16:14:09 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: nsaenzjulienne@susu.de, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 1/2] staging: vc04_services: remove trailing whitespace
Message-ID: <5a54a06bae846f1f037165c0c7ba7ffe5a55a4a8.1618223171.git.mitaliborkar810@gmail.com>
References: <cover.1618223171.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618223171.git.mitaliborkar810@gmail.com>

Removed trailing whitespace to adhere to linux kernel coding style.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- No changes.

 drivers/staging/vc04_services/interface/TODO | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/TODO b/drivers/staging/vc04_services/interface/TODO
index 0bcb8f158afc..adb28f46ba67 100644
--- a/drivers/staging/vc04_services/interface/TODO
+++ b/drivers/staging/vc04_services/interface/TODO
@@ -27,8 +27,8 @@ unused.
 3) Make driver more portable
 
 Building this driver with arm/multi_v7_defconfig or arm64/defconfig
-leads to data corruption during the following command: 
-  
+leads to data corruption during the following command:
+
   vchiq_test -f 1
 
 This should be fixed.
-- 
2.30.2


