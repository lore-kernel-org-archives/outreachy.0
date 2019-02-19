X-GM-THRID: 6658167413174960128
X-Received: by 2002:ac8:1c7a:: with SMTP id j55mr17356594qtk.16.1550594147144;
        Tue, 19 Feb 2019 08:35:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls8159799qkd.0.gmail; Tue, 19 Feb
 2019 08:35:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZrXk7aBnOsISJ0gASXz4wCaIWruZlDP9WW/qhG5cMZZ3HPezvFz2x7RDQsdMBMqIPuPkEf
X-Received: by 2002:ae9:f106:: with SMTP id k6mr16984933qkg.18.1550594146598;
        Tue, 19 Feb 2019 08:35:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550594146; cv=none;
        d=google.com; s=arc-20160816;
        b=ACIXi0qwc3kkNJxQbxBWgbgFD0TI7qxXNOu/Jr4fIAhvALRRPr7K2HNVXLqvkXE70m
         UrehToNlciveQiM6c71c7NqpP4dirBZp2mlMXwIKGTgzvKI2KuegcC6VSPFQQwrtI75U
         pP0/JckIWczgi22GuL6VAjvf9I4wrOzgIZpfUn0nqCoPeXBQl6LWzIFOPjX2qP0/8yo1
         xCRrumNTb8wRR6/z+YrUVV0d/dlIkw7pVLqhjZ+Riu6SlYDNY+N8kBNWz4knJk4kFql3
         IoL2Z2dWkTbkk0090BhZ+TnTpWc0mx88hgCX8382GAFI50uyY7WGKPhTFeXSfQ638N89
         rAgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jvhQY19aNRxMIBBHHcUN9/ezh8vXFUlQdXxPC3nq3yE=;
        b=xOJ5W3EXI6iHHHkoeRo/lqjZEeYIOMmZSKpRIu2pEcZnw+UodnCM1FZQCXbJfOlrFs
         01e7tBkcQGOZtVMZl11jRWoOGkJ8m+bI4fX83jS72ABxrqFz3mp4d9DqN0vxYxEL6Ep/
         Ut9eeWpRin1GhBuhbcf0SbZFyYA5+EbPsEZ3l5wVDJUfeN6Epn3BVGv+n4inn8loymJq
         GivsY8qefNHmoA45omT1rgUliEBuRWEi+Oc/C+mf2RHz1WLtF1NLPzyVCPHArmb1eMP/
         pYatikH2BOVwTLY4+F790PmQ9d3YceqdtV0T5k6vuUdsoNz55Kw0pifgDSLPow4aiTq3
         Bjnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kFmSaQfP;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id g23si199902qtg.4.2019.02.19.08.35.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 08:35:46 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kFmSaQfP;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id q206so10383351pgq.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 08:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jvhQY19aNRxMIBBHHcUN9/ezh8vXFUlQdXxPC3nq3yE=;
        b=kFmSaQfPqRTkOwz+d9EajeFMyuE338i1cftvit2EgiiV2IyIzbsXsLDSOV9pNutVJ7
         rCDKtWjCc6FUX0EuElKq4cEtlZL0JjxbF0p5I8Q5VfOOs5G32wbqvxGZVLMF0nH+dn8e
         QdDo4M8CUAzboup6FPfFWBENzqDvgP57JR52f4QA5OYc1BgQxJufoCzWCOylIPR73oj8
         ZYkXa83JsavctLWmP32vqrBd2WJmhu8bxF9q3krnlt+tHATEA1YmWk9OfpzYuoeHGi8B
         Kbp32nURS4LHAPBXZciY0UHBZiOpNKmkGU2fQapqr+y3HUVpVUCa+KoN8cVH9DbguhBF
         3VYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jvhQY19aNRxMIBBHHcUN9/ezh8vXFUlQdXxPC3nq3yE=;
        b=XwSjFBwUSMOag7Ua4oLNecinzX8kcsqRQWm/OqRmM5NYp1oQaj/KfnC16EY24sPqFc
         jvOSLKFTMvQqpsC0JOVp3RTRdWuIjFRJAJxCpQx30rYts6jl0UgDPMlyVojgW0Vf1NHp
         GrwNXVGiDC6wSNNjZZyyICd1pBK9FOXTNGzd6mvHRTNYdADWoW+kxHwwmHmznf4f7HAE
         3yMesnewwHgUqcE6CvOZHDfb1u/GMVD1Zd+KuQbJ8YcdmiQ3vL+RhxzJAihBnolQ9c/T
         VSPxoxl1EIVTrNAP/192rIT+Az6SkhvndRDL46hyYWQ7k1htM9+xzOUwSzHAXx51UkpX
         q95Q==
