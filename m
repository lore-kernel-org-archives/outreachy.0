X-GM-THRID: 6469789511840694272
X-Received: by 10.129.52.79 with SMTP id b76mr6501889ywa.227.1506421315487;
        Tue, 26 Sep 2017 03:21:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.87.201 with SMTP id l192ls1572317ywb.24.gmail; Tue, 26 Sep
 2017 03:21:54 -0700 (PDT)
X-Received: by 10.13.250.70 with SMTP id k67mr6621819ywf.74.1506421314869;
        Tue, 26 Sep 2017 03:21:54 -0700 (PDT)
Received: by 10.55.76.80 with SMTP id z77msqka;
        Tue, 26 Sep 2017 02:12:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QC6JCge+IdaWLyP+IiQBelLncyJkZXpkRhgk4aN05XEXMK5U25+B/8wWMTk+jEy7MEBpDjL
X-Received: by 10.46.88.72 with SMTP id x8mr757343ljd.6.1506417135281;
        Tue, 26 Sep 2017 02:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506417135; cv=none;
        d=google.com; s=arc-20160816;
        b=gYqZsLiYBJzKGJLN6zi3RXFz+7VV+EZoejA8Q/hHfjK1WHezI6u69e50AAiYVxfJqM
         1lD/th1m+z0AFetH4qqhyplxGJbu5szovaYooirN/zRJExvGbWCBPZjVXGHDqe1gHr3O
         hd2OhwtfnnDeNfvkCjoDs+xCZn2bwQD22S95HcWO9Yk/dD3IOGYQwAw06nt1Vt+FKx4v
         iurMkAhAeR04FBYw+6QMebsheGkxrNFbQJmD9FWdc5i83Ltx99w3m9eS0d6RNTEkM6Wp
         zD/E4Ryb3AQIYXR510+IYihylce6Wfl0NAoDJljLY0KIfH+28Jfx+jLNGNWseGBkDrKy
         z4SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version
         :arc-authentication-results;
        bh=CL0CJifKoiHxw5lJCtgiZ206BfImVg4j294DVvhIOA4=;
        b=mZSpzxLGh/IBDiW8xPAF+h5ZI/fOhNT9PtHXEa2Rz+Wf3tVegAQAmJDctaFDTJAq9B
         SC2+ySxfO8SiflU7qVLl097aujUeLrKHmzPTojosQU1KA1zGpOBypIFszEwjJjamQWOg
         ecEdhDEAEskxAAtRJuWK9iJqOGXZRm4eY5aFOlnVtOKjS46Kmnh8iIr2Mk2O9ylk+sM2
         4bmTLGV1gMHdTun+Gm5X4tELMYzTCyqYQg9+lEeVsfpxiPcfxMWoluKOPI8rjYZJlpp/
         BKXUjrKXM+IfpDz5xYvYnmB4p4GwekwFQnnX4rTLJUAF/XXAmnhxoGn76hUh5Rnm6xLl
         +Jaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Return-Path: <chris@chris-wilson.co.uk>
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id m74si105761wma.0.2017.09.26.02.12.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 02:12:15 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 8871907-1500050 
	for multiple; Tue, 26 Sep 2017 10:12:11 +0100
Return-Path: <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
To: Aishwarya Pant <aishpant@gmail.com>,
 "Daniel Vetter" <daniel.vetter@intel.com>,
 "Jani Nikula" <jani.nikula@linux.intel.com>,
 "Sean Paul" <seanpaul@chromium.org>, "David Airlie" <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20170925184728.GA8861@aishwarya>
Cc: outreachy-kernel@googlegroups.com
References: <20170925184728.GA8861@aishwarya>
Message-ID: <150641713210.12806.16416549985820505069@mail.alporthouse.com>
User-Agent: alot/0.3.6
Subject: Re: [PATCH] drm/gem: use new idr deletion interface to cleanup
 drm_gem_handle_delete()
Date: Tue, 26 Sep 2017 10:12:12 +0100

Quoting Aishwarya Pant (2017-09-25 19:47:28)
> The IDR deletion interface now returns the deleted entry or NULL if it wa=
s not
> present. So we don't have to do the extra work of checking if we have a
> reference on the drm_gem_object, this can be handled by checking the retu=
rn
> value from idr_remove() and the extra locks can be dropped.
> =

> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

This reintroduces the bug were the idr entry is available for reuse
before the drivers have had the change to release their resources. So a
new handle may be reused that is then hooked up to the old private data.
See commit f6cd7daecff558fab2c45d15283d3e52f688342d
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Fri Apr 15 12:55:08 2016 +0100

    drm: Release driver references to handle before making it available aga=
in
-Chris

