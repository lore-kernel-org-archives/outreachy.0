X-GM-THRID: 6399716229593956352
X-Received: by 10.157.33.117 with SMTP id l50mr15197112otd.57.1490050048927;
        Mon, 20 Mar 2017 15:47:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.193 with SMTP id j184ls4010819ioj.1.gmail; Mon, 20 Mar
 2017 15:47:28 -0700 (PDT)
X-Received: by 10.99.45.194 with SMTP id t185mr16807448pgt.114.1490050048028;
        Mon, 20 Mar 2017 15:47:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id 2si3128823pfx.8.2017.03.20.15.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 15:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id o126so71776809pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 15:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Ot4G5cWA3pHLQPD7byKpnK/9cKkIVqEDWSYO8k4VB5M=;
        b=fWLH8/OrdWI5eG4rWBaTwts2yUGAvpNxaHmLfLisRWh9tfYeirJ3p8tjlsAJwYKkWs
         s/8007FYkjazJzHGqzxXPkq0qe6cc8bo9hSlsKzqD/ysBOj4rbb+w4bNn3OhqiIly/dS
         nRBp3f92fmvH1qz69GxrDIQ1Ug1xbOz6fw7ynO6s5MsjeAvPVe63NTvhBZjKAMo5M3RU
         gXPoxn2EKlvRmkxJjJVKqc48H/KvZ/nu0gI7fKvPHyoLbMxETE2hwW6CRkl55rRWmlrb
         p5IeZUNKB+WB2K0ekXbN4f6mjuU6SN84b+m5xtYA6g3auWLJnfjzdfv/SUZFlXqDS9I3
         tsXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ot4G5cWA3pHLQPD7byKpnK/9cKkIVqEDWSYO8k4VB5M=;
        b=TN82qU0h9Ba5uDuaUIM0QTfkL7iTkj8YkgDZXiMKPq9v8Tl/4+IhVawrxCwqTfsrnQ
         5QReAFulIKZlZlHr7Y1kR7+Oqmh2o9VZ+7Xp5uVo58roMhg6o4PMlRS+ZSbI+TWmuO07
         Vr9s+0NsiVlxX5qhNOXYm5cGEEYoxX4x3+b8cxt/+Fjrpuj/7FoFscBiOGhGGLbvjHyF
         nwG4hrGn+XkVSJO07Iln5x759p+Bz/Aru/LJIU+xWxL+cHZwNoHmzoUfn4sl11VWN1gX
         3+s6kbT2ZekGLaLXEPUGTTqwJ6wq5IZ9nbtYT0xQpnsRWKjv6EbluohD3azBXj/g++/5
         DJ0w==
X-Gm-Message-State: AFeK/H1pvuCWlOm1FKq8Tr2WBFaEnJElhC55SIghXogizr8I3CRUN6L2J5huZI3fjVZUww==
X-Received: by 10.99.171.5 with SMTP id p5mr33910462pgf.182.1490050047649;
        Mon, 20 Mar 2017 15:47:27 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id z189sm35314758pgb.3.2017.03.20.15.47.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 15:47:27 -0700 (PDT)
Date: Mon, 20 Mar 2017 15:47:26 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Where are your IIO patches
Message-ID: <20170320224725.GA6223@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)


This got a bit buried on a thread from Aishwarya, so I'm going to
send as a new message.  Aishwarya had some further clean up to do
in the IIO driver just submitted and was wondering when the changed
files would appear in the staging-testing tree.

Jonathan applies the IIO patches to his IIO tree. He periodically
pushes it to Greg's staging tree.  

The push|pull is "iminent". If you are wanting to do further work in
a driver you recently submitted to IIO, I suggest waiting until you
see the emails from Greg saying your patch has been applied to
staging-testing.  Then you can update your tree and work on top of the
latest/greatest files.

Questions, please ask,
alisons

