X-GM-THRID: 6394986223504457728
X-Received: by 10.129.141.7 with SMTP id d7mr1832184ywg.83.1488948758849;
        Tue, 07 Mar 2017 20:52:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls2433506otc.36.gmail; Tue, 07 Mar
 2017 20:52:38 -0800 (PST)
X-Received: by 10.157.31.42 with SMTP id x39mr1830116otd.111.1488948758511;
        Tue, 07 Mar 2017 20:52:38 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si413359pfd.3.2017.03.07.20.52.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:52:38 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so2179617pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 20:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GaUd+ZCz6Bym5PyXkhMzT11Q+vEp9mYyOSqoWOBSwQM=;
        b=WL6XKeTKFLMcKl0MZf11oe1fa9KioPacJ0dJBDMNt63Ko0zw9T7KExfb2Y3cl9JrXv
         n1bEvad8yFwOav8exhOUpDDGkbTuUBo7YK/7pa2eNpM+7lxiBTGvOop7q8OJfNsiC5Ns
         /coXqSdUJIbZEoDniSFyUQkPyjbsvIoxuDYrRnd7MgaokEVUGs14YZRjXbvAtiSDX9hh
         VcxOpwyaPpNDtvwQ5ycUBjd8xc7G4PI1ibOdO1/hw7KNrYEOMYwl4WY5X9sKfK4gR/aP
         rxk2gLMk6HpyN3Bp+7JTzE0n9EYTeDuVa5PxKxbxCvuMYx7Q5kuWoyjpH/adXeH1M86C
         XCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GaUd+ZCz6Bym5PyXkhMzT11Q+vEp9mYyOSqoWOBSwQM=;
        b=Ak8Ut1itamYLWV9vH9zTiaXltXK7uYBn7tTXHblnRJvTv6Wv3yYZh1SoyScVdPJ/Wh
         hsqS5fDpJigUrPu5Li1J1+9M27CJvFWiseU+mG+tHZXoWrk/kirIUkQh5co3PY8adS74
         KOngAA+t3xqMrQBrq6RzdEGuZyFxxeitObBi8wtR/WTjIeCrYV6eSrzhdBCJhvD4WRKV
         7Sln+chuJ6rQ82pW+1lNMuc14xfcAimHxubJ9IOhftqG2FZA7cGWMYCoWyXBCqzCL1as
         lQJMYguWC/X4H5Z4TrHFKET6V9hN7MeI0VyQ1yY5E3eEvRvQmX+qqrMe0TZgU/PjKkw2
         S2aw==
X-Gm-Message-State: AMke39l4EZHB+ia/vUUpQTPuBD4pURVWdfLR1PbLcxiGAEUvmZmE03cE9PABi+oFFL7MDw==
X-Received: by 10.84.238.141 with SMTP id v13mr5777810plk.143.1488948758082;
        Tue, 07 Mar 2017 20:52:38 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([106.51.133.119])
        by smtp.gmail.com with ESMTPSA id x65sm2699177pfx.115.2017.03.07.20.52.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 20:52:37 -0800 (PST)
Date: Wed, 8 Mar 2017 10:14:19 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: bcm2835-camera: remove get_msg_context() and
 release_msg_context()
Message-ID: <cover.1488948214.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces in mmal-vchiq.c:
        - get_msg_context(..) with a kzalloc at the caller
	- release_msg_context(..) with a kfree at the caller

Aishwarya Pant (2):
  staging: bcm2835-camera: replace get_msg_context() with kzalloc
  staging: bcm2835-camera: replace release_msg_context() with kfree

 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 29 ++++------------------
 1 file changed, 5 insertions(+), 24 deletions(-)

-- 
2.7.4


