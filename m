X-GM-THRID: 6212630453300494336
X-Received: by 10.31.2.199 with SMTP id 190mr20048136vkc.10.1446490747499;
        Mon, 02 Nov 2015 10:59:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.8 with SMTP id qm8ls886592igb.36.gmail; Mon, 02 Nov
 2015 10:59:07 -0800 (PST)
X-Received: by 10.50.13.37 with SMTP id e5mr12381739igc.6.1446490747223;
        Mon, 02 Nov 2015 10:59:07 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id fa8si2118763pab.1.2015.11.02.10.59.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:59:07 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv9so162952934pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6Boy954En3bM3rRw4ODW6QJsCeIrcbqQxBrPInfwtRI=;
        b=CjyUlIuaBfzJibNKwPVk8xXr5HXQ2FVfG5r+FPB5slnHxCtyWhsy0wJJvizweA/tQT
         lkMWRsFZYPV4V5zl2tfWvY6X3IA4VyGjyexqX8XJfXJwTvXrL3IYsD+sl/qbcEVi/S9z
         q/zwChVzitLtQSQW/PFayzbu4spCcIj3roVK/iZN5tzNIiMcXwBFVFVSSF/gsDP1nTsZ
         U2e0rTEhW/ht2PrIPySSVljVUPbo2Uw9W/wdlU95rqmT/5xBsB5ZVXjXkdGlFwevJtZq
         QW9wrQbxLC2/Vx0Lc2jtX42K0q0eBuqu4Q49+c/NXzJ4SpgywPxyAhLLEzh1hePsxgVh
         XUwg==
X-Received: by 10.66.123.9 with SMTP id lw9mr28725162pab.119.1446490747105;
        Mon, 02 Nov 2015 10:59:07 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qy3sm5287899pbc.21.2015.11.02.10.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:59:06 -0800 (PST)
Date: Tue, 3 Nov 2015 00:28:58 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Remove wrapper function and tidy up the code
Message-ID: <cover.1446490656.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes a wrapper function and replaces its calls with
standard function.
After applying this patchset, code becomes cleaner.

Shivani Bhardwaj (2):
  Staging: lustre: tracefile: Replace function calls
  Staging: lustre: tracefile: Remove wrapper function

 drivers/staging/lustre/lustre/libcfs/tracefile.c | 4 ++--
 drivers/staging/lustre/lustre/libcfs/tracefile.h | 6 ------
 2 files changed, 2 insertions(+), 8 deletions(-)

-- 
2.1.0


