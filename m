X-GM-THRID: 6331894376811200512
X-Received: by 10.237.54.135 with SMTP id f7mr14220114qtb.6.1474292126948;
        Mon, 19 Sep 2016 06:35:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.70 with SMTP id d67ls3190208iod.10.gmail; Mon, 19 Sep
 2016 06:35:25 -0700 (PDT)
X-Received: by 10.66.124.162 with SMTP id mj2mr14368661pab.25.1474292124973;
        Mon, 19 Sep 2016 06:35:24 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id si10si5367445pab.1.2016.09.19.06.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 06:35:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q2so4651661pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 06:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BWOoL1t6yU7VC3bZSs6FTCFjAXIg/M9I8FiXS28MGNA=;
        b=e6+RfDsiFM5hkkF6ieTqFlW2aTa7ggXZSv2ENZdyc/PS+4GrC2u+uLDdUj1p+9CriW
         +dhEkcwGNRZxEGOqZ8CgwOsYCtLRXZbOcWoClgXI3k1A5K8aTWs9L8x1jdO3s9xtf0U0
         Etbx3MBu//lAZmlilCKo6B0YXOqc5qxu7aEUcL3MBmws9dZJVClj+JJPPYVB6wnPXR1z
         vyfVnA0kL0uW15AaA4pW9CX1GZJAMgyag2SECDSUwVHemtdN+OiV4AYi05jYHg42ecgP
         Bb3+CLNwSHNoN0rdUvI1prXAccYq2zKfS3kSH87Bk3QFPmigf+Iuvx9Bn1r3rk91udNP
         +tsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=BWOoL1t6yU7VC3bZSs6FTCFjAXIg/M9I8FiXS28MGNA=;
        b=StQvXVg5GGc7zeECiF2+E+W8Nycl4xMDL5fmKhPjbaJkhmpeVYRJBb9gizx6D7dU0L
         yiQJZ8BzoAPLSqMofhl+N2HkJDs7CAbBv0Sjr/VBTdawc9iJfm7m9Wq7ECm89tYXgUXs
         gSYU0cCeENEgHGFKG6YPaeX/r5q1p9nFDKzG/ZllOhfXAAyzljgmdc9/jh2zy7BtZP1Q
         yJ1jpF9z3J2Kyo94lmOpwUNT3OXheR0Clz0nNe9RCAuYD4y5StrOqgvhBzwV+nx29ey7
         AewLtliuTb3uTXFtWr/m6hrE8B5ehNuFziJ0NpeWhBSvA3uHPJLnl8B42qMJ3felERsU
         DYcg==
X-Gm-Message-State: AE9vXwOzNReGKas9s5tFkGznhtEyJOKYJSJUumLc3ro+hGoTF3A1mMRaU2v8g1HXTPrsBA==
X-Received: by 10.98.66.212 with SMTP id h81mr47409394pfd.51.1474292124809;
        Mon, 19 Sep 2016 06:35:24 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-DK ([125.212.122.55])
        by smtp.gmail.com with ESMTPSA id p67sm71936234pfg.22.2016.09.19.06.35.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 06:35:24 -0700 (PDT)
Date: Mon, 19 Sep 2016 21:35:17 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: convert
 pr_warn() to dev_warn()
Message-ID: <20160919133516.GA4397@Socrates-DK>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <1474259034-10535-1-git-send-email-eraretuya@gmail.com>
 <alpine.DEB.2.10.1609191153570.3203@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609191153570.3203@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Sep 19, 2016 at 11:56:46AM +0200, Julia Lawall wrote:
> > @a@
> > identifier f, dev;
> > expression fmt, E;
> > @@
> >
> > f(...) {
> > 	...
> > 	struct device *dev = E;
> > 	<+... when != dev == NULL
> > - pr_warn(
> > + dev_warn(dev,
> > 		fmt, ...);
> > 	...+>
> > }
> 
> This is a good idea, but it is unnecessarily inefficient in the details.
> You don't use the function name f, so there is no need to match the entire
> function.  Matching the entire function causes Coccinelle to go through
> all of its possible control-flow paths (loops, conditional branches,
> etc.), which can be expensive.  You can instead just start at struct
> device *dev = E;.  Also, you don't do anything with fmt, so you can drop
> that, and just put ... for the remaining arguments.
> 
> julia

I appreciate the input. I'm going to amend my script according to what
you stated here. Do I have to send v2 for this patch?

Eva

