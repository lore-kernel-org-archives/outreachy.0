X-GM-THRID: 6885049612383551488
X-Received: by 2002:a05:6638:d0c:: with SMTP id q12mr9090833jaj.95.1603050581053;
        Sun, 18 Oct 2020 12:49:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:1b42:: with SMTP id b63ls1486663ilb.6.gmail; Sun, 18 Oct
 2020 12:49:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwglUw35E3G2sDwJTGb4kBApb2o2RFISEuW9bQvURAoRhs9/ZaG3Pv5YULYHEXhaLUAl5/R
X-Received: by 2002:a92:194a:: with SMTP id e10mr9226481ilm.26.1603050579756;
        Sun, 18 Oct 2020 12:49:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603050579; cv=none;
        d=google.com; s=arc-20160816;
        b=GtO9xY0WHA8Ki13sm55cofg/n2WJfHq6gmyQ6F1nt+tMjjS6RMfagpe+4dgwp6tdyr
         pSMOSLbK5RQsaKujiqU4ftWpqxGK/0oyABypUWUmTAgszoGkXieNU3DN4cgUZJekvVfY
         DxZ4KAetyvHGnehSSQBFJSc1gjRD8OPcpSoIGOgE2FyzyOMcTiUdM70c1TDM/NJZ9J2J
         PUJcLZzeyZiO+ct7gw+hq/FZo0auyAaSmkWm50/RBJeqPjuX3zZ0MANE/NJTTRcpr9H1
         zm8F7hNeqDoGqX3PpviGZMNDJ1N8ivgiDD7lg6PhFrmBNzRxEK9BS/SYxSjREknFRace
         lT+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XBjCi9n5sRXOHmjCnHoQMv9TMlv0+e+xdsqW9A8AbOo=;
        b=CbbqjGEImorABDbR/KvhIn4j5wDMuInxj8hkTnnzzHUYmQYjUg/sXVGVD/u1D71CG7
         2IbIafQiZVjnniuF0TqqVB0YKlgXgBcJJ3Fz0toure4W59ns+mhGa30ulwdspJb8IwRC
         EVsO2iXClG5nvrhSYERURO0guJ4enGFx/kaU6ibyF2oMALJy3fH8MJ7KuRqScBa9xtAw
         vdl5ys5hLLAZaaWU7dZtjccXrdosVGMg/XI+NBmL9OAH7pG87Hldn0/qB4ixn8RS2SdE
         VytnepZJyq+BgYK+9zyEAiQY9r/q0Nu2snmVYT8m/Qhnq/yl0hlfWxeABsEDB3wxa2Gi
         fYiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g57EGboQ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id j68si455611ilg.3.2020.10.18.12.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 12:49:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g57EGboQ;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id bf6so1891327plb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 12:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XBjCi9n5sRXOHmjCnHoQMv9TMlv0+e+xdsqW9A8AbOo=;
        b=g57EGboQB/k2Ynwid67H8sfmdLRbBRB1fqV8z0u/EMJLAwAmAeX4MPxlpDlpqsW6OC
         gPXWiGhx1rg/R+uXRd2ELMMkMs0/b61BnrTy8obPxXSD2zX7TJ2EOUMBHGqsqIAbhfBi
         3n/eO05OPG+gAsrPMv93UYznEZUwWpk3sKA01YUG1xKiUiZ2wq/GDbXBSUkXAlTZDqlU
         MLyfhc3CgyTVwK+4aSg3+FuzKijRI5PylIDu6vOCAfdIrjBcfwMFa8B6F72kzWKRB/5H
         4TLw8B2mGM7ZaT+BJjIMBvf2X2DjsnEkzGyMp/J7hmsu/IOurL1t9RF4UbwGPiA9kTGY
         zV/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XBjCi9n5sRXOHmjCnHoQMv9TMlv0+e+xdsqW9A8AbOo=;
        b=c3SLUfwvEjspsRy8m4axXKY190pEv0XmK5kuAEO1A3AJtlqbjROKS6nuTQwnL3fOya
         bf5beEs8FFaRzN2cB0P4TUWjmlAwM998e/4VOhTeKwg27wO8QIc8sg/dKxlkad1V+8OT
         v0MSj7yTwKC8B4ZglACoaMzAEgh0qJ/IHpY+m2yYm4tEdVgvVyZB67q1ifh7E6jPFQgj
         aX+9brF21njYtAFOV0yOuEGpD1R9tix6B8RaaWnYb16L7eKryLATispv/eYaLbJN9hvD
         4RIifkxLjqYujGOTUrxY0NlhZJWCSPIi95yHAKnb5a9sZickQqG4SVwOKz9bS1sE8jqu
         SZFA==
X-Gm-Message-State: AOAM532r7FpRc9k/Pdc+xwbIdwJVvHAWoDu7UbB7V55Sds+GJHweOXF0
	KPn9mI+ZGJ8pinmqDzo1JQZ/2/Nc9x3Wbw==
X-Received: by 2002:a17:902:8ec7:b029:d2:42fe:37de with SMTP id x7-20020a1709028ec7b02900d242fe37demr13758283plo.23.1603050579080;
        Sun, 18 Oct 2020 12:49:39 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id i25sm9351504pgi.9.2020.10.18.12.49.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:49:38 -0700 (PDT)
Date: Mon, 19 Oct 2020 01:19:34 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	devel@driverdev.osuosl.org
Cc: mh12gx2825@gmail.com
Subject: [PATCH 2/2] staging: comedi: combine split lines for improved
 readability
Message-ID: <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com>

Instructions split on multiple lines can be combined on a single line
for improved readability of the code.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index 7db83cf5e4aa..a3b1be623861 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(!route_register_is_valid(4, O(4), T),
-		 "check for bad source 4-->4\n");
-	unittest(!route_register_is_valid(0, O(1), T),
-		 "find first source\n");
-	unittest(!route_register_is_valid(4, O(6), T),
-		 "find middle source\n");
-	unittest(!route_register_is_valid(9, O(8), T),
-		 "find last source");
+	unittest(!route_register_is_valid(4, O(4), T), "check for bad source 4-->4\n");
+	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
+	unittest(!route_register_is_valid(4, O(6), T), "find middle source\n");
+	unittest(!route_register_is_valid(9, O(8), T), "find last source");
 }
 
 void test_ni_check_trigger_arg(void)
-- 
2.25.1


