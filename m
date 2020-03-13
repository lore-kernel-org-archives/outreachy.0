X-GM-THRID: 6803797661564534784
X-Received: by 2002:a7b:ce19:: with SMTP id m25mr13031360wmc.134.1584132589963;
        Fri, 13 Mar 2020 13:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls5561543wrq.3.gmail; Fri, 13 Mar
 2020 13:49:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vteW4qG5wDXTSsMYMjPRhx+gdWFLIDRpCyTYDELCirNLOkRnas5iQg1+2luq8IIiJ6r6Jdq
X-Received: by 2002:a5d:69c1:: with SMTP id s1mr8948555wrw.351.1584132588815;
        Fri, 13 Mar 2020 13:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584132588; cv=none;
        d=google.com; s=arc-20160816;
        b=dWHUBQbF9S1AjOuZiKfZTk5KAYOrkagPt8oyeaBvuTRODFDGbHzzMxLPNyx++ooIT5
         Q+Xx3dJ26rYE7ZkI0cmVR0yp743bRw5jkjKmftHaK4pFDKZZ3seNQ6IAWjOuAlpdCEDN
         YgPjpe+zwDpfuodvDeu+KbdA1lNi/Nz75yCMnAQRDn0GWu/eIGFkOwocCgcoCmyG8V34
         tCl57FmXZenDwpm5JrhIY2u1ON8i+fsUqIKXVK9zfsjpYJzzcgwyG+iT2RWfm39qJNPW
         sMZ/l7xN35NsRWg9a/BRyQqfQIbXqWQ9qEIv/9qwUMr9eE58/tHLBmUpqYihYfGdHnfp
         gDRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:to:from:dkim-signature;
        bh=l7aeKKW6RLmQFC/nsvybAzLU2SN02ci3Hf7Eh1CXLU0=;
        b=BLGR2UHZJf6u+riJvvtGxhgJxFzivqsNBRTam4L5LGzjx9Hk0APPk5Bc/VGEh+KPH1
         nnebW+/rfzmQIARJT8pbmPBml/rPjVmX1NqGgk7T5hbqiFloKbnSGEu5wm6I4sRQr/X8
         1kOv/XKgtCL0qBR+9ec8vAwzU40J4PPBEvYI4FA7ZCS6neevcQXGeF+ccwCWa1wTYurd
         QasqdjpbLvvfAzKzUzbu9qRo3qE0uVr8LkFfeW9plxzH+MfDGzrvY08ky4KzSOxSbYUD
         YShD8hMHziq2dhg8+vg0cAoSUGmf7TGLrhfqcO39QAt2d5Vs5BKxLZDYRVRA2pVM8g3y
         6Xlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=GBc0d6vP;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id b81si383484wmc.2.2020.03.13.13.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 13:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=GBc0d6vP;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id 6so11362907wmi.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 13:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=l7aeKKW6RLmQFC/nsvybAzLU2SN02ci3Hf7Eh1CXLU0=;
        b=GBc0d6vPl0rTsnYX8mEBQCyR6znTmhJvlW64A6oVXn6oTinRmOYMRHnPlVyaTnn7IL
         boht38T3VNB6H67MHs01x7CvC9DmkfCiPWbQVGd+1z48GJiC4hUNzCH6AkSBzUJtWYc9
         6sOaqlGodg7Blgz4SvfD15dA+bzbERqfEMLb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=l7aeKKW6RLmQFC/nsvybAzLU2SN02ci3Hf7Eh1CXLU0=;
        b=QHYNvtSJlE4WbmldZTaIWkHCJTGVjf1+U4LlSgeyBjqZAUaTw2dJInih1hDSw17X1P
         rpM8X5ojarMBdi3U3sT14/p2lpMklix815UI4ChHmFiu4L8Ua2HxNa61qaB2Ra8BYzU4
         RTTTKOnu2eL7Ki7a6Ur7Lc2t9X0U4s52wzG+fW7ZzC3Ax5KuEfS4dfAGbdRP0YbMAttg
         cKQWhuDPNMQjBUV1QKito1npMvoLHBE0SeesEGBRWfYsRbAS/P9sUJCd201iUsShIdF7
         PfTyJU7Z0oQ8TbhYXWCe+ms5P702W+/VxNGuFUuPU9dYI87JFVd/RZeN/P0cKfNZQhNl
         Ik1g==
X-Gm-Message-State: ANhLgQ1S5EzM+KmYekZEebhPwxiV4ETGhGy33M1I/HCbS8RFKdSQMfNc
	qzVB+7bDiitDRmJwxHDBMJoK1jQasPh+Pw==
X-Received: by 2002:a7b:c189:: with SMTP id y9mr11824752wmi.47.1584132588189;
        Fri, 13 Mar 2020 13:49:48 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id 61sm32240149wrd.58.2020.03.13.13.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2020 13:49:47 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	rmfrfs@gmail.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	vireshk@kernel.org
Subject: [PATCH 2/2] staging: greybus: hid: remove unneded braces
Date: Fri, 13 Mar 2020 21:49:37 +0100
Message-Id: <3626ab8e2feb4e1a43476c9f1c721d314c345cfc.1584131593.git.lu@pplo.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1584131593.git.lu@pplo.net>
References: <cover.1584131593.git.lu@pplo.net>
In-Reply-To: <cover.1584131593.git.lu@pplo.net>
References: <cover.1584131593.git.lu@pplo.net>

Braces are not necessary for single statement blocks.
Issue found with checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/greybus/hid.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
index 04bfd9110502..9d4ca66e1c8d 100644
--- a/drivers/staging/greybus/hid.c
+++ b/drivers/staging/greybus/hid.c
@@ -290,9 +290,8 @@ static int gb_hid_parse(struct hid_device *hid)
 	}
 
 	rdesc = kzalloc(rsize, GFP_KERNEL);
-	if (!rdesc) {
+	if (!rdesc) 
 		return -ENOMEM;
-	}
 
 	ret = gb_hid_get_report_desc(ghid, rdesc);
 	if (ret) {
-- 
2.17.1


