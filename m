X-GM-THRID: 4799843008512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,37879575871abf20,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.138.202 with SMTP id qs10mr2272365lbb.24.1425066732181;
        Fri, 27 Feb 2015 11:52:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls237306lac.49.gmail; Fri, 27 Feb
 2015 11:52:11 -0800 (PST)
X-Received: by 10.112.147.35 with SMTP id th3mr2073000lbb.15.1425066731690;
        Fri, 27 Feb 2015 11:52:11 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id el6si184795wib.2.2015.02.27.11.52.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 11:52:11 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id bs8so2681953wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 11:52:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=17PY49YTqle9EmW3Ejir/J+i+pyrwT18621+Y8aMrFM=;
        b=RwJaKY6b8g9pYDB/ikfmxCrQDc+CKPC2oimxEsqDxUx2GEJFVi7Ht05ZGLodKjOz1p
         /i7gvVIBqdCzzAxC74tGxJ96PnuWhojETce4HcGRHUJYH1P1V6PHBPrnuo7Sw3kEm2Rd
         tm8XF3qElaT1H9N0xfMioTjY7HDpnQMnim6KC4Ypa62xsT94gHuffNOnmyYV3PXaTzDj
         aDkrgHKFTcwDmdy3WvWnVVHtMYQjtKRj1LZJC+crY/fFLPfzvcj2x2c4MP/cQCIJh+kw
         k+N+cG1+QXYmNIunE1dB8OFVarjtF3g8M9B8XBTDejkuuLkbE2O8VVP4egvL267QrFTV
         KAWQ==
X-Received: by 10.180.198.211 with SMTP id je19mr2353289wic.37.1425066731598;
        Fri, 27 Feb 2015 11:52:11 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id vq9sm7356804wjc.6.2015.02.27.11.52.10
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 11:52:10 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 0/3]
Date: Fri, 27 Feb 2015 21:51:01 +0200
Message-Id: <1425066664-25535-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patchset removing return and else,
adds a blank line after declarations to improve code readability. 

Melike Yurtoglu (3):
  Staging: lustre: Remove return in void function
  Staging: lustre: Remove unnecessary else after return
  Staging: lustre: Deleted space prohibited between function name and
    open parenthesis

 drivers/staging/lustre/lustre/ptlrpc/client.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

-- 
1.8.3.2


