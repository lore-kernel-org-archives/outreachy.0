X-GM-THRID: 6393354642699321344
X-Received: by 10.129.86.138 with SMTP id k132mr3721804ywb.23.1488647068594;
        Sat, 04 Mar 2017 09:04:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.2.76 with SMTP id 73ls1455384itu.13.gmail; Sat, 04 Mar 2017
 09:04:27 -0800 (PST)
X-Received: by 10.98.252.205 with SMTP id e196mr1683366pfh.26.1488647067710;
        Sat, 04 Mar 2017 09:04:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si591686pfd.3.2017.03.04.09.04.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:04:27 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 77so2943546pgc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HoBa3etIz+kf+tIrpUXWljDhX+h1VpEdabU+/iG7Srg=;
        b=sC84Hq+vtX28nEp569zeo17S970+dxADcDPc9OUfWCKgoUvaQV0mzdTvTbvYWPRwSA
         dWzBYfeSsv+WSHRcKhHX6asC8fwco/EOCurqTwyePLRRjqKXYMEIkvbzzhDaxvKrQHb8
         12lnKgBmXRSJNSPcPuR1kMkH33f+o5vgqOEGAzkn9oGd13/zHnLWIzr2pF6mi1ASll+z
         2T67Rfq5wKyQs/nMg1H3Iez7GaKqppQtKZUcpolASLzRrvnwELNx50Lver9te6dKay/q
         lSfW9Tl1nNs7hjH1ZjbQCXOtWM2dcYR300FZmaZ7DdzZVbFuFNO3vhSTMe+w413iKxKr
         IHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HoBa3etIz+kf+tIrpUXWljDhX+h1VpEdabU+/iG7Srg=;
        b=OIZuIr7n4SPoWhBd8NjE8gJb/azB+IWVXcufDeyPvXnP7FXuTNIVN3mWnkd73J6imU
         JDJ/ZSgIymPE5IjxJ2HVioeoMhFUVlu+mtfU3EN1Bk2P1QGK08p/oAimO/GxJvnpK3Ef
         yVTe2yO6D5WYmgrBiBI8Ls+QdBUDHTw65mognELpz3vmzRi58xyrzS9TNRWPy2l0jkB+
         nreWHTPI9qsCJONizVz1RsKfyZmpzR8O99SFJ9ZesGJP9Npxt3EsdSBvDZV+Ee1QvRza
         ZpSK/rK3yeABgB0tlULZGXDQHCq5v+apv3mIdBhNJsSBzKGvFppvtaGnGbTii1ciSUxi
         X2Lw==
X-Gm-Message-State: AMke39nEdJKBZX6fQBbNPv26lszFndjIB+HvnJybo1aTek33OGYodfwIHtCapLfT76Ob5A==
X-Received: by 10.98.138.132 with SMTP id o4mr10520546pfk.70.1488647067484;
        Sat, 04 Mar 2017 09:04:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.19])
        by smtp.gmail.com with ESMTPSA id 19sm30223520pfo.50.2017.03.04.09.04.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:04:27 -0800 (PST)
Message-ID: <58baf39b.930e620a.3fcd0.d512@mx.google.com>
X-Google-Original-Message-ID: <20170304170413.GA5497@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:34:13 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 2/9] staging: media: atomisp: Fix line over 80 characters.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Line over 80 characters are split to fix the following checkpatch issue:

WARNING: line over 80 characters

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No Changes.

Changes in v3:
- Added change log message for previous version.

 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
index ee91f83..b251ba4 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_mipi.c
@@ -210,7 +210,8 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
 	*/
 
 
-	words_per_odd_line	 = (odd_line_bytes   + 3) >> 2;	/* ceil(odd_line_bytes/4); word = 4 bytes */
+	words_per_odd_line = (odd_line_bytes + 3) >> 2;
+		/* ceil(odd_line_bytes/4); word = 4 bytes */
 	words_per_even_line  = (even_line_bytes  + 3) >> 2;
 	words_for_first_line = words_per_odd_line + 2 + (hasSOLandEOL ? 1 : 0);
 		/* + SOF +packet header + optionally (SOL), but (EOL) is not in the first line */
-- 
2.9.3


