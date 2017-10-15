X-GM-THRID: 6477098943281889280
X-Received: by 10.176.82.184 with SMTP id v53mr3619540uav.84.1508068948527;
        Sun, 15 Oct 2017 05:02:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.60.206 with SMTP id j197ls2476823vka.8.gmail; Sun, 15 Oct
 2017 05:02:27 -0700 (PDT)
X-Received: by 10.31.10.67 with SMTP id 64mr3494780vkk.17.1508068947693;
        Sun, 15 Oct 2017 05:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508068947; cv=none;
        d=google.com; s=arc-20160816;
        b=Sw7JrUY4dOS1Wmjg5xusNCk4cqTRGA5fo02/wiD++vzUh1ARuaj53OlUpqXWlLrmbg
         0/ibWu17KAGUh50lW8O2nS9gr9MNCdKrmJJ+ltYqlTJxIlv1vz39luh16ONYrIykvCxj
         Kk+VpT07trrUm/lh8bstZd9JUjUnIcAGdGTaGPRC8KOHsdVUduxetWIx/YPc1KDPFVou
         xnpJ+0yJf06GmuvOBhRJdy5U0sbgJmZTNvEvv1j2O5F7m7Q/Eiw0zcNqHjOacINm3YFR
         ZhgjwDK80PO/avlfxD9x1VcfdvMVrpeXNREruuCy87aV7DzRwaXJlp0KEKV1XseXHh6g
         T/wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=oyUdy2BzSmdbEhs2JsbEApKx/NMh91WVE+rWOxpnjRE=;
        b=asyn3rMvWCLh4w74t/Lx53xwKjHBtmDVZwMp1CSN7WFz1ABVWLKj1UqeBnGS61AZhc
         BoHiGv9HdU1nMJGbPWOdHjEWlC2jueAdGF2mxifT7fNRZaO3jKngQChCOAS8KymZMADO
         M8OHQjPZn9BvC3MOFIWKcxUrN6VO3KvsGn773k88NoXL7YHxH/dphi9R8R9nQ5v52tUE
         wm+Xa8BDujFM6qfT6vcLRgyURhuEf8hXMDrzTrmULAX10SqJTmfrkKCafHJAhVHwmEFD
         JsgBPt57Vb/pd7xGy60gUbuNUyCmmIhqnur7Y/X6YreuC9wpQK26zwqUs0hvdeTIJwze
         m95A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNZ5mOQu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x236.google.com (mail-pg0-x236.google.com. [2607:f8b0:400e:c05::236])
        by gmr-mx.google.com with ESMTPS id 91si286137uau.2.2017.10.15.05.02.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Oct 2017 05:02:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) client-ip=2607:f8b0:400e:c05::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNZ5mOQu;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::236 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x236.google.com with SMTP id b11so4655682pgn.12
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Oct 2017 05:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oyUdy2BzSmdbEhs2JsbEApKx/NMh91WVE+rWOxpnjRE=;
        b=lNZ5mOQuhEuN6xaCudx0ZjzfIE5upaJjupqSg1rg/IqcXNKUlypSMMrGl1VY0tfrz3
         S4WT30h23zZN1GmPnSc2xNzh20Dew5TBSK45J1XR0Dqsu3kVn0HzK8vixlwtbZt2PTpk
         WCz/Un1q8UGU51vB6OUANhY8uarRgh97N+AdxtqSZOwoqcmkY577yOUBmfOSC0KBnn95
         bi/krdBxU+PvcwRbRDufroIiJMqezJfRBem25/ht8j5uJOp60jnP4ut9NmP9f4QsJgFk
         LNqLEWp2YiHBlbjPbVRivvkEp8HzNoZ4jUxpQ+ilqgjZ8Xu7ENsvIcmh6rrLi0bX9NCh
         Of2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oyUdy2BzSmdbEhs2JsbEApKx/NMh91WVE+rWOxpnjRE=;
        b=q3TCLHPK/0S6fapsiOuE53Mljard9eFQAtq3SOE9LZ11uc+fqzcs4I34YBE6k9F4TO
         zFcpphBtFKb/hXOgWBb/KRg8DKAnsikxdSf/0TIDrx5AqTJM+iRFfOXzxOdf/68eOKlD
         oAxOslFcICgRLYrmM6iP0+oY/k7OIf//Xc9ijN2SwfMJ3zA+mNpn3hxewmWjYh3ocToP
         eQnBTP17/yiBXhxf136hCl26mZ0GKRXvwXOXM/4Pp8e8+OgVoqncZ7umin0x4S9nknj/
         z++gSwbUwi/eNG+ngTKoWZ7tIh7JaNyyuyCBeboJpLC+jBte/KSqg4q5xDOn7AIzHgAi
         UMWA==
X-Gm-Message-State: AMCzsaUyRVp7+fy7QQfZFNukLdMK4PsKNUGo3wHIRMlDGqmDtdYF3/b1
	KesIyKN8aT1VMObJg9pxExU=
X-Google-Smtp-Source: AOwi7QCV4Ujcf34tHKjqR5V9t/MZ8jW33ogtjRaSK6h4Keusu6/FN1MU7ST4onBS+RSEDwSjRuDE3g==
X-Received: by 10.159.252.11 with SMTP id n11mr6369322pls.172.1508068947132;
        Sun, 15 Oct 2017 05:02:27 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id x4sm9539954pfx.124.2017.10.15.05.02.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 15 Oct 2017 05:02:26 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Pablo Neira Ayuso <pablo@netfilter.org>,
	netfilter-devel@vger.kernel.org
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] iptables: iptables-compat translation for TCPMSS
Date: Sun, 15 Oct 2017 17:32:19 +0530
Message-Id: <1508068939-17220-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Since path mtu support was added, we can now add
iptables-compat translation for TCPMSS extension.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v2:
	- translate other options in TCPMSS target extension
	- fixed code styling issues

 extensions/libxt_TCPMSS.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/extensions/libxt_TCPMSS.c b/extensions/libxt_TCPMSS.c
index 4b71e44..0d9b200 100644
--- a/extensions/libxt_TCPMSS.c
+++ b/extensions/libxt_TCPMSS.c
@@ -91,6 +91,19 @@ static void TCPMSS_save(const void *ip, const struct xt_entry_target *target)
 		printf(" --set-mss %u", mssinfo->mss);
 }
 
+static int TCPMSS_xlate(struct xt_xlate *xl,
+			const struct xt_xlate_tg_params *params)
+{
+	const struct xt_tcpmss_info *mssinfo =
+		(const struct xt_tcpmss_info *)params->target->data;
+	if (mssinfo->mss == XT_TCPMSS_CLAMP_PMTU)
+		xt_xlate_add(xl, "tcp option maxseg size set rt mtu");
+	else
+		xt_xlate_add(xl, "tcp option maxseg size set %d", mssinfo->mss);
+
+	return 1;
+}
+
 static struct xtables_target tcpmss_tg_reg[] = {
 	{
 		.family        = NFPROTO_IPV4,
@@ -104,6 +117,7 @@ static struct xtables_target tcpmss_tg_reg[] = {
 		.x6_parse      = TCPMSS_parse,
 		.x6_fcheck     = TCPMSS_check,
 		.x6_options    = TCPMSS4_opts,
+		.xlate         = TCPMSS_xlate,
 	},
 	{
 		.family        = NFPROTO_IPV6,
-- 
2.7.4


