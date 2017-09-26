X-GM-THRID: 6470196947471826944
X-Received: by 10.157.20.169 with SMTP id d38mr2051758ote.200.1506460119980;
        Tue, 26 Sep 2017 14:08:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.100.2 with SMTP id y2ls4040318pgb.26.gmail; Tue, 26 Sep
 2017 14:08:38 -0700 (PDT)
X-Received: by 10.101.92.135 with SMTP id a7mr7638875pgt.70.1506460118968;
        Tue, 26 Sep 2017 14:08:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506460118; cv=none;
        d=google.com; s=arc-20160816;
        b=db0yZyYnc+QQzIjppPLndkDvi8ra8zyxz0kPuzJtQ6oqvgDNpNr3V8O/UNexNulOUI
         /HjkuqN0llb4f4cqT5MjCo4Kkd5GFXyWjhgKjlwRILbBclJ4s7T2W3XJe/cf1sHlR3YA
         lIj+Z8ouM/D2/MtJpF0JQJ0RRZ+F1KsHo0ZabCSmfSD2YJ2r25+38n+QxE7QSOd+a2u1
         0DiLoEX4KYiYSCn9wbZmPbIz1lby+tyWvuW5kq0UcKqhIhsLmWGPd7WYkpOfE5kqvvly
         syO0GrbhhPlpKHBH2gQSZOg/AwROqQMI4rMfWxeHP7qERdOCp++GbmNQbiQ89grqMGyN
         n5Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=jqKKNt6ArJimfwQkyQloPQqjh5DLkxczgGsSXqT/HGM=;
        b=ZcAO9b6sltydZsNCAT5ZLAZoeLPAUE5KY5jSsOlAsvipL8Ec2x4KJNNBf+M+PLYXtu
         q6JS+actLrtBbPwIGqckDL22THLFq4bsH5YNJffsKZ/aNWdV98zEu0WgQ90vFs4UF9WE
         kW4C0fzbeWZYpfPpWYwkwqp63qepEr6Ev5GRoYqbPAB7k1yF6/Ze44P0ymHzdi7f3oon
         2TMiVyjtrJwmuhaNYCi866iAXoVXmfAKAuesPocdSJX8mXnv8XalUiXi0v5IEeYhR4nc
         vgH4EKUVQFzPmuPquMa4chhDcMSPU3YPRT89S9bJAdrOJROVUxhakSb/G+9NipT1+1C0
         Z1qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oh84mBN6;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id y18si711667pfj.18.2017.09.26.14.08.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 14:08:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oh84mBN6;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id i130so7403243pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 14:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jqKKNt6ArJimfwQkyQloPQqjh5DLkxczgGsSXqT/HGM=;
        b=oh84mBN6MloBWECmGTVOBD/odgZfFs1jkpWmijQR8fmoHjkFHczFqBxVZnPnAVb4rs
         B2iYR8i7OFh9Tj+sTIowrMsCz7qMLRqSE6VvDq2aEik1PNjCBRwG06QbVnt8Neb4PpP5
         6uD7jJVFxgoeaXxAbQEnHoW/FYIfrhTOluaGmbu2P1nz/J5YHU9ZiuTUaxeanHOJyubM
         kkyA7NGZ3SJF6O6bJxIllRdAkLRCVPCl7VezHG6MoGLCPvLjNWXpSZH8oEpWwd+xGOkF
         9lZaPJH+uYqrFCCP7FFAYOw9MB5Xc1TzcNeeXcvCFXOq9U8y56uqUYBfvdhIHhGkAMhX
         NyXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jqKKNt6ArJimfwQkyQloPQqjh5DLkxczgGsSXqT/HGM=;
        b=TsUnNa0kGhJ8H/1n/6QZBd/kRHpI9VaWkv1hACLIonjX3f4Vn8ctiTAVQ/iXHknid3
         cPMLmj8rEgVC2WFBGjUCV3dPuHyifOUVkzfWs1Hy99Qkums8X//djo8bhMgWkR9nqdl/
         +23bfbhvIGt563nkPd/8tEcb/hWlP7faeuYXNso08LA5qJds8pgvRFE/uKzLoPrwsGP4
         t7EZ7u+2rPnaH2REzG8LB0WGeDgzchrGKkz5e8nGXTZGcMbmqhArAj4oSs8g6U9jgKVp
         pOYJEzqaK93KhScJzPcxvqHCMosh6mNZicjwGelJWz5Zv0FYl9UPTEg6eVzqm6IyOPGN
         DTNQ==
X-Gm-Message-State: AHPjjUg8tJUPGl7S/MZM19Mb1nRSWXdmqo4niXawEyepwvz1GPOtKqhP
	+yrK7FTBxhAzxz6Mjjj6lkc=
X-Google-Smtp-Source: AOwi7QBtVIu5a95g/MvuyJ8rCCNXmOYfwmH2bZAm1F0Et/ABCuzBDgKJyTEkq4NIHXlQqSCPjRAXdg==
X-Received: by 10.84.224.136 with SMTP id s8mr11956613plj.324.1506460118735;
        Tue, 26 Sep 2017 14:08:38 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id h10sm21611511pgn.73.2017.09.26.14.08.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 14:08:38 -0700 (PDT)
Date: Tue, 26 Sep 2017 15:08:35 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Jonathan Corbet <corbet@lwn.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	gregkh@linuxfoundation.org
Subject: [PATCH] drm/doc: Remove todo item about "This is gross" comment
Message-ID: <20170926210835.GA4622@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch remove the todo item "Use new IDR deletion interface to
clean up drm_gem_handle_delete()" after it has been resolved with
the commit "drm: Remove obsolete "This is gross" comment".

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 Documentation/gpu/todo.rst | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 22af55d..5e96dc7 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -180,12 +180,6 @@ Contact: Daniel Vetter, respective driver maintainers
 Core refactorings
 =================
 
-Use new IDR deletion interface to clean up drm_gem_handle_delete()
-------------------------------------------------------------------
-
-See the "This is gross" comment -- apparently the IDR system now can return an
-error code instead of oopsing.
-
 Clean up the DRM header mess
 ----------------------------
 
-- 
2.7.4


