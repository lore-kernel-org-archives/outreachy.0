X-GM-THRID: 6464655213388103680
X-Received: by 10.107.32.146 with SMTP id g140mr6218632iog.31.1505241104191;
        Tue, 12 Sep 2017 11:31:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.44.65 with SMTP id i62ls1752016iti.0.canary-gmail; Tue, 12
 Sep 2017 11:31:42 -0700 (PDT)
X-Received: by 10.202.198.17 with SMTP id w17mr8426202oif.21.1505241102926;
        Tue, 12 Sep 2017 11:31:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505241102; cv=none;
        d=google.com; s=arc-20160816;
        b=wBIBEzmh2Ot9zdamnxg/Cf2bNfX9JfabBuJ/V/078p0yUI3PKxqzXKxpzpqyGO6lI4
         4SRhQAFGoNXC58vkOl/5TCluEoWXac55iEtgurDgeZfzih1jbtkKd1hmLOxapqdPi45V
         VAXl5/uvn6r/wCPZX56bFBQZNq+zbHlh1/M6YCEWiP29WpLkvQrkiNvbioDyeBUoBQ/8
         3ASBlK/x/fi5bXlxI6GhHiT22Qyi8GHsKVCxmZBKdHcSkqFOhJusO9xt7m7uyhRgmYWA
         S7h+Mr4r3e8bZCS6A6HhXshuFrF1sNCrjU2TF6Ox2fnU+hBV9zsjs/A6WOF/o78yrjJ+
         ljhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=/P00CBwVM1Bm2+e5x3SciOFl57PtXkQOsUAMaft6bKs=;
        b=CerDHgu1BjK6qUAsDBnhez60ZwYJC3KA7wx+TBhYLG7t+xChpGTQqpTLp6OSuVSPFl
         O5Mby1+cZe2ht1hURpTREdMznwY5PHdNOzCFRoBFUooBOwK7ngAUlFp6muLvrmWN/K0Z
         h7vetDhbhWE6pieOJGtE2fbbFI4wKBX4LK5r2Fi8Gztl26SL74JDV5qsiqMYYs+BHp9Q
         nU7xX9Kb6a6eGWemBKJibBh/RCym1oGWkzikQJR2wZETCOyONhdQOz2CC2qMMU99n84G
         zDikzhEa0sjB4l+HcehqFhI3J3D57x174c0R7/pPY87bRuY9+cjOGBGeRdV2MmPuaQat
         Kemg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c6K8ds5U;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 8si1019897pfa.0.2017.09.12.11.31.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 11:31:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c6K8ds5U;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q76so6533855pfq.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 11:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/P00CBwVM1Bm2+e5x3SciOFl57PtXkQOsUAMaft6bKs=;
        b=c6K8ds5UosjqAGT5kbRIgMxC129iaufMkifdwJ16ZHvz8gtjGVnWVxXzsZTDAyPyut
         dpa4THbJt+t/5QO/BjHJt26bTpPmkmtPVINXPdCOuWhxktiYeEDfXmCg5QuQlpfllOEJ
         Ni/N3Q9fdGCuwSQLgacZn0ygzuyPKsmCGa0bMbXJoRM24D9dvz6ZRL7BrjyuEWAxbrLX
         AnoCisL5MN0ow5d9pKSqc+j8cUf+U9Hql+/fuhhTxRDkDmw8Fwyuj+77eXUsolM9atXE
         n6qT4XwzKwmBwwuDTa91qghXQFA879JTMQd/lG9RuD3mJM3gZ2hKSrU5ui+Js30sW9Vn
         t6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/P00CBwVM1Bm2+e5x3SciOFl57PtXkQOsUAMaft6bKs=;
        b=JTigEXfpFf2Xr6yTr8xqUr/bcscW4An3+8f+Xvw47Dvz9cEbS9iW/oZ/8AT3IclGgV
         yJeptofpnEtxmiCtZfz0Jt6d8kUNlBJlDcf3jDvSsLMUfn0d/HvjDMOudkYAh2Cejrso
         qlNJOkZztxUwNlpHtIyptk71cb8NpUPqERZTZQQvwR6KqEbTa7lh/TpcP+1gV5/655KJ
         FlHK5oyybLu2bSU2aksWFedqIgZk6bdW+6IYznC1QskqBBieBfKyamQbfbmDxfnq8x5d
         c55alFKmCJ7lAnGByBjgmQbUy3msaeF7KtDIdM0qIpEbi0fWXANtk7Kt1Rw4C61ayO+w
         Y2wQ==
X-Gm-Message-State: AHPjjUiraMDtuyHyISva08+mJXPcrvaajx04FvcsBYxrhyiqs+2bA0tv
	tDCoX8r+5fu2mg==
X-Google-Smtp-Source: ADKCNb5+eh5MfUZz167u4QPNYOc9YimGWDeeCZ7IM5sztipGSDN22LKhWpvAURjurYF6Xsvj5hQSTg==
X-Received: by 10.84.238.201 with SMTP id l9mr17665975pln.159.1505241102499;
        Tue, 12 Sep 2017 11:31:42 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id i63sm24293090pfk.34.2017.09.12.11.31.41
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 12 Sep 2017 11:31:41 -0700 (PDT)
Date: Wed, 13 Sep 2017 00:01:35 +0530
From: himanshi <himshijain.hj@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	driverdev <devel@driverdev.osuosl.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	nick.desaulniers@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Fixed IIO_DEVICE_ATTR_NAMED API to
 take name as a string and added "" around names
Message-ID: <20170912183135.GA5329@himanshi-Inspiron-5558>
References: <20170911224348.GA13259@himanshi-Inspiron-5558>
 <CAEnQRZDgXj85OTQAoEpij_3bSUnmcx1owNyeg10WCmiBGURURg@mail.gmail.com>
 <20170912180132.GB4607@himanshi-Inspiron-5558>
 <alpine.DEB.2.20.1709122004550.3149@hadrien>
 <629315d5-6de4-4531-7f25-e1764b9a0513@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <629315d5-6de4-4531-7f25-e1764b9a0513@metafoo.de>
User-Agent: Mutt/1.5.21 (2010-09-15)

Okay. This way with each commit the version can compile and I will
be able to define the subsystem appropriately. Thank you for the
clarification Lars. 

On Tue, Sep 12, 2017 at 08:14:18PM +0200, Lars-Peter Clausen wrote:
> On 09/12/2017 08:06 PM, Julia Lawall wrote:
> > 
> > 
> > On Tue, 12 Sep 2017, himanshi wrote:
> > 
> >> Thanks for the review Daniel! I will change the imperative mood for the commit
> >> message once the other changes are finalised too and as suggested by Julia,
> >> would try to make the description specific than general.
> >>
> >> I tried to think of adding subsystem to the commit subject but could not
> >> conclude any because of the files involved.
> >> I like the idea of splitting the patch into 2 as you suggested but I
> >> have a doubt that adding the new MACROS to different sysfs files can be put into 1
> >> patch with the subsystem you mentioned but changing the existing
> >> IIO_DEVICE_ATTR_NAMED to use IIO_ATTR_NAMED (sysfs file again) would be included
> >> in the second patch if I am not wrong. So would it be fine to keep the
> >> subsystem as iio for the second patch?
> > 
> > Indeed, the kernel has to compile after every commit.  Unless you change
> > the name of the macro, to allow the old and new versions to co-exist, it
> > seems hard to break up such a patch.
> 
> We can still split things into two parts. One patch introducing __ATTR_NAMED
> in the device driver core and then another patch making use of that macro in
> the IIO subsystem.

