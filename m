X-GM-THRID: 6207874064974872576
X-Received: by 10.50.17.106 with SMTP id n10mr12634251igd.6.1445383314418;
        Tue, 20 Oct 2015 16:21:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.20 with SMTP id n20ls1246888igi.7.canary; Tue, 20 Oct
 2015 16:21:52 -0700 (PDT)
X-Received: by 10.107.159.132 with SMTP id i126mr5707571ioe.23.1445383312349;
        Tue, 20 Oct 2015 16:21:52 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ce6si744653pad.0.2015.10.20.16.21.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 16:21:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabrc13 with SMTP id rc13so34636631pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 16:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GRkVuzbtQBJavCw03EsV6dOg6CZXnFH8FfqGMeOW8Q4=;
        b=UwwsxGRY8lOYuPa26qAsVtEHYn/8A4Z5oO6dFz9ltcGsWTcwCTHhkZpQBOoFBMYMZ1
         Xa6efF9aDoEsVPwvBN5zFDOcyaeHhxT+7ZWiscZ/qaRH/o3vFqSgK2tD7NxVy8D3S0ro
         H8K+SyN1Q0Re2qU6z5wCld0OzbxTg5CkCSQ21//ZtasQJ/DZOHrYJidR/zfvD0z1vW99
         Swuic6FcKHPPOBanRRkHphh23+QjQxcGB4OCvWoSS6re4fJJ+YoxOYDRnEYTxlKI7iPC
         q8oT9ZavEQibETzVx3HnWxk0plB53FzDigb72YukKfNMuT6M3jyP6j2Sc39nEUrOx5Kw
         vDLg==
X-Received: by 10.68.204.134 with SMTP id ky6mr6947879pbc.19.1445383312178;
        Tue, 20 Oct 2015 16:21:52 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id gw3sm5682734pbc.46.2015.10.20.16.21.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 20 Oct 2015 16:21:51 -0700 (PDT)
Date: Tue, 20 Oct 2015 16:21:50 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: patchset question
Message-ID: <20151020232149.GA13649@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


Patchset help needed:

I've changed one file in 5 different ways..all cleanup related. 
It will be split into 5 patches.

In one branch I used git add -pi followed by commit to incrementally
create 5 commits.  Each one dependent on the previous.  This is easy to grab 
and build as a patchset because they are all on the same branch.

Is this method  OK?

(The alternative is to give each commit it's own branch to keep them
independent.)

Searching archives of opw kernel I found reference to the dependent
commits, stating it was OK.  But that may be outdated, so checking in.

Thanks!
alison



