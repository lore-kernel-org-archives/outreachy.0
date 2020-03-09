X-GM-THRID: 6802337436932243456
X-Received: by 2002:a05:6602:2591:: with SMTP id p17mr15321902ioo.38.1583792603252;
        Mon, 09 Mar 2020 15:23:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9cc6:: with SMTP id x67ls38402ill.1.gmail; Mon, 09 Mar
 2020 15:23:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtMpGcAnGxW4qrhsj6XmHNdO/Ak75CpUpt8A4CrvzRlaxlpbQ1TXI04O1f6qfmdiP1wAK1t
X-Received: by 2002:a92:af8e:: with SMTP id v14mr16710743ill.150.1583792601943;
        Mon, 09 Mar 2020 15:23:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583792601; cv=none;
        d=google.com; s=arc-20160816;
        b=OV9+wilXcE4yIy2sma/yhUiHxE3qLEx5nk3vM+6bwR1GGhad5e+IXCtuWhhHJQw/xi
         mdWJOBd0XhLC2gs7mkOQ6TX0w2bD8RRDhhuYnJ0CmJd4V7DnmO+f3zjn6uYd8CvQ13Bw
         sG5U7we4SKadF3gOo77KCjgnJkWKJAUEYaiwtDMSsGlY09Z9C3HRDyTTvBrOwEjmKLDq
         2aVdn0aMBvwmDKBhd7jHpT8kGiWMoOpy/+WEP1x09S4EzofzR1ab+yszQYGeFYd03c12
         uCVDDL218OudNdzGQuRrRd17KKZ3J7XoFFkv4dew8+7BLXHx1tjBwdJThIVzs9Bag53L
         a6YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=CYZInqEGBbas0gkZmiSN1cGimqZX+wj4ijFirG4/gRA=;
        b=RzMWeQuTZx8Tgpa79KfUgD0OQNl6vqAnQDFHmI4heyZtKyaVZUN/85Pc+nHd1WUymQ
         9UeccXWt2HTLQZ9k3zvSw63i5dLw6UPMbe4ccOMQFbxuQF531dwjlqhkrxR07rtVvhp3
         qFgo9tyKJj/IIWwVHsgnxskQ3wkiatNJc9YbjRnuhwZe13PGAc6E68RAGvAj59bd9BaF
         0GZoWBYLGoITjZ2KrKHGFE1CPRXTEAiOuOtOFIVCfuh0765GVGcC/YZCHGDsZxN+VXDu
         h/9wOhx/F758U/kwdvOlKexu1CXJdnIcoHBLkPFbYVWH1yF95XYIbgj+uxTVqqqV3Pxq
         DXLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=yNuUbUIb;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s201si272252ilc.0.2020.03.09.15.23.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 15:23:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=yNuUbUIb;
       spf=neutral (google.com: 2607:f8b0:4864:20::443 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x443.google.com with SMTP id b72so1920094pfb.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 15:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CYZInqEGBbas0gkZmiSN1cGimqZX+wj4ijFirG4/gRA=;
        b=yNuUbUIbyTeG33tWZsJaPzeCD28zDE/Ca4hux1cvdaQhkRy3dmCE2qWd/+3iuAL5+/
         +Q0HVhWtSaAjUCTJOryOc+64Bdgu80Fl9Hp1Js6s7ii8F6oDuh/GiMKOT4YDkbutEE0o
         ABOE5cYkOceMK97XDNwg8VTdl3uJvBEA6tyKuPit67n0U8zfEXlzyyCPVs86x9tT7vN4
         JgoipjXrgpQXltibXeIGP8NA25KZDGbkgtsEmRCAoF4EcEpl9xH3DeLDBMGXDshddXOo
         kCWake3sMRTTBhnIlkEdSuPk7sOzd4SjGMufry0TYrySWZnJ3wWZ9ZrSeYr342lY8a9O
         Sc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CYZInqEGBbas0gkZmiSN1cGimqZX+wj4ijFirG4/gRA=;
        b=eIOZ/XRz+PqijBVz+x76zvfG9SdukqipXONhvOhefCrHvxodPOCswiVBPo/rdvYS1m
         n79aHJ4iPrvM5Ffp6eavsxYjZ07l2cDHKwZoNx+2xhsahsBrpI8VyylZtRbesN7V84vx
         xGWgSZ82a7AyIlbxDqZdoXvdrr0gdN6os2AbRupUQzm0P83XMOUUFRlyyPrg5JsTwRul
         mgWGc68qY/LGPQngV1oVIMqvvbuEUIoauaQL0siamXaiXJpZDJEXfeDIshOBr/Cyq5qU
         9tHQQ48qaGOyfoSZgTFXQpiSWNleuBdyYbQHbh5P9E5CocnmuyY+oPwH8qXhZCkmhA24
         1fdg==
X-Gm-Message-State: ANhLgQ0S2uOGi8RotriEjuClgZzHQ4zLhx2QfujIFmpMu5WTKgZ2jAhJ
	0X1a+VI1sS/RYfGOnl8/fkQ6nru+WIDhSA==
X-Received: by 2002:a63:1c4a:: with SMTP id c10mr18805918pgm.252.1583792600685;
        Mon, 09 Mar 2020 15:23:20 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id d19sm772038pfd.82.2020.03.09.15.23.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 15:23:20 -0700 (PDT)
Date: Tue, 10 Mar 2020 03:53:13 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: comedi: remove comparison to bool
Message-ID: <20200309222313.GA5367@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

The function route_register_is_valid already returns boolean datatype,
hence remove uneccessary comparison of its return to bool.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
index 52df4b7c8d52..8387a9627325 100644
--- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
+++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
@@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
 	const struct ni_route_tables *T = &private.routing_tables;
 
 	init_pci_fake();
-	unittest(route_register_is_valid(4, O(4), T) == false,
+	unittest(!route_register_is_valid(4, O(4), T),
 		 "check for bad source 4-->4\n");
-	unittest(route_register_is_valid(0, O(1), T) == true,
+	unittest(route_register_is_valid(0, O(1), T),
 		 "find first source\n");
-	unittest(route_register_is_valid(4, O(6), T) == true,
+	unittest(route_register_is_valid(4, O(6), T),
 		 "find middle source\n");
-	unittest(route_register_is_valid(9, O(8), T) == true,
+	unittest(route_register_is_valid(9, O(8), T),
 		 "find last source");
 }
 
-- 
2.17.1


