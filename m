X-GM-THRID: 7936016384000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f45f8a8f1b239cb1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.104.69 with SMTP id dl5mr54289804icc.20.1426517708033;
        Mon, 16 Mar 2015 07:55:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.233.227 with SMTP id tz3ls1098825obc.45.gmail; Mon, 16 Mar
 2015 07:55:07 -0700 (PDT)
X-Received: by 10.183.3.75 with SMTP id bu11mr38462660obd.12.1426517707859;
        Mon, 16 Mar 2015 07:55:07 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si1967425pdb.1.2015.03.16.07.55.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EBE4CACB;
	Mon, 16 Mar 2015 14:55:06 +0000 (UTC)
Date: Mon, 16 Mar 2015 15:55:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, ksenija.stanojevic@gmail.co
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8192u: Remove
 typedefs
Message-ID: <20150316145504.GA14799@kroah.com>
References: <cover.1426181567.git.ksenija.stanojevic@gmail.com>
 <1e60da5ce257bae24aaee7d63b0857c2b6b2fe5d.1426181567.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1e60da5ce257bae24aaee7d63b0857c2b6b2fe5d.1426181567.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 06:35:04PM +0100, Ksenija Stanojevic wrote:
> This patch removes typdefs and renames struct and enum structures
> according to kernel coding standard. Also where ever struct or enum
> was added, line were aligned and doesn't exceed 80 character mark.
> Macro cmpk_query_cfg_t was removed since it's the same as struct
> cmpk_set_cfg.

That's a lot of different things to do all in one patch.  Please split
this up into a "one patch per thing" type series and resend.

thanks,

greg k-h

