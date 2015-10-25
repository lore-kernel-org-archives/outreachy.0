X-GM-THRID: 6209462121071116288
X-Received: by 10.107.46.18 with SMTP id i18mr23155432ioo.14.1445753062845;
        Sat, 24 Oct 2015 23:04:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.134 with SMTP id w6ls611126igl.33.canary; Sat, 24 Oct
 2015 23:04:22 -0700 (PDT)
X-Received: by 10.66.235.1 with SMTP id ui1mr10211503pac.36.1445753062428;
        Sat, 24 Oct 2015 23:04:22 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si2996943pac.2.2015.10.24.23.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2015 23:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so155472907pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Oct 2015 23:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Rrrh19rV8ygGK9dy+97tzF+Nk9i+aJInLUZ5jJQee4w=;
        b=JHoE0m43SMumizgHjJ+df2GPH/aTORJOsFQuMKJihM9aVGC1G7tm3nD0H2Gi2JRXzA
         FifgsEsgnzZkca7PCZQpgBrlsfx2FpqEWuJ+zwxOXEZIVBIDjhVn7R7DPNW6z1Zl6XqU
         cy/kU9ZoXbcDc5BIQnyl9QvgEdb8JrU9UyjjK/xhEWCbWQcCkFLt26YIvTF1C2FpxKf3
         zRocv4dtzu4LxiPskC06WBMRgp7Z/MDUq+jFbfPpupOyrmp14MwCoIdAJFtvrOXtuJX8
         u/oyQDzAOn3GADe7R1Qpha+3LqQiXxu8L4lCrlkHt6SOcRJK0R1e1wcp8ABRpas6mT11
         iscA==
X-Received: by 10.66.194.105 with SMTP id hv9mr14679829pac.79.1445753062266;
        Sat, 24 Oct 2015 23:04:22 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id st5sm27217458pab.42.2015.10.24.23.04.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Oct 2015 23:04:21 -0700 (PDT)
Date: Sat, 24 Oct 2015 23:04:20 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/4] staging: r8723au: clean up in file rtw_efuse.c
Message-ID: <cover.1445752141.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes the last 29 checkpatch warnings & errors in
file rtw_efuse.c.  It tallies to more than twice as many deletions
as additions due to the removal of large, mostly blank, per function
comment blocks.


Alison Schofield (4):
  staging: r8723au: use kernel preferred style for commenting
  staging: r8723au: insert correct spacing around operands
  staging: r8723au: move function type in line with function name
  staging: r8723au: remove external function declarations from .c file

 drivers/staging/rtl8723au/core/rtw_efuse.c | 320 +++++++++--------------------
 1 file changed, 92 insertions(+), 228 deletions(-)

-- 
2.1.4


