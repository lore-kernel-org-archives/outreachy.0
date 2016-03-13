X-GM-THRID: 6261397198909472768
X-Received: by 10.50.66.205 with SMTP id h13mr8204868igt.0.1457845139628;
        Sat, 12 Mar 2016 20:58:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.135 with SMTP id n7ls3719152qgd.10.gmail; Sat, 12 Mar
 2016 20:58:58 -0800 (PST)
X-Received: by 10.140.98.179 with SMTP id o48mr13533074qge.15.1457845138675;
        Sat, 12 Mar 2016 20:58:58 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id p6si752768ywe.2.2016.03.12.20.58.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 20:58:58 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id u110so130001410qge.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 20:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=x2bSOtKKdcJjzWSjl3q4sNxHmp3afd1bWw18OH1HNzY=;
        b=e5Az1869M17tVsjfmr4BgIONR1jhUSqczgGg6A6xFax4ve+V6nhzi8Pvs3duGlhOS0
         lg2i7DoOR/iprEzONd8s338N5fbs9IEQivOaf2aikjpoAr0ze3xveqo/W5bwoO3X+lvG
         GZqQsAkah7HPIfk/0VxiKvNdCBAxYpYNweONenfSRWWWXt00nlw2K8qKnZgarbtt/Dt8
         TTBwLmwFeSeM6+XNdTmY+ktPiQNgfRbZ80uqL9v0mFv2eqJDjRy6SVAascx348ymrX6N
         8bo8S4/zKnGc7W29RaWnzPZ0msSowuseA+a/3Jz9BSUhn93bb8lvudHunsI3NLBM7mGv
         X89g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=x2bSOtKKdcJjzWSjl3q4sNxHmp3afd1bWw18OH1HNzY=;
        b=OqIqpEXghI2a3h0lL9FNzR+Gi8ClC7+Lsve9t57k0JMIS9P6ggMaZ23fSq7UkZbQqZ
         UntKVgMYH9CciBewBFgy9/boIQxfyhW3KyzHFoYgJffsDWRszvy2QHvm/PUPLpHWiSKS
         rr+owWqokn6KrQt3KZJKnJbnLhJZ+nQe4NNrgWLGOBaC8LAEr2ayjqu5HIzYTJIVhgk3
         /n3desUigKPsg89nMOMW5nlT1G7kSeWVMgizfii2oFrcD1BoDBN8BsVV9aFgL8xIoyU0
         ARh0lFicZ/th7NpNFgcAewQv68YxAeZAMaFZD7Qp/GR4JuIhg8lcLwDU9iDZUny4+mm8
         slnw==
X-Gm-Message-State: AD7BkJK/jwhhr9gp+8x2gltm2VpXRZYQM9SKVdaikP2BZ/DU8SJVIMrZcUdnp5bCpxpbvg==
X-Received: by 10.141.5.137 with SMTP id h131mr22877880qhd.47.1457845138361;
        Sat, 12 Mar 2016 20:58:58 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id c66sm7462294qha.27.2016.03.12.20.58.56
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 20:58:57 -0800 (PST)
Date: Sun, 13 Mar 2016 01:58:52 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH v2 0/2] staging: dgnc: variable rename to avoid camelcase
Message-ID: <cover.1457844581.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset aims to fix 
dgnc_Major_TransparentPrint_Registered CamelCase 
issue on checkpatch.pl by renaming it in dgnc_driver.h and 
its calls in dgnc_tty.c. 

Changes on v2:
   - Removed file names from subject line
   - Make commit message more clear
   - Commit message is now below 80 characters

Juliana Rodrigues (2):
  staging: dgnc: renamed variable to avoid camelcase
  staging: dgnc: fixed variable call

 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.7.2


