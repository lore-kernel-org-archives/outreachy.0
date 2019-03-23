X-GM-THRID: 6671552795749908480
X-Received: by 2002:a81:9982:: with SMTP id q124mr12433848ywg.390.1553341931248;
        Sat, 23 Mar 2019 04:52:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls3555376ybb.12.gmail; Sat, 23
 Mar 2019 04:52:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwpLvLVUuO2s5O66EvaM0r+LIANUqIyaYenwHeKIC1RnfOGYJ1RWi1FI99iiS2EZiT9dBN/
X-Received: by 2002:a25:ae52:: with SMTP id g18mr12133708ybe.349.1553341930319;
        Sat, 23 Mar 2019 04:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553341930; cv=none;
        d=google.com; s=arc-20160816;
        b=mpI8Vd6dJLp1+28vDhmyh0Uo46ySQ/y2EIw0eMhpI4MArs3LPvbL2uxTuAFlNO1V6e
         lgmT2Ql/IkcWGhQ/ngp6pDObWwzeoWRGcTIR62LrjeXLQyWy4uAGG/++4NSVHrYko8qr
         d82s76rlJMF7Vq6yYXwrpCvZgI+Fibc1J5kwAfJawLVT3yuCmnnJZnonWOU0RM8QR64R
         0QSMXgkOJG9u/69lbBNk+rQ2OuEqp4sCxxKOpXERXDzgUv99q+X1oRsI21x9XleiL/9v
         uGah+htraafuXiQoYwAKiRdZXRlWgcDR7AGEjHycxAKW2I1+AGZP4Ng4gpEWWvHhLunz
         WUAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=MltFq4YcfrmsrCdeHVZDvJcwH/VefCp+8XrYa4S8H8w=;
        b=WgLI0gyVbIsdKkUlNLyez/MtV6KgA1ZNXRcfSeNkqUx3/oQzLZ0uA13xua2y3lzEUp
         +2YcYp16+5BYRQrQlU1Ic5l6yO7QJgsx3AUrnqi9QfDvpJK4FNzkm19GbjjBvT7xYjht
         xqYq6/DK1TWswta7cqyaISHSDR25y2xqBl0UJn78ojkHQ467OQ9DPFoHNb105C/tCd2j
         EFNICWazcQ48wgXIWmen2Hm994hyn2j0r23g7/t7t1ePJiXxpbAcCuWSTTqqABVVxncV
         WIt2ucn4OFFv0BfElv6A3zF+rv2n8CevtbmazaQ5qMc0XELh5qyApWdmCbSEBcdG57uy
         Oj4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruXAlCh2;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id l126si663514ywg.5.2019.03.23.04.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruXAlCh2;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id b3so1900242pfd.1
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 04:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=MltFq4YcfrmsrCdeHVZDvJcwH/VefCp+8XrYa4S8H8w=;
        b=ruXAlCh2fTztLSUGiO/9PvWwmFBPimBkZE0vEbFLR2k3Q7RoXwFKBWJXRh//1dqDvV
         MghHtPIorSYTsI6jBEer9J87GzthL7cD5aMca/iFzWWORlOQ9BbNqJBljA3hleR/WwZE
         2Sd4yBUhpc0id84jY6beQCOZs+8QHYniE05cRYUj+TDZh0hzUUpHyyFeOwL0o0gn2C/O
         scHjpLlwtZNw0mz8PDMzHaTYCdNXC2VmAJSncGkQgnDOeJICuMFVP3uW6b7tlubjiywP
         v2iA7BmZg9M6U6UHdseCcLAlang4raEuKaOg5Pn9RRZO5/Ayci3/epj71Wn4fFkFLQEc
         t9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=MltFq4YcfrmsrCdeHVZDvJcwH/VefCp+8XrYa4S8H8w=;
        b=btkZBUxo3dmpf8XEcQvghG+bytul9lUUn2Bas8qmW7bEwcjWH6+CqRnDjnyTtaw1JA
         M1EVssTifgWEuxG/Jk2VRVm0dAFuNxf3ZTej6LDhUZLg+zDxsXss02CYzP90wBKVCqAM
         X+uNYthMghVmvkPc5QbG+0Xj/0Dm2+PEZ7xkjft5UAA9ERR5Pg0qJOUptqnzYIZ9K/+n
         Y4x3eqd9kZOGV+ZadTXMZ/OVKQWxvmIjou4u5wtrPAp2fTyV2mUgDnQ4w/+mSO98OJxp
         SMj8bVBJbDfajXmcQOY24KmxoiCJXv+mXj5u2uz7AwGvsZACNQ4lvbfVCAQtRGxjrqTN
         8eTA==
X-Gm-Message-State: APjAAAXoYh9D3Ek9UYfSLbRdxVgJr+PRJvC0lRPcxm4+QNR8+70jXmIU
	dimV2pv4aYxIE5sNTGtoOlE=
X-Received: by 2002:a63:5349:: with SMTP id t9mr13822118pgl.262.1553341929900;
        Sat, 23 Mar 2019 04:52:09 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from localhost.localdomain ([42.110.231.40])
        by smtp.gmail.com with ESMTPSA id p86sm20220456pfa.104.2019.03.23.04.52.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 04:52:09 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [PATCH] Staging: rtlwifi: base.c: fix line over 80 charcters
Date: Sat, 23 Mar 2019 17:21:59 +0530
Message-Id: <20190323115159.9331-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

fix line over 80 characters

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/rtlwifi/base.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
index 35df2cf60619..5fbd71c01ff3 100644
--- a/drivers/staging/rtlwifi/base.c
+++ b/drivers/staging/rtlwifi/base.c
@@ -2130,7 +2130,8 @@ void rtl_watchdog_wq_callback(void *data)
 			if (rtlpriv->link_info.roam_times >= 5) {
 				pr_err("AP off, try to reconnect now\n");
 				rtlpriv->link_info.roam_times = 0;
-				ieee80211_connection_loss(rtlpriv->mac80211.vif);
+				ieee80211_connection_loss(rtlpriv->
+                                               		  mac80211.vif);
 			}
 		} else {
 			rtlpriv->link_info.roam_times = 0;
-- 
2.17.1


