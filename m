X-GM-THRID: 6536419046106071040
X-Received: by 10.176.66.133 with SMTP id j5mr13231171uaj.120.1521878653028;
        Sat, 24 Mar 2018 01:04:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.76.137 with SMTP id y9ls1035481uaf.5.gmail; Sat, 24 Mar
 2018 01:04:10 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvf67RUtkc0RT3Qzsr9P5z7dgjsn6BxMUVfXm0Xf1JOoWV9w/5T984DUz1/uCHZSc0c3XfK
X-Received: by 10.176.80.177 with SMTP id c46mr8535797uaa.75.1521878650249;
        Sat, 24 Mar 2018 01:04:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521878650; cv=none;
        d=google.com; s=arc-20160816;
        b=cKK2PjWmdzFc1Ke99dAoRvNA1/oBociKu7LmJqZIZSk/DmiVHQO3V1/1odIDvfS2Gm
         weYnT7Jnz7qNrL0tC+s4+UrV3BtupJJYyMoiLjucW8KZwXct8onNz5PC746i6A/ZZuFs
         vsxamFmWLMKnMR7KFl9saLtSi+mGSBEe7Xou+pRnzOn1i0LJN4CQaMLRUmoYEuBtIpPL
         pLQc/BznAIJYWW+yvFjYagPbCMSIOmPAOXY1fO8GbtsgU49aaKJhx9/egApHmVf1JsuC
         O+5mabz0AZMKDXBSkFZAdRorbYMl+1o092v4w9FeK0+xOwrXAUdgc4kDwF6zZCBKk3/1
         CcBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=3VAyftcEtdzLXYbfx7sgLr1lujMA/C+a9X/UbceQisg=;
        b=pbXQdi/SsJc86B+o4NbmapYNHXeRsWRHFkfor3DpVKY963ploSgYdYkUh4X64kds+Q
         XcbcmwqNhktwCizCpvJWxKaZME0YGCsRgwyP/buUBAM6/0iALHfByt4nI/4OqSKUSwj6
         6Uj2l0glBxr5vXGGrtMpgDWyZ58jMZV1biiH/qfa6kpm9H7oP2iJOgu9RggPOAjckQGv
         JRylmcfrWZ/vj08HWCMKWBROElyPG+gE+P5F1kDNpV9aNoDtDz8Tnr5ZhQ/zPqN7cWGl
         d6KaYrJOeRmmMcURfgDZXnZiCzWBEx63YQAo4SvV9+mUElkzG8fs/XfHeYm6yYViFviU
         o8qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=TYsun8vH;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22a.google.com (mail-pl0-x22a.google.com. [2607:f8b0:400e:c01::22a])
        by gmr-mx.google.com with ESMTPS id c78si896548vke.2.2018.03.24.01.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 01:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22a as permitted sender) client-ip=2607:f8b0:400e:c01::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=TYsun8vH;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22a as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22a.google.com with SMTP id w12-v6so8826629plp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 01:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=3VAyftcEtdzLXYbfx7sgLr1lujMA/C+a9X/UbceQisg=;
        b=TYsun8vHgyyKZhzIbEygZ419GDwVuzsFC5wV/pndxvF3iCvy0q2BXR2MmMy9Jbh2cS
         pLBD01jDQzbqlFDNWPlKkNQEoOWL5a03ai7bbN5vbYe0u8sCrQRKK4vxtQnQtm008gTN
         yJPUUUAZd2duqo/TDEaDxdLgdzXvWsQOKPuOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3VAyftcEtdzLXYbfx7sgLr1lujMA/C+a9X/UbceQisg=;
        b=rLtinDZ6rBJVysYG+5xqkBsa4/rpk/1zZBVxM8Zfnv7tNk/3HGNNdjV/hAKbHijjiQ
         06xgwrdZHod/agZiRF5wh7gX4k15LAG7CrnbiuMh4fyFZhaLG9rgOQtEFkGVmMbnUaim
         KGTPDHB7yviN3HAklJ5GxK/7kqdKxBMakMxkSIYRNMgsOavz4TO4FaGgdYXu9egM1DZd
         WoRwvRG85O4d+WtDi1c6OEDUzIsFIFMRymm1u52pD7tVySsM0KZEXRwnRckVetfszgeI
         3bVFDKCDQyv9Z/eM9FMqbhMAKQOl3B76hYT9XQjlf2WydH3Q+N1QhhVsknAWIp+MrJQw
         YoEw==
X-Gm-Message-State: AElRT7HSHBPcYT7iTGOo2MjgYwd7cs4PA/vfzFqcBeWgGup3pyEb5atf
	8C7GIuVX/LqL5a2VHone3s1ezODT
X-Received: by 2002:a17:902:8b82:: with SMTP id ay2-v6mr31862545plb.12.1521878649847;
        Sat, 24 Mar 2018 01:04:09 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id h6sm19288806pgn.65.2018.03.24.01.04.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 01:04:09 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: mt7621-dts: Replace spaces with tabs in indentation
Date: Sat, 24 Mar 2018 08:03:57 +0000
Message-Id: <1521878637-21803-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Replace spaces with tabs in indentation.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index a6b17ea..ebcaa8b 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -142,7 +142,7 @@
 		mc: mc@1fbf8000 {
 			    compatible = "mtk,mt7621-mc";
 			    reg = <0x1fbf8000 0x8000>;
- 		};
+		};
 
 		uartlite: uartlite@c00 {
 			compatible = "ns16550a";
-- 
2.7.4


