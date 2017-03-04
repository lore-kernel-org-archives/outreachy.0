X-GM-THRID: 6393354642699321344
X-Received: by 10.99.152.9 with SMTP id q9mr3209583pgd.84.1488638070947;
        Sat, 04 Mar 2017 06:34:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls10312527otb.2.gmail; Sat, 04 Mar
 2017 06:34:30 -0800 (PST)
X-Received: by 10.157.16.117 with SMTP id o50mr3219019oto.78.1488638070556;
        Sat, 04 Mar 2017 06:34:30 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 207si522257pfu.8.2017.03.04.06.34.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:34:30 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so12671605pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L+/IrE613aZ3IO/W3GOZXIhgu5lIPqoQMtaTKOtl6b8=;
        b=teQ4D6qzYvfBALnknCR5nd43P2ghF8Emow3uhnKpJyZd0syRofknpL+Dgk7S6jP6YK
         0vHgmrizmABcueD62oxGz4PPHsnhufeiESN6+HjdNRLIHC6qfPxRKN5nrKDt4A7/rkrI
         Sw1/+R1F2A2G6F3ZxJHAAXSHTOc7q093x+Gk+aLLV7yjwNEojo+uTUq5Nbb91Fj5CqSU
         A2DQ47w9zanwRsYzJr5uQmtNMvep29o2c5mZguu+0rdV7xBW+zxj5nY+mV6295K9Tuxw
         OzMHgaCSepJ3aHoUv1WXRpVDkvqUPv22Nx61uO06NUv7eRLHd5IK9iH9J3DV+xKSKjTV
         4CHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L+/IrE613aZ3IO/W3GOZXIhgu5lIPqoQMtaTKOtl6b8=;
        b=buKxJ4tqiwf2PX843NFr9tsWFF073TAq3CdweEWm7MvkZvtpLRUM31uyr4+BnL/Z/g
         nnhl992xhb0IkjSRu7drR+D/C48xTCApTTOnRvrZqbnvsFVP0ZWlDHDyL2GGn/4Q4Z8N
         /g8ehJsjKjYKkHl7BVofxDrSfjYqXacbeP+wA8pzePuwHXgVRjIX1hWyZlf3cS621fSG
         kTj4SnuTToXI6aOA8KitA8MsTu9eQlNwK9eMlINJKXD9G7iZcqnf6/ezWR09JOEQcB+E
         uCp13yJh6w4VGUDKsIWBHTXukO1bd+XvRKx2L2h/u0dS84mTt3U2fE3pRADRVZZDb/EJ
         6PHw==
X-Gm-Message-State: AMke39nqAYxUjTC7u6kdcvNeBIZ5stf+9Ru18+O0YdyYuDDUpLhDr00CI2OXX+4+hFdLqg==
X-Received: by 10.84.211.97 with SMTP id b88mr12232150pli.113.1488638070127;
        Sat, 04 Mar 2017 06:34:30 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.27])
        by smtp.gmail.com with ESMTPSA id v143sm29868187pgb.47.2017.03.04.06.34.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:34:29 -0800 (PST)
Message-ID: <58bad075.9561630a.3ee37.bb94@mx.google.com>
X-Google-Original-Message-ID: <20170304143426.GA4330@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:04:27 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/9] staging: media: atomisp: Fix line over 80 characters.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Line over 80 characters are split to fix the following checkpatch issue:

WARNING: line over 80 characters

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
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


