X-GM-THRID: 6258741670150406144
X-Received: by 10.129.146.73 with SMTP id j70mr11313377ywg.25.1457226851649;
        Sat, 05 Mar 2016 17:14:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.127.177 with SMTP id nh17ls57781igb.21.canary; Sat, 05 Mar
 2016 17:14:11 -0800 (PST)
X-Received: by 10.107.167.148 with SMTP id q142mr11931895ioe.17.1457226851300;
        Sat, 05 Mar 2016 17:14:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id s129si104530ywb.5.2016.03.05.17.14.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 17:14:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id y89so72164238qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 17:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JYDBFmyssLv2+bIICgNNHwl3u4US6SaBeXa+yze6jBs=;
        b=NvOs9XvZPsIEucHw0F7bC5wGqXbJgDSMcuLahwpPSBbusuLcImmqe9R3gFe5ZswENV
         bznO3wrkB1VOggGZHzf93sUcP4eeYhGxxrdfRbHzmMfXbiIwY2eP6fbGzpfLxpJ31KUY
         joUHaIg7UnfNgzE7HdkCdNiPfwX6lUANA3+u9zSYByH460sszzBrTncHWsRFdanyGvZ+
         dcsUazBJXejL0LXXO+byd4P3uLZ6b4u1alGq5xJhmPxbjnu+FGVo8FDEcZ/21ov8lMmO
         oKLRsRHFGEnL4oRKm+tg/XFBQzmhkxePCXiEsrM+ZIzQXF8wFd8F4z8J1muegmXTwBSF
         YC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JYDBFmyssLv2+bIICgNNHwl3u4US6SaBeXa+yze6jBs=;
        b=dOFWeZWD/C9vRGYTWvShhySVO1kMqQSitnS6Y96mnB1ussyBOr+BcjLBvQQ147dxDU
         q+JjlfECdGxa89SetyufW3CLIjWp9MbLgdEQRfXSqM72yT+A1CLyCHlqevz+SnMx+DGp
         434YKFrWHdjZFpdPE98AmHapH5dOvhYLdmXuHAsrO961nqM3Q2dw6nnz+2cg+8xdohGc
         5yvCzVf+VBtSf4EIZBa3/BJAGLvU+IGL8VRQSW8QQ4oJs7UUQncaD3BWReXWFadFg7NH
         9pSaaj18iLmzA9/pbIyHXK4ijG5gCLcTty1y9bXXZ1snb3b/0rxrR8m0LoLsIqeGJp8D
         De7w==
X-Gm-Message-State: AD7BkJJnnZfiW4Odkt4YxEu8ty4FCQXlynovaTPHetbRhawXKGF9xmo4xZFo4S9WoDAtJw==
X-Received: by 10.140.81.51 with SMTP id e48mr19763389qgd.27.1457226851103;
        Sat, 05 Mar 2016 17:14:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id j7sm5031198qgd.2.2016.03.05.17.14.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 17:14:10 -0800 (PST)
Date: Sat, 5 Mar 2016 20:13:14 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] extensions: libip6t_rt.c: Add translation to nft
Message-ID: <20160306011314.GA32269@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add translation for --rt-type, --rt-segsleft and --rt-len.

Examples:

$ sudo ip6tables-translate -A INPUT -m rt --rt-type 0 -j DROP
nft add rule ip6 filter INPUT rt type 0 counter drop

$ sudo ip6tables-translate -A INPUT -m rt ! --rt-len 22 -j DROP
nft add rule ip6 filter INPUT rt hdrlength != 22 counter drop

$ sudo ip6tables-translate -A INPUT -m rt --rt-type 26 -j ACCEPT
nft add rule ip6 filter INOUT rt seg-left 26 counter accept

The xlate function returns 0 for other options.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 extensions/libip6t_rt.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/extensions/libip6t_rt.c b/extensions/libip6t_rt.c
index cada779..59adfad 100644
--- a/extensions/libip6t_rt.c
+++ b/extensions/libip6t_rt.c
@@ -245,6 +245,40 @@ static void rt_save(const void *ip, const struct xt_entry_match *match)
 
 }
 
+static int rt_xlate(const struct xt_entry_match *match, struct xt_xlate *xl,
+		    int numeric)
+{
+	const struct ip6t_rt *rtinfo = (struct ip6t_rt *)match->data;
+
+	if (rtinfo->flags & IP6T_RT_TYP) {
+		xt_xlate_add(xl, "rt type%s %u ",
+			     (rtinfo->invflags & IP6T_RT_INV_TYP) ? " !=" : "",
+			      rtinfo->rt_type);
+	}
+
+	if (!(rtinfo->segsleft[0] == 0 && rtinfo->segsleft[1] == 0xFFFFFFFF)) {
+		xt_xlate_add(xl, "rt seg-left%s ",
+			     (rtinfo->invflags & IP6T_RT_INV_SGS) ? " !=" : "");
+
+		if (rtinfo->segsleft[0] != rtinfo->segsleft[1])
+			xt_xlate_add(xl, "%u-%u ", rtinfo->segsleft[0],
+					rtinfo->segsleft[1]);
+		else
+			xt_xlate_add(xl, "%u ", rtinfo->segsleft[0]);
+	}
+
+	if (rtinfo->flags & IP6T_RT_LEN) {
+		xt_xlate_add(xl, "rt hdrlength%s %u ",
+			     (rtinfo->invflags & IP6T_RT_INV_LEN) ? " !=" : "",
+			      rtinfo->hdrlen);
+	}
+
+	if (rtinfo->flags & (IP6T_RT_RES | IP6T_RT_FST | IP6T_RT_FST_NSTRICT))
+		return 0;
+
+	return 1;
+}
+
 static struct xtables_match rt_mt6_reg = {
 	.name		= "rt",
 	.version	= XTABLES_VERSION,
@@ -257,6 +291,7 @@ static struct xtables_match rt_mt6_reg = {
 	.print		= rt_print,
 	.save		= rt_save,
 	.x6_options	= rt_opts,
+	.xlate		= rt_xlate,
 };
 
 void
-- 
2.7.0


