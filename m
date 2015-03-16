X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.90.169 with SMTP id bx9mr6230163wib.6.1426497644142;
        Mon, 16 Mar 2015 02:20:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.135 with SMTP id p7ls573770wic.45.canary; Mon, 16 Mar
 2015 02:20:43 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr2125367wix.0.1426497643834;
        Mon, 16 Mar 2015 02:20:43 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id c8si417915wiw.1.2015.03.16.02.20.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 02:20:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id w10so37407330wix.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 02:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:cc:content-type;
        bh=omvdufbFJPPIebUzBNvVmz9yXxysGV1eE474whNArYE=;
        b=tKqrtTUVrzsJnEjCZ9vnF3Z01SYEmfZI5QwedfhQ7ExoAM/Xmp0YPPoq+Sdl28wWMw
         u2HmGVgKAZRJRUnsFzHNjmyAoFUFveP1K8Bkamb0KnR0F8Y16dtBzJcgmdAzL50ApT/3
         PQ2auN+1NkHD4tuQgws7AVIdxZ8DqCX6V1ZXLp/NadBB1I/dkIMTkMkkm0TgK6Duvjv3
         4jwGTv8+lUTpot6A3WLV16GCQe/RTIAIa6tdx1Iq8VsHtSfvpSV1mWzO48Wxp8D1A89G
         lCREBM6WbhgLeOD2bOG+lHbUv4olzivhxJNGjWHFYuSmAoywHcx1Fn28k3T2uG6wU1Vy
         IV5w==
MIME-Version: 1.0
X-Received: by 10.194.210.103 with SMTP id mt7mr122518293wjc.103.1426497643761;
 Mon, 16 Mar 2015 02:20:43 -0700 (PDT)
Sender: daniel.baluta@gmail.com
Received: by 10.28.139.211 with HTTP; Mon, 16 Mar 2015 02:20:43 -0700 (PDT)
In-Reply-To: <f42745c64e9d174e8fd6603a6f0c9195ecb63810.1426353884.git.cristina.opriceana@gmail.com>
References: <cover.1426353884.git.cristina.opriceana@gmail.com>
	<f42745c64e9d174e8fd6603a6f0c9195ecb63810.1426353884.git.cristina.opriceana@gmail.com>
Date: Mon, 16 Mar 2015 11:20:43 +0200
X-Google-Sender-Auth: eiAPx21MZAyKyKov5UMOSkDpccw
Message-ID: <CAEnQRZDnHPS1tUSZqErrZ9fDbWS8jHg02by+8XL1_cE2HnH5UQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 4/6] Staging: iio: Do not use
 multiple blank lines
From: Daniel Baluta <daniel.baluta@intel.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 8:51 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> This patch removes unnecessary blank lines between functions.
> Found by checkpatch.pl:
> "CHECK: Please don't use multiple blank lines".
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

