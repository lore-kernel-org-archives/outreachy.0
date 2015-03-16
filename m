X-GM-THRID: 8600984485888
X-Received: by 10.112.13.228 with SMTP id k4mr9310615lbc.8.1426535619046;
        Mon, 16 Mar 2015 12:53:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls729063lah.23.gmail; Mon, 16 Mar
 2015 12:53:38 -0700 (PDT)
X-Received: by 10.112.198.34 with SMTP id iz2mr9429252lbc.22.1426535618232;
        Mon, 16 Mar 2015 12:53:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id i8si762259wif.1.2015.03.16.12.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 12:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id cq43so46035481web.2
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 12:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GJMfBl2IdJUoFmXFoOw5e8ViSetwhp+8SnGulWh68lw=;
        b=FO8sdZOc8K5Z3HdjtlqMGI6lmR/pIGUCEC/9RmGyzMHWdUkjuU3I8kZ8kMJyOq0uoY
         9XPNYvmKuHHYxsqlwKfg4EXchz/0pFu3abjpIq28QrThS7VtIfV2DVD7vYFM5vGSXaCr
         4bOFCBMR+9XjNXCnDnp3u/wVE+lmwsBw+1Me80/Dcac3qfuPm4IjzGiL38j31cUbfxoO
         kFGrtWjVXvElN/IYHciJcY3dXr27oc9CwZw6I9H++YVk42iytVw0VcuyqTpL9t8Tc8t0
         pWMY/7kIYZ8d3ReicmYbx2eYOBpE6RNbgTHXIkxB99kJS4sNFLRnCx8933wKc8bz0e0H
         Ss9Q==
X-Received: by 10.194.94.164 with SMTP id dd4mr128528725wjb.56.1426535618158;
        Mon, 16 Mar 2015 12:53:38 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ha10sm16776076wjc.37.2015.03.16.12.53.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 12:53:37 -0700 (PDT)
Date: Mon, 16 Mar 2015 21:52:55 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] Remove typedefs and rename struct
Message-ID: <cover.1426534970.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes unnecessary type definitions for structs
detected by coccinelle and renames the structures in order to
keep the notations consistent.

Changes in v2:
 - update script to drop _t in dig_t in [PATCH 1/2]

Cristina Opriceana (2):
  Staging: rtl8192u: Staging: rtl8192u: Do not add new typedefs
  Staging: Staging: rtl8192u: Rename struct to avoid CamelCase

 drivers/staging/rtl8192u/r8192U_dm.c |  5 +++--
 drivers/staging/rtl8192u/r8192U_dm.h | 12 ++++++------
 2 files changed, 9 insertions(+), 8 deletions(-)

-- 
1.9.1


