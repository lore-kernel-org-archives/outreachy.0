X-GM-THRID: 6388169342040670208
X-Received: by 10.129.34.130 with SMTP id i124mr2525053ywi.37.1488016532418;
        Sat, 25 Feb 2017 01:55:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.3 with SMTP id e3ls2429848ioe.45.gmail; Sat, 25 Feb
 2017 01:55:31 -0800 (PST)
X-Received: by 10.99.100.6 with SMTP id y6mr2532625pgb.81.1488016531921;
        Sat, 25 Feb 2017 01:55:31 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u12si2208475pfd.3.2017.02.25.01.55.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 01:55:31 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o78so486918pfj.2
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 01:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pzfE41oVasikMJFR3QhqZ07Ijft/TiK7y4ZPTZlBcgU=;
        b=lLKc6D+AuM4psc6bYXJYD3Fg2IPGD186mTmMTdPYUZM4dldZhrVy0CLLWMuwQPhcSS
         pFqK4S67CifaUguM9uBqBG/4shWby9a3radVoLrdnKCVjwc62FJQNeR0O9xa2tVFnsXJ
         3Bb/0xWSaVn6e32TYQGaE9aOEJrsb/iGJrZ5vw793xtk2cpnVnQHMBCjvQ1WzuZPcRwS
         D8lisTt0OQOGiK6TvTf0z82/V2HFaTrUxsq7T8g8ZQQSwkScqX/RPzcXpwCQ1lYfvMJU
         P6Shgg5UJKIL1/Nkg8eVIy64BBFQrCbpPxjdR+UDtHgB3GgJ018aV+B8d0FJ5bhzhQMN
         K4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pzfE41oVasikMJFR3QhqZ07Ijft/TiK7y4ZPTZlBcgU=;
        b=IPB7O+m72x7S6JQSAWKjZFu27SLsqudqEqXxeCEo9+zGbFWPWLy8qayCIKP3mMxf8E
         d4QnvSNS0wF0acMm3IDKYG2jJm/cB0CGgIG9plzv6HQNyOQf4B97NX3HQ3T4y5CQyiCp
         FwhP7ktfbBjh6COo1pMgIKkZnTLBnmuSb7hEe06jFfY5OXxKVP5u/h4dnm1VmLXXK1od
         8W7ifdNeIlT0UaeH547/emVn+Wh2lIUd+gNfkDVQkldhTVdOha6COXBCInjaq8A50+/Z
         V+AU6WtoMLLYWCE7cw5IIOT3DRH31Wruc7cM4eTGKYIt72XQJuYre5DXvXRdFiv3f28i
         Glfg==
X-Gm-Message-State: AMke39nGQFQdz0JtbpJkWgcZj8yP6gRLmEO4UB42gtXVSfMW+FnMwPJe0rwYiKyLhrkTFA==
X-Received: by 10.84.231.134 with SMTP id g6mr10201116plk.110.1488016531736;
        Sat, 25 Feb 2017 01:55:31 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id 129sm19606525pgj.59.2017.02.25.01.55.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 01:55:31 -0800 (PST)
Message-ID: <58b15493.8709630a.800a5.9707@mx.google.com>
X-Google-Original-Message-ID: <20170225095526.GA4317@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 15:25:26 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8712: Removes the FSF mailing address.
References: <cover.1488015591.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488015591.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

This patch fixes the checkpatch issue by removing the Free Software
Foundation's mailing address from the sample GPL notice. Because the FSF
has changed address in the past, and may change again. Linux already
includes a copy of the GPL.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/rtl8712/os_intfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index 1d4f507..5f43a1a 100644
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


