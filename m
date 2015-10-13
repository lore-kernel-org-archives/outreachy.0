X-GM-THRID: 6205137420243959808
X-Received: by 10.180.81.165 with SMTP id b5mr4306696wiy.1.1444746139224;
        Tue, 13 Oct 2015 07:22:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.206.211 with SMTP id e202ls646114lfg.109.gmail; Tue, 13 Oct
 2015 07:22:18 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr2411380lbb.2.1444746138622;
        Tue, 13 Oct 2015 07:22:18 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id i8si140839wib.1.2015.10.13.07.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 07:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id gb1so91231014wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 07:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=Xvf23XzTXW2iJkYsrfO1d3fZ6aQe6w+looh3LS5SQBM=;
        b=XLQJUOflh7fvb+IdPqsM8TH6zCDSCSIskUoNzSo+E2ppHPbt4NwwYdlKWJSj/onWNT
         zbo7rRs+VxL7n8GoRINvOOfvs6MKJBtrUOVLjwO/FngGo7H276D1TjFNLrZ+wootNC60
         8HoJ82FrfprAQJjnzAjme0b5ySyQJSksXQDqIfVFcSf3kX7abto4w3I+98NURU6EG9y6
         iGf6hLZfJlgr4lrWAgU+drmtt4coSymhUu0qfnz8TmN/10wa04IAKkI+tt2WmO0K5b7B
         n1hRPu3Pql59SLnlCSWHFD9SLpSuzqCsNG3z6lWhNDlpQK+xpdMqWB+ZZB901E/zr38H
         vLDQ==
MIME-Version: 1.0
X-Received: by 10.194.236.200 with SMTP id uw8mr35931866wjc.126.1444746108665;
 Tue, 13 Oct 2015 07:21:48 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Tue, 13 Oct 2015 07:21:48 -0700 (PDT)
Date: Tue, 13 Oct 2015 17:21:48 +0300
Message-ID: <CAEnQRZB-+QKVm461hxv5xk=kYz5mGmbJZ1_dDgyiJnDzXh3J7Q@mail.gmail.com>
Subject: Tasks for ADXL377 Triple Axis Accelerometer IIO driver project
From: Daniel Baluta <daniel.baluta@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi there,

If you are interested in project from $Subject, please make sure
that you try the IIO tasks [1].

Note that you should work on these tasks after Greg accepted
at least ten of your cleanup patches and two of your patchsets.


thanks,
Daniel.

[1] http://kernelnewbies.org/IIO_tasks

