X-GM-THRID: 6477098943281889280
X-Received: by 10.55.155.21 with SMTP id d21mr5768728qke.50.1508069769495;
        Sun, 15 Oct 2017 05:16:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.39.11 with SMTP id n11ls197615qkn.13.gmail; Sun, 15 Oct
 2017 05:16:08 -0700 (PDT)
X-Received: by 10.55.3.7 with SMTP id 7mr5777111qkd.29.1508069768972;
        Sun, 15 Oct 2017 05:16:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508069768; cv=none;
        d=google.com; s=arc-20160816;
        b=X30z7XrrGarvEv5LuwBAKJAxBg3aObHnytFpjyuIU7KVHAa7qs0sxLjimFmsR3a45E
         SRJGweL5L2HcHFTGvqqmpf9bWU6qJIlhjkICiRksKoj8NDK+xnNBwSAyLz/DU3DK0m2C
         rGovdqj1x4y6OvVmrehmFzO8Uk6DpJcoYUULc/Fy7TWQiVmJFTawdFS+mB1N41IsKag0
         AlanvVuI/Kgei7ItRYxQMJpGLOQTtzx5q3MeCQqy2Wm+cWo29HToGM5faPJJhCqXHOTg
         2P1Mc7qHiA2rk4MGsE6v/GdPMGxaBbXBKuKFoMxmz+PJDM9lyCwrUwTXUsOP9FdkGAb/
         0I7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature
         :arc-authentication-results;
        bh=jymbSzkNqByOUztc+RzYu5daxldPR/n3UpK21Kuac/Y=;
        b=gF0wqqMVRXS30EhQGTwobWiTZnfn9zLRsO3sfUE5vQa3WGt0jnh2IlC+DM1yHY/HD9
         dmhORj7uwsdRDWdPWnnl0Sak9OZ91uw0rN5UPUrOvU57tCQwkhBwfAfps/rbSYT/P3mZ
         N7h8nO20h43TKoA/kNWeyWxBLvHJdEYXOYEjgbcz1rzrkD8r7vYhJgHPe1Z40GWGzQ7p
         yhCwOit/13dwcL9/02BiXmDthLip+gTByTTdg4jgCPAmCpsuqOXO9ZZQNa2eEfRmPlxA
         aK3eDZvSOM7XNLTeuUaE3RdWICj1RIIvQy5n978yRAW80uCCBb8I8kUB2NxhQMJnC492
         h3MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OSIGleVG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id m68si250828qke.2.2017.10.15.05.16.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 05:16:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OSIGleVG;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id n70so745634vkf.2
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 05:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=jymbSzkNqByOUztc+RzYu5daxldPR/n3UpK21Kuac/Y=;
        b=OSIGleVGQboPDa1X2Jz1I1FaAWkDEi7TVA/wvFSrXR1gXCsQ0WyHbYQ/IBnALdwNnX
         AkLcRyX/JOf94ZfNS4Yml3fiBXUIns3jQpTEyszq3GPrzIFlR65UwbtMkmRDj64RuYLn
         ta4UDWgbJ0ZCPMtQjqRntkw8BhEGm5d+TMfThioc8tyzAfEREtycvOY+9a1cu6C/mRCU
         b887YCn1fTOpVGI+H/wM93w6Lf0tbfYCAIqB/j5Di0G/1JCdLTzdhtuos731pM5e/hgC
         iTVZUC3veBoYgauJ6WcFkp1iFBCoLA3CaBU2q1GIMA8lByYlZSmL/z+x/GnoWWHscSXx
         abrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=jymbSzkNqByOUztc+RzYu5daxldPR/n3UpK21Kuac/Y=;
        b=ZWcyezFH2NZnf6uiGHIHBqXrLGFAklaYbWosLF2QHkmC3tSFTvkvPuCjHWciA8o+gK
         /JK2Zt95psa17lQyDBdXVaDafBjBRrk8LXYY7+TBPixuWD/8lqZBQ1gSkXOryO4XZYkV
         TP/WFYpjQDVOiyuj5c8KnLIIzA63oVTQ/p5MDbkfdrd/DH4ypW0kogzszDMlk0EB8UTt
         /N0U9xvAmjfAYO1W0RcumXr7BbmLCysTaSoqAN1EKsxJrJ5LYeFSDRYqzih1FGoVogTP
         7hr5kRPRw8aVVQc8B2+1inI2G4qHqfJ+8UyXYkGChO0ZV5rRTdirBL6kQOLohSSzzFYg
         +TXQ==
X-Gm-Message-State: AMCzsaXU1J/16HC+WzrpmkLWzBdUCJk9s7+Nc19pqzUQ/6EjKypm1wNJ
	A6oQY6YferUSdX1JFaCSBdvXapjBqAVJgEPQFLE=
X-Google-Smtp-Source: AOwi7QBBxRG/nQEZ03R2puUQwX3gWTFdUtnOZS41FFmG+sJZyNEGwbwbzCCb7eo/VSqip/jCLejDIxUM+UNs1ZyI6qI=
X-Received: by 10.31.171.130 with SMTP id u124mr5026154vke.20.1508069768646;
 Sun, 15 Oct 2017 05:16:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Sun, 15 Oct 2017 05:16:08 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sun, 15 Oct 2017 17:46:08 +0530
Message-ID: <CAHXiS5-LAiGs7+5zs-VhOmW2WLCAsNsaQrWh+5=m8=JrcyWtRw@mail.gmail.com>
Subject: [PATCH v3] iptables: iptables-compat translation for TCPMSS
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: outreachy-kernel@googlegroups.com, netfilter-devel@vger.kernel.org, 
	Aastha Gupta <aastha.gupta4104@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Since path mtu support was added, we can now add
iptables-compat translation for TCPMSS extension.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v3:
        - fixed alignment issues

 extensions/libxt_TCPMSS.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
index 4b71e44..0d9b200 100644
--- a/extensions/libxt_TCPMSS.c
+++ b/extensions/libxt_TCPMSS.c
@@ -91,6 +91,19 @@ static void TCPMSS_save(const void *ip, const
struct xt_entry_target *target)
                printf(" --set-mss %u", mssinfo->mss);
 }

+static int TCPMSS_xlate(struct xt_xlate *xl,
+                       const struct xt_xlate_tg_params *params)
+{
+       const struct xt_tcpmss_info *mssinfo =
+               (const struct xt_tcpmss_info *)params->target->data;
+       if (mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
+               xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
+       else
+               xt_xlate_add(xl, "tcp option maxseg size set %d", mssinfo->mss);
+
+       return 1;
+}
+
 static struct xtables_target tcpmss_tg_reg[] = {
        {
                .family        = NFPROTO_IPV4,
@@ -104,6 +117,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
                .x6_parse      = TCPMSS_parse,
                .x6_fcheck     = TCPMSS_check,
                .x6_options    = TCPMSS4_opts,
+              .xlate              = TCPMSS_xlate,
        },
        {
                .family        = NFPROTO_IPV6,
--
2.7.4

