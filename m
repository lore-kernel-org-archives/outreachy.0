X-GM-THRID: 6675069517668810752
X-Received: by 2002:a19:7418:: with SMTP id v24mr637031lfe.3.1554160732879;
        Mon, 01 Apr 2019 16:18:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a8b:: with SMTP id p11ls1410682lji.11.gmail; Mon, 01
 Apr 2019 16:18:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwiQZc45L7seosAK4zx5E+D6Jtb5vjf6h5YI6J+fm8g3s5pyt55oeI47yOX4sJpJxz5rrCx
X-Received: by 2002:a2e:460a:: with SMTP id t10mr1181014lja.28.1554160731776;
        Mon, 01 Apr 2019 16:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554160731; cv=none;
        d=google.com; s=arc-20160816;
        b=OAy/zHUMd7NWvXAF/Crv1NZWyfsmgjQyI6mgAIgYjD8o3CtLxZkwXrLzLOKecSsVom
         zP019dCF/oohaz5txizszsG3dhs+iYHrdQL6t7PnGTfgkA06BVbjhZ3st9ztwKsgGq8f
         Y6zBxzAUpkRUPgHq9QtoMEAfolFYpx1q2cm3nZSv9cRRNnkrGqbkdIgUa0Jtalk1h6zE
         HXqP0WHpUMXBLCBQrCTLVbs2DvENbJDIvdqFcbwo/J0iW10NnCAciGM2667dnFRki6pc
         ziZBTHvmyoX/XIz7Pzx0b5qklMmvK9gXbF19iEBq+7CDM3rJBoJtw0dewAQmVYv5AYIN
         slrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=INWTTXQ4z2AIYTXqCiMSoLT+PGxaVPZlLTjmhL2+828=;
        b=pJBZqres6XM2QbrNb56q3A1Gs9mLaS8nDicz1BcqUWe1nrXHwK7GqNS0BoyUPctvzP
         LrOcYzGrIiZqeeFQow09sWvvAvXKVHwr4DpxIz6U1tRnSmEoDCAwEZGdOgL9zYidXegL
         bne5RL7zREwBQFmN8VOqnvZUYwCM9pNG4+hS29NGA6ZBczpPKR/f6BscCUXe39kQ3l5H
         DS3biQ8HNldINU6V5HQy973rW7xjibHnnLtGa50vYVIplz/gCY2IB1GnR+T8AqdVVxLu
         4a7G/Ht9xoTjwnE9/78eh92QX4ezHoK4vQVlqihTNAEOzHjDgi9/qaXi6zpJoAeSbuzf
         RsWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYASFyuD;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id o16si703620lji.0.2019.04.01.16.18.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 16:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYASFyuD;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id z11so1192202wmi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 16:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=INWTTXQ4z2AIYTXqCiMSoLT+PGxaVPZlLTjmhL2+828=;
        b=sYASFyuD2Kr9TBU1Aten6lmos7FZviemWRWjwRkOcOhwF9KsG62zUGtmz6Z9721qk/
         74DofLt3/1tImlWKRr3QM9/7Wfjx8sux6oo2P+3BuhZaSC9hJ86C+NpRnWwg61z4mp/6
         CG5TF7vDI4HHXg3EE+p49XkZZOocF0mCuiO9sg3DeL9y16k2u/plhxoOXoA6aq2j0WA0
         OzuvKXmSXfDwd3OXIibj2+UQXUrtcSbrTVf6v2LqVq6OyKj0Uc+7Y5gC6PhDZe6qUU7o
         iYBjnTXx/fk/OlbE82Z+uqyol+QgS8PsNYqf3GhwNinf3JNQWpQpjTCzCrqRurzBXv84
         aQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=INWTTXQ4z2AIYTXqCiMSoLT+PGxaVPZlLTjmhL2+828=;
        b=KnjV7WvExRYPYqeyw21CNeiwmLs2RCrKtxZu3lu1G/ZDeXs9pk+GKs6KudGfQoptmJ
         dn3Ez78bFKowp1okYaKWj83ur6JFMF86sawUM0ozVkT9ykZQN2xxWbFEZJuGZIz8w46l
         6xPwFm04mf/UIS3qcVz4CkCvsfIRCJbM7Nru661ag54FUlt4prrrwcbH540zr+2E346S
         nqr5tVYDCJZQxW0jFt6InkcldyEIFEuMU2bslDzmDCEROmMtC4jm4DMbpLjFC6vJXAuw
         39eBJKLroohOWFIRo+9j/zknz1egmJKqh5zhtuEq97HCAzFIA1pEvWYzb3o6X7SnkcgB
         y5ag==
X-Gm-Message-State: APjAAAWS55rgWq6KdaPujUMSXts1E1coF+RD+PBRBc/vU8gwxsZ25TKx
	BPZxdSKUW01A7+HU0Y6Tqf0826A=
X-Received: by 2002:a7b:cc91:: with SMTP id p17mr1322163wma.38.1554160731098;
        Mon, 01 Apr 2019 16:18:51 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.lan (host-2-103-80-5.as13285.net. [2.103.80.5])
        by smtp.gmail.com with ESMTPSA id v14sm10386365wrr.20.2019.04.01.16.18.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 16:18:50 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v1] staging: mt7621-pci: remove comparison to null to fix checkpatch warning
Date: Tue,  2 Apr 2019 00:18:43 +0100
Message-Id: <20190401231843.24579-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

remove comparison to null to fix warning
reported by checkpatch.pl tool
"CHECK: Comparison to NULL could be written "res""

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 379ae780c691..03d919a94552 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -275,7 +275,7 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 			break;
 		}
 
-		if (res != NULL)
+		if (res)
 			of_pci_range_to_resource(&range, node, res);
 	}
 
-- 
2.20.1