X-Gm-Message-State: AHQUAuYlwwqgjUf49Yyctd0N701ppGefU6LN3Mytr1PJWMbrxEItGilX
	pEhOukbkCK0yC8mLG7lfzAU=
X-Received: by 2002:a63:305:: with SMTP id 5mr18614790pgd.57.1550594146175;
        Tue, 19 Feb 2019 08:35:46 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.77.43.148])
        by smtp.gmail.com with ESMTPSA id 64sm26014345pfe.143.2019.02.19.08.35.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 08:35:45 -0800 (PST)
Date: Tue, 19 Feb 2019 22:05:39 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: supriya supugade <supu024135@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I didnt get message in log like "I can modify
 the Linux kernel!"
Message-ID: <20190219163539.GA19366@himanshu-Vostro-3559>
References: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
 <20190219155942.GB18454@himanshu-Vostro-3559>
 <alpine.DEB.2.20.1902191703400.3588@hadrien>
 <20190219162019.GD18454@himanshu-Vostro-3559>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190219162019.GD18454@himanshu-Vostro-3559>
User-Agent: Mutt/1.9.4 (2018-02-28)

+Cc Bharath Vedartham[1]

On Tue, Feb 19, 2019 at 09:50:19PM +0530, Himanshu Jha wrote:
> On Tue, Feb 19, 2019 at 05:04:53PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Tue, 19 Feb 2019, Himanshu Jha wrote:
> > 
> > > On Fri, Feb 15, 2019 at 02:10:04AM -0800, supriya supugade wrote:
> > > >
> > > > I am following the link "https://kernelnewbies.org/FirstKernelPatch"
> > > >
> > > > and modifying the driver in native Linux. I made a change in the
> > > > e1000_main.c file i.e inserted the line
> > > >
> > > > "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling
> > > > the kernel and rebooting it, I don't get the
> > > >
> > > > message "I can modify the Linux kernel!\" in the log files on typing "dmesg
> > > > | less". I am getting following error during installing changes.
> > > >
> > > > Makefile:1281: recipe for target '_modinst_' failed
> > > > make[1]: *** [_modinst_] Error 2
> > > > Makefile:296: recipe for target '__build_one_by_one' failed
> > > > make: *** [__build_one_by_one] Error 2
> > > >
> > > > How should I proceed further?
> > >
> > > Post your .config and full logs using pastebin.
> > >
> > > I saw one more fellow struggling with this on kernelnewbies.
> > 
> > Did you see the discussion here:
> > 
> > https://www.linuxquestions.org/questions/linux-software-2/kernel-building-install-error-4175608377/
> 
> I just googled "make: *** [__build_one_by_one] Error 2" and
> this pops up as the very first link.
> 
> If this is the solution you guys are looking, then it very
> sad :(
> 
> I didn't check this becuase I saw this question atleast posted
> thrice and assumed some new issue has popped up.
> 
> > It concludes with:
> > 
> > I suggest you go through the building process in separate steps instead of
> > "make ... install" in one go.

Julia, I think you are absolutely correct on this and all of them had
followed what is actually written on the HowTo page below:

https://kernelnewbies.org/FirstKernelPatch#Install_your_changes

	sudo make modules_install -jN && sudo make install -jN

should be the clean solution.

Bharat, Supriya: Try this and confirm!


[1] https://lore.kernel.org/kernelnewbies/20190205060053.GA309@bharath12345-Inspiron-5559/

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

