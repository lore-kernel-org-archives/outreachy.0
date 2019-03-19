X-GM-THRID: 6670195041552564224
X-Received: by 2002:a25:41c2:: with SMTP id o185mr1213877yba.96.1553025804907;
        Tue, 19 Mar 2019 13:03:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls21253ybf.8.gmail; Tue, 19 Mar
 2019 13:03:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvHeRfXyNr/W5l+vs7Vw8sukgweqm50mqre+/NIIn2v6pRpsiMeL+eedMWtR2DtV14SdMW
X-Received: by 2002:a25:c41:: with SMTP id 62mr1471607ybm.52.1553025804304;
        Tue, 19 Mar 2019 13:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025804; cv=none;
        d=google.com; s=arc-20160816;
        b=YBh0Xwjidxa+mRhxzouz4CkbmtvSoDJFGUasYf4NrIQHlx4MOYyZcwHqywXXEBzYXR
         5BMUnRnnN6E1Pqg6wTGmoSbjv9v0Rn6j++xoTqkW7dwVqZwyARZGoKo5kiGlOmDQVpeN
         6yuBHPnNPkbP7dVE8TkhN0bN6zatvU14BUO02ByQdyGfO/6zzFSMRpH4eWLPgvSLsoVm
         +I7VLs23t4qh6Jwj743EHJ3IqbQ1gRpIOpF90tXgylmav3NovAswluRiNHRJGej6JDSN
         mdCO85gAoK61IoUhUvLBDQd6Y3b29xTiN28SdwT5Levo/84uOTC22FZlzg3770Hv6lyu
         Dc6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZDEmeLtqL9kCxtIQW3k5OSuyWMm2naf8pu65n7SvVJg=;
        b=vHWY8u9FKPvZKsMVF7l6X61AZmz4sxw1zgNf4XUFxqBGWIDLGdT4SEjPKWEZLYvDWq
         FKuJMkhEo+plQP+alfwdR9kpRkR8avBfK7vykSqWacv4n19hWhjwkXT5WU17UwJqpFRH
         IbydoatWQ8uv7kCYLUXFjMKeJOIdYFMMHFgHtID6EPO04puC+oCBi3zzpzCaLvPh1iee
         Vgsd7rEpIXmX6mdob+FWkvjCMKFx3B30tycTx+vuElb33NRr8BzowpOuQpHoqbV9MXHA
         ZQ1XpmAyFAjoFh2yqJcQm9GkrFqE9NwKmBfm8h7rW8gdZIgzS+qVLibnWMjHPyPFemzR
         E6Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=pAEUesDm;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic309-20.consmr.mail.sg3.yahoo.com (sonic309-20.consmr.mail.sg3.yahoo.com. [106.10.244.83])
        by gmr-mx.google.com with ESMTPS id k15si703151ybk.0.2019.03.19.13.03.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:03:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) client-ip=106.10.244.83;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=pAEUesDm;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.83 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553025801; bh=ZDEmeLtqL9kCxtIQW3k5OSuyWMm2naf8pu65n7SvVJg=; h=From:To:Cc:Subject:Date:From:Subject; b=pAEUesDmlFZOQmU4w+7yCfQ6e50kK6J9TUZMlCFuZSfpiMlUXU6rzHnTjIeDqKv7sRnqnPRju4IOENi7keqDZy6lAMR2J9Ppp5N9WLgh6JuEt01Z9KAdDu0HdFVN3Jq+uk2WJhfUJRFf8e7pTfmZx3w6Xueb/T3BkANETwVtseuEobBEk1yK63orhzSQCK3NrUbcH5Fqr8z229vuBCqd6XGW2tBrCK0uAofXX4dzm7oSbhVy7YvrqONPHQVAKYlNL4uAz1qLl7p8rFwVlov3twyJd5kUnuDztFXcNV5htfB7fkc849KaggRoUlZxygFH8zo6bnf45LnI936gK6tGOw==
