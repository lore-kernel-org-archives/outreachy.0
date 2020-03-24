X-GM-THRID: 6807744599816142848
X-Received: by 2002:a1c:bcc6:: with SMTP id m189mr5995355wmf.48.1585058983917;
        Tue, 24 Mar 2020 07:09:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls3853789wrr.4.gmail; Tue, 24 Mar
 2020 07:09:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu8zxWtQCuog60b67q8uYxxpuQfTYWLgeVNLBz6arQSEvEJOGQRRFMJWkLKKn9Ky1WR1Sxz
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr38389089wrq.180.1585058980869;
        Tue, 24 Mar 2020 07:09:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585058980; cv=none;
        d=google.com; s=arc-20160816;
        b=IX0TukmWm1rIYOCdReFsmXZfil6hfTNhSo2o4z+bzCDnX2rbXo4iFTxBR0YFvkPUr3
         W7mZmLu6Z7FiVkNKlOzywg+lPoJxm57Ds/2qqGwp17woPQzLOQ9ntLaH5LkhBeyM2Zpk
         4+PaRGFlEk5E4g1T4vVagcFTIYWPsToH3JOLdjEE/afmLVlObGCFPvfO3nBI7gJW1aSl
         ahF7vECAfOQHTI32K6tyQQksn7k4x8w9MBFLvZF09ifVgrNvRr2usg90VotulnODjp7W
         1TehGZ/CeETU3CsvfeRacoNCe2qEDCAPFBKZmls7yImY0Lai9Ul23SUY6FVZwweGprQu
         uqIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=MyxOLYi+55wWHo1rIiSR9bJPnHfjx4BjLyWU71qA72A=;
        b=fvfxjnnIJYmJPp4COhDJky/XvF2hGBM7tmo+U7vJcGykl9BsqwBNigoohqUz4NyPbs
         G14pC0IOfXJe5X7WU1qXaT6DtRYgdh5ASp4O7kCy/KAM5SwSpZfudjOJoj9xJ3Fp2rF9
         K1n4bnhZfkEwuZcYHxdxqiND5aVNF69YNVGgazvI6KhFp2iPyWvDecQS4rRYbWt2qGn1
         0zFlvuwikBX4KLWNSb5y0Z5Nxa8Jw0Nd1SpPxAnmm7Gnmdwv10s5mxinT6eY33D7dqUY
         9RzsbLDrdT3NQcpVU3SCvxLBjm1IkHK6R4gE11Sj1hCxrOwq6RkhBgIhJ9kghcF1uYuP
         1FTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jAjQnE2O;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id g78si200921wmg.0.2020.03.24.07.09.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 07:09:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jAjQnE2O;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id p10so9204631wrt.6
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 07:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=MyxOLYi+55wWHo1rIiSR9bJPnHfjx4BjLyWU71qA72A=;
        b=jAjQnE2Ov+ZiXmJg84t1Mp7DCAlP7mftHr1+Uin1Pj6udTOXRe8wK2pYbrTLyapLQT
         6ZVGEMztWGEKJo/ecGMSww4RqNM3QPW1T5akP38qo+AzEKCuDk7zAwfxPpLFCnEKkq1B
         6col/AUQ7xkrrHZTEqGThXqlZjxSw3vsJV8RWqpYdlC0a+Qse/gQaHconljkddOea7i0
         uEaX8j4M06D6MQFZw3lQgF898JgMEOLD+vH4VPwH6XWOZevAHhupQwOFiqbFHkPKTMOU
         4jwaWs1sYl+TvIHAKy/cUr5nrAgKaWQQUlLX2h8oa5ehqYGoRadq6cA2F7939qTHJ1ud
         5x7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=MyxOLYi+55wWHo1rIiSR9bJPnHfjx4BjLyWU71qA72A=;
        b=HK5II/DzmJXQRq843Ehzi5EJYtUFIOnmgD4z4MJw8+cinErhbEkKYNtNKrsbIKolBf
         py9k5TYVwDlrHHddwQ9tSsCVM9wXhh/kNui9je/wlRrNJqsZO5jvDMSlJEPJZSIqDOC0
         VJ2zkO5m2GnrMJXYkLN9tHuk3zzPVF6HhowobnbGaQhcCaIJxIgwah8Bzq0Ok3ruwsGa
         ZSpZs6vywVqcDFT9cL39QXsN5pkPW1xjiXpn6pCX594H915ms/JuEnnYKFchVhSnjzel
         uh9hTqSeOTfQ6o8J9SEX7pmFitI4Y3PhdUyZUx1ZqnjzJJkZ7PWoHzHUAYMMuZbMhgwY
         ZmIw==
