X-GM-THRID: 6253287344425664512
X-Received: by 10.182.87.2 with SMTP id t2mr17728762obz.20.1455976443408;
        Sat, 20 Feb 2016 05:54:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.219.229 with SMTP id pr5ls366397obc.89.gmail; Sat, 20 Feb
 2016 05:54:03 -0800 (PST)
X-Received: by 10.182.24.41 with SMTP id r9mr17566133obf.25.1455976443015;
        Sat, 20 Feb 2016 05:54:03 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id g136si927382ywb.5.2016.02.20.05.54.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:54:02 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id b67so82474713qgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 05:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=OTv4IUANpPAIY/VeY7FH93JUCXjvZAvr7WjjWSMIkfU=;
        b=M2iqnqNAVbcFwiz4p9y8T+H0F0HwjPt1ep0VlBaes45ZbS3w4J/sKiRybUuHPo0iSF
         +BVM5/j/Pj5ezGPI5sW/k+oTmIJcR6EhKTiUxrTp/YmZUDsY+HKfYHrrpNjxZBPshgng
         IkhDSQpGazbJC63IRkJHnbUTAOovHoqmVOcO8lxSLqGncB7lby1rWJ9dHA9QByZ/ZreZ
         0m7OZFl46l2My6IoZR/5U+Zuszj7jyfN+C8qnpNHEnHJAH2PEVKX0JcVdHMEAShSkLNg
         Uw1cE0ab0Cr7wqhCWm5S72h1lfHOKM3tggY7di5XqBofsaSFpwOMIM9loIrQIxxQnHva
         x2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=OTv4IUANpPAIY/VeY7FH93JUCXjvZAvr7WjjWSMIkfU=;
        b=m6bD3FwWFmmCOE9/IxwMk63fe0jWuA6VgjSAdFty6vgFvIURsHJqwHICrrGqPbQdsg
         6v9ML4VzxboO7Q3QLxnRAKiCMnxJSg0gaLu8+ZeHrq4vCnpjhknOs2/ng53mGef6zoX4
         qs6ihmoweZHPf3d9g82Iu6a39PoDuh8edJqbuW6yTGmS9LpTnzPHM8f2lfyZ8Lt4rPWJ
         50y4xg9iIZpYz11fHDW+4+z/f84MeLAmejNWxKRWNIGsoDUzgTzryA9eKea3PNwX1fti
         P6Liazoh023LUgXQ5HIc0XpZg3iIDzpn5gbBuRVMMup0XhKkoGgJ0MzKDSDlGnil94FO
         kNJQ==
X-Gm-Message-State: AG10YOQcGgiCZVqGRa6Ms4+vHt3gb7GAhNBNFmCYpU7dDPVJeVRRkDJe61+NinaMp3C1byArHrwmq75pZuiSmw==
MIME-Version: 1.0
X-Received: by 10.140.143.68 with SMTP id 65mr24878883qhp.25.1455976442853;
 Sat, 20 Feb 2016 05:54:02 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 20 Feb 2016 05:54:02 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602200843340.4083@hadrien>
References: <20160220082827.GA14902@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602200833090.4083@hadrien>
	<CA+5yK5HpAQVmcOMtyto_qdU=sMtrTHodKqX-54GzsZkMrJx-pQ@mail.gmail.com>
	<alpine.DEB.2.10.1602200843340.4083@hadrien>
Date: Sat, 20 Feb 2016 19:24:02 +0530
Message-ID: <CA+5yK5HEydEcJMDHi3veMJmM0wFgm0KdYK7xZXptjkdJ3jnvRg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Use DIV_ROUND_UP
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 20, 2016 at 7:13 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> Yes.
>
> julia
>
Next time I try this, I'll use this modified semantic patch.

Thanks,
Amitoj

