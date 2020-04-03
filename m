X-GM-THRID: 6811040563999014912
X-Received: by 2002:a17:906:18a1:: with SMTP id c1mr7905706ejf.344.1585916905498;
        Fri, 03 Apr 2020 05:28:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:68d8:: with SMTP id y24ls3419314ejr.9.gmail; Fri, 03
 Apr 2020 05:28:24 -0700 (PDT)
X-Google-Smtp-Source: APiQypLholKjBf3nptS6pms7sKMyPW2MnEjBT/dpGgsAGsRq4NfmvRb0WoNqB3j021DRh0RqSBpG
X-Received: by 2002:a17:906:a2c6:: with SMTP id by6mr8185750ejb.350.1585916904315;
        Fri, 03 Apr 2020 05:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585916904; cv=none;
        d=google.com; s=arc-20160816;
        b=BvekSrPc7WTDno1N9mkTcEEUKgCjvHJYJG9CwWhCfgGAGATe8JBBYc0Tmz7VD+qUbH
         SomggbXNY0+/7gbZb/bqsyG8RiZvDfXRlSusvo/uvPLfSaHcmlu3qmwqlOSzbbs36WxI
         fy6kWuCq5VlGlIeG/f969nqCKyF/Y3eZKmDieoMGYa/vuVCGeXyQLw2e1TW8t8RjHrkd
         sFJVEaZlbMfJ7APv62UKE1D+6iPFRVK51N64AhMRQOThmvxtfZOgwyg57Z18e6zsP8lU
         DpCpjg9wmYdp0ddNvCSb+VWy6b/d2NEvUn593RxZyHm+sC7XqBMiH9JZQx9VnW7A/8+Q
         jDRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=y2igf0PCHzO3s/Bi+8BmjeZ2llmKcuyQXQjCrHnLh4g=;
        b=eurmNVn3Op3pngJpNdp3jg8KZY6LmLoiXKqcvI5hxPMg18AxXT1vx6mErslnKAm7wS
         Z7TQT0SMxNAeW4b/PdHsBTAvrejrwMrV+oJTE79nSn5gAqokbeWkEkX3KcgoF4DSjsBg
         48GzgOlEtyZKmqX4BFDeN/SPqUty4GOpP6cfr8dNQ110luIfjL4wXy3nMavoYDjKApbv
         iBBvyCL9YqLDNKW8Pz3XTbBMIL9kQX1485I9MjGqnThxvwTQqwfCVSdgmJBl07n57ZB9
         j9NDzWIjG+perLFNn7plj3XwogdN3qBD3ZxyMtRdDEY/mc6MGk/frUmsZheddZI7svaC
         7qiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id a10si511049edq.5.2020.04.03.05.28.24
        for <outreachy-kernel@googlegroups.com>;
        Fri, 03 Apr 2020 05:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 4855 invoked from network); 3 Apr 2020 12:28:21 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.209.243.25)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 3 Apr 2020 12:28:21 -0000
Date: Fri, 3 Apr 2020 17:58:02 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application
 deadline
Message-ID: <20200403122733.GA506@tulip.local>
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Apr 03, 2020 at 06:17:52AM +0530, Vaishali Thakkar wrote:
> On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> <vthakkar@vaishalithakkar.in> wrote:
> >
> > Greeting Outreachy applicants,
> >
> > Thank you for all your contributions in the Linux Kernel. This is a
> > reminder for you all that Outreachy's final application deadline is
> > approaching on April 7, 2020 - 4pm UTC.
> >
> > Now is the time to record all your contributions and apply for the
> > projects you're interested in. We would advise you to at least apply
> > for 2 projects of your choice. And please do not wait to apply on the
> > day of a deadline. You can always add more contributions until the
> > deadline. Don't forget to add links to your patches while recording
> > contributions on the website.
> 
> Also, I forgot to add it here but as it says in the welcome message
> please do not forget to add your project preferences in the
> 'community-specific questions' section of the application, if you have
> applied for more than one project.
> 

Need clarification.

Project preference within Linux Kernel's 5 projects or all Outreachy
projects.

R Veera Kumar

> Thanks!
> 
> > If you have any query, feel free to contact me and project mentors. We
> > wish you all the best for your applications.
> >
> > Have a nice day!
> >
> >
> > Helen Koike and Vaishali Thakkar
> > Outreachy Linux Kernel Co-coordinator
> 

