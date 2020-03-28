X-GM-THRID: 6809045974031269888
X-Received: by 2002:a7b:ce95:: with SMTP id q21mr5461719wmj.65.1585426517850;
        Sat, 28 Mar 2020 13:15:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls2515317wmb.1.canary-gmail; Sat,
 28 Mar 2020 13:15:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvGVLf1o2hnYK46UZyHBA9G7bWFJ9Kl/jQzp8A2YZun6onGDP0alXA3Z2i88vRg/7cDagkE
X-Received: by 2002:a1c:4b14:: with SMTP id y20mr5441531wma.163.1585426516641;
        Sat, 28 Mar 2020 13:15:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585426516; cv=none;
        d=google.com; s=arc-20160816;
        b=FX10w6UqNRAHht27Lo0UNLTeXeE24GObX04d+FQpGJ8GRI52bjK2uWXyM1aIWD40Fl
         djcr0t8BmvpOU/5vv/v1Fy0N2mG0sHi8QQknri5Yq21WWODV1xnyM5trIzs37rqWzKQh
         /SZeDJ14PkpZkWi1up6rrYUme15CVSPRF8ILv03JX9kmhLLwP2sfQ02Bx/qKj8JpIPz5
         PX28DBG9PGg4E9jVah/DUbVDv7xIHvPQ62JXUhai/OsYUHR7EcV42VkdRFXS7rHQHV8l
         ECW0ufgJsWp+P8oMWpg1f0zMeNffbbe90A2osgebbVJrykDvRRbunuIEDHehA4mnSDCv
         yWJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=eYO7eq/qJ6sHtjD709KyNXLHK+m0rsFnMN1eWZWygoU=;
        b=0V90PuP+CHDvZzrFbL1dHI75rIpehUoxi8T355k6LShr/FChMXwLiRd6ri7s1CIvML
         TtEmgq6e57OvXOzCHQCmlZob69GxEM9MOSwXZT1rk0AjAVqzBWCthfy/MIfmsAB4WiDe
         OhrjDWwl1zU01QIAP/C2/dgE9StkDqWTDWQ2PpixqPWK4N71zhlcuq7Yg1neaV0Nj3UL
         dWzabrHpBaQLN531Le95JLgviBxaDdIQMAxZG2SH4mYljrPUg14fYBcc2F6PBPk1LNuj
         rjiuKf61ba/wwHl0RbUEOlCQSBUdp2i1Wg7dQmCKTdgPp+V6Sp8SNWGSIWo9kCNOGA4C
         G5XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZNIVu0X;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a18si439667wra.0.2020.03.28.13.15.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 13:15:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SZNIVu0X;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id r7so6115961ljg.13
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2020 13:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eYO7eq/qJ6sHtjD709KyNXLHK+m0rsFnMN1eWZWygoU=;
        b=SZNIVu0XkQgdnoNXOFrgP8hgpB6fpaAI5jXwIebsISDp62/h15KVe3EzR0TeMEJ9L0
         C6cdgd3aVuF88h+5C1+vH8OM8NhqH9eccEplUWZ06aqp7+V20LR4xowyuu0AUilYVZDo
         Qg8TxihDPK10iKp9muFFyrHNYIxoHF+HNVyhkc6ZpXnzHpxhQjHomIR59yRRDCkW/sj5
         1D9v6oGcMvJkXQRdbZIdpZHyCcNgRtHIyRJku0JbIHDi4EJZkndv/CaVVI37P+6l6N71
         c/iBuw87AAscs3dc1nh0vCrM84L9rWhE3guLajxL0xtRllFXULySBoureE3VZXLB5JpU
         kLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eYO7eq/qJ6sHtjD709KyNXLHK+m0rsFnMN1eWZWygoU=;
        b=BgcjcQCw6qizGeWEMpzJbNPjQNp/3XpPnsa+8y+kuZnLlGeY6fy9+gZ0jLhpttqcxx
         kv7iGxGuEVDXO5wx2A84xWArwDysjGEkz82x4eIayHDDMNhls8OpylZ8KEHnyBF1CWdl
         uD1luzdLLcim5xFm0P0+hMrFuV4WUtUUc4sxcF/FXKvcAb5okk3i0ImjEqKO0NUx32Bf
         INIEOFeN7yw3y4+wzzm4ObMzZJzZbbHsZ9FtltnAA6HvwZRD4r32xE1ahdjZeYKAGb+E
         aGQcBVvNkG2+AgnnIN/q8pcoQSgq/GMT9jKEjjg5AOirslukup5TJmm7PIiS1kE6fKSD
         KW9g==
X-Gm-Message-State: AGi0Pua6zXlMTR3/EB9l6lNdh24aMZEfHM+X27GCu4B+A980RAcV8B+Q
	kiHVFHHIdaiiRhMODHSPIxqnsSvm
X-Received: by 2002:a2e:7c19:: with SMTP id x25mr2775289ljc.253.1585426516093;
        Sat, 28 Mar 2020 13:15:16 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.65.149])
        by smtp.gmail.com with ESMTPSA id x28sm2810767lfq.46.2020.03.28.13.15.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2020 13:15:15 -0700 (PDT)
Date: Sat, 28 Mar 2020 23:15:13 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: sm750fb: line over 80 characters
Message-ID: <20200328201513.GA16863@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Convert a single line comment to a multiline comment to respect the 80
character rule.Problem found using checkpatch. 

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
Changes in v2:
-Edited log message.
Changes in v1:
-Convert a single line comment to a multiline comment to respect the 80
character rule.
---
 drivers/staging/sm750fb/sm750.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 8f305c9..092f1c6 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -711,7 +711,9 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
-			/* not consider of padding stuffs for oScreen,need fix */
+			/* not consider of padding stuffs for oScreen,
+			 * need fix
+			 */
 			crtc->oScreen = sm750_dev->vidmem_size >> 1;
 			crtc->vScreen = sm750_dev->pvMem + crtc->oScreen;
 		}
-- 
2.7.4


