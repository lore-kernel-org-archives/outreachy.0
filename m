X-GM-THRID: 6393354642699321344
X-Received: by 10.157.24.27 with SMTP id b27mr1777608ote.36.1488568876517;
        Fri, 03 Mar 2017 11:21:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls9961890otd.46.gmail; Fri, 03 Mar
 2017 11:21:16 -0800 (PST)
X-Received: by 10.129.104.85 with SMTP id d82mr1756473ywc.9.1488568876189;
        Fri, 03 Mar 2017 11:21:16 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 207si206286pfu.8.2017.03.03.11.21.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:21:16 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so10619673pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=L+/IrE613aZ3IO/W3GOZXIhgu5lIPqoQMtaTKOtl6b8=;
        b=TwIRx946xJcST5wBnHu4UTUGGTl62QXl6Do5r6DUlDnPy4txb0sRhHGfZQGcqOAOYC
         qEshTk+J6GyPKR5yjFT38uvIf1r33xWgraxCzdaT01XjeUNVPLzdhSIkdvo79l5IwhIx
         ooIq0DNE9+fJ1IUDwSWoB47PqGUvyX/rW3sihT6qeN2PwvQkJ38iIhyZbfPOfV63oDOg
         ckZ61e7EUmmcc/dDiU7Lv/JLlJ96lH0Zipa6suAvEGSy42uIwX7CdVISZCvmnic4aPAl
         x4dwGboiINqAQ5jy6QzAk91uJgrChqr2KcLzKMq3925gUgIFSLkk7dsW2/aCfBgixUAD
         ZTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L+/IrE613aZ3IO/W3GOZXIhgu5lIPqoQMtaTKOtl6b8=;
        b=pgeHr2n3aumNrWkjH/rXwaqSaHfue2/D4jXHCx6nUIlZKgi2LIjKRon3AZSxXj1z8o
         oEbhUl8YjP/3UkTvF2+IpzGkT24e06vsOw/sN90D2ETIMwRGQSNn3PP6VRYHid6UMVgJ
         aOWrf0jLSc0W6lcvECUSEBC37lqr7oyGKOBEDDVTWgrjQ9vZfQ1kmPK7bRIvin02Zirp
         0YO9GQHQC+hI9pfBZWdRd0ojMrTPdktEeTBqyiJxOjbHTvmKjH/Nos758tAyZGMGIcp+
         jweNZMnAKGQndMumxn/lEhE7+GLQ1Ki1PEU1VOs7PRM1WD+tTf5ZuB73DywDfIEMsDST
         GvOA==
X-Gm-Message-State: AMke39nV6/hefiYW2PJbjexUtOF125KKyIr06jOrcg+On9r3GfflP/tXQMQuJ6UNx/5BvQ==
X-Received: by 10.84.149.168 with SMTP id m37mr6355983pla.97.1488568875803;
        Fri, 03 Mar 2017 11:21:15 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id e13sm25029199pgf.48.2017.03.03.11.21.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:21:15 -0800 (PST)
Message-ID: <58b9c22b.0daa630a.ce24f.2f79@mx.google.com>
X-Google-Original-Message-ID: <20170303192111.GA19931@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 00:51:11 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/9] staging: media: atomisp: Fix line over 80 characters.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
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


