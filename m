X-GM-THRID: 6807521221589073920
X-Received: by 2002:a19:41c5:: with SMTP id o188mr3573632lfa.52.1584999550532;
        Mon, 23 Mar 2020 14:39:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b042:: with SMTP id d2ls3130640ljl.3.gmail; Mon, 23 Mar
 2020 14:39:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt3YSgrfvOwKEEPuHttrq1vTZfdhMLdmLoN9gO9lbzDvqLiyqR6rGkNvg40kuzAyNAj+Mcm
X-Received: by 2002:a2e:9ccd:: with SMTP id g13mr6023720ljj.147.1584999548860;
        Mon, 23 Mar 2020 14:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584999548; cv=none;
        d=google.com; s=arc-20160816;
        b=cGwa+f0r30aIdYvFj7aIO2f51rG7KauItAURbE1Llpo/ulrR4xyxjRVi5KZCtYtOUD
         Ecboh0DS60kjnoiiOvz1DNlmGKvYLEoLPDTND1HDLrPYN2ikTJnDhiWQmQFmu94z3dR/
         q5a1ZvvClkxulAPMqi7xzyUDMpz2DdE1yKPc14RQvI6R6Iu0qV4NGBmV9VTG8OxY7Z35
         C1t3lVkR3Fes4fKUhv1KZpkoABu6wo+fL4GeKjiAVVdRC1uWq/MiUFYlBTgIRHw/DXqv
         UZ/aGKXJoQOFiMdsjKWuqJiDBzCL+xzaz1zmz0RRolq358GBhv45jbut6/C0ZOGwGjcs
         XXZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gPb/C0ujF2/D8xZF6QA9TOfH/fImCGw/ctWR6/HTO8Y=;
        b=ihQYzbl9PtNhWwarchjpthOvFug2AiF7PfTm38EcE6sQuCA4ndDuoNaoZknQRryfRX
         tjfyS/cjn0NDGIFplH9xD9hUEPvu6BHpIq02FHZguFKSsX2oQB+OFMnbLstbKr7msPn6
         /j13b0gtJL316v1AUANjR2YhCC1yXBc7npoz9dSID/aAb+CIVl1A0acDkflszU9wYVtQ
         VYzaUMUpTwrU2lgJfi1NdhD7Rw1HdcbAA/xYzKeLoxVs5sk1Jnjl8oAy87HYjXjMReuh
         4ACinxbNRx3L6n3XJ2Dut4XEQTlGQtXBWWEjsWluN/ITVwGr5XtsxTEu2URAVGDVZN1U
         WJDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ngsdUOyK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a21si1147510lff.3.2020.03.23.14.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ngsdUOyK;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id a9so1275789wmj.4
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 14:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gPb/C0ujF2/D8xZF6QA9TOfH/fImCGw/ctWR6/HTO8Y=;
        b=ngsdUOyK5tB/5gm/Sr+iKLqO4UlVQlIXZQJrv9tLZ28nDfbGXPwFZ69JCC5LZJ9THj
         Nfv0NTKptpokWGaFIY5CwOddxy90wjkiBtE3d3e0//du3ivSu96Fae/nZPZNKKhS+oC+
         s3h4/WLVIcgVYbBS2twPCv0UVHDdrXxpK4O7B1A1deBAJvBsGqSLg4R2wZAYzqHvSwlC
         Je50wOpRsELCsd7pVQh0bw2E7apjKQTHtFqjhB9F2P57CGtP3qUN6TQNa2Z7ywaZqCxi
         Z+fg8KLhsM4zhttfwDxVxjjVRAy7iiJPtcZCNFByxQnRndMoiOHLVjREUhkw1skvHXtQ
         dqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gPb/C0ujF2/D8xZF6QA9TOfH/fImCGw/ctWR6/HTO8Y=;
        b=aB8pMNzMAmNDrohaEkaX7ekQbO9JaY5jlxEYXpKa4LejlhrRCD79bQ3qr1Y0QfgXi1
         Kw+ewXs+cbcutfLNMwdlZqKLoWlXadaYmJv4dCsbZoaJjKpcx4mAWPuROq+DKVMS9C7a
         AhC4v9ZHXIMDjQctZSshondNfA/n6L8bj/5UjUc/G2WoaNd5EupAL4kg7E0imz/xMINy
         3xOX6EBS/Gs8qCtac/ZkLSwxh3mBHUg/chtNBg7K1lq4rPK398paZAZyBTeqBnfhadbM
         CPx1Wo6e/kQcQWPrevhzRyor4TMAMAcoxG5hNSwtJANqbgTPTnACYJ/mFlbrlwlnco8J
         wO6A==
X-Gm-Message-State: ANhLgQ17jI9F0qUAqaBjP/87EDU+ftkOiDsA3TLE8gN5pY/vC4cBWYz1
	ww7Drv8OahB84kRT4Zn2B+vSE/XhXvM=
X-Received: by 2002:a1c:3241:: with SMTP id y62mr1613979wmy.66.1584999548352;
        Mon, 23 Mar 2020 14:39:08 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.98.222])
        by smtp.gmail.com with ESMTPSA id w9sm2844816wrk.18.2020.03.23.14.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 14:39:07 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 1/3] Staging: speakup: Avoid multiple assignments.
Date: Mon, 23 Mar 2020 17:38:43 -0400
Message-Id: <b92dd931a07afcd2bcac397387130ffdc3c46223.1584997290.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584997290.git.jane.pnx9@gmail.com>
References: <cover.1584997290.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modify the code to avoid multiple assignments by just
doing the assignment in two steps.

Checkpatch.pl CHECK: multiple assignments should be avoided.

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/speakup/main.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 02471d932d71..6efa0b245bef 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -263,9 +263,12 @@ static unsigned char get_attributes(struct vc_data *vc, u16 *pos)

 static void speakup_date(struct vc_data *vc)
 {
-	spk_x = spk_cx = vc->vc_x;
-	spk_y = spk_cy = vc->vc_y;
-	spk_pos = spk_cp = vc->vc_pos;
+	spk_cx = vc->vc_x;
+	spk_x = spk_cx;
+	spk_cy = vc->vc_y;
+	spk_y = spk_cy;
+	spk_cp = vc->vc_pos;
+	spk_pos = spk_cp;
 	spk_old_attr = spk_attr;
 	spk_attr = get_attributes(vc, (u_short *)spk_pos);
 }
@@ -1672,9 +1675,12 @@ static int speak_highlight(struct vc_data *vc)
 		spk_do_flush();
 		spkup_write(speakup_console[vc_num]->ht.highbuf[hc],
 			    speakup_console[vc_num]->ht.highsize[hc]);
-		spk_pos = spk_cp = speakup_console[vc_num]->ht.rpos[hc];
-		spk_x = spk_cx = speakup_console[vc_num]->ht.rx[hc];
-		spk_y = spk_cy = speakup_console[vc_num]->ht.ry[hc];
+		spk_cp = speakup_console[vc_num]->ht.rpos[hc];
+		spk_pos = spk_cp;
+		spk_cx = speakup_console[vc_num]->ht.rx[hc];
+		spk_x = spk_cx;
+		spk_cy = speakup_console[vc_num]->ht.ry[hc];
+		spk_y = spk_cy;
 		return 1;
 	}
 	return 0;
---
2.20.1


