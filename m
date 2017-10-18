X-GM-THRID: 6477576827810349056
X-Received: by 10.176.83.84 with SMTP id y20mr9846696uay.81.1508367057377;
        Wed, 18 Oct 2017 15:50:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.160.76 with SMTP id j73ls1182520vke.12.gmail; Wed, 18 Oct
 2017 15:50:56 -0700 (PDT)
X-Received: by 10.31.217.6 with SMTP id q6mr922610vkg.75.1508367056399;
        Wed, 18 Oct 2017 15:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508367056; cv=none;
        d=google.com; s=arc-20160816;
        b=n9gz88W7sPxn88gkx2dXUeH+MWMMHYMqLaEoA92vZ4O5coc+Hj6DA7Agx8GzCmsSBL
         1ZAUozOddvA5h8sJLE5wwLJn0at0IXeSic4wLWqmapgdYVj41xoRjYVS7asJmOczV1rv
         5pnikkov7T8eEKD6aMOWFVBa34CEuVpb+crlvi479M5ULcFYj4qsVy86VYsRFFc5YEOM
         l6W5kPWOrL2PFfxh+MCgCaUcUF+pLW3lBuzSZYlBniZfkyMUrm+SAS8yVZyfbCXbqkKZ
         SrM7/taEuDyrApGJ5KjUFmr/wsW79jErGhCJPBPtSm0omW+0hLJRwY3Fk2GRJL/d1YgS
         fiiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=XZg7+VN26xL1ixw3xeJ/0TdQJPi+DsQdobuhJoT8yGU=;
        b=g4AMkdZteFeDCX76QTYDa1GBzjI+tp6HOr5e35oe0bl5Q2KLx8t3aI6uoGQ8IQqXpP
         f/gwqtA9ksTtMTfjU3Z3XOMYQ8XGt+eYCISX2Yoe/RkU0LIQ54/sCA04nTrPn8hgoOvQ
         Ks7rvzIjBaN95nbTaHiZ5hAvunJ+dcp5THnqlPuWk0P4tRDi6e4eP8VFJXxSH3LVJfjI
         qVyFeasohG8Kdq57Rp7OgtXxT8zqePlgaFOVoeD37l12hw7mDVUrr6c+yVP8AsixuRxI
         6T4h7edWmsM27LNORh7Vvms+SZe39uENoCVlhKsuduONt26S+kPhjUljvMCmZgpgPRd7
         8BUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=nCD+pkr+;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id w196si516626vkd.2.2017.10.18.15.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 15:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=nCD+pkr+;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x242.google.com with SMTP id k123so4317760vkb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 15:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XZg7+VN26xL1ixw3xeJ/0TdQJPi+DsQdobuhJoT8yGU=;
        b=nCD+pkr+J2lbL7fK5Zu7kzhmeV4QWJLipIMcCn/hnsw4TSaMCUb3sJaRs80HPpFVwK
         JFoDi7Z0bidLEtTjoAngwTOL7fKQ3sAJIbXPjY7G03eKSpxU6l4DQ/hVgc/96n4RdCME
         5RryVAx2x38McnTqiIvz7s5aWr7xQEQD3wQ+BAQ9nWbMwX7SXvahzw0+fR5GJGffdGwG
         UPCV/YBZzOGhGP4ZRsTSXBUpnTlhjooOIB6miHsbqeNQpikMf9MSXPAOZzRKvlcqY83T
         dS5VVHAHA8+tdArMoyHE8Wng4DJTxcfovGgL5tJ5ZCKPcD+DhL7m/EeJDjqQv9xZRyVm
         FQMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XZg7+VN26xL1ixw3xeJ/0TdQJPi+DsQdobuhJoT8yGU=;
        b=X64N/jhIajoMo0oKd+ecYQLLdA16OanrNz+hqXuwXBLI0Jc7l/yQwH3NNm5VxIwWQO
         4K/NUtKqEGsBO3ZASrE/fkjdtBOsmyOaeepUvPOK+mwdGBU1V7GeA4lMs+Y0xLgi4ctC
         VAgq1scXhoLljG9ATvobtS7IVtrSstPNY9TxMTIUf15Mgd0vLkLqQoMnDdV/vniDyYQZ
         kt9SKtBOIGHYi1sAQ7ocreoe2HeSIgdrW9Db1QDu5jikvqRT41F2t26Xr4Cbego6V8OF
         xGfUTSJl36Ueo+gGpMB3mvi2DdWmm4KuBig0uWL36rhBFJee7Yx8TgxvZ6UujuhbQBe3
         bGOg==
X-Gm-Message-State: AMCzsaVge55b+29Qg/gQsXHsSsYd6rF/XrIkuFIA7ApnNMayWUHmOQB+
	bkar75/kqAbAL1QIZrUTezBYzC7a
X-Google-Smtp-Source: ABhQp+QuuJGtpBW/sZibzv7dhJk6BXKWkYl3luRfi46NYjGBv67RtYFwc5Cee+T0R5TtKR3nu2cnKA==
X-Received: by 10.31.252.11 with SMTP id a11mr5943901vki.33.1508367055854;
        Wed, 18 Oct 2017 15:50:55 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id y5sm7450834uay.35.2017.10.18.15.50.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 15:50:54 -0700 (PDT)
Date: Wed, 18 Oct 2017 18:50:52 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: "Tobin C. Harding" <me@tobin.cc>
Cc: gregkh@linuxfoundation.org, Julia.Lawall@lip6.fr, pablo@netfilter.org,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171018225052.GA20395@ubuntu-server-1604>
References: <20171018145522.GA27138@kroah.com>
 <20171018154821.GA2002@ubuntu-server-1604>
 <20171018214008.GC31318@eros>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018214008.GC31318@eros>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 19, 2017 at 08:40:08AM +1100, Tobin C. Harding wrote:
> On Wed, Oct 18, 2017 at 11:48:21AM -0400, Frank A. Cancio Bello wrote:
> > --- a/drivers/staging/wlan-ng/p80211req.c
> > +++ b/drivers/staging/wlan-ng/p80211req.c
> > @@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
> >  
> >  	/* Check Permissions */
> >  	if (!capable(CAP_NET_ADMIN) &&
> > -	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
> > +	    msg->msgcode != DIDmsg_dot11req_mibget) {
> 
> While this is not making the code _harder_ to read, it is not making it any easier either. So all
> the change is really doing is quieting checkpatch. Usually it is not a good idea to make code
> changes _just_ to quieten a static analysis tool. It's just a tool remember, there to help us write
> better code.
> 

For me is easy to read without parentheses given the fact that I tend to jump to the closing parentheses and then read from the opening parentheses up to the mental mark that I did at the closing parentheses. But that is me, and given the fact that I'm a newbie that is still learning I will stop sending this kind of patches if you consider it wise.

> On top of that CHECKS are just that, things that should be CHECK'ed, not necessarily fixed.
> 

Agreed.

> Hope this helps,

A lot! I really appreciate any input at this stage.

thanks,
frank

