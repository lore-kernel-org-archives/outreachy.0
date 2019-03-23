X-GM-THRID: 6671577370158170112
X-Received: by 2002:a6b:3106:: with SMTP id j6mr12322832ioa.147.1553362858422;
        Sat, 23 Mar 2019 10:40:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:bdc1:: with SMTP id n184ls5086070iof.0.gmail; Sat, 23
 Mar 2019 10:40:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyyhg6WQjTO9YTfGhpVl9twXKXXugUbHRBq2+WGJj22tBBkRPWE9HhQC82Oc0i9NNmwDqxs
X-Received: by 2002:a5d:8918:: with SMTP id b24mr11938713ion.241.1553362857594;
        Sat, 23 Mar 2019 10:40:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553362857; cv=none;
        d=google.com; s=arc-20160816;
        b=m3g4eIH9Lx7bEiTzHl7HUE7aJwhJGpsIZb4FiDOLYXBJJQ+8SE12vzNM7X6XOu9ID/
         BCtaHepxmoAPyk4Q+FwsuWQ4btZ+752sEfqilZt5kY9EfphdoqOLn9ZUwCLhfrUxo7kW
         +Wn1R86hCOVbTEvmI2ACmcUU3VNnJLgAyGG3lRoao+qF9GcGfc/QGyHyBGVRH/Mi7fgi
         /f9WAUrMptlQ1DPqSGIuM0lWkq2MKZGuTeZACij+hS3yw1Tq4oFUK1euneSdzlARp0dF
         2064urh7xJyKDDTOa6ptYQJkX5I0/Ljm51uuXce4y2R2JVkekfMT0XPq7gLpxYTN37OI
         89OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=OfrN0gonUzsYIwBsQt+O2eqGQAhIZuf+ebar8foF9w8=;
        b=yF4RMVqjKxLVqgi7L/hIIaRdztJ1c9tpfHVRhNNE/eQwOQzwfHeCtXT+w/pdnahLZ6
         2LT0U1kTK/GfxiwSnEP0nX9+za0DWZtvBvWVcDLTrvfiJ82Ows+YmUNLLuIUEWnK2zyv
         zslOjwxVX8mApFI5WRCxWTDm3707Tf2pZ0JNI74hG7yRAgqSUDeWsYyevgNS20nyg+ct
         WXAaFEEEaVKEOTg++4cMNBXvpC/zkNFZr+vMaXohcV7Ddk7yrS2UKpUsBOCZ+yOmwsUU
         aU5jmLN4h0HZ6dfGbskuA1myj946DqheDAa5+uChYKvoRDR29nUC7LxOSv7jt30kLnn5
         ZlBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jn31JaeM;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id u1si893587itb.2.2019.03.23.10.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:40:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jn31JaeM;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id p6so3620644pgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 10:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OfrN0gonUzsYIwBsQt+O2eqGQAhIZuf+ebar8foF9w8=;
        b=jn31JaeM7xcjMcBlARvv5sRmI+dxKtZlg3bc5MUc7joJien/JT7g4QKpppyKqQ8SXZ
         s0DVmCzdPGB6N0yA02/oJGckNDSA8K8BK0wQrlr3cQ0nR8alzb7RE6AzQYLWOIwPu5d2
         98zj36sJKD8OLV4W6aBXX8ZUMNaWk8lfUy1FC843LVK38jWve7hqfQO5w3BIhjVR847G
         +ZKU6qcqPSWM73z2kol0Qaa/SWzhRrwhhTP9cLzTBx5bZXYn1fDu1thWycHjBsMZYXCj
         B1IPDDEg372lpXGp/X/FDrq+GpAtRxB7IBOnYt74raH1WjKQ3ZuhUZx7grjRTnevEafr
         ZbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OfrN0gonUzsYIwBsQt+O2eqGQAhIZuf+ebar8foF9w8=;
        b=HvWZ+d8utbJpUFuldX0Gj6hEbEWbq7wti7+Wx/09PF00Y0wKn32TRSHSPrqQijpBza
         JhMvcE7KMMN1nfvu3Q/ZxX3iyxn0wtGoD0IyqEYCoxpDO805sMSL+bhGi4wu1+yPjFjB
         zpY4b+jU7cR2igJJDUdlhe4TuQLr9c8uYPgWnvj8A3KDSaxpEK+zZCHas1rVjNps/rrI
         CKD1wvXLwvYdB66jEbjf9+FlK8h+ehD2p8QHEzsh+tu3grim3gsRThSallR0qUWBv5HQ
         kAEluZgkaqGBPQi5i4QczN/FWaVZ+RnImmhCqDMAvQbehH9D5hZaWUYID4sq0XENMnGz
         PKDQ==
X-Gm-Message-State: APjAAAUugaldKnzypSoLmXQPBjTViMCATx0EaGR09T/V/WQJpTe8Zrck
	/LdTk6opj8rnwNdTVgzRRH8c12yQ18w=
X-Received: by 2002:a63:c24d:: with SMTP id l13mr15314934pgg.166.1553362856799;
        Sat, 23 Mar 2019 10:40:56 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id 138sm22961188pfz.18.2019.03.23.10.40.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:40:56 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v2 1/2] staging: rtl8723bs: include: Fix a space issue
Date: Sat, 23 Mar 2019 23:10:39 +0530
Message-Id: <20190323174039.5802-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace 'foo * bar' with 'foo *bar' to fix a checkpatch warning

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v2:
 -corrected the spelling in log message

 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 1f53c1c7b0da..7d54cf211315 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -302,7 +302,7 @@ struct recv_buf
 
 	u32 ref_cnt;
 
-	struct adapter * adapter;
+	struct adapter *adapter;
 
 	u8 *pbuf;
 	u8 *pallocated_buf;
-- 
2.17.1


