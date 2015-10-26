X-GM-THRID: 6208887489417969664
X-Received: by 10.50.176.129 with SMTP id ci1mr16879052igc.12.1445880048470;
        Mon, 26 Oct 2015 10:20:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.67 with SMTP id f61ls1591375qge.95.gmail; Mon, 26 Oct
 2015 10:20:47 -0700 (PDT)
X-Received: by 10.129.134.129 with SMTP id w123mr29964233ywf.17.1445880047840;
        Mon, 26 Oct 2015 10:20:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si3639255pac.2.2015.10.26.10.20.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:20:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so202621512pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NzRvxizIF12sxupXztfwmOAYMC9LSqddcRscVo9cuKI=;
        b=Lub4WRXAlE3YM3D58fx8OaroT86a8C8w11worPFVSVtT4DDm+mqiLgnGRapG9Icn4B
         q1kTIeineL0wNPogjcjXeQdXnstfIED9PLqowQYyOMAEmeS3zS9kQcRYwcmCsSFEdFD0
         7xHNjVybISfxpKFUaX7ZE4p0skCV1EwvTTW5nt1NVmmz8PeV+JNx0nIWYDmeo9ZHnTet
         XxI4dAwNbIiD3gecNhofisWesPVsf4t8HFEt7oDqyO8gthXTTIok3/S7GNPgQA8uQLwH
         3dPtYxU4t6aGjwQopN8UyPfYLB1jr73h6hHe7u+HQxOCQo81XUjL4M365uyTsKMapQq8
         DmvQ==
X-Received: by 10.66.161.73 with SMTP id xq9mr22896477pab.0.1445880047643;
        Mon, 26 Oct 2015 10:20:47 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id kv9sm35187049pab.39.2015.10.26.10.20.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 10:20:47 -0700 (PDT)
Date: Mon, 26 Oct 2015 10:20:46 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH] staging: iio: dummy: clean up the define and usage of
 dummy_scan_elements
Message-ID: <20151026172045.GA18550@Ubuntu-D830>
References: <20151023165418.GA18718@Ubuntu-D830>
 <562DE019.3060807@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <562DE019.3060807@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Oct 26, 2015 at 10:11:05AM +0200, Daniel Baluta wrote:
> 
> 
> On 10/23/2015 07:54 PM, Alison Schofield wrote:
> >Cleanups related to the usage of dummy_scan_elements in the
> >iio dummy driver:
> >- change enum names to upper case INDEX_*
> >- use the enum for IIO_CHAN_SOFT_TIMESTAMP (rm hard coded value)
> >- comment edited to match changes & follow preferred kernel style
> >
> >Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> >---
> >  drivers/staging/iio/iio_simple_dummy.c        | 22 ++++++++++++----------
> >  drivers/staging/iio/iio_simple_dummy.h        | 20 +++++++++++---------
> >  drivers/staging/iio/iio_simple_dummy_buffer.c |  9 +++++----
> >  3 files changed, 28 insertions(+), 23 deletions(-)
> >
> >diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
> >index 381f90f..5e19068 100644
> >--- a/drivers/staging/iio/iio_simple_dummy.c
> >+++ b/drivers/staging/iio/iio_simple_dummy.c
> >@@ -1,4 +1,4 @@
> >-/**
> >+/*
> This change should be in the 3rd patch.
>
Thanks for the eagle eyes! I see this (and the other comment I edit'd
also.) It leads to another question. 

In these dummy files, there are 27 comment blocks that start with
/** instead of /* .  I touched 2 of them as a passerby, but now
that I'm looking.... should I change them all or is /** that an acceptable
variation.

alison


< snip >

