X-GM-THRID: 6207450266150633472
X-Received: by 10.66.160.135 with SMTP id xk7mr6343673pab.28.1445407058618;
        Tue, 20 Oct 2015 22:57:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.109 with SMTP id j100ls669192qge.57.gmail; Tue, 20 Oct
 2015 22:57:37 -0700 (PDT)
X-Received: by 10.129.85.80 with SMTP id j77mr6315972ywb.31.1445407057956;
        Tue, 20 Oct 2015 22:57:37 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id el2si884692pbb.0.2015.10.20.22.57.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 22:57:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so46226621pac.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 22:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=DtOF4aKIZ/wGCMKUh7Oii06Atrnfmw+TXCAa78mXVko=;
        b=uFPj0ihR+q/mtvRx7evRSOMWntI4YJ2zX2Xb/Rz2YoQ93izG6Zl71nmvQeeQcbb3n5
         iY+9W7NYJ+Ry+ghKJDZxDPS1LMcaVgcvfGVxNE5dZ/yOfi3/QgNBLVcSOyfq058XZSH6
         vrvuYif7LXUMtaUB5QZBBILj4/1eOMTFj6iqJpudrTxv6BTIbSuRMcSiL0O/8LizvsiI
         8j2UAm2t8Ad2FDV+7z0qfssAEeOmjmqEGd3fKw+LJjNTg+buH7JbPkHpNLVUz6ma5SSN
         3R1u+ItVU+Ry9u5KxAKJbAyT6pFJKi1WxRrCqN8ERnRs3hYqsBeMCuQKP1UhIWxw8y6B
         81sg==
X-Received: by 10.66.61.205 with SMTP id s13mr5399199par.96.1445407057800;
        Tue, 20 Oct 2015 22:57:37 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id ln10sm6989327pab.29.2015.10.20.22.57.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 22:57:37 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] staging: r8723au: fix multiple checkpatch issues
Date: Tue, 20 Oct 2015 22:57:27 -0700
Message-Id: <cover.1445402009.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445282918.git.amsfield22@gmail.com>
References: <cover.1445282918.git.amsfield22@gmail.com>


This patchset addresses the last 26 checkpatch WARNINGs in file:
drivers/staging/rtl8723au/core/rtw_cmd.c

I'll call your attention to the "Line over 80 chars" cases:

I chose to address 'Line over 80 chars' because all but one could be
resolved by cleaning up a single struct definition. [PATCH 1/5]

The last one appeared to be due to excessively long function names
as opposed to deep indentation/complex code requiring refactoring.
See my notes below the --- in PATCH[4/5] for further info.

alison

Changes in v2:

The patches have been reordered.  
	The comment corrections are now the last patch in the series.

[1/5] no changes
[2/5] now using netdev_err per reviewer feedback
[3/5] no change in code, but the diff changed when I moved the comment patch.
[4/5] no change in code, but same as above, diff appears a bit 'different.'
[5/5] scanned and corrected comments thru entire file, not just those
	reported by checkpatch (ie. spacing issues)




Alison Schofield (5):
  staging: r8723au: break parameter list at separators and align to open
        braces
  staging: r8723au: replace printk() with netdev_err()
  staging: r8723au: move constant to right of comparison test
  staging: r8723au: add & use local variable to simplify references
  staging: r8723au: use kernel preferred style for commenting

 drivers/staging/rtl8723au/core/rtw_cmd.c | 239 ++++++++++++++++---------------
 1 file changed, 127 insertions(+), 112 deletions(-)

-- 
2.1.4


