X-GM-THRID: 6209264752387948544
X-Received: by 10.67.21.136 with SMTP id hk8mr8552663pad.14.1445707108473;
        Sat, 24 Oct 2015 10:18:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.138 with SMTP id l10ls885340qgf.36.gmail; Sat, 24 Oct
 2015 10:18:27 -0700 (PDT)
X-Received: by 10.31.171.12 with SMTP id u12mr22404305vke.12.1445707107923;
        Sat, 24 Oct 2015 10:18:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id vy6si2783069pbc.1.2015.10.24.10.18.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 10:18:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id z6so145816449pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 10:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eNeQtHumy6if5JP32O5URjkhRx59NdDyCvAvkItLyRA=;
        b=lglusIDen8xscoEc/ENMMAHcTnnpRFxl9uonu/DsVLGGO6GEUXs5XxZY5rgsukbdb6
         VG1LWHmKE222e5oRAsY7DWQpZ+2u82utqiXl1oW0awullGvg6LBQDG4B/U863snrAHnW
         1MUzMqMwMJfxYZzK7HXLQlYGxsdh+wuv5irOPdFOVmDtuvL4fvr+X1TffmEhiMhxf+ET
         /C/QpTludHdnAY6rVb6MUeSnHR1tQceKTI9CmXRS8/6pnJQfHhqymtmBr+X9bzr6Hlxm
         eyRFfvsmUb9GYs9oGxAWYTb0sKLZ915UxGB1Y7Fl9VgbWGk2w5nfuODcyDMOhytyVjd+
         Ugdw==
X-Received: by 10.67.5.193 with SMTP id co1mr15363713pad.134.1445707107719;
        Sat, 24 Oct 2015 10:18:27 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.180])
        by smtp.gmail.com with ESMTPSA id xa4sm25192992pac.28.2015.10.24.10.18.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 24 Oct 2015 10:18:27 -0700 (PDT)
Date: Sat, 24 Oct 2015 22:48:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: Do not export static functions
Message-ID: <cover.1445706942.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes the export symbol for static functions.

The semantic patch used to find this is:

// <smpl>
@r@
type T;
identifier f;
@@

static T f (...) { ... }

@@
identifier r.f;
declarer name EXPORT_SYMBOL;
@@

-EXPORT_SYMBOL(f);
// </smpl>

Amitoj Kaur Chawla (2):
  staging: lustre: ldlm: Do not export static function
  staging: rtl8192u: ieee80211: Do not export static function

 drivers/staging/lustre/lustre/ldlm/ldlm_pool.c         | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 1 -
 2 files changed, 2 deletions(-)

-- 
1.9.1