X-Gm-Message-State: ANhLgQ1Tp/p+rM1FzOzHUr9eOtgtqozhRuUVnB5dX2tzmE3CyL6SAtnN
	PBx8S5wL8iLsLsfH/RZYeWS/JgYXsMI=
X-Received: by 2002:a5d:4d07:: with SMTP id z7mr35888996wrt.89.1585058980499;
        Tue, 24 Mar 2020 07:09:40 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id j39sm30437730wre.11.2020.03.24.07.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 07:09:39 -0700 (PDT)
Message-ID: <8249c08d6c739a40441d2bb066e828d004d56d02.camel@gmail.com>
Subject: Re: Following up on Coccinelle.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, "outreachy-kernel@googlegroups.com"
	 <outreachy-kernel@googlegroups.com>
Date: Tue, 24 Mar 2020 10:09:38 -0400
In-Reply-To: <alpine.DEB.2.21.2003241334100.3306@hadrien>
References: <eaac641de00be14d48192180c624c2e13f7d897a.camel@gmail.com>
	 <alpine.DEB.2.21.2003241334100.3306@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-24 at 13:39 +0100, Julia Lawall wrote:
> 
> On Tue, 24 Mar 2020, Sam Muhammed wrote:
> 
> > Following this thread:
> > <20200311181134.GA17847%40supernova>
> >
> > While tinkering with Coccinelle, i found that this error:
> >
> > coccicheck failed
> > make: *** [Makefile:1742: coccicheck] Error 255
> >
> > only happens with (as far as i tried) two COCCIs:
> > using MODE=patch
> > scripts/coccinelle/api/atomic_as_refcounter.cocci
> > scripts/coccinelle/api/check_bq27xxx_data.cocci
> >
> > So running make coccicheck with no COCCI= will always fail at the
> > scripts/coccinelle/api/atomic_as_refcounter.cocci
> >
> > Adding that MODE=report is okay to report all ERRORs ..etc
> >
> > so specifying a COCCI to get round it worked for me.
> 
> 
> Could you try with the option DEBUG_FILE="err.log" and then see what is in
> err.log when it crashes?
> 

Okay, on both files, it complained: 
virtual rule patch not supported

and when i looked into both COCCIs i found both only support (virtual
report) --both are rules with no +/-/*--

i put "virtual patch" anyways and it obviously complained:

No rules apply.  Perhaps your semantic patch doesn't contain any +/-/*
code, or you have a failed dependency.  If the problem is not clear,
try --debug-parse-cocci or check whether any virtual rules (e.g.,
patch) should be defined.

So i guess both of these COCCIs are only for reporting?
thats why its fine with MODE=report.

this has a workaround until we depend on make coccicheck with with
MODE=patch and no COCCI=


> >
> > ++
> > but i have a question, maybe a couple:
> >
> > + If i have a simple .cocci and it produces patches, how do i make a
> > commit of it?    _newbie_ :)
> 
> Apply the patch to your code:
> 
> patch -p1 < the_patch
> 
> Then proceed as if you had made the change by hand.
> 
> > + If this .cocci propagated across a driver, a patchset of this change
> > across the driver will have the same subject for all patches, I guess
> > thats not okay? so one patch of all the driver files should do it?
> 
> It depends on the changes.  If all of the changes are quite uniform, then
> putting multiple changes in a single patch could be ok.  If each change is
> a special case, you may want to put more detail about the file in the
> subject line, ie before the :
> 
> In general, the point of a patch is to make something that is
> understandable for the person who has to review it.
> 
> > + Basically, how to format a patch found by EITHER an existing .cocci
> > in the source tree, or one that is made and not included in the
> > /scripts/coccinelle ??
> 
> If it is made by a semanitic patch that is in the kernel tree, then you
> can use the tag Generated-by: and then give the path to the semantic
> patch.
> 
> If you do something on your own, it could be helpful to include the
> semantic patch in the log message, or a simplified version.  The point is
> to show the maintainer what reasoning you have used to come to your
> change, without overwhelming him with tedious detail.
> 
> julia



