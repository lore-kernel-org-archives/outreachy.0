X-GM-THRID: 6467580145196597248
X-Received: by 10.84.216.69 with SMTP id f5mr701031plj.0.1506691092791;
        Fri, 29 Sep 2017 06:18:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.134.10 with SMTP id x10ls1916459pfd.3.gmail; Fri, 29 Sep
 2017 06:18:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAgTJQe+0T74/P7H+6Fbi3RnCl6HEoJPfUF00K8QQ6dViYG7Jzfm7TaZVk+rO0Y6Ti4eidX
X-Received: by 10.84.195.36 with SMTP id i33mr688156pld.44.1506691091586;
        Fri, 29 Sep 2017 06:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506691091; cv=none;
        d=google.com; s=arc-20160816;
        b=ukHcPumzsgeDyyWvUx3f0iXvMBdtGeMe69XyoWuwVhGZZ5Z3V/ubWauecECloOUqtB
         aDe0K1bbNHEpob6cGOawAf9XtzH7YAKJoKFHgJhyxP8dE9YBBumRO2TUuA2/U492Ktp8
         AKyjK9+lbPT1b53ZBrJkUDck1gWn8tmxmJoEJSN3xP3ReHE/DaETh9kkT/JwzJdP376l
         mQzOv14BxmO6UD7XVzZ7iZ22bRvMQWtt/xnBa2iPsGh7OuEChrnVdWUznMKfC58NB0xL
         ZPTHiXHBLMnmTzOHPNmQ10p44r84JEZBKrjS1PR00fblMIJuhAtfbtrw+jFnUpUsIK1w
         Bx1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=pBrdFAbsmtz7nIsFfqrG+9YX+iHf6QhbEII4dP6I+Ks=;
        b=wOtcCSL2JfZjcrunMB0q96uQlA0Fjkb3af0gtAanuukFYvolaBtoHFWA09Kksxg1Nt
         3TqDAH0EqIc4+PejmDY0FXiYfilR3Y/zobO0U06tRG5Dc5HDdOGr914ls5OmvS7voJMA
         qP7tFf+2SmuuuvGLQYen6BqShH+gqwFiLejnB9x+omBJVGIiTHHj98XImkNrYQqRaY3I
         FQWwp410mrjIWF4AGgN1HGMV7zSeSeE5lkX/ZiNI2xAmPVVvXaTNNaz7m3t6drB+l149
         eULtX7GmGTR7+9KeKrJ7u0qZzTK9geEMwv0hSuhsAqWs4I/hVXN2EDptwarQuOz/dhH2
         4DBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y12si541735pfe.23.2017.09.29.06.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 06:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [195.81.232.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D198DA86;
	Fri, 29 Sep 2017 13:18:10 +0000 (UTC)
Date: Fri, 29 Sep 2017 15:18:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Use
 netdev_info instead of printk
Message-ID: <20170929131806.GA5945@kroah.com>
References: <20170919195406.n6kztu5q3pnduhir@fireworks>
 <alpine.DEB.2.20.1709192225010.2518@hadrien>
 <CALta04zspRuf0a2ELBCYZOXK=K4UDkPTeEDJN=sUBYuZEzJbXg@mail.gmail.com>
 <alpine.DEB.2.20.1709201104510.3290@hadrien>
 <CALta04wjWw+iu-0exV7aW5fEiJqG-xGmzgkw08-4Qwz3txOGpw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALta04wjWw+iu-0exV7aW5fEiJqG-xGmzgkw08-4Qwz3txOGpw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Sun, Sep 24, 2017 at 12:18:55AM +0300, Georgiana Chelu wrote:
> On 20 September 2017 at 12:06, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Wed, 20 Sep 2017, Georgiana Chelu wrote:
> >
> >> On 19 September 2017 at 23:28, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> >
> >> >
> >> > On Tue, 19 Sep 2017, Georgiana Chelu wrote:
> >> >
> >> >> Replace printk with netdev_info because struct ieee80211_device
> >> >> contains a net_device structure.
> >> >>
> >> >> Issue found by checkpatch.pl script.
> >> >> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> >> >> dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> >> >>
> >> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> >> >
> >> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >> >
> >> > Maybe all the locally defined debug levels are not really needed, and the
> >> > calls to the debug macros could also be replaced by appropriate calls to
> >> > netdev logging functions.
> >> >
> >> > julia
> 
> Hi Greg,
> 
> Are debug levels still needed? As Julia pointed out, all IEEE80211_DEBUG_*
> macros use printk(KERN_*) in the end. Do you think it is useful and safe
> to replace these macros with netdev_*?

I really do not know, sorry.

greg k-h

