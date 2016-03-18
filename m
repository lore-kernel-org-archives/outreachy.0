X-GM-THRID: 6263480963249995776
X-Received: by 10.66.65.135 with SMTP id x7mr3516995pas.39.1458330304400;
        Fri, 18 Mar 2016 12:45:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.155.42 with SMTP id vt10ls369203igb.37.gmail; Fri, 18 Mar
 2016 12:45:04 -0700 (PDT)
X-Received: by 10.66.147.133 with SMTP id tk5mr12433523pab.8.1458330303974;
        Fri, 18 Mar 2016 12:45:03 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id tu5si1986001pab.2.2016.03.18.12.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 12:45:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id x3so180304787pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 12:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bfKqc3CMIAXeybst7N8d4Ri10Lm/VOjo1iJt2TUXOb0=;
        b=GH+/AMgFSyDdWck8+5wOAAOyzw8FszEw/1E7Oz8+ke/vzbI5ftAaggQ+ibwn7SgBNY
         PJWx+QuMQsZRPnIOAiAOqkGjvUY+47X7rhzT4JIzWWOEgHQa1JnI0ho/a+Ok/2Qd5Y7l
         OtPMjjqe1WKRHZkMuqDJdBnrbTAzpEK3iuC19EkwTjxPkP+U6HxqHdE8afuULrRZClcq
         vGauqowymG/v62W02GusEufxPC+4U3vulQf3lGUqEs1Tt5YBLoJAyBdgjPb2HZSAPmK9
         fR2O1Jpe1FxBfI0+R9Qd8d67wrHhFAhvFDkHb0eC8nMjHtGVdcfmUbWEJH5ylx6hR3uf
         Qq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bfKqc3CMIAXeybst7N8d4Ri10Lm/VOjo1iJt2TUXOb0=;
        b=huz/FBFtHtC7K1aDUPWJap9kwLCa3oDgc5nMHHS15qFMqTX1+VlGy//+ryJRPaPSch
         QikCCY4DFMZXrfugyiHm13fUmwvV+P7lXMWdRrap5xvhWYCE82y/4S/W0gSdbcAOV1xN
         xZSdzlDx87ql05VFyEHphpmEgDDOmQqtRnflfmLuojJy6f/pwxfn1uHWhUFq242z7Vu5
         yj2r+jnqrMPAxBA3q2HzlNzKjonjklm9C8n0it0mfgs2OaJSHRFMRTpExITdlXglDZ6Q
         f58Rsb+FvUZReMOeiydjiePvvBu0D02kUkcuowtNXpKQBJo8qs8flx0xiEuAtXrkiNWq
         bARQ==
X-Gm-Message-State: AD7BkJL1NCBE3Fg2B72ZDsUb1UvabMrXLeeK/CyrlPIQhxOBonrmVRAJ6u360Qw29Kd1SQ==
X-Received: by 10.98.9.92 with SMTP id e89mr26383008pfd.34.1458330302332;
        Fri, 18 Mar 2016 12:45:02 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l4sm7828172pfi.73.2016.03.18.12.45.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 12:45:01 -0700 (PDT)
Date: Sat, 19 Mar 2016 01:14:57 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Convert macros to static inline functions
Message-ID: <cover.1458330202.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Convert macros CLK_CONFIG and GAT_CONFIG into static inline
functions as static inline functions are preferred over macros. This
change is possible since the arguments at all call sites have the same
type. Also, both the macros have same type of arguments and return
values. They have been renamed in lowecase.

Bhaktipriya Shridhar (2):
  staging: comedi: drivers: amplc_pci224: Convert macros to static
    inline functions
  staging: comedi: drivers: amplc_pci230: Convert macros to static
    inline functions

 drivers/staging/comedi/drivers/amplc_pci224.c | 16 ++++++-----
 drivers/staging/comedi/drivers/amplc_pci230.c | 38 +++++++++++++++------------
 2 files changed, 31 insertions(+), 23 deletions(-)

--
2.1.4


