X-GM-THRID: 6212627761290280960
X-Received: by 10.66.187.41 with SMTP id fp9mr19267136pac.39.1446490120527;
        Mon, 02 Nov 2015 10:48:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.227 with SMTP id z90ls2320144qgz.37.gmail; Mon, 02 Nov
 2015 10:48:39 -0800 (PST)
X-Received: by 10.129.156.198 with SMTP id t189mr19914633ywg.26.1446490119777;
        Mon, 02 Nov 2015 10:48:39 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si2175486pac.2.2015.11.02.10.48.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:48:39 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ec8so46970039pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gyMBSJXl6aGZTtk7poWULm054p7OWxcd4xGzf+NOxH8=;
        b=JUXbCLkixErS/PO6zHLK6oFOZoNTWe6INOXEIb52/C7WUZAIPQM/7xwAr7GsnS2a+A
         Or7nRX5PcPRJUeHWu+88DZQWV9/Ck77bperDnn9Vt9f6zkR90D7LgTXcDnkHD+2KKVMA
         tVAlV39zErRMRDblxpP/gkIUY0BlHN+Jgghe4dQNNX9jg2PAtVEPhbb1uj3HozoH+Vw7
         0sPQGaJAKXWXLZAakQOVyLTLClh5eXLyIQIEh2E7DV2TGofMm7OIPF/yNeghkTJa6fB0
         kXTdM4iwrEiPOXwnIqAo9dDw6qa+W65maw3HuMXqrNHemmkJvITgrII/ef88tH0HN2mw
         1AMQ==
X-Received: by 10.66.167.101 with SMTP id zn5mr29132264pab.48.1446490119649;
        Mon, 02 Nov 2015 10:48:39 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id k5sm25289553pbq.74.2015.11.02.10.48.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:48:38 -0800 (PST)
Date: Tue, 3 Nov 2015 00:18:31 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Remove wrapper function and clean up the code
Message-ID: <cover.1446489978.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset removes a wrapper function, its prototype and replace its calls
in different files with a standard function.
After applying this patch, code becomes cleaner.

Shivani Bhardwaj (3):
  Staging: lustre: tracefile: Remove wrapper function
  Staging: lustre: tracefile: Remove function prototype
  Staging: lustre: module: Replace function calls

 drivers/staging/lustre/lustre/libcfs/module.c    | 4 ++--
 drivers/staging/lustre/lustre/libcfs/tracefile.c | 9 ++-------
 drivers/staging/lustre/lustre/libcfs/tracefile.h | 1 -
 3 files changed, 4 insertions(+), 10 deletions(-)

-- 
2.1.0


