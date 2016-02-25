X-GM-THRID: 6255228217759629312
X-Received: by 10.66.136.71 with SMTP id py7mr41570733pab.7.1456408812333;
        Thu, 25 Feb 2016 06:00:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.133 with SMTP id w5ls360440qge.29.gmail; Thu, 25 Feb
 2016 06:00:11 -0800 (PST)
X-Received: by 10.140.18.239 with SMTP id 102mr13614068qgf.28.1456408811856;
        Thu, 25 Feb 2016 06:00:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id i9si225229igg.1.2016.02.25.06.00.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:00:11 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id l127so5667202iof.1
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8yv0K3yu1aK9D3HBh7XisKg1S3r5sC6+aKPIXJwR4ds=;
        b=K5tSUkJOkq1JjObn/UlvB8Jjjqkx50NeIDi+tZfSpzAjUhDDh3wYfTinoK0bm3WA4Q
         vOE5RQovKTyJ4PPF6liFOSqA2yekawgkgKyVoULcUXi2O8Jwm0vRIM7/9VYHYPXr1cFz
         y0oPU7o42ER9jnn/G1dEUObFOleNeJbuBKXTam14vfaVbbxOJUenDQ/QAzcW2N9n+fbM
         5AbI3pmjLpdqc/bNrTfgD/KkYV1VkMqTHn4eZmEgj4J92XNbdZ6S0KSs94R8IHpSzFK+
         j1H2M8lXkHDHLOsDqSt5HkRlCPeGVTsBjHANuEMEd3d8RdVLMr4TY5qzX6wBqJzfpwDN
         2/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8yv0K3yu1aK9D3HBh7XisKg1S3r5sC6+aKPIXJwR4ds=;
        b=RAkB7EqmI1BKB7zhBCQhuzIdWz42TpqB8aVNxaaY1iX3/NmJEvaLF8Biqtcr1IrN83
         okZPUzhyWtMjX9Jn+PMlurxH7XjGFbcdwRdnNRkzxW/BPpbkmB7ms0IhTgVh5WVmFsHS
         TFeLSpq4jKqD2mjgDEbPQc0zpdiU0et6mmiBBi0xazyQfDpANgMLDTTn3JF/zPQ9H1zn
         PMbkLbdLsdhAb8T+VIMIwZd4W99cMYNi/Mn98CWuUU7wBgpI7/3e0+qs4jSLH7KJf+DC
         Hx4ikqCnesxDuM4W0wRFZWpJLzldFnxihUMhyBKs+sw5AMjryMTo9+d2C1B06HzJuj89
         Prdw==
X-Gm-Message-State: AG10YOTQP+BZR3ZDKrApZtD0dxMWVca4uKtdPn7FFyj/dAwOZ0ZGtmQfAaGBHAwFWjxcJg==
X-Received: by 10.107.157.70 with SMTP id g67mr2821052ioe.38.1456408811666;
        Thu, 25 Feb 2016 06:00:11 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 90sm3277984iod.12.2016.02.25.06.00.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:00:11 -0800 (PST)
Date: Thu, 25 Feb 2016 13:59:23 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Drop pointer cast and remove CamelCase
Message-ID: <cover.1456426552.git.janani.rvchndrn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset drops cast on a void pointer and removes CamelCase
on the name of the pointer variable

Janani Ravichandran (2):
  staging: rtl8723au: core: Drop unneeded pointer cast
  staging: rtl8723au: core: Remove camelcasing

 drivers/staging/rtl8723au/core/rtw_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.5.0


