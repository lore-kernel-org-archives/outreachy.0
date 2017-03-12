X-GM-THRID: 6396639849722413056
X-Received: by 10.107.130.199 with SMTP id m68mr8216471ioi.2.1489337452257;
        Sun, 12 Mar 2017 09:50:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.49 with SMTP id o46ls994677ota.35.gmail; Sun, 12 Mar
 2017 09:50:51 -0700 (PDT)
X-Received: by 10.157.11.109 with SMTP id p42mr13040366otd.14.1489337451949;
        Sun, 12 Mar 2017 09:50:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si2704880pfb.7.2017.03.12.09.50.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:50:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id g2so11178371pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HNoggP5CJc+pfFCPSuGG7rH9/s+bq/vRaVlnZQ/URRo=;
        b=S7gDSbB+Zon9eQFfVepn+V/Zzpj8LqSzIMi0A0vkn9f2MVGjb7SXri8wI7YdlqJXIm
         yxdVdfhXczzsLFkihrMb8dk4cvlMzkQ3U5m/Y1K46931redqFohIwFA99rCcN04pFY4A
         4dlOCPwc7X1A22YC51KeqWm8a+nZriYN2iBFKoCO98UesoxYDI2+PCef9l8bw4aQ4xdC
         X8RW/+u9KK/Hky84CAeL8vJ2tLISl4UDXUhOcQvYLZSS/52GFc3kcbseXaKoGb6r3VEv
         pDhUTM5WnE7KNLXUDxTqPCUjHZjjA8WC0oTXF9nf7nHiWDXkXzT9HwvY5upe0QSSeLs3
         6qGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HNoggP5CJc+pfFCPSuGG7rH9/s+bq/vRaVlnZQ/URRo=;
        b=WLNr0YPq5GOBXbLr5F98PR5S2Oup7H61S0nthZVAXhmZmHi6GtMPOsrAAGasdJshlM
         4LuNdjClW9BDAbRgkppTmHAGY47MtTgYE1TwGJDW7+tP44hzQL+946Q7HpbpB6hQizne
         zN8piOGtaBpnHWU4BBgbutFB9Z0cQOpDHDVFtXGun+FqXP9JUUoslP1Fzi/4WP0YrCRm
         UDplSNHl7aAeUIKnrXgzYfE5gh/e5k/Npn5y50x/kJiqIWjNlcCgGXsQqe6teTa8OYEO
         oo6uwW96Wen4aMdCY7c6PBDzMikJNu8UHoGMMCHpXOYSAe2aw7QwCTdIGIVTVt7OJoAD
         aY7w==
X-Gm-Message-State: AMke39n51/3b5gEWFMyh1KY106UdYuXFvsuaH3ojW+9+Ur0fZ/Vqi/M1VLgs48rYkb1Gmw==
X-Received: by 10.84.160.195 with SMTP id v3mr41216959plg.161.1489337451732;
        Sun, 12 Mar 2017 09:50:51 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id t12sm29151117pfg.14.2017.03.12.09.50.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:50:51 -0700 (PDT)
Date: Sun, 12 Mar 2017 09:50:50 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] New IIO Coding Task Posted
Message-ID: <20170312165049.GA2992@d830.WORKGROUP>
References: <20170312154929.GA2417@d830.WORKGROUP>
 <CAOCi2DE7G2uaGddyvzVUpbj1puyigvBLoy2SUcuQ-U5CaoRZvw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DE7G2uaGddyvzVUpbj1puyigvBLoy2SUcuQ-U5CaoRZvw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 10:14:03PM +0530, Gargi Sharma wrote:
> On Sun, Mar 12, 2017 at 9:19 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > Hi Applicants,
> >
> > A new coding task has been added to the IIO tasks page.
> >
> > Coding Task 2: Replace driver usages of mlock with a private lock
> > Enjoy!
> >
> Hi Alison,
> 
> I wanted to claim iio Task 2 for adc/ad7280a.c.
> 
> Thanks!
> Gargi

Great!  We use the outreachy tasks page to claim tasks.

That page includes the directions on how to get edit access to that page.

https://kernelnewbies.org/OutreachyTasks

alisons

> 
> > alisons
> >
> > --

