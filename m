X-GM-THRID: 6254196416995917824
X-Received: by 10.140.250.69 with SMTP id v66mr8888839qhc.22.1456312313580;
        Wed, 24 Feb 2016 03:11:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.11 with SMTP id x11ls72324igg.38.gmail; Wed, 24 Feb 2016
 03:11:52 -0800 (PST)
X-Received: by 10.98.65.5 with SMTP id o5mr36016935pfa.10.1456312312893;
        Wed, 24 Feb 2016 03:11:52 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id v197si161233ywa.1.2016.02.24.03.11.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 03:11:52 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id b67so10747875qgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 03:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=wJpAt0NeRlOmb5prBPmHh1B9JIUqlNmdplkam9ApCY0=;
        b=BoxANLmdh0U4Oj4IGck/n/mIV9hY7RPXmbYVmB9RzjmmEn13Bpf5McEYSUf8Eyy52o
         aiPYYI/OV1uv4zIFUIjNNjL86bkDiN4HHdlS/q0Hh4H5U0VeX2o97vOSZ3RMvGEDU1gJ
         2eIpyyqn75JpCEsqh+M+LstOECQh9wa5y97qBkhA+N2cxOT0p9d5NzkUNjD51fSSz1yI
         BOHB6tzR5Uasg9BYwybexyOmc7zysaYpmOAwavuR8auV0oHmskNb56elAG4EEiocxmYL
         RZBxHKMwhkfgvNegdH358PNPZHiCSSVM7/6dCnwWcj7iQYdeMbMMYGXa1jyvOWGNVPPX
         ig+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=wJpAt0NeRlOmb5prBPmHh1B9JIUqlNmdplkam9ApCY0=;
        b=kX/8oPZal+gC0zl/027Yr9/grXXfdq8sQ9ihMFvPiJt12hmtFRFZpFla0pZ1hk9UUj
         nPI+2za8oVMciMYbI1imGAfNmUWjCBeMkIpj0kwZg0VbJ3xRISOttkl0YLzoOz2lt/Qb
         k2kI9PPrDjMVPmlP7eskJFXqs4Byk6Xtm34l5+3iFlM/JPmzPg89GWv/u15seB9F2kU3
         bxS6xV2PU408cCBLas/xBn9r6gId9VFRTcUcPmtRWfbtArqnVtTY5bjqhVT5BbdP5i3j
         wyTYREvik5e4CvG8tSTl5+78je8CLNUsH59mgsUzqVO/6mXOsnbqCCypTm5PSknecuWp
         cy2g==
X-Gm-Message-State: AG10YOS4yO09CAJfKPV9NgEJ3eLqk4g+fRBhTw1UzWAsN2rAgf/zUD2vG32k/comvQvsogb8c+AfaqtDJAI7kQ==
MIME-Version: 1.0
X-Received: by 10.140.167.135 with SMTP id n129mr48316824qhn.73.1456312312656;
 Wed, 24 Feb 2016 03:11:52 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Wed, 24 Feb 2016 03:11:52 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602241057250.2149@localhost6.localdomain6>
References: <20160223212524.GA29290@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602241057250.2149@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 16:41:52 +0530
Message-ID: <CA+5yK5HaC589RS7CaCSeo_Q0mQO7-6NBU_5nUgbtMRcMfxFh3A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: comedi: drivers: Remove
 use of deprecated pci API
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 3:28 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> It would be clearer to put GFP_KERNEL in the semantic patch.
>
> julia
>
Sure. I thought it was enough to mention the change in the commit
message without changing the patch. But since you prefer it in the
semantic patch as well I'll send v3.

Amitoj

