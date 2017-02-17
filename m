X-GM-THRID: 6388169342040670208
X-Received: by 10.176.91.86 with SMTP id v22mr2184194uae.12.1487361579461;
        Fri, 17 Feb 2017 11:59:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.26.214 with SMTP id 205ls769993iti.12.gmail; Fri, 17 Feb
 2017 11:59:38 -0800 (PST)
X-Received: by 10.107.189.130 with SMTP id n124mr3191205iof.0.1487361578764;
        Fri, 17 Feb 2017 11:59:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si954197pfd.3.2017.02.17.11.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 11:59:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 19so4700709pfo.3
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 11:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=urKs7NLum1JrqzSs/+xanGFpoCF1bLaQ1T6GV0SPN/4=;
        b=fucL7XCS1dtQ/iQg+iosTf6WlWgB//XKoODp7oZqa52c37uf1CZcX8LveOHNWjGSu8
         sBftSEq73oQkoike6gaLqrO6tXyL6gYVSU6jslbqVpDAD17oDLRnHwDa3IqVjpB0cfio
         c8yr4iNn2OCO72EOeMqNHiMaNJ0RPqk1Vssp4fkWeRYfIvPnHfhbMQWMw86nRJUY4bq4
         noqTLeAeiS2GvK01zmXoXymin0wMkXvBAUQrirZ6yxk7X+ft6JVdywQV6224QW0+0poF
         QIsYV56QR1I6eV75v4AIK+KeSoobt14iJ3n7dAUQDxK/Rf5fFLPRPTMB0nJwXfOmjSiN
         cb6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=urKs7NLum1JrqzSs/+xanGFpoCF1bLaQ1T6GV0SPN/4=;
        b=Wc73g4qajaeSrBRqAI6RsJfbodmUyU5mjeN/5mRIBu2RNnJyMAn4MkmgFVPu4kafT5
         Ijyd9a9vuV6NPfRR2kGLChLzGv6zVLiUDc0MTqkQbM9l6Dse2MHX3h57bTtPmjGkvScA
         3Kti8Aqs7ynx9EUauawS/EirAKYRjAAaSDh8B+Sc4BTzWQBQ7aWEiVYqC9RHGvNPGtKP
         77/WIP7R2dC/tfiPnAieaEUStPEVJvYA0nVyJ0gqMzJdve7ZbaqtDda0t6+diVibO1Pc
         9qcOwk+z9m+xrytZf1rmRVCDeWEIQh2Bk5AyEVx+2af0fmcfd4uzO3+8pzJd2kr0prF4
         Q9GA==
X-Gm-Message-State: AMke39midXW7yjL20elagRHs/ogZ6Qj5djDNL9LefN8DFseKxwpoxdftY9KuRaKIMI6jsA==
X-Received: by 10.98.18.217 with SMTP id 86mr11365119pfs.90.1487361578521;
        Fri, 17 Feb 2017 11:59:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5206:c79d:5773:ab8a:9cfc:4b88])
        by smtp.gmail.com with ESMTPSA id r1sm1434847pgn.47.2017.02.17.11.59.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 17 Feb 2017 11:59:38 -0800 (PST)
Message-ID: <58a7562a.418f630a.5902a.3267@mx.google.com>
X-Google-Original-Message-ID: <20170217195932.GA7362@<rvarsha016@gmail.com>>
Date: Sat, 18 Feb 2017 01:29:33 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/4] staging: rtl8712: Removes the FSF mailing address.
References: <cover.1487359493.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1487359493.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the checkpatch issue by removing the Free Software
Foundation's mailing address from the sample GPL notice. Because the FSF has
changed address in the past, and may change again. Linux already includes a
copy of the GPL.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 5638fb6..f5526a1 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -13,10 +13,6 @@
  * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
  * more details.
  *
- * You should have received a copy of the GNU General Public License along with
- * this program; if not, write to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110, USA
- *
  * Modifications for inclusion into the Linux staging tree are
  * Copyright(c) 2010 Larry Finger. All rights reserved.
  *
-- 
2.9.3


