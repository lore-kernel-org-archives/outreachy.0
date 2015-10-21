X-GM-THRID: 6208143559134019584
X-Received: by 10.66.194.166 with SMTP id hx6mr8793008pac.37.1445446060007;
        Wed, 21 Oct 2015 09:47:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.135 with SMTP id r7ls469629obi.84.gmail; Wed, 21 Oct
 2015 09:47:39 -0700 (PDT)
X-Received: by 10.182.52.132 with SMTP id t4mr8679582obo.16.1445446059446;
        Wed, 21 Oct 2015 09:47:39 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ce6si1213075pad.0.2015.10.21.09.47.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 09:47:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=navyasri.tech@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so59485343pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 09:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=oVTt0mOQaWIcJw/6EWKFGbodqVayUSJQRAGyKfpQoVI=;
        b=bfw+JlaTdZEBrrP5GZ8PV/KbK01CvgqYkmDlu6T8AA8HZLu6xeNHj3BXVV5biuxWRU
         6hbktQYjmj7IrJie6pjePsNks7QEqa4oPmfftWt7/SjWdx929hbTkrFaFJbHSa52RG8e
         mvj718j88qvgcsC3rF7JUkR72qcPcTjQFCmYCliAs+A6wWoUEGI/Oi2UajXirnhxYgqb
         WxyVqSRC4yk43ErtCTk1vDZm4HtLEqiRAe4kiKa3SHQilW6uUNoiJVt6DDcQF8/rqWCd
         V7/iKuMX/iKAD2V+qnPE+7vc75rIqB9tDE9fKQ/Th2bvcEPS6czMArR9SlPkHY1wYlLC
         /tzg==
X-Received: by 10.68.222.163 with SMTP id qn3mr11902019pbc.54.1445446059271;
        Wed, 21 Oct 2015 09:47:39 -0700 (PDT)
Return-Path: <navyasri.tech@gmail.com>
Received: from navya ([27.6.33.173])
        by smtp.gmail.com with ESMTPSA id sz9sm10068962pab.13.2015.10.21.09.47.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 21 Oct 2015 09:47:38 -0700 (PDT)
Date: Wed, 21 Oct 2015 22:17:41 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/5] Improve code, codestyle in xgifb.
Message-ID: <cover.1445445320.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset clears checkpatch warnings in vb_init such as:
space required after that ';', remove blank lines after {, 
remove blank lines before }, remove multiple balnk lines, 
comparison with NULL, space required after that ';'. 

Navya Sri Nizamkari (5):
  Staging: xgifb: Add space between ; and variable name
  Staging: xgifb: Remove blank line before } and after {
  Staging: xgifb: Remove extra blnk lines.
  Staging: xgifb: Fix comparison to NULL warning
  Staging: xgifb: Remove space after cast

 drivers/staging/xgifb/vb_init.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

-- 
1.9.1


