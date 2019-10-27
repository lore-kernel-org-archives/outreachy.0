X-GM-THRID: 6752344874745331712
X-Received: by 2002:a67:ad0c:: with SMTP id t12mr6065040vsl.82.1572152803802;
        Sat, 26 Oct 2019 22:06:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:dd04:: with SMTP id y4ls1317618vsj.5.gmail; Sat, 26 Oct
 2019 22:06:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzouZ/Pnuo6x2ePrBueFc07EgJhdEczleK8HYdvtnR2jzci31dKYymiocb7t0M71Xxg/Qs9
X-Received: by 2002:a05:6102:d8:: with SMTP id u24mr2055883vsp.180.1572152802793;
        Sat, 26 Oct 2019 22:06:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572152802; cv=none;
        d=google.com; s=arc-20160816;
        b=dz9JZUOAVUD7+eolbfCkG5fbJW5lzmHXRVFGZO+uVsLoAmL/EnK4e1wqui5/ONnUEL
         SFpIw+hw8lUlaB4wJmgIQkfWcC80KTGOsePOdQ+ta61S7xKpPTNw3OsialhM7QHCkXFs
         D6E5KmY4xZkxq1mf4jETkBs64EQuSlhaoepLarNOybtAIrZW/W61cgFdA73uQksWd3QE
         FZlyWtYV05Mxvh90Lox5PpODxJtKlnlT4FOsjCWJFGIReLEvXz60SjVCQ1rFrYak+LQz
         A1f5MfMt9lk2S3ZPeY74UeBMQf/Qlcakti1ZzlooiLOAJhdg1+Ah6P/SVIHJhoCH9ufy
         nAPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QtWkhxGCZ0ZggDKTc93kpa9QbTwKMQnT96kG0waeyEg=;
        b=zud1Ncqo8x+jljRsUK7kMpN+2cqARQCzYR6qhWso0qXaLHgpmR6gcGgKvSes8RGuOS
         txFvqwtMMyvmNpNEU2MfOk1KUNllDnXZkjGQwf0YHslVIPxWbSPEKw6prpxTEXLxRKj/
         ybsuoqM8pwZ/q2ZNZYl450fFCoeEfTlhvhOsx66l4ucjQ06IG+4nM1OIyk2uWC2kFIqM
         H0wreVMLxzEy/aJ4V+P9m1K5hOD07airMS1GCXIxjLOqaCHiBycqeldzaL26sSTDnzSW
         V3OcUMNiWjdgFEsRKKCc8fU8MbNIAEXNDdXdxtBUtStrq+1r8H2DZ5VTWkPHIaosoFP7
         OkKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=GuVtHDGk;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id o206si488499vka.4.2019.10.26.22.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 22:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=GuVtHDGk;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe44.google.com with SMTP id j85so4204513vsd.11
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 22:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QtWkhxGCZ0ZggDKTc93kpa9QbTwKMQnT96kG0waeyEg=;
        b=GuVtHDGk/qDgb9QlwJi/DVWKmGeU7nSkYVNJQhweOz3F6ZT2tbF89iWsIPMS9GYhJo
         +HAWO6VKWmHpyZJbi4AgguyWbTHEfZh46HpnbqfDCmQ3dVEHOoS0zTGdD8oAZy7GtuLv
         0KRU7bxoEzWbC8o2eXJ6Ny/qY8r8d1a5aGkbIwpXbDP1nnJxfa8cgwZHtBzErB69C5+O
         TKw3T2Ai6E3f0TRR1VukCsPgwfs2H25G82+IMFdJ2GXbc/LRZiVIJzFVbo9MthHeqeML
         TawNIIRFO6wP+uZ9xfRyNTnYFdXzG+8w9KsYYJf6FxOnwW15vO2eFzXCsULRu5IIsI+5
         CRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QtWkhxGCZ0ZggDKTc93kpa9QbTwKMQnT96kG0waeyEg=;
        b=L7eQoNVJzg/C9VZUrE6IpWzMkgEZr4KEvyMXJzZxOaBHyKt+gqFp8Tq+HcKiwmpC9u
         IAwbAk45nAocgTDxe3w+wg1lFQp4vAiFC+GfiNEET410zigLjYTNi/ZPgJ18jxhuSB3X
         AQc4zugKYbj5jAJ87tg0oJXxtWBxZSe2aBZSnBDXpZSDaf+ZEWxetU71Idv4X6g3Qrqy
         c6mmvDBQyryUiyAvD/f2Aigkh9UhCuMaJGDdpqKNEbMKSMB3CahoUbgejanX56EZhoHg
         IzOs/bBcrq5ZrdFdgajSdyPZr7vnGkHxY2AZGlHqyYSrugisfcWOUrqSTehi9Xaof9Yj
         Lcxg==
X-Gm-Message-State: APjAAAVnsKO87q2JVFN/kSgIqJhooiMossYmDKKCHQ+jm4M/dmbubj4y
	aQQvhszkqu31Mc6Nt8Mk2lCvpg==
X-Received: by 2002:a05:6102:3018:: with SMTP id s24mr5367701vsa.133.1572152802184;
        Sat, 26 Oct 2019 22:06:42 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id n126sm2819030vke.51.2019.10.26.22.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2019 22:06:41 -0700 (PDT)
Date: Sun, 27 Oct 2019 05:06:40 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: [PATCH] staging: speakup: Fix multiple assignments on a single line
Message-ID: <20191027050640.GA24283@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

checkpatch message: "multiple assignments should be avoided"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---

This is the second patch that I send for "Outreachy December 2019 to
March 2020".

 drivers/staging/speakup/main.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index 488f2539aa9a..6f5a58bd1f81 100644
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
@@ -2117,7 +2123,8 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
 			spk_keydown = 0;
 			goto out;
 		}
-		value = spk_lastkey = pad_chars[value];
+		spk_lastkey = pad_chars[value];
+		value = spk_lastkey;
 		spk_keydown++;
 		spk_parked &= 0xfe;
 		goto no_map;
-- 
2.17.1


