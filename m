X-GM-THRID: 6536479698699943936
X-Received: by 2002:a24:e445:: with SMTP id o66-v6mr6668962ith.40.1521892775094;
        Sat, 24 Mar 2018 04:59:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.2 with SMTP id d2ls2403590iog.15.gmail; Sat, 24 Mar
 2018 04:59:34 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/1DXR/7gYb7zqCuKvxzIt7+ZoCVUaaqVAUU3DG1OzakWb56gmhK4k02+mGLsnydMtMdvjd
X-Received: by 10.107.139.129 with SMTP id n123mr1029948iod.115.1521892774016;
        Sat, 24 Mar 2018 04:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521892773; cv=none;
        d=google.com; s=arc-20160816;
        b=BN4sO+xSNmhi5qM1ChWTLfqQpJc6AOFFmEdqjpPnnemgRIWu6Sv/gW/VNFyKLVKZ2J
         cuvduWfiRBTyPaOOC38MVX9ms1HOv+Qf+WN12fVBYQaSoN1i3ar1DSh7wpb0FTHqUT9v
         6s5WlwrseXNC5NzoTnsKnxMfwSZAv8mnKydZ5LES/ZwCZd3GxsXNYHiOGHLVoV3u+Nn2
         nmEBIqXzxyws4pcX42zgkVlPCPyBmdaT69PrkK/ThLl9r276ScWUiJCWf3BWNHZGkUhG
         s4qnlSJKLtWbZZTp0eH/lORPz5hjTI0512KZ10I7nBWbcWgGw1lK/RaVoNpcqO/iA27C
         MxDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=M4FD7ioj0/+2lxXd4xV5vYtQPNT09pPxYq0Yy0CAf/c=;
        b=YgvhgetVqroNSDzdjXNtOKc89uVj0dbgteMHqMFEWP/7NwMK+UTDtlZv2u6xciuMg4
         Vaa1Sw992tVU69S+ZTqnrOBNk+J8wi1+z8E61tN4H+o/JEcmbM2DuzMrK8Q9s5br/oyx
         AVXNPTAaf2xQ6vNi9GYjMZWTXXS27mf0aOnLSfqwcbi55gRYIkZyatPZQq9HrOeHaJGk
         XU+usgZTCy29FqZUFkDIxM29Zetg5wSkkiJc4QXZsp0RUZ4lcpmdT6vfxqU8uOSb7Cpk
         P2Yiw2fCzDh2p2aby4PStoO+sP/0CWJzdmQQ1QycdiUa72gr9CIKBQI7monCNa42thA3
         HSzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VWFhlEFi;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id k9si329941ioc.1.2018.03.24.04.59.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 04:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VWFhlEFi;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x241.google.com with SMTP id a19so5554455pgw.6
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 04:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=M4FD7ioj0/+2lxXd4xV5vYtQPNT09pPxYq0Yy0CAf/c=;
        b=VWFhlEFik6T7K8qPhu4lGjTygiukqPE4MWt7CeT+Wv3OBp3ranbUTDXC5+LS0tkTaH
         HdeuTnCvAtlp1hnMZBftxjq6bhKf1CVHMwzwUU0nWLnFWjNnE+FIN+DsIrPUegSASG+E
         eK+CNvH+QqDfXtE8EZIZWov3l8Y2YCBT4Q2aQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M4FD7ioj0/+2lxXd4xV5vYtQPNT09pPxYq0Yy0CAf/c=;
        b=SKrVxQQksKkJdwxvENAR7tA6dHlrXRX1tsiOoSxIu2qwFU1nDBQyd81ek2DkVzzgWB
         i0zfPKEwnzYh7NNWHUqtmqJOXdGJ41NmUYsy9WXM05RSj4/m24oGTiXMmKICI+339MqU
         mDOCoyV0wDbuvTYi4WrQPL6vS+Bbr9Y9ciXsx4kWCAkjugbIpD+C1boDR82mqGtQjD4K
         NrgMQ/UIbpNVI7iHoqovL/E4x4Ic38fi/i0Qi6Jy0Txd5eOHIzoanqgMwY2y7ivaogD9
         Q/NBUOMUF7ImVjeudUWfFMEej+XVRRpRKysMaCSI+y1c/zvSz+/soFJy/C1miGM7PR3D
         Lw/Q==
X-Gm-Message-State: AElRT7HAmMAOw/GOgoVFL5FyDekU+pFhPKD2TPYvF5ag10X/01CRksNS
	z/hbIugBtFrhuSA/IGRjNWWEqA==
X-Received: by 10.99.170.9 with SMTP id e9mr11495165pgf.331.1521892773218;
        Sat, 24 Mar 2018 04:59:33 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id x137sm25460453pfd.162.2018.03.24.04.59.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 04:59:32 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3 1/5] staging: vt6655: Delete unused enum CARD_PKT_TYPE
Date: Sat, 24 Mar 2018 11:59:14 +0000
Message-Id: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Delete unused enum CARD_PKT_TYPE.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - Deleted the enum.

 drivers/staging/vt6655/card.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index be5254a..07d9fa0 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -39,13 +39,6 @@
 #define CB_MAX_CHANNEL_5G       42
 #define CB_MAX_CHANNEL          (CB_MAX_CHANNEL_24G + CB_MAX_CHANNEL_5G)
 
-enum CARD_PKT_TYPE {
-	PKT_TYPE_802_11_BCN,
-	PKT_TYPE_802_11_MNG,
-	PKT_TYPE_802_11_DATA,
-	PKT_TYPE_802_11_ALL
-};
-
 typedef enum _CARD_STATUS_TYPE {
 	CARD_STATUS_MEDIA_CONNECT,
 	CARD_STATUS_MEDIA_DISCONNECT,
-- 
2.7.4


