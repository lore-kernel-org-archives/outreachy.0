X-GM-THRID: 7016533612499566592
X-Received: by 2002:adf:a30b:: with SMTP id c11mr4970324wrb.289.1633707509120;
        Fri, 08 Oct 2021 08:38:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:1caa:: with SMTP id k42ls4183359wms.3.canary-gmail;
 Fri, 08 Oct 2021 08:38:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzupDkel46Xx12xsguMVtqws1/Kv6qYj4r86rbU0y/P3gCVfh+pnqj6RR3+1ibA8tUyIuZS
X-Received: by 2002:a05:600c:3393:: with SMTP id o19mr4375074wmp.66.1633707507366;
        Fri, 08 Oct 2021 08:38:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633707507; cv=none;
        d=google.com; s=arc-20160816;
        b=KySiWA+TFdWbsn3sE/wO+5q/m+5LOlPwUFiXBcyCC4IjXcUdKXtxAhTlQm8RMuZV1x
         iX9Ih9SzlJChkIx8w2+jObrGvig6U+IY2u8VTY6eH3/NCP0yo8mwui8gLB/CSFZAdBaH
         j6WgmvZNFNdvtfOgRIczcsq9X3E2cxWAvirRJAdEA3MM4qc8Zegs0zLCbigQzXxEdWM4
         QiYfSdNZNviyFeQHc3NQ8kjUCY86eiNPcZEcJqJdga72FCrSOCaQOcAJmp1ufQpmMpvn
         ZXKcADmsBrgWJ6bDws1Tes0d7nuHZY+OwHdkv74bhqGIlM88FwyVHrMXBm5Aq1u1+AAh
         h4IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=fBSzHQSPD3XPM6FPMzjiOLG0BokY67X52V0fuIoBtIc=;
        b=W7gLYV9198jboimbpQtqxswfi8LMgNbw8ZzTO8CAYGAmPpndKeJ/AiP9WVkPTv3jUW
         ZQm2dGwBJcqSgP6S2KFi9bSu5SRp1qiscc9ASvKIcmUrKmd1tuMjqd9TuLagDKPE76CV
         50iawTfcPwQWJE0kXqfLfKCwDlQEFHuAAPhIM7qDzKxQobGtW3AJg5qjSckxmVtguKWA
         Q0xxzO7inmr0wy8gHXIe56KM1st8GfFYvNXtX5EGZ4sqt5Y+RK/1nXmrRvQApLzgdOC3
         eL/uOu4QCTkO+CqURWTPCkGHODzc5xkra/RqOk4Fligo1Z2uByxnevj0piRxWeKDjpLS
         5U4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id o16si947419wme.3.2021.10.08.08.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Oct 2021 08:38:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="290028588"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; 
   d="scan'208";a="290028588"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2021 08:38:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; 
   d="scan'208";a="479016193"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2021 08:38:25 -0700
Date: Fri, 8 Oct 2021 08:46:42 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: Martin Gachu <samkergachu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy Contribution Period is Open!
Message-ID: <20211008154642.GA397677@alison-desk>
References: <20211008034211.GA394953@alison-desk>
 <CADjY451CXqLti+ju_0kHb-YK1d2ORjNkFfVq525B=s3k_1peNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADjY451CXqLti+ju_0kHb-YK1d2ORjNkFfVq525B=s3k_1peNg@mail.gmail.com>

+ outreachy-kernel@googlegroups.com

Thanks for the question Martin. 
I've cc'd the group as this may be of general interest.

No, getting this email does not indicate approval of application.
I sent this email to all subscribers of this list. You will need
to check your eligibility in the Outreachy website.

Alison

On Fri, Oct 08, 2021 at 09:27:55AM +0300, Martin Gachu wrote:
> Hey Alison,
> 
> I saw your email does this mean my initial application was approved?
> 
> Best,
> Martin
> 
> On Fri, 8 Oct 2021, 06:33 Alison Schofield, <alison.schofield@intel.com>
> wrote:
> 
> > Welcome Applicants,

snip...

> > Please be aware that community coordinators and mentors do not have
> > any role in the initial application process of Outreachy. Please email
> > Outreachy organizers with any questions about your eligibility.
> >

