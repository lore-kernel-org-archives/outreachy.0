X-GM-THRID: 6251802816159940608
X-Received: by 10.66.62.162 with SMTP id z2mr20825715par.11.1455611273160;
        Tue, 16 Feb 2016 00:27:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.33.194 with SMTP id t2ls1736305obi.5.gmail; Tue, 16 Feb
 2016 00:27:52 -0800 (PST)
X-Received: by 10.182.29.129 with SMTP id k1mr19710363obh.23.1455611272884;
        Tue, 16 Feb 2016 00:27:52 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id yd9si559867pab.1.2016.02.16.00.27.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 00:27:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fy10so60027340pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 00:27:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tdGD62yuMYwcWIUVOTE9Fss+3KL333wxmJKI8x2tuSg=;
        b=bhUUwInkTt1BGcxYpxz3h2h4RfqdDIFIFvMwTrV9U/VDCpbUwGnbRXi6piNutO5zgm
         0bgIgucAq2+PTam3npFbCzsWjUv1oPuSp+JmhnMpF+6IK56QEKctOCThZk5xPx3048ET
         D2Hkgt8UXwphmFnWySTSHl6+N0bjESCFvhebbmjAREK40jsQwaO2jq9x8Dpg0OPb2Sli
         TTyaAIB5RlP8+uJWCv93thbv6q6uzhxhGg5++1jvbkbSVMbe/G8WzCEs54yHAl1/FbjE
         KVe1Rzh/AN82ov/U6GbJWzD3QNsnAJPe39gpOhbUhVe6tYJHjyvqPkBIboQEDgiwxN7j
         eYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=tdGD62yuMYwcWIUVOTE9Fss+3KL333wxmJKI8x2tuSg=;
        b=JagC9oAehM6ykbJayt45HdHRBxlFY87lv4IflCCKrMuIUCvu+qcFcC51dqVsZ/nFdl
         TE5Min1id5+U0x/ee+uVZQyka7JRlzv/QXW/gH69MtTNZOT6obEe2UgSdrbk3+8LU3Aw
         /oBZpN+Vt7dG8lZGAqiZm0wqz3AsVrUeROgGty94GoQetNCmTOn3UFAoqfyk3vPdycNN
         TcK2JcqU/OWL9EspxtHCl6MS60yCKtY7uPzLFjz0FMdXKDWClsTatBju0SBhpWjm7Qy1
         wxoWChm3HzQQtTqP2G2HDRPhZIDxEorCBMHlxaxy+O8QR4XvyDAuX8IA60fUMg+M2FlA
         sQZA==
X-Gm-Message-State: AG10YORGx7A0a2CBjInaDFMCGQYrbeoSfzz+0is4Ivu9f4ymdNiblDDzQrT5ksTvBzseCw==
X-Received: by 10.66.187.36 with SMTP id fp4mr29161477pac.47.1455611272724;
        Tue, 16 Feb 2016 00:27:52 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id 3sm33969781pfn.59.2016.02.16.00.27.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 00:27:52 -0800 (PST)
Date: Tue, 16 Feb 2016 00:27:49 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: wilc1000: semaphores to mutexes in
 host_interface
Message-ID: <cover.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Patchset replaces semaphores with mutexes in the host_interface of 
wilc1000.  This is one piece of the task as listed in wilc1000/TODO.

Alison Schofield (3):
  staging: wilc1000: host_interface: remove unused semaphores
  staging: wilc1000: host_interface: replace semaphores with mutexes
  staging: wilc1000: host_interface: destroy mutexes at init/deinit

 drivers/staging/wilc1000/host_interface.c | 147 ++++++++++++++++--------------
 drivers/staging/wilc1000/host_interface.h |  12 +--
 2 files changed, 84 insertions(+), 75 deletions(-)

-- 
2.1.4


