X-GM-THRID: 6265914371751280640
X-Received: by 10.140.134.10 with SMTP id 10mr3271442qhg.28.1458901464126;
        Fri, 25 Mar 2016 03:24:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.137 with SMTP id r9ls685211ioi.57.gmail; Fri, 25 Mar
 2016 03:24:23 -0700 (PDT)
X-Received: by 10.107.3.79 with SMTP id 76mr8650792iod.3.1458901463650;
        Fri, 25 Mar 2016 03:24:23 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id h69si2275769pfj.0.2016.03.25.03.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 03:24:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id 4so80244063pfd.0
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Mar 2016 03:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yHxRS7MsPfPHCLbpZjJsooOw6XWLUhpb2WsWt/2UHsY=;
        b=eK6EGqJ/nbfZ7Vb9Gkbj5IwSe5DbelJDfVTrSSyL7HGjaxDJWIiNWDtkuI2oRRtYzV
         BbiVLCW7SgE46+6HcbLB11eSa71vLVb6DxX9Essd4MIrq3R/y8OZo/IQqtCZCL/1EzX6
         WXbSXH1KsRoTpaT7ZVChcTU2wn5FpDt90B9lkNbr91Y0WAWmPqI5+YMNVOAe/nRNHKlh
         IfQ2W5uiFYnPbHrzubT+6v4c+QHsaBRUmH9ktuJGuc8/q9pDq5BodDYAHwMyrdQ/Bbhd
         u1MlwN6eDizVPNEhNy5y18fw/wVuUCEXyV59iVZv/i9hWVn+m4K2T4tRO4a0vruNmCYA
         x3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=yHxRS7MsPfPHCLbpZjJsooOw6XWLUhpb2WsWt/2UHsY=;
        b=ML0JB5U9ssOXavvLuwjudWSQiIdWgrMn1jwlhYhZilLdF2q/H7w/wuzfIdOJklER+p
         BEai9krL1UMw1EU2YhgCbJReZSOYktc8xWm/y/KTbDaCvXWZiW072UW/QwZ/HnH13mAD
         cdTFTnIZhEYyngG8GzkkmxQoY4L9aRVYYKNSnrECidgVgd745c7x0PBC7jB7C8/7oKxG
         m0q1sAHcFd0PvG7VMr2FJnuU8Xc14qILvHGkIQcp6P7DxAaIiIaDpimfUn7OVOBc8sRq
         2m9aieg01iZ3bMt1sDK++KKjQjEPX+JkmlbN1yaNLMVGWIdfCCVKswImDTPUTeb6fX0L
         ay1g==
X-Gm-Message-State: AD7BkJLCg8L0nC8hm8vb4/WdP1AimSZnbw6xYBQKqhjyw8swCo9qZ3YS5nsiC/6ZQq2Big==
X-Received: by 10.98.68.145 with SMTP id m17mr19710556pfi.65.1458901463452;
        Fri, 25 Mar 2016 03:24:23 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.162])
        by smtp.gmail.com with ESMTPSA id fn3sm15569395pab.20.2016.03.25.03.24.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 25 Mar 2016 03:24:22 -0700 (PDT)
Date: Fri, 25 Mar 2016 18:24:19 +0800
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: Svetlana Orlik <sveta.orlik.code@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Troubles doing Tutorial
Message-ID: <20160325102418.GA622@Socrates-Mint>
Mail-Followup-To: Svetlana Orlik <sveta.orlik.code@gmail.com>,
	outreachy-kernel@googlegroups.com
References: <56F4FFE9.6030307@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56F4FFE9.6030307@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Hello Svetlana,

On Fri, Mar 25, 2016 at 12:07:53PM +0300, Svetlana Orlik wrote:
> Hello
> 
> While trail is hot, I'd like to report a couple of issues I faced when doing tutorial.
> 
> 1. I found no email address of the mailing list, where to send patches to.  There was only the link to google groups. So, first I used web interface to post a patch, and it was wrong.  Julia then mailed the address to me.  Maybe the address should be mentioned in the tutorial explicitly?  (And OK, maybe  I'm lame in mailing lists, but the tutorial is for newbies after all:)
>

I had trouble about this before also but figured it out. On the web
interface, click 'About' that is beside 'Members' and there you will
find the group email to send the patches to.

> 2. Submitting a patch using mutt went OK, but when I tried `git send-email` - I got error:
> sendmail: fatal: open /etc/postfix/main.cf: No such file or directory
> Died at /usr/lib/git-core/git-send-email line 1292, <FIN> line 3.
>

Most likely you will need to update your .gitconfig to point to the
configured esmtp the same way you did for mutt. Add this to your
.gitconfig:
[sendemail]
   smtpserver = /usr/bin/esmtp

> --
> Sveta.

Regards,
Eva

