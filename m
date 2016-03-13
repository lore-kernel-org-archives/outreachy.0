X-GM-THRID: 6261584556721176576
X-Received: by 10.182.196.101 with SMTP id il5mr14826669obc.26.1457891047868;
        Sun, 13 Mar 2016 10:44:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.170.73 with SMTP id t70ls1396246ioe.37.gmail; Sun, 13 Mar
 2016 10:44:07 -0700 (PDT)
X-Received: by 10.107.148.84 with SMTP id w81mr14893804iod.20.1457891047572;
        Sun, 13 Mar 2016 10:44:07 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x242.google.com (mail-qg0-x242.google.com. [2607:f8b0:400d:c04::242])
        by gmr-mx.google.com with ESMTPS id k13si943440ywe.1.2016.03.13.10.44.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) client-ip=2607:f8b0:400d:c04::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x242.google.com with SMTP id y89so10769990qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YMpyn5e6yyu8s5xRBDkjyUMYYBBCmj+goQWHQ1rS0aY=;
        b=MmYVQKD+SY5uw8oPeV/lO6J6vZwOi3ow89064UKnNceN8zpGrUaa2n2d4jVm4diELH
         qC4DF69LFXwLXSp2BFv7UaI7ZofwFtLhs3T6bGnx0CipS50j4PPAf6/DWJMsOYIctwtD
         8kajGjiF98LH8F2YZqNU2fOUn/7A1cv/UZ3Id37/gbecoId/eXx/3M/Gj/3rus9SS7HA
         mHwfB3GSiO9T9KBpvRcPFYDIFpQt60vhgfkExkSRlCJduGIor+snaKBTMJJUMqaX4lCQ
         VAfAiAD0a/eKWqKYUY94GBwGxYVpdlBwvgssjS/3QMBbqUEPn8ZNP35LUU5lqgRkh9aD
         JctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YMpyn5e6yyu8s5xRBDkjyUMYYBBCmj+goQWHQ1rS0aY=;
        b=MZ5DgpwjLJ6W8ooN/lF/YdC/YO9vP7dADdpzNadiZ+/epmMOHVtWoOPF4RjE399ybu
         sdGoJBNFwCf8c+nR3ws+tFRhXyrQrf9+jOFYQ2WaF/YQl/kFTuth2RBpDGYmJTHC+/pq
         QyGwhO4HtI7+Bp1jfNh1OKyJykXAd/2jSqieKJ/FCfGRinYZNTNU9mgqh/n0GYK7FPfi
         L8+HsK7E5mA3Odm/zIVZcOFyDYgIRHR0G5yK+8MZlCTLePpTFeFGW5nN43x47qWvZU+/
         4ldAt/j+DJxvNrx2r47HVgO81ZnU9EJHniKpwPxRLTLvTWYw0ry9w+I5wUKhVXCefUpg
         ii+g==
X-Gm-Message-State: AD7BkJJw+FsXj0fWlCrsJSuJTnMqtvjCr54niuTlR/Kc8FtaMCK06x935l9UQMQnpjrY6A==
X-Received: by 10.140.22.139 with SMTP id 11mr25623099qgn.34.1457891047270;
        Sun, 13 Mar 2016 10:44:07 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id b34sm8506603qgb.31.2016.03.13.10.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:44:06 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:44:03 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 8/8] staging: dgnc: renames TtyRefCnt variable to avoid
 camelcase
Message-ID: <c20adceae774d654b17626c6cdcb63ebe4de6589.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames TtyRefCnt variable in dgnc_driver.h
in order to fix a camelcase checkpatch issue:

CHECK: Avoid CamelCase: <TtyRefCnt>
+       uint            TtyRefCnt;

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index f18d40a..a37e16b 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -216,7 +216,7 @@ struct dgnc_board {
 	uint		dgnc_serial_major;
 	uint		dgnc_transparent_print_major;
 
-	uint		TtyRefCnt;
+	uint		tty_ref_cnt;
 
 	u16		dpatype;	/* The board "type",
 					 * as defined by DPA
-- 
2.7.2


