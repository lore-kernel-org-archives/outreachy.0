X-GM-THRID: 6251802816159940608
X-Received: by 10.182.255.203 with SMTP id as11mr23849849obd.49.1455646571183;
        Tue, 16 Feb 2016 10:16:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.145 with SMTP id f17ls3370761qgd.27.gmail; Tue, 16 Feb
 2016 10:16:10 -0800 (PST)
X-Received: by 10.13.221.75 with SMTP id g72mr23282322ywe.34.1455646570441;
        Tue, 16 Feb 2016 10:16:10 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id 12si3279815pfb.1.2016.02.16.10.16.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 10:16:10 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id x65so109164084pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 10:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8iCwQZLJvlAsqnY6T3XIokw4RrvcQArv473LkSNp9uA=;
        b=Ig2Zbb5TQQy94PnuCjdJx6kcr3k7h78+ogHWRypo22KIxm6SWGfG3pSVdnPxXSUs3e
         nTKI+c10G34ljbCQ7aN2r0SNY2K9ZhcmBtMLh4vbZAATPoUOSBWgH7ubQvavWCUbYlSO
         yWCWZTFVxU/uprx6K/tmz7You2bR8cmY2Npnl99K27sZWoYsbPpi+fkkc70/JIIe61zJ
         Y3AgYGBhdD4YXAFuoE11y8hMuoso26wwM93XOzjpU41Oo1KkBe84jSs+IM7MINvLds8+
         VvBc00Nr+yP4bkFzmmn9Z4RtAuF+FxqESWdtrKzyx0kXeUQ9GGjbD5PwebStIs2FWnbw
         fnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=8iCwQZLJvlAsqnY6T3XIokw4RrvcQArv473LkSNp9uA=;
        b=JM/n1MfdXuEBw2ysNDB5bqGQQthk44UKpI7tE+UGdox3AzTQ9BFXb4BBRy9oFyvMPU
         CWK29LcGI1w+qTOYFggm6z+BNrC9S/CikNF8x2RWjqEhDcV7PuciWE0dJ7dDY0XL0rjN
         2G/qBX46jDe4KmhtT+JKjE9yJvMzmee9kyoieitxp4W1/PELngm5ATX5rRhmWFD8hQaB
         +XM/lOKLAh09eGeb/Yx6m6GMJqWtbYlk/WCDClxgrJwVlADtLsSBSQSqQ+CELoOXejb6
         kNuUW83yXOPCyR20KkbWt56H/VOM2xThniXOuvc+iQNa2JnwkYyTD0S3UyaNpfdJL8bm
         H3yQ==
X-Gm-Message-State: AG10YOTbrH96Dv7SaQOjkwPtUU+tUUl5xblmJMXDsrbQuPr+ZT8r5CXMcT/KOkDPyMruJQ==
X-Received: by 10.98.14.149 with SMTP id 21mr32806100pfo.79.1455646570256;
        Tue, 16 Feb 2016 10:16:10 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id xv2sm47413820pab.10.2016.02.16.10.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 10:16:09 -0800 (PST)
Date: Tue, 16 Feb 2016 10:16:07 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/3] staging: wilc1000: host_interface: replace
 semaphores with mutexes
Message-ID: <20160216181605.GA2534@d830.WORKGROUP>
References: <cover.1455609607.git.amsfield22@gmail.com>
 <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 16, 2016 at 12:31:42AM -0800, Alison Schofield wrote:
> Replace semaphores with mutexes in the host_interface driver.
> 
> This is a safe performance improvement because the usage model
> meets the principle of ownership for mutexes: the thread that
> locks is the same thread that unlocks.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---

Arnd,
Thanks for the review and redirection. I will use it to learn more
about the usage of semas, mutexes, and the wait_for_completion too.

Greg,
I hear you and will abandon this patch.  It was no easy task figuring
out the purpose of these locks (just to comment them), so that should
have been a red flag that perhaps this wasn't the wisest choice for
my first attempt at lock changes.  Learned some stuff and moving on...

alisons


