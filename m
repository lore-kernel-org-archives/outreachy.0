X-GM-THRID: 6208887489417969664
X-Received: by 10.66.102.38 with SMTP id fl6mr16954122pab.48.1445892409178;
        Mon, 26 Oct 2015 13:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.25.166 with SMTP id d6ls985034igg.43.canary; Mon, 26 Oct
 2015 13:46:48 -0700 (PDT)
X-Received: by 10.66.235.1 with SMTP id ui1mr17252109pac.36.1445892408845;
        Mon, 26 Oct 2015 13:46:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si3748601pab.1.2015.10.26.13.46.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 13:46:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id z6so198164885pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 13:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=BlFSdo/+rpazChOy2myvjIx9EFA8vJv08ZywWM9Vpu4=;
        b=MbEPjTT7QL1leoS7sAIdhA9tDH5gFg6bHPc7Oy/svuRIzzD0hWF66Nc+ery7fnHSE4
         IfWHVG65TOWdOVn7QpYY9BecU9v435x2dp3lIdZI+E+i5x6eVlVd/4nBz9nDs86IiHey
         CEHYFmZvK9kkVi51fE5elSVH48QXjhV7laK60MSx/eu9RdLPT4SU2uO47nMCXXgAe/wk
         fG/petY8/kXd8TkOFuUPevo9Y6kE3EOg2RisNwc77XIwox5qbCfKvXrHA7dRt3+MCGne
         KbsgJm2K8CQBN5fzehmkDsxGTz9ZTEqBbE8LWS+OOBBUFnGfHFOppx0aPlU+ecMLlQWA
         w0BA==
X-Received: by 10.69.17.136 with SMTP id ge8mr23730994pbd.119.1445892408722;
        Mon, 26 Oct 2015 13:46:48 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id r2sm35654617pap.23.2015.10.26.13.46.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 13:46:48 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] iio: dummy: scan index enum update and clean up
Date: Mon, 26 Oct 2015 13:46:42 -0700
Message-Id: <cover.1445891339.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20151023165418.GA18718@Ubuntu-D830>
References: <20151023165418.GA18718@Ubuntu-D830>

This patchset obsoletes the prior single patch:
[PATCH] staging: iio: dummy: clean up the define and usage of dummy_scan_elements

It is split into 3 patches that
1) udpate the existing enum list
2) add timestamp to the enum list 
3) cleans one block comment checkpatch err

Changes (other than splitting) since it was a single patch:
- prefaced index names with DUMMY_ to be more descriptive
- fit that block comment on one line by following model of
  preceeding comment
- did not touch /** comments as they are used for extracting docs 


Alison Schofield (3):
  staging: iio: dummy: use uppercase descriptors for enum names
  staging: iio: dummy: add the timestamp buffer to the scan index enum
  staging: iio: dummy: replace block comment with single line comment

 drivers/staging/iio/iio_simple_dummy.c        | 17 ++++++++---------
 drivers/staging/iio/iio_simple_dummy.h        | 18 ++++++++++--------
 drivers/staging/iio/iio_simple_dummy_buffer.c |  9 +++++----
 3 files changed, 23 insertions(+), 21 deletions(-)

-- 
2.1.4


