X-GM-THRID: 6802335278632534016
X-Received: by 2002:a17:902:76cc:: with SMTP id j12mr21312077plt.129.1583844875808;
        Tue, 10 Mar 2020 05:54:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:868f:: with SMTP id d15ls4784672pfo.5.gmail; Tue, 10 Mar
 2020 05:54:34 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsrfFGNPUmAuIJfUCAnprfVoltr3j1kx2saWndnu1u37rnZOyki8kt9QjRhZ7D+AV4q5qcP
X-Received: by 2002:a62:1682:: with SMTP id 124mr21360197pfw.107.1583844873925;
        Tue, 10 Mar 2020 05:54:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583844873; cv=none;
        d=google.com; s=arc-20160816;
        b=oVxx+KvIHjbj0AidpoYm7kZbiou6JUsexB76jDWkyQL68Fm28X/PiLRc9XLm30KuZS
         Bt4il+7vAW73u+Ix1I+SeXXw2g4mSZjK28DkH8fCCnCwY5fBgr6ZWtNPcjyEVBcgivxY
         /a1xWjIWlWcjKtdawEA39LiCio9dKCUpU/t58bxUUa2cRr0zNK6Nz/0G2nHyZYBa/vJp
         c/hCC3bsumb0IJ9m3SUGFXknUwx64QVKqNuXaHUCQxj+/M6VLspRyhbu/pFvL4jmKwWD
         L5UGGTL3cBCkQjPrYz3Qz0P7gwDH9DrYyxZQD2h2QX8e6vI7sWyHKOKp6aQzYRJUyw+0
         skJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=To5XX9CNhbOzBUR1udhdYEKxD/R+Z4y2WFcF3KtuGZY=;
        b=PjuRofKB0SSFv2PpqLr4/isj9KUfAm/7HBtA1rHIdpqCSfi/fRsTJv6c0G8E3hCbzT
         oudnQyxLUi2ggu246ZCq4uXB3rC0VA2YladzDGnW/nhxmBdf9D8f+jKWKPYoIf0VGRYR
         6l/6rr4+SN6wX/2JkkGsuzL24gM6w9M33xweoRvFFe+2r6bUFhynAHSI5j8ka9qYnPpK
         9PDX7Rf45YUwFGDksZvwWLcPkCJ1RfhPwrFhyVSZsNEptOu7mJTWYP65UbvWGAIHbBSQ
         sflrVhFbD8h8VOPpqryPa0+N4hp8FU9Eyb+Y7REO9G9rLfoL/6co1T0IRrGDP8Pn0zno
         hzPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=cYdPG6c8;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y129si802392pfg.1.2020.03.10.05.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:54:33 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=cYdPG6c8;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id ay11so5405231plb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=To5XX9CNhbOzBUR1udhdYEKxD/R+Z4y2WFcF3KtuGZY=;
        b=cYdPG6c8CRyqmXXSkGY07EJx+38nraLKJEnok42tp2zyvGrm3zRapEE07UJsx+wUdi
         1SX4jGjbkrV/rlGugN7gDYZd5jPwJEGL8nHXTo23lSJ71h91nTznQrUcdA8lufG4mEak
         ioUeVwxIUqO0zzmWFtCsvrQqhc6CUrPSElR8jgxFSfs2RAohA1qDKKkKYlAOQj3pUzBv
         ztgZSIYLSMcUSVt17J65kV59pnSPb3lUhZIsVc3x7dGPFUB08JlAG94c/bZGbiGU8Q0+
         GXu0WtkuI4xfQPy+fU+yl2oIYbgAmRCPfqeoFNxJZgbrvTgtRyq9b2zkaenhdmKTAt5e
         k+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=To5XX9CNhbOzBUR1udhdYEKxD/R+Z4y2WFcF3KtuGZY=;
        b=uSYpIQUW4r6gLJ9yd7xKooRbba92YGO/Fo0YK3D/Pn5e0A5wOFtnnVudhX5nzcxuKB
         gZt9vXOn2z0iBkG54I2jZVGY5aVrYD+Z0L3wB+d7NzHN+7FWJaeZ9Sy8VBQWgy/HxBhS
         9loJf0mhEAtsJMfU0QMWy2hmDQYuRDG5APIuHxULO5Zu23xKZBogfaQ+Jv0TIXVKMFnR
         yBGq6jz1BQ/SxBsG4Py54L8mfTARUkWoSB4EYOWdsVsXxJBhAd1KelqDJH4yI7CpDg0q
         S5u3VQwALYkZYQ1ZGmRcXAnXQi07ux4280jxKAlEsoKDO7Ee83nbdE6/61wQVp0JRgSf
         oKJA==
X-Gm-Message-State: ANhLgQ2tD4jJPQY4egLRaThfGKsZHn8Wj+gGu6Gd8mAr+I/e/H2PPIGE
	zf0fQoyxkNEPiFNduhOCju2Y+w==
X-Received: by 2002:a17:902:b090:: with SMTP id p16mr8064034plr.274.1583844873080;
        Tue, 10 Mar 2020 05:54:33 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
        by smtp.gmail.com with ESMTPSA id mp23sm2371300pjb.42.2020.03.10.05.54.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 05:54:32 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 18:24:24 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 0/7] Cover letter
Message-ID: <20200310125424.GA22891@kaaira-HP-Pavilion-Notebook>
References: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook>
 <20200310090646.GA2479270@kroah.com>
 <20200310120113.GA11048@kaaira-HP-Pavilion-Notebook>
 <20200310122852.GA3116170@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310122852.GA3116170@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 01:28:52PM +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 10, 2020 at 05:31:13PM +0530, Kaaira Gupta wrote:
> > On Tue, Mar 10, 2020 at 10:06:46AM +0100, Greg Kroah-Hartman wrote:
> > > On Tue, Mar 10, 2020 at 03:44:49AM +0530, Kaaira Gupta wrote:
> > > > This patch set aims at improving the code style in a few drivers in
> > > > staging. They have been found using sparse, coccinelle, and
> > > > checkpatch.pl.
> > > > 
> > > 
> > > The cover letter should be auto-generated by 'git format-patch
> > > --cover-letter', and will contain a lot more information than just this
> > > paragraph.
> > > 
> > > Also, I did not see all 7 patches of this series on the mailing list,
> > > only 4 of them.  They were also not "threaded" properly, can you use
> > > 'git send-email' to resend all of these when you redo the series next?
> > 
> > Can you please guide me as to how I should thread the patches in a
> > patchset properly so that individual commits get to different patches 
> > and a cover-letter is generated as well. I am using mutt.
> 
> If you use 'git send-email' you do not have to use mutt to send the
> patches out.
> 
> If you are using mutt, you can send a patch series, but you have to do
> it "by hand" and it's not simple to describe through email, and only
> recommended if you _really_ know how to use mutt :)

Okay. So just to be sure I think I should describe how I understood
`send-email` must be used, as I have been using only mutt for a month
now. I'll create individual file changes, commit them one by one,the
format a cover letter using `git format-patch --cover-letter`, then give
command `git send-email --annotate HEAD~(no of commits), and the patchet
will be generated automatically (?). I'll jest have to send them.

Thanks for the time!

> 
> thanks,
> 
> greg k-h

