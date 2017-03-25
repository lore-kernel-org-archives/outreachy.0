X-GM-THRID: 6401457215612387328
X-Received: by 10.157.34.120 with SMTP id o111mr2548812ota.67.1490455403774;
        Sat, 25 Mar 2017 08:23:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.28.154 with SMTP id l26ls6984406ota.4.gmail; Sat, 25 Mar
 2017 08:23:23 -0700 (PDT)
X-Received: by 10.13.215.203 with SMTP id z194mr4866384ywd.43.1490455403378;
        Sat, 25 Mar 2017 08:23:23 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-it0-x231.google.com (mail-it0-x231.google.com. [2607:f8b0:4001:c0b::231])
        by gmr-mx.google.com with ESMTPS id a17si146235itd.1.2017.03.25.08.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 08:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) client-ip=2607:f8b0:4001:c0b::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x231.google.com with SMTP id y18so35505127itc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 08:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Yh7jyoe3PjHLK/XMg1oylthBfEnEBOI9ITVpcwxp0tg=;
        b=q94dgc7yfy1OT29jibWSusW0FBvfyKo4N4s2sMFzC2cFZWIt2VJEsLAAp8A7UfulGE
         +4GVx/Frlp3uM8FXTFfvNvqr28YUbV/gKpFQggOlmRFB8Xs/vZVBZxyElfPNzrbu8D94
         1CJYLDjJvo52/19PegV6Ro2QcepXADGlm+emDmOjMZcu7g09WvkAfxVJbf4hX3AxjC7p
         fUpnQnqbmespmQhvqzx6GNrwlZgUiEhZ1xfO0+LeH9Js6zb6rDMAYcBHRxZRVV8mOChb
         0yHts3or4ZvnFznTKTA5PCIaORulWN+7E8y85NNYge+A8zXk8eIdR7NiRjz0YSLB57+v
         oKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Yh7jyoe3PjHLK/XMg1oylthBfEnEBOI9ITVpcwxp0tg=;
        b=K5igZVstnsDGCUBrArUykOAQAW/0YWjnMYDmB/V/FZUtmKxaJE6/CClpM6Gr+9sMpj
         1P1RNY62RRXq6DIAHT5tUaxcpI4rswseapWaVCcAebEyf/mSNjMCAFUVfESPLP6iA6ye
         ay6B3XtdbQoCXUC7VPL+zhmBzzM7M0y/LIX2b9XY0F/jd8CaKl/OJ3QCBJcAbt3og+s0
         t7CcGGMSYBeh8ihUeIav2/hAAygUMWK/05UYChbm+nKWydYU5h4S2WfIT1iVMKUeT7rV
         HKRPpBXpLn2w0IhhK4HO5XsuZwVbVRhgJGNaM09fj3974eE8oypwb1uvV01i05nsMsSC
         2eOQ==
X-Gm-Message-State: AFeK/H3qnPmLn7YlY96PT4K8xzQJXfZi4Gak/k6VvdjAUCDAExkQ1png9vltDFgzgeRFZD+XHfJwHc8u/qMRiw==
X-Received: by 10.36.7.66 with SMTP id f63mr2316596itf.83.1490455403008; Sat,
 25 Mar 2017 08:23:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.15.199 with HTTP; Sat, 25 Mar 2017 08:22:42 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
Date: Sat, 25 Mar 2017 20:52:42 +0530
Message-ID: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
Subject: Doubt regarding Sphinx build
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

I was trying to build Sphinx documentation. I ran 'make htmldocs'.
It gives me this:

  SPHINX  htmldocs -->
file:///home/sayli/git/kernels/staging/Documentation/output
  DOT     Documentation/media/uapi/v4l/pipeline.dot
/bin/sh: 1: dot: not found
Documentation/media/Makefile:45: recipe for target
'Documentation/media/uapi/v4l/pipeline.svg' failed
make[2]: *** [Documentation/media/uapi/v4l/pipeline.svg] Error 1
Documentation/Makefile.sphinx:70: recipe for target 'htmldocs' failed
make[1]: *** [htmldocs] Error 2
Makefile:1452: recipe for target 'htmldocs' failed
make: *** [htmldocs] Error 2

Am i missing something?

thanks,
sayli

