X-GM-THRID: 10414332051456
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,14f284b32a4ff3e1,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.131 with SMTP id zo3mr7648586lbb.7.1427740812476;
        Mon, 30 Mar 2015 11:40:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.22.164 with SMTP id e4ls118787laf.18.gmail; Mon, 30 Mar
 2015 11:40:11 -0700 (PDT)
X-Received: by 10.112.198.34 with SMTP id iz2mr7678511lbc.22.1427740811916;
        Mon, 30 Mar 2015 11:40:11 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id a14si379582wib.3.2015.03.30.11.40.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2015 11:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id a2so141800242wia.0
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2015 11:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Q5bKIMP70DW1s04G5KzuHyJRh+4bImGlZj/KVThSR8o=;
        b=KitVPMCrdfUNXsms5Npy9taFp0O4NVh4ID8ifu2QZ6oQnluRFHPFIR8WqdqpGvnnJa
         9/wi0Pi/DzG3kWdaOqa15yK8uI0IfWw+r5XIBN0ooNKhgk6kbho1DP2Ki9lNpri/ceU0
         hlwJ3rHxSVrtdqEN18MBklmdHkwM6i+nPUP9aG8gw43rdvPbCVR7syiEBfCG9374LUlx
         Cao+6FyE0eur4IsbuFb5b7cuBB6pCa45vdT/AD/Arkq52SPHjNJf4iIKJD1eugGWvG4v
         +KbgkJpcKmh3cHbv6YybA/Qo3rwBuaK0rXBWo2rgud2UTpVlE0ULdAenRU//edhsYDGO
         cQzg==
X-Received: by 10.180.9.171 with SMTP id a11mr25779861wib.24.1427740811834;
        Mon, 30 Mar 2015 11:40:11 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.215.66])
        by mx.google.com with ESMTPSA id md2sm17473413wic.19.2015.03.30.11.40.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 11:40:11 -0700 (PDT)
Date: Mon, 30 Mar 2015 20:40:07 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Some general questions
Message-ID: <20150330184007.GA2862@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Hello Everyone,

I had a couple of questions lingering in my head for quite some time
now. I'm reading lots of articles but I'm interested in people sharing
their experiences as answers to the following questions:

Is it possible to setup a simple cloud-based compile farm? Are there
guides or projects that would help with that? My question comes after
seeing Fengguang Wu's kbuild testing farm reports.

From experience, how do you usually debug new drivers? What tools do you
use? What do you think of tools like kgdb and kdb? What do you do for
example if testing a driver freezes the computer it is running
on.

Thanks,

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

