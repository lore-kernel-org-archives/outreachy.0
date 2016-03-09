X-GM-THRID: 6260100746941825024
X-Received: by 10.140.31.102 with SMTP id e93mr4280591qge.27.1457543286094;
        Wed, 09 Mar 2016 09:08:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.87.161 with SMTP id az1ls515949obb.65.gmail; Wed, 09 Mar
 2016 09:08:05 -0800 (PST)
X-Received: by 10.182.120.106 with SMTP id lb10mr26173313obb.24.1457543285609;
        Wed, 09 Mar 2016 09:08:05 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id sf5si108535pac.1.2016.03.09.09.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 09:08:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id u190so16042919pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 09:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=IfwmDR7TCyEdoAdN9ZKQMMz1ctEH9euueYsLhwD1Hs4=;
        b=fypnUpYp2JRQdBF9PWPpYeBx3TI8ePui4nFIvLkbutPIq5AicZzVpoDN3qaAZOpkA5
         iAY+LDNnF1ZqcQ7r0M3kBN/30FPUJizlIBPj0xxE0Anln8BDk3EATW/rI8iDBj6Ab4b8
         I+52isXU8OtyXLe5TrK4FVlJc/UCijACzNrRMhIrW7nyqdSfgLbpO74ajzkNBDV4yLiY
         6iZqdS1jKyCVeeWcD68aZaYjBGdamfO51KyypV8be2tLIAr5aLtp95o6d7ZteJZHpqw9
         +bjbHFmpbSUa61AXqk9BS2ByDj6mR1Em5UndKtSmIyez8HrsbV9ammFtQ9p9dFXyZfMZ
         sOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=IfwmDR7TCyEdoAdN9ZKQMMz1ctEH9euueYsLhwD1Hs4=;
        b=JxIsVQrhwn1DkR8xfJ+HlmMAIt8KdGwAoUF3TfGTWkQU4t+QesXVAFdzl/0TLTg7bI
         RuBFX7m7c+zezqoNj2mu9FD+84AnPsQ+J0a1udVKL/0c4P2mA/VqBNIFrauUYf44zLw/
         KHeepCAKOYX9AQCtHYynvwvCqzhiHmxJTHEwpugTqjjVZondMjSrMUzvDZ5ua9ibosEO
         oj3NaXQD96locS+X7HwT//P5ypJFqHOiOZZ5ZRiBObypFRM8eVC7Tw//Q0vjhfwHxt/3
         qiO7nzODqCxAAteUMCyMmTs3qM00UI9xSkC08RMR1836jA2mGB9O3AKFbaC/O22Oz9JF
         ThJQ==
X-Gm-Message-State: AD7BkJK0Jc8XyA3bAhnqE9/3UfHUNVBI7aIyNVfsX4eet0PHEja6v78VCGwN3AgVfdVdiQ==
X-Received: by 10.98.13.88 with SMTP id v85mr29362031pfi.150.1457543285439;
        Wed, 09 Mar 2016 09:08:05 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.171])
        by smtp.gmail.com with ESMTPSA id q72sm9832726pfa.70.2016.03.09.09.07.59
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 09:08:04 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 09 Mar 2016 22:37:54 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: bhumirks@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libxt_CONNMARK.c: Add translation to nft
Date: Wed,  9 Mar 2016 22:37:49 +0530
Message-Id: <1457543269-7345-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Add translation for target CONNMARK to nftables.

Examples:

$ sudo iptables-translate -t mangle -A PREROUTING -p tcp  --dport 80 -j CONNMARK --save-mark
nft add rule ip mangle PREROUTING tcp dport 80 counter mark save nfmask 0xffffffff ctmask 0xffffffff

$ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 80 -j CONNMARK --restore-mark --mask 12
nft add rule ip mangle PREROUTING tcp dport 80 counter mark restore nfmask 0xc ctmask 0xc

$ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 22 -j CONNMARK --set-mark 2
nft add rule ip mangle PREROUTING tcp dport 22 counter mark set 0x2/0xffffffff

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 extensions/libxt_CONNMARK.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/extensions/libxt_CONNMARK.c b/extensions/libxt_CONNMARK.c
index 42cf207..e2dbf8d 100644
--- a/extensions/libxt_CONNMARK.c
+++ b/extensions/libxt_CONNMARK.c
@@ -347,6 +347,32 @@ connmark_tg_save(const void *ip, const struct xt_entry_target *target)
 	}
 }
 
+static int
+connmark_tg_xlate(const struct xt_entry_target *target,
+		  struct xt_xlate *xl, int numeric)
+{
+	const struct xt_connmark_tginfo1 *info = (const void *)target->data;
+
+	switch (info->mode) {
+	case XT_CONNMARK_SET:
+		xt_xlate_add(xl, "mark set 0x%x/0x%x", info->ctmark, info->ctmask);
+		break;
+	case XT_CONNMARK_SAVE:
+		xt_xlate_add(xl,"mark save nfmask 0x%x ctmask 0x%x",
+			     info->nfmask, info->ctmask);
+		break;
+	case XT_CONNMARK_RESTORE:
+		xt_xlate_add(xl,"mark restore nfmask 0x%x ctmask 0x%x",
+			     info->nfmask, info->ctmask);
+		break;
+	default:
+		/* Should not happen */
+		break;
+	}
+
+	return 1;
+}
+
 static struct xtables_target connmark_tg_reg[] = {
 	{
 		.family        = NFPROTO_UNSPEC,
@@ -362,6 +388,7 @@ static struct xtables_target connmark_tg_reg[] = {
 		.x6_parse      = CONNMARK_parse,
 		.x6_fcheck     = connmark_tg_check,
 		.x6_options    = CONNMARK_opts,
+		.xlate	       = connmark_tg_xlate,
 	},
 	{
 		.version       = XTABLES_VERSION,
@@ -377,6 +404,7 @@ static struct xtables_target connmark_tg_reg[] = {
 		.x6_parse      = connmark_tg_parse,
 		.x6_fcheck     = connmark_tg_check,
 		.x6_options    = connmark_tg_opts,
+		.xlate	       = connmark_tg_xlate,
 	},
 };
 
-- 
1.9.1


