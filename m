X-GM-THRID: 6334891749875384320
X-Received: by 10.28.208.13 with SMTP id h13mr616399wmg.1.1475067330556;
        Wed, 28 Sep 2016 05:55:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.45.204 with SMTP id t195ls284535wmt.21.gmail; Wed, 28 Sep
 2016 05:55:29 -0700 (PDT)
X-Received: by 10.194.125.177 with SMTP id mr17mr127867wjb.12.1475067329692;
        Wed, 28 Sep 2016 05:55:29 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id u190si918018wmf.0.2016.09.28.05.55.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 05:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id w84so5821961wmg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 05:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CJvCZRrryK0pUvcECG6LtGTJ8v1dHhOVG4m2Am0vS6U=;
        b=JAWhDxSBzefOiFKf3obqF43jQt5sBnYuBxsxkFWpCcaqoYGPkSivtvQETpVoGFvOpY
         05cVUA5TP7/2t+9Mva4LHHhB8yl0LMwQMYx9hNcnqLxBQiXzG6XdDBZqBQXIkjrTBNql
         VgLocnmMS672KHEutSJWr/Rx3ng9jGveexcz7mxCROVfSP5si6GRwcL+rN68lQFyjgVy
         4fH/+MBzpJNLQQ0VT/BDGIeRt05/dfMQJZrTDHPDXv3Pv/teU/DofYuiA7nqR0xf3COp
         dIfFIwOo507uAo5sqTcc4VlTI2vIFrgX3E9ZdZPRqFdk7pJrocjwB9T91eJZ0GCOWDhJ
         QuTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CJvCZRrryK0pUvcECG6LtGTJ8v1dHhOVG4m2Am0vS6U=;
        b=cWFZwCMs0koSc62r5tPUnbVEsjrBjka4A2J2UkfQvUVCnQrkjcBk9abuK2AA6sjtme
         gW1/5O/emlyFVslrPohMJ3YC2V1PNReNQpOr5ECl7S/WhRQSAn2MXUcbSCf9i0AfkKNg
         XclgDN7qonfiwBdjLXz6PuvvSiy/LJZr3x1tszLQanzgFUhpSqzk9ED+AoZ+W4zgpkDB
         mwJNmjHUp5HdEE0/X3Rs4JO3/K9j2oFuKAa/hKB0niqzAP5MPWLdQu2geFEqHy+3eCvE
         h1xwjwR3Nj7ji4Ro/QK+bfJBn7Ikc10k9v67KALtVIbl9BUa4iBJEXC5UKruqKeyKSUi
         +t2Q==
X-Gm-Message-State: AE9vXwNWlIzq81lOx3Yf4HJP8ezP86hjS7gXtWHBLLp4+Jxjcml8qlJa3ZX0Hi8FRjAPXg==
X-Received: by 10.194.243.10 with SMTP id wu10mr27133919wjc.130.1475067329216;
        Wed, 28 Sep 2016 05:55:29 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.1])
        by smtp.gmail.com with ESMTPSA id qa7sm8106135wjc.39.2016.09.28.05.55.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 05:55:28 -0700 (PDT)
Date: Wed, 28 Sep 2016 15:55:25 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: ks7010 : Fix block comments warning
Message-ID: <20160928125525.GA26048@domino-MS-16Y1>
References: <20160927201031.GA8014@domino-MS-16Y1>
 <20160928093347.GA30719@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928093347.GA30719@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Sep 28, 2016 at 11:33:47AM +0200, Greg KH wrote:
> On Tue, Sep 27, 2016 at 11:10:31PM +0300, Muraru Mihaela wrote:
> > Move final */ to a new line, to conform to
> > the kernel coding style for block comments.
> > 
> > Issue found by checkpatch.
> > 
> > Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
> > ---
> > Chnages in v3:
> > 	- adding a * to respect the coding style rule for multi-line
> > 	  comments
> > ---
> >  drivers/staging/ks7010/eap_packet.h | 24 ++++++++++++++++--------
> >  1 file changed, 16 insertions(+), 8 deletions(-)
> 
> This doesn't apply to my tree at all.  Can you update your local tree
> and rebase it and resend?
> 
> thanks,
> 
> greg k-h

Thank you for telling me I will send patch v4.

mihaela