X-YMail-OSG: ii_.MaEVM1nvgWe0GsyM6Of6Zpk645KkMzM7nQpJnOsQSPGBJJ90rEujIBbyKRg
 kVyKaApKuH.4fWlf4KYdZah3Fft9s63vjTqbTK13rJDVCV.fe4SYHe0zw5n0eyAUY3Fjpq9MKcMC
 sxDKHscbR6jaE4GoSWAZloNZuh7TCeabsLbqxlOXHZL29LJz0WyShg9ep.967WWF0YjiFzKdh5NZ
 14kOG54ipEr3s.BJSQUvgfdk7yd0GkNEtrbgDHFU.Z6NXJqvpmSZQOG9S0u0Hd4Ofzlr2YC1vfH4
 0KFfUYUFtz_hkRHzGf3dvzA6Rdw1AqgBCV1csOQNTsOZN_Bppjrc7AYUTH1GHjABjdZeZY0D9l7o
 e_q1oIcVbFoWrgZ59lcTvAEm88Zh3mHQ1gckBSz.vqENRHiUwOGreC10JDs7QTwJtKpl2N3I.Ph6
 XcPJ1dwVHqjNMA7tQoZWdPQnhRv1mGdeaydvD5GOv5yHUJmeuomt8eIEeyNOPx64n.uzOaDc4eIJ
 8hGor86kJRZ0DxA6wa9Zk_W3HPaYMfeHHCSpzpA3ElysSdPwG88SFrJaYCHqWlQG9vA2x3woz6TV
 HfaB32_AQ4tNejPYstZwF.cWFj..yOh3A2OmTEvd6eUTtFdj5Z5yEtWYe5s4M_5FvkOofKu40uNi
 aJTLNGqz695bOF.3yHetCYophd14AdfLuk._caG8xqgqk5HSupjAhXSxqmD6XsboqIEYv5_4CB45
 W7NTDlo.hqgZ1walI4aU9RIy9n_09tLpO_cTfZk2FknQa.v_jiFt_5rEjMJXPLS94AxbHqAlH6fO
 z6b2zdP0nxq7YJ15FHq82eRuU0OqveeGiutDldANpCxyxDKg_x8BnSos9Z5WwXiPCu91_WpnT2mq
 1yefETkRbNYCFOFDgFm1NzZzoh0S2wHN1rYwY3hm7.vgcACdODgG7dEvMKfkMGwBCrXknPKI1vSI
 ms8q3pnzNNT8V8w_GCeWGF9Dn7cm781jO3bT3X6K4rOqsZwSqL5b0usGoXBfyBtZrBCgVHueEutO
 YKKrqA8TyAmVlF3aIgiCK8MDEz64hveU9Rg0FpidWfHPuLbKUU.tX50OiK8aAt6mN1C6rlpCmmYc
 YF94sDFfpUpS09VSpor5YA5P8VX_vRDj7MpRs1uBr
Received: from sonic.gate.mail.ne1.yahoo.com by sonic309.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 20:03:21 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp417.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 515ac56d8da6f887d801b806047a4e3d;
          Tue, 19 Mar 2019 20:03:19 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: greybus: Remove parentheses around variable
Date: Wed, 20 Mar 2019 01:33:08 +0530
Message-Id: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove parentheses around variable.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/greybus/bundle.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/bundle.c b/drivers/staging/greybus/bundle.c
index 376ca53f0d83..3f702db9e098 100644
--- a/drivers/staging/greybus/bundle.c
+++ b/drivers/staging/greybus/bundle.c
@@ -32,7 +32,7 @@ static ssize_t state_show(struct device *dev, struct device_attribute *attr,
 {
 	struct gb_bundle *bundle = to_gb_bundle(dev);
 
-	if (!(bundle->state))
+	if (!bundle->state)
 		return sprintf(buf, "\n");
 
 	return sprintf(buf, "%s\n", bundle->state);
-- 
2.19.1


