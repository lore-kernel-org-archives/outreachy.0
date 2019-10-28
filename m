X-GM-THRID: 6751365568986611712
X-Received: by 2002:aa7:83c2:: with SMTP id j2mr22939119pfn.225.1572290360007;
        Mon, 28 Oct 2019 12:19:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls5690421pfb.0.gmail; Mon, 28 Oct
 2019 12:19:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwVtctVPRxmGrGcmmyN3q9WIE0e4SF+tSoaavjWZUbZRDSWLpcnNTYypf2Z1CRMobLYXfQ7
X-Received: by 2002:a63:2042:: with SMTP id r2mr1203127pgm.32.1572290358501;
        Mon, 28 Oct 2019 12:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572290358; cv=none;
        d=google.com; s=arc-20160816;
        b=tUyZY7X6nZ0xotpYtOvehKdbqDvmpNeI23AG80sCoWm/7QxVlH5HSATTIxlzVAhWDn
         4MPmL0NfGU1j8ftNXNYpoXUbaCizQaPzVd++ZvK70PfVVeoLXdYytCLrEhfmnKyDMUiy
         ivkdzlBp+F4ya5C5aXkrOn4lE9GwxEQ7c3laXl27HXpvGGNtHkTQC1IzFNEW25ZDFSwi
         RQsnPSklFni3bjH4W0bTh27QlTMcoK+LxAKI8w5oZQgGasdXl3w0TJ7X8MlHBhj61ok2
         OJPgHbvBJK3BhDL6eLsGcrR8ZmYGpT3U2HFGuU01z0lq3xvAR7CQ4BqawLXCfCfLoahT
         V0Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t4IAL5iBcM1d+uXoo3dR+9a+vzgfW9qnFbZqHboPmr4=;
        b=giBnMvgq9DzJ3Fsc5E+RLb1903gp8xWTk6FjAHIz52mvn69w62w9o71sMUqqfd1QZs
         Ixkz9JtgprHY3KFK1ExCJqr0rrD3j2FLstcOaNaviTzFjliSoIachoyzVCqkpIjSrDYu
         tQ2/km82CxJ4zB9QqokKk1oU3vptWipwc7MfzQYBYdXUBSOYH2H4mN+JiJZAx9BOOfOb
         7QyfijoJBV0lDXA0TrBs86R51AWkG0QguQfZmMq1UyLWpnOHnteS7M165RIUT7+kepqF
         VueWhnxu9IFmRg0pNYf0wvpdBt5ZW++Gj0WHIb1by8+VlPUzmAvvPPQJ/juKlD6FdRCO
         c8lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tXgQi/PR";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id t22si7407pjy.1.2019.10.28.12.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 12:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tXgQi/PR";
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id l15so9658089qtr.10
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 12:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t4IAL5iBcM1d+uXoo3dR+9a+vzgfW9qnFbZqHboPmr4=;
        b=tXgQi/PRZPHw+dnAuppCRqxu9Ty2YQntepac9Q/z+eIgf3M91SswT0jm/q/S066AA+
         NDz3AXZHiGtkFG8FzrSsgLKT3Dm9m1C93oPLA5lHStARiZ/ivI/EhooLHfz+abhjapNE
         l3bIaFuz8ncMQ/x47xEosiR2Y7iy/8UQbwX9fTP+WA+Hys9J5u31I1aQ1L4nx9cLzi2a
         HdK/n+ZyDCW8Et/kDmF9gFyZXKPj81psqOUfXqNEw6XrHXrl8laG9x5LvNwR2ALLlZMo
         0tqlNq9x7KVUg10J1ndu3NPTyOq4P5ehffjGjZVm+qSTye98ZbkUFEfrz853yZhKukHX
         mS4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t4IAL5iBcM1d+uXoo3dR+9a+vzgfW9qnFbZqHboPmr4=;
        b=WiwxYc+ZgsjyN2H+6VcleMoxqiA0qFcDJdfQMovoCbhXfWLLk9h44kcyID7AQ25TlP
         bsTz6/dI7OROXvO0to8+dLyTXzz+gsJppTCxhu0hY7Gau0RchLFjuk7w0uf/vnjTR5Nc
         lk/5gsydFjIu91BD3f9CogFJjXys24e+SifgHTseTvWZb4aiCJt2sROvRUgXXeAfAR5O
         HGPZ+mMIRx0jSoc77wxqTkax0B2/fuMFLeOdkXPtTOeQOAUrp9aEOlSjohM12+b+S7CW
         9tdqBcYYfhPf4+6cEW3fxCw2RNys7wQJCq3ezB+oI8PAKQ51rF1KhN58wlTUNb/Q2pOS
         PMpw==
X-Gm-Message-State: APjAAAXr4OkWdcGU1XNjH7C3WP3oaZbbkkT44K8aKbB1nVyyEhd7O0sU
	rGG7xv1Ai6p9Gs30PQeqFsc=
X-Received: by 2002:ac8:151:: with SMTP id f17mr69934qtg.92.1572290357488;
        Mon, 28 Oct 2019 12:19:17 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id 4sm6278940qtf.87.2019.10.28.12.19.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 12:19:17 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:19:13 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: gasket: Fix lines ending with a '('
Message-ID: <20191028191913.GB2311@cristiane-Inspiron-5420>
References: <20191025232935.GA813@cristiane-Inspiron-5420>
 <20191028075738.GC1944@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191028075738.GC1944@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 28, 2019 at 10:57:38AM +0300, Dan Carpenter wrote:
> When I see a RESEND in the subject, that means you are tell us we messed
> up and accidentally ignored your patch.  So then we have to figure out
> what went wrong with the process and so we don't mess up again.
> 
> It would help us if you put a note under the --- cut off like "I sent
> this a month ago and never received a response.  Here is a link to the
> email archive so I know that it made it to the list."
> 
> I recently had an issue like this where I complained that my patch
> wasn't applied and the maintainer said "Oh.  That's odd.  I have it
> written down in patchword that I emailed you to ask you do fix the bug
> in a different way."  So these sorts of mistakes happen.
> 
> regards,
> dan carpenter
> 
>
I sent the RESEND in a wrong way. The correct one in my case would be to
have sent a new version. After observing this, I submitted PATCH v3.

I did not know that you had to send the note in case of RESEND. Thanks
for the feedback!


