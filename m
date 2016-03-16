X-GM-THRID: 6261219545555402752
X-Received: by 10.28.46.73 with SMTP id u70mr883wmu.1.1458167044732;
        Wed, 16 Mar 2016 15:24:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.77 with SMTP id v74ls418523wmv.6.gmail; Wed, 16 Mar 2016
 15:24:03 -0700 (PDT)
X-Received: by 10.28.47.11 with SMTP id v11mr4005989wmv.0.1458167043550;
        Wed, 16 Mar 2016 15:24:03 -0700 (PDT)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id 185si231387wml.0.2016.03.16.15.24.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 15:24:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id l68so1708357wml.0
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 15:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SvGKf5uYsv1ofRTdtbDmIi5Mjq0AK4oysnVCXsUEKYc=;
        b=B9BwksfoNPF7qyGDRzWLX45LRmeUKtn0QMYryI426tVc9AZSL/beQNa5VWFh0OFvKy
         IVjy1op3sveW0iSPizkAMwb1ZbktQEnJAZ2QzC1g1J+VO3ACFml6Da4NS8sbSVo77c5c
         Oq7nUH4BrWHdbP0tkMn19upLpdDvpfJjZ0d1KiUKvQmOIpH7jdWsYVfZQv8kZerUEyoK
         WsDw5KJlSYHYraX5OpqZi2nSBA9/xPwZBf6AGZl2A9mduo/he8X8NZyxrwN1XK3Y032L
         4/JekhEwH6H2ywEqYwPzeWG5fH+QvBQFdHuHNRMLN2m3E1DMYlfDDUyI1XZbnngb8vud
         0kvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SvGKf5uYsv1ofRTdtbDmIi5Mjq0AK4oysnVCXsUEKYc=;
        b=UeWd4NX5Ljde9OleOtQ2UFRmofocpELzLYSxFPnP3DICxUh+6Qm7XaYdBmsr4KGXwb
         fQryWhEJxtCqFI5HrTjBOqEasikw0/bI8nQMTJ06Pwn/tpB6QK8AvOHv822+xZw+EAm2
         47tNCvLvg7GzLsV9Ds4P9o5NoroMYFe8JugN8ArQ+w5GgUSiUh6pYJ1M5QGDqCywrF9l
         TeEDIuf9Uk//oOcfi+YTK1xxBtVHBgu2W4MmiKKtj22j1bydAXPdySAhc34vSN4vF+Oi
         TkineZnYkdk+yZ26tX4EvJXQK4gD35N9NghJI4BHXQLHPIrIjefgVJXiW8hePRk8iL75
         WMGg==
X-Gm-Message-State: AD7BkJInx8O/6Q6QBVq9gIeo2bGEkYtE11geKiNTX+yNsz3bLTDjq9yZw31O3V49AkwW7A==
X-Received: by 10.194.83.134 with SMTP id q6mr6153882wjy.131.1458167043420;
        Wed, 16 Mar 2016 15:24:03 -0700 (PDT)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.red-79-150-198.dynamicip.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id e25sm27395079wmi.21.2016.03.16.15.24.02
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 16 Mar 2016 15:24:02 -0700 (PDT)
Date: Wed, 16 Mar 2016 23:24:00 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: shivanib134@gmail.com, pablo@netfilter.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCHv2] extensions: libipt_REJECT: Avoid to print the default
 reject with value in the translation
Message-ID: <20160316222358.GA5106@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Avoid to print the reject with value in the translation when the value is the default.

Before this patch:

$ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip filter FORWARD tcp dport 22 counter reject with icmp type port-unreachable

After this patch:

$ sudo iptables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip filter FORWARD tcp dport 22 counter reject

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
v2:
	- Fix default constant, as Pablo suggested.

 extensions/libipt_REJECT.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/extensions/libipt_REJECT.c b/extensions/libipt_REJECT.c
index 4148776..c211da9 100644
--- a/extensions/libipt_REJECT.c
+++ b/extensions/libipt_REJECT.c
@@ -171,7 +171,9 @@ static int REJECT_xlate(const void *ip, const struct xt_entry_target *target,
 			break;
 	}
 
-	if (reject->with == IPT_TCP_RESET)
+	if (reject->with == IPT_ICMP_PORT_UNREACHABLE)
+		xt_xlate_add(xl, "reject");
+	else if (reject->with == IPT_TCP_RESET)
 		xt_xlate_add(xl, "reject with %s",
 			   reject_table_xlate[i].name);
 	else
-- 
2.7.0


