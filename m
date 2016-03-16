X-GM-THRID: 6261220057224839168
X-Received: by 10.25.154.129 with SMTP id c123mr890443lfe.1.1458166676443;
        Wed, 16 Mar 2016 15:17:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.215 with SMTP id 84ls278495lft.32.gmail; Wed, 16 Mar
 2016 15:17:55 -0700 (PDT)
X-Received: by 10.25.136.134 with SMTP id k128mr891570lfd.5.1458166675324;
        Wed, 16 Mar 2016 15:17:55 -0700 (PDT)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id c140si1248425wmh.1.2016.03.16.15.17.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 15:17:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id p65so92238255wmp.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 15:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=c1UQIaLxtH1XNNrMxz/qAzkj1zlp/mbbRhT6Xkh7/yg=;
        b=tsoEVotcZchIW7A3c3QXYC4mo9uqEYm4VWb0yR7LhAPxA94nw4C1BgvLoVVbbwdHqj
         zSs40PN8dOv01ok6ggK5pZS0G2Fl40QEDfarN2ZBr9krFsz676HA/G60R/hT/sgAx3Tl
         bcTg1Cctl2etxod1wPSJD7TLdmHRkEfDEZuJsLjpLwQbRn9q670KC/iLROLJvvYE9cDX
         p4m9M7/pyJWHM5tz9jqpGqBacMZKXlnSej0NUy3z+Amy/e3V7znJHHvP7YwHhsW0M+jX
         c0pzcEmIY8sOt2mVU/tefG8F/O5nXXzL/hwQfkLMD4QfAWOhC+7xF7juZhzCpPKuf8U7
         7ZiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=c1UQIaLxtH1XNNrMxz/qAzkj1zlp/mbbRhT6Xkh7/yg=;
        b=EAjsMbCVVHcN0JOuo4ngUaEjyFRFGTGvpGpTIpQA8KRroq/bxcnsUmxl+JHbDtcDFm
         QkgZk6iDWYZd8O/+A3tfoQ+LUbEue6IPz8tjXm9b+6Dyhk+uN5kDwAFMfevY4bmoChCQ
         J79qpGgZkVoysq51Por4HPKo/S11D+D1d0W6o1t5N6fP4WYV/pOv5aAXpQ4zihlAQG5R
         E9EzN7bkmoGGzOwl7p5IsPjtamYXpyxZ3lMUp+a2LLsyS77Vp0kNG8SuYFi6kpZuHpZL
         ATDqxCWACWWJ5p4i7j26AGs6VPZDv697eQ9HG+DRhhY6TaubW9UCAKriPVkYRs/rudMC
         MRtw==
X-Gm-Message-State: AD7BkJK9R5HBE/5QxGpZmF3w1iUSB5g2sW0ZvdN/THHU/IC4H7ID4tcrUiNpbX+sKcii+w==
X-Received: by 10.28.19.130 with SMTP id 124mr7137493wmt.2.1458166675138;
        Wed, 16 Mar 2016 15:17:55 -0700 (PDT)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.red-79-150-198.dynamicip.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id c71sm5348871wmd.4.2016.03.16.15.17.54
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 16 Mar 2016 15:17:54 -0700 (PDT)
Date: Wed, 16 Mar 2016 23:17:52 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv2] extensions: libip6t_REJECT: Avoid to print the default
 reject with value in the translation
Message-ID: <20160316221749.GA4613@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid to print the reject with value in the translation when the value
is the default.

Before this patch:

$ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip6 filter FORWARD tcp dport 22 counter reject with icmpv6 type port-unreachable

After this patch:

$ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip6 filter FORWARD tcp dport 22 counter reject

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Remove default constant, as Pablo suggested.

 extensions/libip6t_REJECT.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/extensions/libip6t_REJECT.c b/extensions/libip6t_REJECT.c
index c30f292..5fa551e 100644
--- a/extensions/libip6t_REJECT.c
+++ b/extensions/libip6t_REJECT.c
@@ -149,7 +149,10 @@ static int REJECT_xlate(const void *ip, const struct xt_entry_target *target,
 	for (i = 0; i < ARRAY_SIZE(reject_table_xlate); ++i)
 		if (reject_table_xlate[i].with == reject->with)
 			break;
-	if (reject->with == IP6T_TCP_RESET)
+
+	if (reject->with == IP6T_ICMP6_PORT_UNREACH)
+		xt_xlate_add(xl, "reject");
+	else if (reject->with == IP6T_TCP_RESET)
 		xt_xlate_add(xl, "reject with %s", reject_table_xlate[i].name);
 	else
 		xt_xlate_add(xl, "reject with icmpv6 type %s",
-- 
2.7.0


