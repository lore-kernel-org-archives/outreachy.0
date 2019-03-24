X-GM-THRID: 6670186659940663296
X-Received: by 2002:a17:906:1d4c:: with SMTP id o12mr11576728ejh.234.1553455891720;
        Sun, 24 Mar 2019 12:31:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b491:: with SMTP id w17ls1274578edd.7.gmail; Sun, 24 Mar
 2019 12:31:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz73iQ3xJn13Vz0wC/cMNk9C9x/3phEvmRU3n94DDZwF/n/k3q/0B5FsaapU5bRphJebYCc
X-Received: by 2002:a50:85c3:: with SMTP id q3mr10413138edh.140.1553455890941;
        Sun, 24 Mar 2019 12:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553455890; cv=none;
        d=google.com; s=arc-20160816;
        b=HuH9xBJsmoKSaykwNygWo2MDJHJg3BY+2995GQvu0FDvetjSeGJWePiNzc8mZ/ebmH
         nMF52DApr1H8UH8KzOLbInor/k/oXWvDbgsrCRtDWbo8VmWzOHnXgedxmJ0l/DLcyaah
         YnDnEpQm2tPaFQCnCu+6rA3XwGd0J7G2m8q3kJLpyAt1ftd4UM+gO4oZO9cQfBJw3wqf
         9DQJhGowxkJLTNn71q5esOLQ0bOi6G8Gn4bZeIDjwY5stuUpeZf1y6l3YUYCWH6O1ECa
         8NIGblFcFzInqxJ2eVCyUU3R14GD6UL8hktQxs79bCzXiHdEf2xsZWIfBh48m+dqkxm3
         yR1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=znS91jKTh9w2MTcd3B6CvvkIr+wcIQQt9lObkYfZYmY=;
        b=ti40Wp9G/5rVEtlYgHPu2pxYHiAM3M+Ch9+q1VcUFxKa++37uTWFrjBf91M14Ccmb6
         JoVPnLbgcOTJDbbjN/272WUhKj+qb+3YZcSTrwkV+MhXPPu+ox2DxOyKcVv+fL7hQXQk
         0GL+KNiBo9nLPMzCizqLqdms12B2pN7uAktSTIrpGf2QsnGTPUVJuXmxQd0mczQ/7rAP
         D7xlSiOu2TWrWgdz42S8mdw6sCBD0EsN754q7TVziTYDNQ32DbMs1h339Fy9LjyZKhlb
         X4mPO3jSWx52rEFjlFHUuYFYFpRDY9y2iTtugTAwB9Hc/31hIERH18bgmmatUl5Yq6tK
         LbQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nuQL2+TU;
       spf=pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=toddpoynor@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Return-Path: <toddpoynor@google.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r10si860036eda.4.2019.03.24.12.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 12:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nuQL2+TU;
       spf=pass (google.com: domain of toddpoynor@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=toddpoynor@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: by mail-wm1-x344.google.com with SMTP id z6so8074305wmi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 12:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=znS91jKTh9w2MTcd3B6CvvkIr+wcIQQt9lObkYfZYmY=;
        b=nuQL2+TU7iJQZa9ZsNgbcEe1OXCzFVaS0LouxN5vqrLQMKgI/Txtk5tS8kxmr6e/r8
         X6wH1UesSk/fE5YaS5v6dZFx/bhKjJnR/O71WouNXFdS9DYoyzmnBOB3qXGeyKpinl8P
         76XonPbOCwzPZdYh4kL4qr6AvwJ0AiJ9+lXBd3ZXBpnFeQtqQaKFK33OWQqkzlfdk3Ko
         VrsUfXLZf+rGt1oqPnQGLds+Q0vXKCvJDfqiLKwkisF/m/UaeAQjwGjg4IEu6Jj3zwuH
         yVl6WnCnu/U/3MVfT+gxnJDVuQtoceuGpV5yvQx4XytT4H3BqpSnqDlWhoqpIQ8r+axo
         AWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=znS91jKTh9w2MTcd3B6CvvkIr+wcIQQt9lObkYfZYmY=;
        b=ftQ1VJJskBxmPeKZ3dObrPd1uVUtfDkeyHHbPTSaAIF9CJMRQ6ltYez8Hj6CzMn8j3
         iLidACAjyvgA68SCbS4fWaO+qYdL7sSJF45mmKjlejVUJDCXENAhqTXjngde/Hql7HIt
         v/WMGHAtGfCmXY41lw+YWwI4sfsyj062K7w27uvlfUSlx9o/gIrqfwL55E1jK2UQQPBb
         w6cwI1xjNrLM/PwQSo/odSrD+97i/m/uSNxmkw7n3r3lnHgq/n1PFRVb409eK7pdhcaR
         2u94VXc6atEZUvnaVfeKsQBC8mGoS7y2Ip/dc6wG6M/cjk0lFbqzq0ujQuOSIT731RRn
         S3dg==
X-Gm-Message-State: APjAAAWBX3766OLteFMvA5Q/96BwP8hXnRxTd6FRptVNbWXcWKhaZGvs
	7wQN1XteEJMqyGPoHnJfVMayn57cHxbmiMdsl1og2w==
X-Received: by 2002:a7b:c5cf:: with SMTP id n15mr3206952wmk.106.1553455890352;
 Sun, 24 Mar 2019 12:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190319192911.8526-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.21.1903192054230.2460@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903192054230.2460@hadrien>
From: Todd Poynor <toddpoynor@google.com>
Date: Sun, 24 Mar 2019 12:31:17 -0700
Message-ID: <CAAW3Ypam+zhWP4nObOD+9N3yDNdiMx0JexcEPeOPe+E=f4OTDg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket: Remove return variable
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Rob Springer <rspringer@google.com>, 
	benchan@chromium.org, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 19, 2019 at 12:54 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
>
> > Remove return variable and return the return value directly. Issue
> > suggested by ret.cocci.
> >
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
> > ---
> >  drivers/staging/gasket/apex_driver.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> > index 0578bf1ba1e9..a5da9bbd8396 100644
> > --- a/drivers/staging/gasket/apex_driver.c
> > +++ b/drivers/staging/gasket/apex_driver.c
> > @@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gasket_dev)
> >               if (ret)
> >                       return ret;
> >       }
> > -     ret = apex_quit_reset(gasket_dev);
> > -
> > -     return ret;
> > +     return apex_quit_reset(gasket_dev);
> >  }
> >
> >  /*
> > --
> > 2.19.1

Acked-by: Todd Poynor <toddpoynor@google.com>

Thanks.

