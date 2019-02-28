X-GM-THRID: 6663113562499579904
X-Received: by 2002:adf:ea81:: with SMTP id s1mr38121wrm.19.1551377019849;
        Thu, 28 Feb 2019 10:03:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c0cc:: with SMTP id s12ls169306wmh.14.gmail; Thu, 28 Feb
 2019 10:03:38 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZVJU9pMYMzdkARsZmafK5dyPLcUcsjvuQ9yiJ+XPwkIXq2pz9RJeYfHo58V0yknZXAaoIJ
X-Received: by 2002:a1c:55c9:: with SMTP id j192mr64450wmb.21.1551377018821;
        Thu, 28 Feb 2019 10:03:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551377018; cv=none;
        d=google.com; s=arc-20160816;
        b=LEaXcsMslMqdaxTCiu/QeKUB9ToL8APfuDuGPts03oBE420ApUtXe2YzpDnvwPrKnt
         XPXjBXKS1qdrlzAuzIUQsfwOWzaL9AFssOc6lukNSICGej06+zmLdLNGcngsM6RtR7wM
         ABV70lkoilm/Mba0roE5lYTElXVy0SaZ5Gdmdtor+ewJvu1Io6E9RGTe7x8wVqjkkwu/
         UErcCzFIjixH8N+wBAAKy0LN6wVCZr71UJY9fwQUz9YJMZoW8hLwepNM8mbOOBx5HO6c
         +eN/oq460gZCpMRTu3c99Kp4QZzTIHRpIeaPWLaH6DZZbbOdoE2dhQ93k0xy5as0nOZv
         b0Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7+3FMNPArqfup0yfhb3Yfk7u4XWyGn7xyXAMDullWcg=;
        b=lXCPdSiqLOqSinMzixX0sXD3MmoW96GdGYa0QwdcgmeBkOUUJxrofW2E+QfMjvjZ/v
         JlisMeAnIXQm0UU+mydk5RigNM25Ninm8i/hUPLEuz+5PZm8reaV21xPRleM7zdFaB77
         bS0N8L3ziEPicMah75ihx8qxRokGyrZ4yvvV0acs0wfjrTaVNMQtWv8ZVRtq51tSQoh0
         0Xe6dlY5/4mjV0y4KO5QE0yxnSf9Q1CE/7M5yjO3AJcloz3a/qQdG+MBsL5XwhvCnoKS
         A08BbhRKicaGDVgLMNj0I9jhF/43c2KzO14/KXhUYJyrT2z67balh50Ga7Y88UNZOWpU
         8Z6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QnUTJ2iZ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id f185si46711wme.1.2019.02.28.10.03.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 10:03:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QnUTJ2iZ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id a62so10175353wmh.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 10:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7+3FMNPArqfup0yfhb3Yfk7u4XWyGn7xyXAMDullWcg=;
        b=QnUTJ2iZwaR7zPFB8/qkHnIbA8aINnag9hvYLUcq+4emVhlyPxNQuQRoLg342h4gOG
         Z7i8UcdE7mKbOjTHwtPD2p1dVIYdNhBr7j1ObTWojS4svbCIx47o/mUN+dE1eAkxYAzw
         8tY3JhYr0HKd8V7CqpKyGvFfJotUj5sTcF59o5KbA5IPu0tv8aoP+QXxre/tqPSOQtyS
         iy8U5XggLXV36BsgnhWgJaHo94GXIDXEyKtkijyTj1ontlmyqtbz0B285RHDqAdzLTy+
         7lvwcnKQjrCx/43R4ozWSMyAQNYORsu1RjOQDaZmb7rviph7BdtWPivVTLS4hVkE5vJO
         t0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7+3FMNPArqfup0yfhb3Yfk7u4XWyGn7xyXAMDullWcg=;
        b=ONbvyDQPHtUX07VtcdP4G8F9uDUl+sekUXF7X22h7wCwRd0UzJUjjagLG0u3unNVwM
         ERJKrTaBtpWe6jK1c75ZDz1i6DmU9DL/ALIvd8GPZujPBybDuCFvwNwPwvkUezooJgjU
         p46dNuEZQcKdwV68xZA6eGh1TAtI2+aWU1DtA0JAm43195ZMOo92QRTEbVF8xL7H/Hoe
         MoKAjywcr9KO3ZiX/4RNt0iAGnY49eduwe8N7p9fXQshwfWbESNusYZ3oS/g2d5g+qXX
         VaoRTUJZt6fuLZ07E/EKWgSQTh4oO+74VrVbTjFOQ5TkJLZBD+Ko0o/9qc+qbhbO52Y7
         QR6g==
X-Gm-Message-State: APjAAAUcIkjn/H3wQa5xxifQrjxUCe0N4ljsiRNOJd4vRYcuOaAkTl1r
	1s6q8k7FlOatksipR1JBZzx4POo=
X-Received: by 2002:a7b:c352:: with SMTP id l18mr582258wmj.127.1551377018240;
        Thu, 28 Feb 2019 10:03:38 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id d21sm54237384wrc.44.2019.02.28.10.03.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 10:03:37 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: mt7621-eth: Add SPDX identifier and remove license text
Date: Thu, 28 Feb 2019 18:03:28 +0000
Message-Id: <20190228180328.7954-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
Remove license boilerplate text

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-eth/ethtool.h | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index 40b4cf011660..806503895bb8 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,13 +1,5 @@
-/*   This program is free software; you can redistribute it and/or modify
- *   it under the terms of the GNU General Public License as published by
- *   the Free Software Foundation; version 2 of the License
- *
- *   This program is distributed in the hope that it will be useful,
- *   but WITHOUT ANY WARRANTY; without even the implied warranty of
- *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *   GNU General Public License for more details.
- *
- *   Copyright (C) 2009-2016 John Crispin <blogic@openwrt.org>
+/* SPDX-License-Identifier: GPL-2.0 */
+/*   Copyright (C) 2009-2016 John Crispin <blogic@openwrt.org>
  *   Copyright (C) 2009-2016 Felix Fietkau <nbd@openwrt.org>
  *   Copyright (C) 2013-2016 Michael Lee <igvtee@gmail.com>
  */
-- 
2.20.1


