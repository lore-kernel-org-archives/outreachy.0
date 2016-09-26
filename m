X-GM-THRID: 6334708873542238208
X-Received: by 10.13.237.135 with SMTP id w129mr5966887ywe.150.1474914344219;
        Mon, 26 Sep 2016 11:25:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.133 with SMTP id z5ls5379733ota.42.gmail; Mon, 26 Sep
 2016 11:25:43 -0700 (PDT)
X-Received: by 10.157.34.165 with SMTP id y34mr5376417ota.28.1474914343874;
        Mon, 26 Sep 2016 11:25:43 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si5079216pab.1.2016.09.26.11.25.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 11:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so9495847pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Sep 2016 11:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qZT7R7vZ0+X/4OEkYS4LUWEFykaj6F7OHLUEKgOVeJU=;
        b=USnjxQRLicQsHcshddlQgTQipu/2Yxit2oWB2cHQyesVvVj5/3z4iQmfIn0BKDeRkg
         X+rCUVzDnmpMr2r8Q/x7I3/n8uWk0N+Pw9nMcBS88VBjOvLPCAEX+MpZoJmnHSSsRVID
         xW+RhMgb75fDwDLjJvWQSNU8inE+aZKdcXJU2As4TIdnMTLLiipXp3bkGqj3WIEmfwed
         qjaqNE9Rjf4yqomKv0XyDsA4kzwmR3YdxNPrxqclUFs/1wzbyuweaY1KZzkjL+BslqRb
         O+TWGUKM+ficPEuM6xetoJ9ed/veJC8m+RM2idbZBEBvtHEIu6tJcOm3SBRjYaMhZGhX
         piQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qZT7R7vZ0+X/4OEkYS4LUWEFykaj6F7OHLUEKgOVeJU=;
        b=g0X48k0QP47GiaJ8DOJhGJTPaPrZjJrcm2ASeHwbxCAWHhQFyDicQDgAxFxd9YSKqA
         xXkKtEbVS0Nc4YJAZCIZHBrwiN/zX+CdVwiV9UOIvpV3iMVaQcYVrQcYOduMlRalzj+t
         VfcR3kPAtcVr4s6bFP3fYEHmNHv/uwnkx7vGv5QkUu+qfYwlPXE4unPtOq45hDH8eLqk
         D8dOPjhzU9/kUDabLvt59b0+11OxgmPmMeFpm4zG1UqJVeh9A4fCEGrlIb4cjqfc0EfG
         XhulqAVBmCPqb9R6ra5f75vyf/kgoBJHRaKLyr/JLubJZHAsHFbRzZZ1NCyOMvavwPQf
         sIUQ==
X-Gm-Message-State: AE9vXwNBwiPWqjl21p2byUNn/npR4k5zGkhhz842/o6srOIncQQLCOvMG3MDmw/ToACTYw==
X-Received: by 10.98.70.132 with SMTP id o4mr41505467pfi.132.1474914343693;
        Mon, 26 Sep 2016 11:25:43 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id f16sm32667048pfd.84.2016.09.26.11.25.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Sep 2016 11:25:43 -0700 (PDT)
Date: Mon, 26 Sep 2016 23:55:38 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] staging: vt6656: Fix return values
Message-ID: <cover.1474912143.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary return values. Change return type of corresponding
functions to 'void'. Make changes in header file to reflect this.

Namrata A Shettar (2):
  staging: vt6656: Remove unnecessary return values
  staging: vt6656: Make return type changes of functions

 drivers/staging/vt6656/card.c | 23 ++++++-----------------
 drivers/staging/vt6656/card.h |  6 +++---
 2 files changed, 9 insertions(+), 20 deletions(-)

-- 
2.7.4


