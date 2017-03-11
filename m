X-GM-THRID: 6395922242043117568
X-Received: by 10.157.43.121 with SMTP id f54mr9683641otd.134.1489215778856;
        Fri, 10 Mar 2017 23:02:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls4627421otr.34.gmail; Fri, 10 Mar
 2017 23:02:58 -0800 (PST)
X-Received: by 10.13.251.70 with SMTP id l67mr11149668ywf.87.1489215778499;
        Fri, 10 Mar 2017 23:02:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si2089392pfz.1.2017.03.10.23.02.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 23:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A1BA96C;
	Sat, 11 Mar 2017 07:02:57 +0000 (UTC)
Date: Sat, 11 Mar 2017 08:02:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Doubt regarding use of a function
Message-ID: <20170311070247.GA5990@kroah.com>
References: <CAKG5xWiq5T9fgTpnb2vtCwFv4HrBnyBBtYGTpp1_zUS5k-Gq_g@mail.gmail.com>
 <20170310212742.GA11308@kroah.com>
 <CAKG5xWjEB0QWQ732XVxTmAdyAt8Z5k4U2DWmZsxG-xKvyXA5fg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWjEB0QWQ732XVxTmAdyAt8Z5k4U2DWmZsxG-xKvyXA5fg@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 12:14:47PM +0530, sayli karnik wrote:
> On Sat, Mar 11, 2017 at 2:57 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Fri, Mar 10, 2017 at 10:54:10PM +0530, sayli karnik wrote:
> >> ieee80211 has the following function which to me does nothing-
> >> void ieee80211_tkip_null(void)
> >> {
> >>      printk("============>%s()\n", __func__);
> >>      return;
> >> }
> >
> > What exactly directory/file is this?
> >
> staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c: function definition
> staging/rtl8192u/ieee80211/ieee80211_module.c: function call

Ah, that trainwreck :(

> >> Before its function call there is this comment-
> >> /* These function were added to load crypte module autoly */
> >>          ieee80211_tkip_null();
> >>
> >> Is this function needed in the driver?
> >
> > Yes, the function says what it is there for.
> >
> >> If not, can I send in a patch removing it?
> >
> > If you do, you have to fix the auto-loading of the module properly :)
> >
> Is there a way to do that apart from the one currently used?

First determine if the comment is really correct or not.  Then you can
answer this question.  Maybe I was originally wrong in my statement,
I'll leave it up to you to do the research and figure it out :)

thanks,

greg k-h

