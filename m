X-GM-THRID: 6673663457200439296
X-Received: by 2002:a05:6830:18f:: with SMTP id q15mr2485238ota.58.1553833358970;
        Thu, 28 Mar 2019 21:22:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:338:: with SMTP id 53ls263913otv.3.gmail; Thu, 28 Mar
 2019 21:22:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoV6TxxB2RRLb3tg99dc7PyQGieo9q6T+vSQLeeg7GbxGL6E52sJf7fXoA7zFyRL80PEzr
X-Received: by 2002:a9d:6287:: with SMTP id x7mr3074553otk.26.1553833358176;
        Thu, 28 Mar 2019 21:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553833358; cv=none;
        d=google.com; s=arc-20160816;
        b=hedF/nPNI/e7LU1DYvIXrwubU82Ww3vggqvCQ/55DAYQ+KkucmG35QvuM1lfWfr+RI
         SR/F6WSgWxrve9D9bNWtXoLG59HOIaVvPNoji+ZNTyOff1fGlSWLrzu9cRXNTMTg6Mnp
         q9e4+Sc8//FD3oU7nCxgQr9L515UMEF2tDzWXwVRz8rClnXeqnF+qYw66baXNjUwtB7z
         g7kZOfjxOsJHGSLgklVx5UYTqOUM/D9NDC/bJm9UiLBGqDMpa7gPCSN/ZlEZ8kmJq8hs
         taQdNYB2bGBF2rHsHwpeO4FU2yY4MC/+1l65ELxxsfeFgAyCs8Dxq78vfdvuPbUfsL43
         ZlyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=dICH04xOMTnb8giSJoKUk980PrE7uVAp5QcVpnIZ/Vk=;
        b=x5s39FxU7uku42OIEUYmXB2VRTY9/W/npCXRi3KeFkuVjNRUqwZqdz2f6CWj1jbYrt
         Y8mzGS8tWFDjxKblpt1PYYLYGTQADjqMtn08lvqCPSRNVg1vdC+SF4nzQ8VRXoXwXOBR
         5B8Bm4YIFp1n9v06SZdNo7g/xBmU/YH+FdM8G0YUKcLDhq1keaHm7BxOwcHvDzAMyD+F
         5iq5uu49pNPJyjfIpiyr8fSAi9s5ErHHRfci8KC4Tub/m4gU40OgX6AA/YCgMNmwbP2m
         WrQSRxz6FCXoJ7Km2wyWDMJ/5xPzLaaRmVlx6MCo8lseH7Su0Qz3+VvQ+G7qmcl9d4+q
         eJaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lhvYZvtg;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t14si106726oth.0.2019.03.28.21.22.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 21:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lhvYZvtg;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id cv12so385221plb.9
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 21:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dICH04xOMTnb8giSJoKUk980PrE7uVAp5QcVpnIZ/Vk=;
        b=lhvYZvtgMZKFrPlrWBYMcJpnCdORTyJJfthtRxFlZKv8pg67y3893DYhtH2IzakCY4
         T3+jc8k+E+g/9lJJ15kr6N/eJ/O/figt126ll0WXWsGBy0X292OkTziXhQ1s4DNQV5CD
         jnMzJgIQ97W+8Oh9TUUj2mkwvmRiFRWojr8GSWmqG7+bApo3vd+5U8fNth+1ZsG2fPI0
         t8bS8FnnJnFJEAJRgvmki/SFKYmjO8lCL1Ycqt1HhMvyldAl+5P7MfL/Qp8bjkHcc0ix
         LiBtU8yV539tr1JHvw4VyCSPWqV63u0aTgxMWywzAz4QjrWAzx/90wDAp66uZo9FoJbN
         zlPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dICH04xOMTnb8giSJoKUk980PrE7uVAp5QcVpnIZ/Vk=;
        b=p4Vaqn95QT4LFsJpM6/6RBMfvr7XisitcSEaD+iH1/Y5YQVZHwWiqQX9toegC6S2In
         Lt/hiR/yD2VJiCFscBOQn/TPevCUgnz9jvGIR+c1DU8iVrhVNxTxnnbMPtwUP324936G
         TkiarAraCGYFg5I8jVPFu/huDSpYOTzthJPANw/kvzYf/9u9nD6WCecsQb6SxqXbe2r/
         0RCKLIuJa2LqRWbeYVeNWrmQJgkmBXagLA4TGgZXg0I+U19DvDPns+77glQPjaIgDWq4
         CzHwpErHiBNT4sTLD9L7IZz9d30SnMtxxGtFeCheXEF1s5FkWlKGxWgfPpO2Zz5Dubl5
         NPDg==
X-Gm-Message-State: APjAAAW4sDIODR1IEY7ySpb3KXW0wPYnqL4hmWnMZzVk9xWgAUfeGQ8S
	ty25tWns3NJzWdXhuMhY6hw=
X-Received: by 2002:a17:902:9a83:: with SMTP id w3mr46699174plp.137.1553833357834;
        Thu, 28 Mar 2019 21:22:37 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.36])
        by smtp.googlemail.com with ESMTPSA id m16sm1130320pfi.29.2019.03.28.21.22.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 21:22:37 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: wilc1000: Avoid unnecessary braces around if.
Date: Fri, 29 Mar 2019 09:52:26 +0530
Message-Id: <20190329042226.3503-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary brace around if statement.
Issue found using checkpatch.pl

WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Change the word in subject line from "else" to "if" statement.
Change the word in log message from "else" to "if" statement.

 drivers/staging/wilc1000/host_interface.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index a10c31bce07f..150ba033198f 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1399,9 +1399,8 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
 	if (ies) {
 		conn_info->req_ies_len = ies_len;
 		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
-		if (!conn_info->req_ies) {
+		if (!conn_info->req_ies)
 			return -ENOMEM;
-		}
 	}
 
 	result = wilc_send_connect_wid(vif);
-- 
2.17.1


