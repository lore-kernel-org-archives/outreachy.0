X-GM-THRID: 6476685007232434176
X-Received: by 10.28.229.16 with SMTP id c16mr90166wmh.13.1508566624915;
        Fri, 20 Oct 2017 23:17:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.11.143 with SMTP id 137ls595050wml.0.canary-gmail; Fri, 20
 Oct 2017 23:17:04 -0700 (PDT)
X-Received: by 10.28.94.5 with SMTP id s5mr90394wmb.15.1508566624118;
        Fri, 20 Oct 2017 23:17:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508566624; cv=none;
        d=google.com; s=arc-20160816;
        b=yAvERF2FMTTZmKVVhnVO8q1KWxI+aIsX6/ida7spvGEsgjP+klSjuSWzWhRA0e0fet
         q4Q+GsN7CKQ0/aSp0JY74cCXBSmaLJSzgiYI4q/pIVz93DvC70QxW+Vc6v/jYgYX1Caj
         2NM7h0v/StcEKUl/3woZOu4wZZPNloT28u3j5knZ/XALiKvrJx9q/1lE57ErdCYVJ/ju
         tjzHGLhTc6YQcVa8nosla5N803avVdjcIdA/Fy36vceBzYfIXVnP378mD9T3H2fbqpjf
         k6w4UZdb4NKr4qmjgdknEVswniJvr/1A6UJO16Nc9JYu/w9pwrQKomBKu2FRPjirZYB8
         qGuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=mOWr6AIx9mudY+n4gh856IBeGTN63y0C/VWTs/aoEfY=;
        b=nzWyon56AZOOcH2JwSmcWewdjcbc0VZEZ6+UWTLqNgYUbZ89DmlDtYtI+SAg2fyh37
         i6yhtzRZ4lgGrK5eyyJmqgWgJvIW8IJrO5735YFDbuTsWEXCPp28V9RiO/Sl5KUFD5AN
         dGGWUrrldlXbRZSYouijJwwa4bWMkIb1Afqg6HqhsvPqANodh1AX0A6DiKu+UEjZIik9
         TQ5aInzhXwVojPfoaZdCW/+zAGtD+i3sLYN8tZe6Mc3B7FGce9onVe+jumY4ONGVQMWO
         yk4fnzlCmtL6t8Qp43z8kkW8J96JgYDas3Wjd0h4JZEj8pVBFjBajIvK6GPoR0c5VjDV
         lSag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=COy72UTQ;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id m62si20857wmi.1.2017.10.20.23.17.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Oct 2017 23:17:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=COy72UTQ;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::236 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x236.google.com with SMTP id q132so1257135wmd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Oct 2017 23:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mOWr6AIx9mudY+n4gh856IBeGTN63y0C/VWTs/aoEfY=;
        b=COy72UTQcjUvb4Ts6q0TLJc0ULq3g6ZjQmYq3r50jv0C3WoKh+J64VxBgUWBmAVkhI
         vN0CH1QNKhPZecKpuId/wlIMIWq/mVTd1fRsu81st56YNxca0qngUhbeZOnXQIUBI/4j
         Z/3AviNkAjZ1mv8tgQmZCoWBfzWBf7ld1Yi0GjmtxUog+mjt0WMRd6t4ypG8G+qy7Df9
         0es7Ga58Fo3T9BtYYLCJUXBhS55uNKBxLGdqq1BzUihT6t8yOiHrxxOiupjfh/PrvuV+
         KzJWKwSEusU/rARnp+K8rhYi+j+WNWGCzWyMKy2ctggIGmzEahyNP/+kSMGXqvITxRrr
         +86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mOWr6AIx9mudY+n4gh856IBeGTN63y0C/VWTs/aoEfY=;
        b=XohorFDwSkFfcZ6kE3Ji/KAgFICyk9qHqw7PUT38rVcXaMFsG0uIW0GDA33nwk6NJm
         cpu4mKkb5XpSs63epqdGmhB6o2LUrx9QbMz/zePY+Zz9Hh9q6ILkX4BW3XQHwPi69eq1
         RbvmiJsbRgAS/3rJyUeZ+zOeGr/LarHc+yd+z/Buy667fb2BdgC8liehPP5pDKiakGkw
         zyRF/SRbFRCXbOfLNhhpf8OpwLVxvdL8nzgQAwfj9POhdXsE05y1tmnaBQcY6j4TQIzd
         yg8Tbz85p/Z0OBnZ86FQ6mt6xhHNfBL8ZBMaIc5ujSfS6P3K2iRFut6noFZbyqNsIV7h
         Q0yg==
X-Gm-Message-State: AMCzsaW+LOQ6hoTELlNxLQi3Boyic3rSvMyywckXrDf9Y41oJ57+NPkt
	qI/E8/1oYBmTdzr+asnJSnDnO6SD
X-Google-Smtp-Source: ABhQp+Rsrha/cRQJcfvz1syQ/4ubNalj1npvw+Dw95dL98K8Xb1LftighqlUXG2jbAlcWYo0PmUO6w==
X-Received: by 10.28.236.203 with SMTP id h72mr784745wmi.147.1508566623840;
        Fri, 20 Oct 2017 23:17:03 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.5])
        by smtp.gmail.com with ESMTPSA id e17sm1212286wmf.46.2017.10.20.23.17.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Oct 2017 23:17:03 -0700 (PDT)
Date: Sat, 21 Oct 2017 09:17:01 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: vc04_services: Remove unnecessary braces
Message-ID: <20171021061701.GA5272@domino-MS-16Y1>
References: <20171015190040.GA6755@domino-MS-16Y1>
 <20171018141452.GA17907@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018141452.GA17907@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 18, 2017 at 04:14:52PM +0200, Greg Kroah-Hartman wrote:
> On Sun, Oct 15, 2017 at 10:00:41PM +0300, Mihaela Muraru wrote:
> > Remove unnecessary braces for single statements.
> > 
> > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> > ---
> > Changes in v2:
> > 	 - declare a local variable "platform_state" of type "struct
> > 	 vchiq_2835_state", to avoid the multiple cast.
> 
> This patch does a lot more than what the changelog says :(
> Please describe everything in the changelog.
> 
> thanks,
> 
> greg k-h

Thank you,

I will send patch v3 with more information.

Mihaela

